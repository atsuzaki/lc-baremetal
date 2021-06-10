During the development of the breakout-lc project, we have encountered with multiple areas in LC (and to an extent, Habit) might be able to improve on:
 
####  1. `if cond` vs `if <- cond`: it is confusing as a first time user. 

It would be more intuitive if `if cond` would automatically imply `if <- cond` if type of cond is Proc, but this will mean that the if statement will not be fully polymorphic. 

An easier way out is perhaps writing a hint in the error message to use `if <- cond` in this context?


#### 2. Optimizing comparisons/if patterns when the compiler could figure out that a better comparison exist.

The example case that I've encountered was writing for a bitdata GameObjectTypes:

```
> bitdata GameObjectTypes/32 = GameObjectTypes [ 0 | active :: Bool | ball :: Bool | paddle :: Bool  | bouncable :: Bool | breakable :: Bool ]

> boolEq :: Bool -> Bool -> Bool
> boolEq b1 b2 = if b1 then b2 else negb b2

> gotEq :: GameObjectTypes -> GameObjectTypes -> Bool
> gotEq got1 got2 = (got1.active `boolEq` got2.active) &&
>                   (got1.ball `boolEq` got2.ball) &&
>                   (got1.paddle `boolEq` got2.paddle) &&
>                   (got1.bouncable `boolEq` got2.bouncable)
```
  
  This code ends up involving a lot of jumps for the booleq, even though since it's a bitdata, it could be implemented more optimally by comparing their underlying Words! It would be very beneficial if the compiler could find common conditional patterns like this and compile it into the more optimal version.
  
  This can apply to contexts outside of bitdata too, many branching conditionals can be replaced into cheaper bitwise or math operations. This actually sounds like something shader languages might already do, as GPUs are heavily pipelined. performance tanks to the ground with any significant branching. Additionally, graphics programmers has cheatsheets of how to replicate conditional jumps, they may be worth looking act to inspire our optimizations too.

#### 3. How to make a struct that pads alignment? Like in this case:

```
> struct GameObject/24
>   [ width       :: Stored Word
>   | height      :: Stored Word
>   | xPos        :: Stored Word
>   | yPos        :: Stored Word 
>   | attribute   :: Stored Word -- TODO: this should just be a byte, but misalignes the struct. How to pad?
>   | typemask    :: Stored GameObjectTypes ]
```
  
#### 4. Case construct for word and/or ix would be useful in LC if we are going to write a lot of it in the future.

  
#### 5. Supplying the desired Ix type for modIx in expressions where it couldn't be inferred is not possible. 

I had to work around it by creating a function that has said Ix type as an explicit return type:

```
> modIxCol :: Word -> Ix BricksPerRow
> modIxCol w = modIx w

> generateBrick :: Word -> Init GameObject
> generateBrick idx = let trueIdx = idx - 6 in
>                     let row = trueIdx / bricksPerRow in
>                     let col = modIxCol trueIdx in
>                     (gameObject 6 1 (((ixToBit col) * (brickWidth + brickPadding)) + 3) 
>                                     ((row * (brickHeight + brickPadding)) + 2) 
>       			      (getBrickColor trueIdx) 
>       			      defgot [ breakable=True ])
```
  

  Additionally, doing something like this:

```
  let col = modIx trueIdx :: Ix BricksPerRow in
```

  Generates a weird compiler error!
  

#### 6. Same type issue as above, but with lambda functions:

```
Passing an anonymous function, the type won't seem to line up unless we specify a type annotation 
when trying to access o, like here on the second line here:

destroyBricksSystem :: Proc Unit
destroyBricksSystem = foreachGO (\o -> do got <- get (o :: Ref GameObject).typemask
                                                return (got.active && got.breakable)
                                (\o -> if o `refEq` ball  
                                             then return Unit
                                             else if <- testCollision o ball
                                                    then got <- get o.typemask
                                                         set o.typemask (got [ active=False ])
                                                    else return Unit)

We tried something like this:

destroyBricksSystem = foreachGO (\o :: Ref GameObject -> do got <- get o.typemask

Which doesn't produce a compile-time error, but does nothing either.

> destroyBricksSystem :: Proc Unit
> destroyBricksSystem = foreachGO getBricks destroyBrick
>                          where getBricks :: Ref GameObject -> Proc Bool 
>                                getBricks o = do got <- get (o :: Ref GameObject).typemask
>                                                 return (got.active && got.breakable)
>                                destroyBrick :: Ref GameObject -> Proc Unit
>                                destroyBrick o = if o `refEq` ball  
>                                                 then return Unit
>                                                 else if <- testCollision o ball
>                                                        then got <- get o.typemask
>                                                             set o.typemask (got [ active=False ])
>                                                             update bricksLeft (\b -> b - 1)
>                                                        else return Unit

```

#### 7. Having to do a lot of `x <- get a.x` accesses makes some parts of the code very verbose. 

This could perhaps be made better in multiple different approaches:
- Let data be accessed directly by doing `a.x`
- Use a different symbol for accessor, to distinguish accessing Stored vs non-Stored, in vein of C's arrow operator `a->x`
- Destructuring. i.e. `(x, y, z) -> get a` (Does habit already support this? Is it appropriate for LC to support this?)
  

#### 8. Array construction syntax would be really nice to have. 


We ran into a lack thereof when writing code for keyboard keymapping. We ended up implemented by constructing the array in C and reading it in LC using the extern keyword:

```
///// In C

unsigned char inner_keyb_layout[128] =
	"\000\0331234567890-+\177\t"			/* 0x00 - 0x0f */
	"qwertyuiop[]\r\000as"				/* 0x10 - 0x1f */
	"dfghjkl;'`\000\\zxcv"				/* 0x20 - 0x2f */
	"bnm,./\000*\000 \000\201\202\203\204\205"	/* 0x30 - 0x3f */
	"\206\207\210\211\212\000\000789-456+1"		/* 0x40 - 0x4f */
	"230\177\000\000\213\214\000\000\000\000\000\000\000\000\000\000" /* 0x50 - 0x5f */
	"\r\000/";					/* 0x60 - 0x6f */

unsigned char* keyb_layout = &inner_keyb_layout;

///// In LC

> external keyb_layout :: Ref (Array 128 (Stored Byte))

```

#### 9. Small stuffs:

- Few small utility functions were written in order to fill the gaps in the standard library, notably minIx, negb (boolean negate). It might be useful to consider adding them into the standard library

- (Nitpick) The names of equality methods are not consistent: refEq vs eqIx. This probably doesn't even matter as we are only explicitly using those functions in LC, they are fully polymorphic in Habit.
