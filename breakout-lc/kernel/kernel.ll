target triple = "i386-pc-linux-gnu"

@raw.0 = internal global [1 x i8] zeroinitializer, align 1

@current = internal alias i8, i8* bitcast([1 x i8]* @raw.0 to i8*)

@raw.1 = internal global [144 x i8] zeroinitializer, align 4

@users = internal alias i8, i8* bitcast([144 x i8]* @raw.1 to i8*)

@raw.2 = internal global [7 x i8] zeroinitializer, align 8

@console = internal alias i8, i8* bitcast([7 x i8]* @raw.2 to i8*)

@keyb_layout = external global i32

@raw.3 = internal global [1 x i8] zeroinitializer, align 1

@keyUp = internal alias i8, i8* bitcast([1 x i8]* @raw.3 to i8*)

@raw.4 = internal global [1 x i8] zeroinitializer, align 1

@keyDown = internal alias i8, i8* bitcast([1 x i8]* @raw.4 to i8*)

@raw.5 = internal global [4 x i8] zeroinitializer, align 4

@ticks = internal alias i8, i8* bitcast([4 x i8]* @raw.5 to i8*)

@raw.6 = internal global [1 x i8] zeroinitializer, align 1

@isPlaying = internal alias i8, i8* bitcast([1 x i8]* @raw.6 to i8*)

@raw.7 = internal global [4 x i8] zeroinitializer, align 1

@spinner = internal alias i8, i8* bitcast([4 x i8]* @raw.7 to i8*)

@raw.8 = internal global [1 x i8] zeroinitializer, align 1

@spinpos = internal alias i8, i8* bitcast([1 x i8]* @raw.8 to i8*)

@raw.9 = internal global [1 x i8] zeroinitializer, align 1

@pos = internal alias i8, i8* bitcast([1 x i8]* @raw.9 to i8*)

@raw.10 = internal global [1 x i8] zeroinitializer, align 1

@dir = internal alias i8, i8* bitcast([1 x i8]* @raw.10 to i8*)

@raw.11 = internal global [504 x i8] zeroinitializer, align 4

@objects = internal alias i8, i8* bitcast([504 x i8]* @raw.11 to i8*)

@ball = internal global i32 0

@gameoverZone = internal global i32 0

@str.12 = private unnamed_addr constant [10 x i8] c"Game Over\00"

@str45 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.12, i32 0, i32 0)

@str.13 = private unnamed_addr constant [9 x i8] c"nothing\0a\00"

@str0 = internal alias i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @str.13, i32 0, i32 0)

@raw.14 = internal global [4 x i8] zeroinitializer, align 4

@bricksLeft = internal alias i8, i8* bitcast([4 x i8]* @raw.14 to i8*)

@raw.15 = internal global [1 x i8] zeroinitializer, align 1

@headingLeft = internal alias i8, i8* bitcast([1 x i8]* @raw.15 to i8*)

@raw.16 = internal global [1 x i8] zeroinitializer, align 1

@headingTop = internal alias i8, i8* bitcast([1 x i8]* @raw.16 to i8*)

@str.17 = private unnamed_addr constant [13 x i8] c"Exception 0x\00"

@str57 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.17, i32 0, i32 0)

@raw.18 = internal global [32 x i8] zeroinitializer, align 1

@itoaBuf = internal alias i8, i8* bitcast([32 x i8]* @raw.18 to i8*)

@str.19 = private unnamed_addr constant [11 x i8] c", frame=0x\00"

@str58 = internal alias i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.19, i32 0, i32 0)

@str.20 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str59 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.20, i32 0, i32 0)

@str.21 = private unnamed_addr constant [19 x i8] c" Last key pressed:\00"

@str47 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.21, i32 0, i32 0)

@str.22 = private unnamed_addr constant [10 x i8] c"Headers:\0a\00"

@str11 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.22, i32 0, i32 0)

@str.23 = private unnamed_addr constant [2 x i8] c" \00"

@str1 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.23, i32 0, i32 0)

@str.24 = private unnamed_addr constant [7 x i8] c"header\00"

@str12 = internal alias i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.24, i32 0, i32 0)

@str.25 = private unnamed_addr constant [2 x i8] c"[\00"

@str2 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.25, i32 0, i32 0)

@str.26 = private unnamed_addr constant [4 x i8] c"]: \00"

@str3 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.26, i32 0, i32 0)

@str.27 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str5 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.27, i32 0, i32 0)

@str.28 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str6 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.28, i32 0, i32 0)

@str.29 = private unnamed_addr constant [12 x i8] c"], entry 0x\00"

@str7 = internal alias i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.29, i32 0, i32 0)

@str.30 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str4 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.30, i32 0, i32 0)

@str.31 = private unnamed_addr constant [13 x i8] c"Memory map:\0a\00"

@str13 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.31, i32 0, i32 0)

@str.32 = private unnamed_addr constant [5 x i8] c"mmap\00"

@str14 = internal alias i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str.32, i32 0, i32 0)

@str.33 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str8 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.33, i32 0, i32 0)

@str.34 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str9 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.34, i32 0, i32 0)

@str.35 = private unnamed_addr constant [2 x i8] c"]\00"

@str10 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.35, i32 0, i32 0)

@str.36 = private unnamed_addr constant [10 x i8] c"Strings:\0a\00"

@str15 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.36, i32 0, i32 0)

@str.37 = private unnamed_addr constant [2 x i8] c" \00"

@str18 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.37, i32 0, i32 0)

@str.38 = private unnamed_addr constant [8 x i8] c"cmdline\00"

@str16 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.38, i32 0, i32 0)

@str.39 = private unnamed_addr constant [3 x i8] c": \00"

@str19 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.39, i32 0, i32 0)

@str.40 = private unnamed_addr constant [3 x i8] c" [\00"

@str20 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.40, i32 0, i32 0)

@str.41 = private unnamed_addr constant [3 x i8] c"]\0a\00"

@str21 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.41, i32 0, i32 0)

@str.42 = private unnamed_addr constant [8 x i8] c"imgline\00"

@str17 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.42, i32 0, i32 0)

@str.43 = private unnamed_addr constant [33 x i8] c"Did not find first user program\0a\00"

@str54 = internal alias i8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.43, i32 0, i32 0)

@str.44 = private unnamed_addr constant [40 x i8] c"\0aHalting kernel, returning to mimgload\0a\00"

@str48 = internal alias i8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.44, i32 0, i32 0)

@str.45 = private unnamed_addr constant [38 x i8] c"Found header for first user program:\0a\00"

@str49 = internal alias i8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.45, i32 0, i32 0)

@str.46 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str50 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.46, i32 0, i32 0)

@str.47 = private unnamed_addr constant [39 x i8] c"Found header for second user program:\0a\00"

@str51 = internal alias i8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.47, i32 0, i32 0)

@str.48 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str52 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.48, i32 0, i32 0)

@str.49 = private unnamed_addr constant [19 x i8] c"user code is at 0x\00"

@str55 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.49, i32 0, i32 0)

@str.50 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str56 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.50, i32 0, i32 0)

@str.51 = private unnamed_addr constant [34 x i8] c"Did not find second user program\0a\00"

@str53 = internal alias i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.51, i32 0, i32 0)

declare void @returnTo(i32)

define void @yield() {
  br label %yield

yield:
  br label %b1384

b1384:
  %r4 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r3 = load i1, i1* %r4
  %r2 = zext i1 %r3 to i32
  %r1 = mul i32 %r2, 72
  %r0 = add i32 ptrtoint(i8* @users to i32), %r1
  tail call void @returnTo(i32 %r0)
  ret void
}

declare i32 @inb(i32)

declare void @outb(i32, i32)

define internal void @func_b1602(i32 %r0, i32 %r1, i32 %r2) {
  br label %b1602

b1602:
  %r4 = phi i32 [%r0, %0], [%r7, %b258]
  %r5 = phi i32 [%r1, %0], [0, %b258]
  %r6 = phi i32 [%r2, %0], [%r6, %b258]
  %r3 = icmp eq i32 %r4, %r5
  br i1 %r3, label %b258, label %b4656

b258:
  %r8 = call i32 @inb(i32 1021)
  %r7 = and i32 %r8, 96
  br label %b1602

b4656:
  tail call void @outb(i32 1016, i32 %r6)
  ret void
}

define internal void @func_b1610(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1610

b1610:
  %r7 = phi i32 [%r0, %0], [%r5, %b1610]
  %r6 = phi i32 [%r1, %0], [%r6, %b1610]
  %r18 = phi i32 [%r2, %0], [%r18, %b1610]
  %r21 = phi i32 [%r3, %0], [%r21, %b1610]
  %r20 = mul i32 %r21, 160
  %r17 = mul i32 %r7, 2
  %r19 = add i32 %r20, %r17
  %r14 = add i32 %r19, 753664
  %r16 = mul i32 %r18, 160
  %r15 = add i32 %r16, %r17
  %r11 = add i32 %r15, 753664
  %r12 = inttoptr i32 %r14 to i16*
  %r13 = load i16, i16* %r12
  %r9 = zext i16 %r13 to i32
  %r8 = inttoptr i32 %r11 to i16*
  %r10 = trunc i32 %r9 to i16
  store i16 %r10, i16* %r8
  %r5 = add i32 %r7, 1
  %r4 = icmp ule i32 %r5, %r6
  br i1 %r4, label %b1610, label %b303

b303:
  ret void
}

define internal void @func_b1988(i32 %r0) {
  br label %b1988

b1988:
  %r5 = add i32 ptrtoint(i8* @console to i32), 4
  %r3 = inttoptr i32 %r5 to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r0, 13
  br i1 %r1, label %b1990, label %b1993

b1990:
  %r9 = phi i32 [%r2, %b1988], [%r2, %b1993], [%r2, %b1995]
  %r19 = add i32 ptrtoint(i8* @console to i32), 1
  %r16 = add i32 ptrtoint(i8* @console to i32), 5
  %r17 = inttoptr i32 %r19 to i8*
  %r18 = load i8, i8* %r17
  %r14 = zext i8 %r18 to i32
  %r13 = inttoptr i32 %r16 to i8*
  %r15 = trunc i32 %r14 to i8
  store i8 %r15, i8* %r13
  %r12 = add i32 ptrtoint(i8* @console to i32), 2
  %r10 = inttoptr i32 %r12 to i8*
  %r11 = load i8, i8* %r10
  %r8 = zext i8 %r11 to i32
  %r7 = add i32 %r9, 1
  %r6 = icmp ule i32 %r7, %r8
  br i1 %r6, label %b6618, label %b1992

b1993:
  %r20 = icmp eq i32 %r0, 10
  br i1 %r20, label %b1990, label %b1995

b6618:
  %r23 = add i32 ptrtoint(i8* @console to i32), 4
  %r21 = inttoptr i32 %r23 to i8*
  %r22 = trunc i32 %r7 to i8
  store i8 %r22, i8* %r21
  ret void

b1992:
  %r43 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r44 = load i8, i8* %r43
  %r27 = zext i8 %r44 to i32
  %r42 = add i32 ptrtoint(i8* @console to i32), 1
  %r40 = inttoptr i32 %r42 to i8*
  %r41 = load i8, i8* %r40
  %r39 = zext i8 %r41 to i32
  %r38 = add i32 ptrtoint(i8* @console to i32), 2
  %r36 = inttoptr i32 %r38 to i8*
  %r37 = load i8, i8* %r36
  %r26 = zext i8 %r37 to i32
  %r35 = add i32 ptrtoint(i8* @console to i32), 3
  %r33 = inttoptr i32 %r35 to i8*
  %r34 = load i8, i8* %r33
  %r32 = zext i8 %r34 to i32
  %r31 = add i32 ptrtoint(i8* @console to i32), 6
  %r29 = inttoptr i32 %r31 to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  %r25 = add i32 %r27, 1
  %r24 = icmp ule i32 %r25, %r26
  br i1 %r24, label %b6609, label %b1608

b1995:
  %r67 = add i32 ptrtoint(i8* @console to i32), 5
  %r65 = inttoptr i32 %r67 to i8*
  %r66 = load i8, i8* %r65
  %r48 = zext i8 %r66 to i32
  %r64 = add i32 ptrtoint(i8* @console to i32), 6
  %r62 = inttoptr i32 %r64 to i8*
  %r63 = load i8, i8* %r62
  %r58 = zext i8 %r63 to i32
  %r60 = mul i32 %r2, 160
  %r61 = mul i32 %r48, 2
  %r59 = add i32 %r60, %r61
  %r55 = add i32 %r59, 753664
  %r56 = and i32 %r0, 255
  %r57 = shl i32 %r58, 8
  %r53 = or i32 %r56, %r57
  %r52 = inttoptr i32 %r55 to i16*
  %r54 = trunc i32 %r53 to i16
  store i16 %r54, i16* %r52
  %r51 = add i32 ptrtoint(i8* @console to i32), 3
  %r49 = inttoptr i32 %r51 to i8*
  %r50 = load i8, i8* %r49
  %r47 = zext i8 %r50 to i32
  %r46 = add i32 %r48, 1
  %r45 = icmp ule i32 %r46, %r47
  br i1 %r45, label %b6622, label %b1990

b6609:
  %r71 = phi i32 [%r25, %b1992], [%r69, %b6609]
  %r74 = phi i32 [%r27, %b1992], [%r71, %b6609]
  %r70 = phi i32 [%r26, %b1992], [%r70, %b6609]
  %r73 = phi i32 [%r32, %b1992], [%r73, %b6609]
  %r72 = phi i32 [%r39, %b1992], [%r72, %b6609]
  %r75 = phi i32 [%r28, %b1992], [%r75, %b6609]
  call void @func_b1610(i32 %r72, i32 %r73, i32 %r74, i32 %r71)
  %r69 = add i32 %r71, 1
  %r68 = icmp ule i32 %r69, %r70
  br i1 %r68, label %b6609, label %b1608

b1608:
  %r79 = phi i32 [%r39, %b1992], [%r72, %b6609], [%r77, %b1608]
  %r78 = phi i32 [%r32, %b1992], [%r73, %b6609], [%r78, %b1608]
  %r85 = phi i32 [%r28, %b1992], [%r75, %b6609], [%r85, %b1608]
  %r89 = phi i32 [%r26, %b1992], [%r70, %b6609], [%r89, %b1608]
  %r87 = mul i32 %r89, 160
  %r88 = mul i32 %r79, 2
  %r86 = add i32 %r87, %r88
  %r83 = add i32 %r86, 753664
  %r84 = shl i32 %r85, 8
  %r81 = or i32 %r84, 32
  %r80 = inttoptr i32 %r83 to i16*
  %r82 = trunc i32 %r81 to i16
  store i16 %r82, i16* %r80
  %r77 = add i32 %r79, 1
  %r76 = icmp ule i32 %r77, %r78
  br i1 %r76, label %b1608, label %b303

b6622:
  %r92 = add i32 ptrtoint(i8* @console to i32), 5
  %r90 = inttoptr i32 %r92 to i8*
  %r91 = trunc i32 %r46 to i8
  store i8 %r91, i8* %r90
  ret void

b303:
  ret void
}

define void @kputc() {
  br label %kputc

kputc:
  %r10 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r9 = load i1, i1* %r10
  %r8 = zext i1 %r9 to i32
  %r7 = mul i32 %r8, 72
  %r6 = add i32 ptrtoint(i8* @users to i32), %r7
  %r5 = add i32 %r6, 28
  %r4 = inttoptr i32 %r5 to i32*
  %r1 = load i32, i32* %r4
  %r3 = call i32 @inb(i32 1021)
  %r2 = and i32 %r3, 96
  call void @func_b1602(i32 %r2, i32 0, i32 %r1)
  %r0 = icmp eq i32 %r1, 10
  br i1 %r0, label %b2827, label %b2828

b2827:
  %r12 = call i32 @inb(i32 1021)
  %r11 = and i32 %r12, 96
  call void @func_b1602(i32 %r11, i32 0, i32 13)
  call void @func_b1988(i32 %r1)
  tail call void @returnTo(i32 %r6)
  ret void

b2828:
  call void @func_b1988(i32 %r1)
  tail call void @returnTo(i32 %r6)
  ret void
}

define void @keyboardInterrupt() {
  %r22 = load i32, i32* @keyb_layout
  br label %keyboardInterrupt

keyboardInterrupt:
  %r6 = call i32 @inb(i32 33)
  %r5 = or i32 %r6, 2
  call void @outb(i32 33, i32 %r5)
  call void @outb(i32 32, i32 97)
  %r4 = call i32 @inb(i32 33)
  %r3 = and i32 %r4, -3
  call void @outb(i32 33, i32 %r3)
  %r2 = call i32 @inb(i32 96)
  %r1 = lshr i32 %r2, 7
  %r0 = icmp eq i32 %r1, 0
  br i1 %r0, label %b1137, label %b1136

b1137:
  %r23 = and i32 %r2, 127
  %r21 = add i32 %r22, %r23
  %r19 = inttoptr i32 %r21 to i8*
  %r20 = load i8, i8* %r19
  %r10 = zext i8 %r20 to i32
  %r17 = inttoptr i32 753702 to i16*
  %r18 = load i16, i16* %r17
  %r16 = zext i16 %r18 to i32
  %r15 = and i32 %r16, 65280
  %r13 = or i32 %r15, %r10
  %r12 = inttoptr i32 753702 to i16*
  %r14 = trunc i32 %r13 to i16
  store i16 %r14, i16* %r12
  %r9 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r11 = trunc i32 %r10 to i8
  store i8 %r11, i8* %r9
  %r8 = lshr i32 %r2, 7
  %r7 = icmp eq i32 %r8, 1
  br i1 %r7, label %b1134, label %b1384

b1136:
  %r25 = lshr i32 %r2, 7
  %r24 = icmp eq i32 %r25, 1
  br i1 %r24, label %b1134, label %b1384

b1134:
  %r38 = phi i32 [%r2, %b1137], [%r2, %b1136]
  %r37 = and i32 %r38, 127
  %r36 = add i32 %r22, %r37
  %r34 = inttoptr i32 %r36 to i8*
  %r35 = load i8, i8* %r34
  %r32 = zext i8 %r35 to i32
  %r31 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r33 = trunc i32 %r32 to i8
  store i8 %r33, i8* %r31
  %r30 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r29 = load i1, i1* %r30
  %r28 = zext i1 %r29 to i32
  %r27 = mul i32 %r28, 72
  %r26 = add i32 ptrtoint(i8* @users to i32), %r27
  tail call void @returnTo(i32 %r26)
  ret void

b1384:
  %r43 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r42 = load i1, i1* %r43
  %r41 = zext i1 %r42 to i32
  %r40 = mul i32 %r41, 72
  %r39 = add i32 ptrtoint(i8* @users to i32), %r40
  tail call void @returnTo(i32 %r39)
  ret void
}

define internal i32 @func_b1638(i32 %r0, i32 %r1) {
  br label %b1638

b1638:
  %r2 = icmp ule i32 %r0, %r1
  br i1 %r2, label %b1165, label %b1166

b1165:
  %r4 = add i32 %r0, 48
  %r3 = and i32 %r4, 255
  ret i32 %r3

b1166:
  %r6 = add i32 %r0, 87
  %r5 = and i32 %r6, 255
  ret i32 %r5
}

define internal void @func_b865(i32 %r0, i32 %r1) {
  br label %b865

b865:
  %r11 = mul i32 %r0, 2
  %r5 = add i32 %r11, 753664
  %r9 = inttoptr i32 %r5 to i16*
  %r10 = load i16, i16* %r9
  %r8 = zext i16 %r10 to i32
  %r7 = and i32 %r1, 255
  %r6 = and i32 %r8, 65280
  %r3 = or i32 %r6, %r7
  %r2 = inttoptr i32 %r5 to i16*
  %r4 = trunc i32 %r3 to i16
  store i16 %r4, i16* %r2
  ret void
}

define internal void @func_b1685(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1685

b1685:
  %r7 = phi i32 [%r0, %0], [%r5, %b1685]
  %r6 = phi i32 [%r1, %0], [%r6, %b1685]
  %r13 = phi i32 [%r2, %0], [%r13, %b1685]
  %r17 = phi i32 [%r3, %0], [%r17, %b1685]
  %r15 = mul i32 %r17, 160
  %r16 = mul i32 %r7, 2
  %r14 = add i32 %r15, %r16
  %r11 = add i32 %r14, 753664
  %r12 = shl i32 %r13, 8
  %r9 = or i32 %r12, 32
  %r8 = inttoptr i32 %r11 to i16*
  %r10 = trunc i32 %r9 to i16
  store i16 %r10, i16* %r8
  %r5 = add i32 %r7, 1
  %r4 = icmp ule i32 %r5, %r6
  br i1 %r4, label %b1685, label %b303

b303:
  ret void
}

define internal void @func_b1244() {
  br label %b1244

b1244:
  %r23 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r24 = load i8, i8* %r23
  %r17 = zext i8 %r24 to i32
  %r22 = add i32 ptrtoint(i8* @console to i32), 1
  %r20 = inttoptr i32 %r22 to i8*
  %r21 = load i8, i8* %r20
  %r13 = zext i8 %r21 to i32
  %r19 = add i32 ptrtoint(i8* @console to i32), 4
  %r16 = inttoptr i32 %r19 to i8*
  %r18 = trunc i32 %r17 to i8
  store i8 %r18, i8* %r16
  %r15 = add i32 ptrtoint(i8* @console to i32), 5
  %r12 = inttoptr i32 %r15 to i8*
  %r14 = trunc i32 %r13 to i8
  store i8 %r14, i8* %r12
  %r11 = add i32 ptrtoint(i8* @console to i32), 2
  %r9 = inttoptr i32 %r11 to i8*
  %r10 = load i8, i8* %r9
  %r8 = zext i8 %r10 to i32
  %r7 = add i32 ptrtoint(i8* @console to i32), 3
  %r5 = inttoptr i32 %r7 to i8*
  %r6 = load i8, i8* %r5
  %r4 = zext i8 %r6 to i32
  %r3 = add i32 ptrtoint(i8* @console to i32), 6
  %r1 = inttoptr i32 %r3 to i8*
  %r2 = load i8, i8* %r1
  %r0 = zext i8 %r2 to i32
  br label %b1687

b1687:
  %r28 = phi i32 [%r17, %b1244], [%r26, %b1687]
  %r27 = phi i32 [%r8, %b1244], [%r27, %b1687]
  %r31 = phi i32 [%r0, %b1244], [%r31, %b1687]
  %r30 = phi i32 [%r4, %b1244], [%r30, %b1687]
  %r29 = phi i32 [%r13, %b1244], [%r29, %b1687]
  call void @func_b1685(i32 %r29, i32 %r30, i32 %r31, i32 %r28)
  %r26 = add i32 %r28, 1
  %r25 = icmp ule i32 %r26, %r27
  br i1 %r25, label %b1687, label %b303

b303:
  ret void
}

define internal void @func_b5183(i32 %r0) {
  br label %b5183

b5183:
  %r5 = phi i32 [%r0, %0], [%r6, %b5190], [%r6, %b5192]
  %r3 = inttoptr i32 %r5 to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b4261, label %b5185

b4261:
  %r7 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  store i1 false, i1* %r7
  ret void

b5185:
  %r6 = add i32 %r5, 1
  br label %b5187

b5187:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1602(i32 %r9, i32 0, i32 %r2)
  %r8 = icmp eq i32 %r2, 10
  br i1 %r8, label %b5190, label %b5192

b5190:
  %r12 = call i32 @inb(i32 1021)
  %r11 = and i32 %r12, 96
  call void @func_b1602(i32 %r11, i32 0, i32 13)
  call void @func_b1988(i32 %r2)
  br label %b5183

b5192:
  call void @func_b1988(i32 %r2)
  br label %b5183
}

define internal i32 @func_b5219() {
  br label %b5219

b5219:
  %r2 = inttoptr i32 ptrtoint(i8* @str0 to i32) to i8*
  %r3 = load i8, i8* %r2
  %r1 = zext i8 %r3 to i32
  %r0 = icmp eq i32 %r1, 0
  br i1 %r0, label %b1850, label %b5221

b1850:
  ret i32 0

b5221:
  %r4 = add i32 ptrtoint(i8* @str0 to i32), 1
  br label %b5208

b5208:
  %r6 = phi i32 [%r1, %b5221], [%r11, %b5206]
  %r10 = phi i32 [%r4, %b5221], [%r9, %b5206]
  %r8 = call i32 @inb(i32 1021)
  %r7 = and i32 %r8, 96
  call void @func_b1602(i32 %r7, i32 0, i32 %r6)
  %r5 = icmp eq i32 %r6, 10
  br i1 %r5, label %b5211, label %b5213

b5211:
  %r17 = call i32 @inb(i32 1021)
  %r16 = and i32 %r17, 96
  call void @func_b1602(i32 %r16, i32 0, i32 13)
  call void @func_b1988(i32 %r6)
  %r14 = inttoptr i32 %r10 to i8*
  %r15 = load i8, i8* %r14
  %r13 = zext i8 %r15 to i32
  %r12 = icmp eq i32 %r13, 0
  br i1 %r12, label %b1850, label %b5206

b5213:
  call void @func_b1988(i32 %r6)
  %r20 = inttoptr i32 %r10 to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1850, label %b5206

b5206:
  %r11 = phi i32 [%r13, %b5211], [%r19, %b5213]
  %r22 = phi i32 [%r10, %b5211], [%r10, %b5213]
  %r9 = add i32 %r22, 1
  br label %b5208
}

define internal void @func_b6700(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5, i32 %r6) {
  br label %b6700

b6700:
  %r11 = phi i32 [%r0, %0], [%r22, %b6695], [%r11, %b6688]
  %r10 = phi i32 [%r1, %0], [%r21, %b6695], [%r20, %b6688]
  %r9 = phi i32 [%r2, %0], [79, %b6695], [79, %b6688]
  %r18 = phi i32 [%r3, %0], [%r19, %b6695], [%r18, %b6688]
  %r16 = phi i32 [%r4, %0], [%r17, %b6695], [%r16, %b6688]
  %r14 = phi i32 [%r5, %0], [%r15, %b6695], [%r14, %b6688]
  %r12 = phi i32 [%r6, %0], [%r13, %b6695], [%r12, %b6688]
  %r8 = add i32 %r10, %r11
  %r7 = icmp ule i32 %r8, %r9
  br i1 %r7, label %b6690, label %b6695

b6690:
  %r24 = add i32 %r14, %r12
  %r23 = icmp ule i32 %r24, 24
  br i1 %r23, label %b6688, label %b6695

b6695:
  %r27 = phi i32 [1, %b6700], [1, %b6690]
  %r26 = phi i32 [%r10, %b6700], [%r10, %b6690]
  %r19 = phi i32 [%r18, %b6700], [%r18, %b6690]
  %r22 = phi i32 [%r11, %b6700], [%r11, %b6690]
  %r13 = phi i32 [%r12, %b6700], [%r12, %b6690]
  %r15 = phi i32 [%r14, %b6700], [%r14, %b6690]
  %r17 = phi i32 [%r16, %b6700], [%r16, %b6690]
  %r21 = add i32 %r26, %r27
  %r25 = icmp ule i32 %r21, %r19
  br i1 %r25, label %b6700, label %b303

b6688:
  %r36 = mul i32 %r24, 160
  %r37 = mul i32 %r8, 2
  %r35 = add i32 %r36, %r37
  %r32 = add i32 %r35, 753664
  %r34 = shl i32 %r16, 8
  %r33 = and i32 %r34, 65280
  %r30 = or i32 %r33, 32
  %r29 = inttoptr i32 %r32 to i16*
  %r31 = trunc i32 %r30 to i16
  store i16 %r31, i16* %r29
  %r20 = add i32 %r10, 1
  %r28 = icmp ule i32 %r20, %r18
  br i1 %r28, label %b6700, label %b303

b303:
  ret void
}

define internal void @func_b6701(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5, i32 %r6, i32 %r7) {
  br label %b6701

b6701:
  %r12 = phi i32 [%r0, %0], [1, %b2232]
  %r11 = phi i32 [%r1, %0], [%r9, %b2232]
  %r10 = phi i32 [%r2, %0], [0, %b2232]
  %r17 = phi i32 [%r3, %0], [%r17, %b2232]
  %r16 = phi i32 [%r4, %0], [%r16, %b2232]
  %r15 = phi i32 [%r5, %0], [%r15, %b2232]
  %r14 = phi i32 [%r6, %0], [%r14, %b2232]
  %r13 = phi i32 [%r7, %0], [%r13, %b2232]
  %r9 = add i32 %r11, %r12
  %r8 = icmp ule i32 %r9, %r10
  br i1 %r8, label %b2232, label %b303

b2232:
  call void @func_b6700(i32 %r13, i32 %r17, i32 79, i32 %r16, i32 %r15, i32 %r9, i32 %r14)
  br label %b6701

b303:
  ret void
}

define internal void @func_b6709(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5, i32 %r6, i32 %r7) {
  br label %b6709

b6709:
  %r12 = phi i32 [%r0, %0], [1, %b2241]
  %r11 = phi i32 [%r1, %0], [%r9, %b2241]
  %r10 = phi i32 [%r2, %0], [%r10, %b2241]
  %r17 = phi i32 [%r3, %0], [%r17, %b2241]
  %r16 = phi i32 [%r4, %0], [%r16, %b2241]
  %r15 = phi i32 [%r5, %0], [%r15, %b2241]
  %r14 = phi i32 [%r6, %0], [%r14, %b2241]
  %r13 = phi i32 [%r7, %0], [%r13, %b2241]
  %r9 = add i32 %r11, %r12
  %r8 = icmp ule i32 %r9, %r10
  br i1 %r8, label %b2241, label %b303

b2241:
  call void @func_b6700(i32 %r13, i32 %r17, i32 79, i32 %r16, i32 %r15, i32 %r9, i32 %r14)
  br label %b6709

b303:
  ret void
}

define internal void @func_b6180(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5) {
  br label %b6180

b6180:
  %r6 = icmp ule i32 %r0, %r1
  br i1 %r6, label %b6182, label %b2231

b6182:
  %r13 = add i32 ptrtoint(i8* @console to i32), 1
  %r11 = inttoptr i32 %r13 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r8 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  br label %b2241

b2231:
  %r20 = add i32 ptrtoint(i8* @console to i32), 1
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r17 = zext i8 %r19 to i32
  %r15 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  br label %b2232

b2241:
  %r25 = phi i32 [%r2, %b6182], [%r28, %b6709]
  %r27 = phi i32 [%r0, %b6182], [%r27, %b6709]
  %r21 = phi i32 [%r10, %b6182], [%r21, %b6709]
  %r26 = phi i32 [%r7, %b6182], [%r26, %b6709]
  %r24 = phi i32 [%r3, %b6182], [%r24, %b6709]
  %r23 = phi i32 [%r4, %b6182], [%r23, %b6709]
  %r22 = phi i32 [%r5, %b6182], [%r22, %b6709]
  call void @func_b6700(i32 %r21, i32 %r22, i32 79, i32 %r23, i32 %r24, i32 %r25, i32 %r26)
  br label %b6709

b2232:
  %r33 = phi i32 [%r2, %b2231], [%r35, %b6701]
  %r29 = phi i32 [%r17, %b2231], [%r29, %b6701]
  %r34 = phi i32 [%r14, %b2231], [%r34, %b6701]
  %r32 = phi i32 [%r3, %b2231], [%r32, %b6701]
  %r31 = phi i32 [%r4, %b2231], [%r31, %b6701]
  %r30 = phi i32 [%r5, %b2231], [%r30, %b6701]
  call void @func_b6700(i32 %r29, i32 %r30, i32 79, i32 %r31, i32 %r32, i32 %r33, i32 %r34)
  br label %b6701

b6709:
  %r28 = add i32 %r25, 1
  %r36 = icmp ule i32 %r28, %r27
  br i1 %r36, label %b2241, label %b303

b6701:
  %r35 = add i32 %r33, 1
  %r37 = icmp ule i32 %r35, 0
  br i1 %r37, label %b2232, label %b303

b303:
  ret void
}

define internal void @func_b6201(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5) {
  br label %b6201

b6201:
  %r6 = icmp ule i32 %r0, %r1
  br i1 %r6, label %b6182, label %b2240

b6182:
  %r13 = add i32 ptrtoint(i8* @console to i32), 1
  %r11 = inttoptr i32 %r13 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r8 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  br label %b2241

b2240:
  %r20 = add i32 ptrtoint(i8* @console to i32), 1
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r17 = zext i8 %r19 to i32
  %r15 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  br label %b2241

b2241:
  %r25 = phi i32 [%r2, %b6182], [%r2, %b2240], [%r28, %b6709]
  %r27 = phi i32 [%r0, %b6182], [%r1, %b2240], [%r27, %b6709]
  %r21 = phi i32 [%r10, %b6182], [%r17, %b2240], [%r21, %b6709]
  %r26 = phi i32 [%r7, %b6182], [%r14, %b2240], [%r26, %b6709]
  %r24 = phi i32 [%r3, %b6182], [%r3, %b2240], [%r24, %b6709]
  %r23 = phi i32 [%r4, %b6182], [%r4, %b2240], [%r23, %b6709]
  %r22 = phi i32 [%r5, %b6182], [%r5, %b2240], [%r22, %b6709]
  call void @func_b6700(i32 %r21, i32 %r22, i32 79, i32 %r23, i32 %r24, i32 %r25, i32 %r26)
  br label %b6709

b6709:
  %r28 = add i32 %r25, 1
  %r29 = icmp ule i32 %r28, %r27
  br i1 %r29, label %b2241, label %b303

b303:
  ret void
}

define internal void @func_b6713(i32 %r0, i32 %r1, i32 %r2) {
  %r25 = load i32, i32* @gameoverZone
  %r30 = load i32, i32* @ball
  br label %b6713

b6713:
  %r7 = phi i32 [%r0, %0], [1, %b6715], [1, %b6224], [1, %b2716], [1, %b6975], [1, %b6976], [1, %b6973], [1, %b6971], [1, %b6175], [1, %b3217], [1, %b3211]
  %r6 = phi i32 [%r1, %0], [%r4, %b6715], [%r4, %b6224], [%r4, %b2716], [%r8, %b6975], [%r8, %b6976], [%r8, %b6973], [%r8, %b6971], [%r9, %b6175], [%r8, %b3217], [%r8, %b3211]
  %r5 = phi i32 [%r2, %0], [20, %b6715], [20, %b6224], [20, %b2716], [20, %b6975], [20, %b6976], [20, %b6973], [20, %b6971], [20, %b6175], [20, %b3217], [20, %b3211]
  %r4 = add i32 %r6, %r7
  %r3 = icmp ule i32 %r4, %r5
  br i1 %r3, label %b6715, label %b2034

b6715:
  %r16 = mul i32 %r4, 24
  %r15 = add i32 ptrtoint(i8* @objects to i32), %r16
  %r14 = add i32 %r15, 20
  %r13 = inttoptr i32 %r14 to i32*
  %r12 = load i32, i32* %r13
  %r11 = and i32 %r12, 16
  %r10 = icmp ne i32 %r11, 0
  br i1 %r10, label %b2715, label %b6713

b2034:
  %r42 = add i32 %r30, 8
  %r41 = inttoptr i32 %r42 to i32*
  %r18 = load i32, i32* %r41
  %r40 = add i32 %r25, 8
  %r39 = inttoptr i32 %r40 to i32*
  %r20 = load i32, i32* %r39
  %r38 = add i32 %r30, 12
  %r37 = inttoptr i32 %r38 to i32*
  %r36 = load i32, i32* %r37
  %r35 = add i32 %r25, 12
  %r34 = inttoptr i32 %r35 to i32*
  %r33 = load i32, i32* %r34
  %r32 = inttoptr i32 %r30 to i32*
  %r31 = load i32, i32* %r32
  %r29 = add i32 %r30, 4
  %r28 = inttoptr i32 %r29 to i32*
  %r27 = load i32, i32* %r28
  %r26 = inttoptr i32 %r25 to i32*
  %r21 = load i32, i32* %r26
  %r24 = add i32 %r25, 4
  %r23 = inttoptr i32 %r24 to i32*
  %r22 = load i32, i32* %r23
  %r19 = add i32 %r20, %r21
  %r17 = icmp ult i32 %r18, %r19
  br i1 %r17, label %b2035, label %b303

b2715:
  %r55 = add i32 %r15, 8
  %r54 = inttoptr i32 %r55 to i32*
  %r53 = load i32, i32* %r54
  %r52 = add i32 ptrtoint(i8* @console to i32), 1
  %r50 = inttoptr i32 %r52 to i8*
  %r51 = load i8, i8* %r50
  %r46 = zext i8 %r51 to i32
  %r49 = add i32 ptrtoint(i8* @console to i32), 3
  %r47 = inttoptr i32 %r49 to i8*
  %r48 = load i8, i8* %r47
  %r45 = zext i8 %r48 to i32
  %r44 = sub i32 %r45, %r46
  %r43 = icmp ule i32 %r44, 79
  br i1 %r43, label %b6224, label %b2716

b2035:
  %r57 = add i32 %r18, %r31
  %r56 = icmp ugt i32 %r57, %r20
  br i1 %r56, label %b2036, label %b303

b303:
  ret void

b6224:
  %r58 = icmp ule i32 %r53, %r44
  br i1 %r58, label %b6712, label %b6713

b2716:
  %r60 = call i32 @func_b5219()
  %r59 = icmp ule i32 %r53, %r60
  br i1 %r59, label %b6712, label %b6713

b2036:
  %r62 = add i32 %r33, %r22
  %r61 = icmp ult i32 %r36, %r62
  br i1 %r61, label %b2037, label %b303

b6712:
  %r77 = phi i32 [%r53, %b6224], [%r53, %b2716]
  %r75 = phi i32 [%r15, %b6224], [%r15, %b2716]
  %r76 = phi i32 [%r44, %b6224], [%r60, %b2716]
  %r8 = phi i32 [%r4, %b6224], [%r4, %b2716]
  %r74 = add i32 %r75, 12
  %r73 = inttoptr i32 %r74 to i32*
  %r72 = load i32, i32* %r73
  %r70 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r71 = load i8, i8* %r70
  %r66 = zext i8 %r71 to i32
  %r69 = add i32 ptrtoint(i8* @console to i32), 2
  %r67 = inttoptr i32 %r69 to i8*
  %r68 = load i8, i8* %r67
  %r65 = zext i8 %r68 to i32
  %r64 = sub i32 %r65, %r66
  %r63 = icmp ule i32 %r64, 24
  br i1 %r63, label %b6975, label %b6976

b2037:
  %r79 = add i32 %r36, %r27
  %r78 = icmp ugt i32 %r79, %r33
  br i1 %r78, label %b1041, label %b303

b6975:
  %r80 = icmp ule i32 %r72, %r64
  br i1 %r80, label %b6992, label %b6713

b6976:
  %r81 = icmp ule i32 %r72, 0
  br i1 %r81, label %b6991, label %b6713

b1041:
  call void @func_b1244()
  %r84 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r85 = load i8, i8* %r84
  %r83 = zext i8 %r85 to i32
  %r82 = icmp eq i32 %r83, 0
  br i1 %r82, label %b4261, label %b5218

b6992:
  %r96 = inttoptr i32 %r75 to i32*
  %r89 = load i32, i32* %r96
  %r95 = add i32 %r75, 4
  %r94 = inttoptr i32 %r95 to i32*
  %r93 = load i32, i32* %r94
  %r92 = add i32 %r75, 16
  %r91 = inttoptr i32 %r92 to i32*
  %r90 = load i32, i32* %r91
  %r88 = add i32 %r77, %r89
  %r87 = add i32 %r88, -1
  %r86 = icmp ule i32 %r87, %r76
  br i1 %r86, label %b6973, label %b6974

b6991:
  %r107 = inttoptr i32 %r75 to i32*
  %r100 = load i32, i32* %r107
  %r106 = add i32 %r75, 4
  %r105 = inttoptr i32 %r106 to i32*
  %r104 = load i32, i32* %r105
  %r103 = add i32 %r75, 16
  %r102 = inttoptr i32 %r103 to i32*
  %r101 = load i32, i32* %r102
  %r99 = add i32 %r77, %r100
  %r98 = add i32 %r99, -1
  %r97 = icmp ule i32 %r98, %r76
  br i1 %r97, label %b6971, label %b6972

b4261:
  %r108 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  store i1 false, i1* %r108
  ret void

b5218:
  %r109 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %b5187

b6973:
  %r111 = add i32 %r72, %r93
  %r110 = add i32 %r111, -1
  call void @func_b6201(i32 %r110, i32 %r64, i32 %r72, i32 %r90, i32 %r87, i32 %r77)
  br label %b6713

b6974:
  %r114 = add i32 %r72, %r93
  %r113 = add i32 %r114, -1
  %r112 = icmp ule i32 %r113, %r64
  br i1 %r112, label %b6175, label %b3217

b6971:
  %r116 = add i32 %r72, %r104
  %r115 = add i32 %r116, -1
  call void @func_b6180(i32 %r115, i32 0, i32 %r72, i32 %r101, i32 %r98, i32 %r77)
  br label %b6713

b6972:
  %r119 = add i32 %r72, %r104
  %r118 = add i32 %r119, -1
  %r117 = icmp ule i32 %r118, 0
  br i1 %r117, label %b6175, label %b3211

b5187:
  %r121 = phi i32 [%r83, %b5218], [%r126, %b5185]
  %r125 = phi i32 [%r109, %b5218], [%r124, %b5185]
  %r123 = call i32 @inb(i32 1021)
  %r122 = and i32 %r123, 96
  call void @func_b1602(i32 %r122, i32 0, i32 %r121)
  %r120 = icmp eq i32 %r121, 10
  br i1 %r120, label %b5190, label %b5192

b6175:
  %r128 = phi i32 [%r113, %b6974], [%r118, %b6972]
  %r129 = phi i32 [%r77, %b6974], [%r77, %b6972]
  %r130 = phi i32 [%r76, %b6974], [%r76, %b6972]
  %r131 = phi i32 [%r90, %b6974], [%r101, %b6972]
  %r127 = phi i32 [%r72, %b6974], [%r72, %b6972]
  %r9 = phi i32 [%r8, %b6974], [%r8, %b6972]
  %r138 = add i32 ptrtoint(i8* @console to i32), 1
  %r136 = inttoptr i32 %r138 to i8*
  %r137 = load i8, i8* %r136
  %r133 = zext i8 %r137 to i32
  %r134 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r135 = load i8, i8* %r134
  %r132 = zext i8 %r135 to i32
  call void @func_b6700(i32 %r133, i32 %r129, i32 79, i32 %r130, i32 %r131, i32 %r127, i32 %r132)
  call void @func_b6709(i32 1, i32 %r127, i32 %r128, i32 %r129, i32 %r130, i32 %r131, i32 %r132, i32 %r133)
  br label %b6713

b3217:
  %r145 = add i32 ptrtoint(i8* @console to i32), 1
  %r143 = inttoptr i32 %r145 to i8*
  %r144 = load i8, i8* %r143
  %r140 = zext i8 %r144 to i32
  %r141 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r142 = load i8, i8* %r141
  %r139 = zext i8 %r142 to i32
  call void @func_b6700(i32 %r140, i32 %r77, i32 79, i32 %r76, i32 %r90, i32 %r72, i32 %r139)
  call void @func_b6709(i32 1, i32 %r72, i32 %r64, i32 %r77, i32 %r76, i32 %r90, i32 %r139, i32 %r140)
  br label %b6713

b3211:
  %r152 = add i32 ptrtoint(i8* @console to i32), 1
  %r150 = inttoptr i32 %r152 to i8*
  %r151 = load i8, i8* %r150
  %r147 = zext i8 %r151 to i32
  %r148 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r149 = load i8, i8* %r148
  %r146 = zext i8 %r149 to i32
  call void @func_b6700(i32 %r147, i32 %r77, i32 79, i32 %r76, i32 %r101, i32 %r72, i32 %r146)
  call void @func_b6701(i32 1, i32 %r72, i32 0, i32 %r77, i32 %r76, i32 %r101, i32 %r146, i32 %r147)
  br label %b6713

b5190:
  %r154 = call i32 @inb(i32 1021)
  %r153 = and i32 %r154, 96
  call void @func_b1602(i32 %r153, i32 0, i32 13)
  call void @func_b1988(i32 %r121)
  br label %b5183

b5192:
  call void @func_b1988(i32 %r121)
  br label %b5183

b5183:
  %r158 = phi i32 [%r125, %b5190], [%r125, %b5192]
  %r156 = inttoptr i32 %r158 to i8*
  %r157 = load i8, i8* %r156
  %r126 = zext i8 %r157 to i32
  %r155 = icmp eq i32 %r126, 0
  br i1 %r155, label %b4261, label %b5185

b5185:
  %r124 = add i32 %r158, 1
  br label %b5187
}

define internal void @func_b6784(i32 %r0, i32 %r1, i32 %r2) {
  %r36 = load i32, i32* @ball
  %r121 = load i32, i32* @gameoverZone
  br label %b6784

b6784:
  %r7 = phi i32 [%r0, %0], [1, %b6786], [1, %b3230], [1, %b3701], [1, %b3703], [1, %b3704], [1, %b3705], [1, %b3706], [1, %b3707]
  %r6 = phi i32 [%r1, %0], [%r4, %b6786], [%r4, %b3230], [%r4, %b3701], [%r4, %b3703], [%r4, %b3704], [%r4, %b3705], [%r4, %b3706], [%r4, %b3707]
  %r5 = phi i32 [%r2, %0], [20, %b6786], [20, %b3230], [20, %b3701], [20, %b3703], [20, %b3704], [20, %b3705], [20, %b3706], [20, %b3707]
  %r4 = add i32 %r6, %r7
  %r3 = icmp ule i32 %r4, %r5
  br i1 %r3, label %b6786, label %b2720

b6786:
  %r14 = mul i32 %r4, 24
  %r13 = add i32 ptrtoint(i8* @objects to i32), %r14
  %r12 = add i32 %r13, 20
  %r11 = inttoptr i32 %r12 to i32*
  %r10 = load i32, i32* %r11
  %r9 = and i32 %r10, 16
  %r8 = icmp ne i32 %r9, 0
  br i1 %r8, label %b3230, label %b6784

b2720:
  %r19 = add i32 ptrtoint(i8* @objects to i32), 20
  %r18 = inttoptr i32 %r19 to i32*
  %r17 = load i32, i32* %r18
  %r16 = and i32 %r17, 16
  %r15 = icmp ne i32 %r16, 0
  br i1 %r15, label %b4687, label %b2504

b3230:
  %r21 = and i32 %r10, 1
  %r20 = icmp ne i32 %r21, 0
  br i1 %r20, label %b3701, label %b6784

b4687:
  %r34 = add i32 ptrtoint(i8* @objects to i32), 8
  %r33 = inttoptr i32 %r34 to i32*
  %r32 = load i32, i32* %r33
  %r31 = add i32 ptrtoint(i8* @console to i32), 1
  %r29 = inttoptr i32 %r31 to i8*
  %r30 = load i8, i8* %r29
  %r25 = zext i8 %r30 to i32
  %r28 = add i32 ptrtoint(i8* @console to i32), 3
  %r26 = inttoptr i32 %r28 to i8*
  %r27 = load i8, i8* %r26
  %r24 = zext i8 %r27 to i32
  %r23 = sub i32 %r24, %r25
  %r22 = icmp ule i32 %r23, 79
  br i1 %r22, label %b6356, label %b4688

b2504:
  br label %b6715

b3701:
  %r35 = icmp eq i32 %r13, %r36
  br i1 %r35, label %b6784, label %b3703

b6356:
  %r37 = icmp ule i32 %r32, %r23
  br i1 %r37, label %b6783, label %b2504

b4688:
  %r39 = call i32 @func_b5219()
  %r38 = icmp ule i32 %r32, %r39
  br i1 %r38, label %b6783, label %b2504

b6715:
  %r47 = phi i32 [1, %b2504], [%r48, %b6713], [1, %b6955], [1, %b6953], [1, %b6318], [1, %b2735], [1, %b2729]
  %r46 = mul i32 %r47, 24
  %r45 = add i32 ptrtoint(i8* @objects to i32), %r46
  %r44 = add i32 %r45, 20
  %r43 = inttoptr i32 %r44 to i32*
  %r42 = load i32, i32* %r43
  %r41 = and i32 %r42, 16
  %r40 = icmp ne i32 %r41, 0
  br i1 %r40, label %b2715, label %b6713

b3703:
  %r72 = add i32 %r13, 8
  %r71 = inttoptr i32 %r72 to i32*
  %r50 = load i32, i32* %r71
  %r70 = add i32 %r36, 8
  %r69 = inttoptr i32 %r70 to i32*
  %r52 = load i32, i32* %r69
  %r68 = add i32 %r13, 12
  %r67 = inttoptr i32 %r68 to i32*
  %r66 = load i32, i32* %r67
  %r65 = add i32 %r36, 12
  %r64 = inttoptr i32 %r65 to i32*
  %r63 = load i32, i32* %r64
  %r62 = inttoptr i32 %r13 to i32*
  %r61 = load i32, i32* %r62
  %r60 = add i32 %r13, 4
  %r59 = inttoptr i32 %r60 to i32*
  %r58 = load i32, i32* %r59
  %r57 = inttoptr i32 %r36 to i32*
  %r53 = load i32, i32* %r57
  %r56 = add i32 %r36, 4
  %r55 = inttoptr i32 %r56 to i32*
  %r54 = load i32, i32* %r55
  %r51 = add i32 %r52, %r53
  %r49 = icmp ult i32 %r50, %r51
  br i1 %r49, label %b3704, label %b6784

b6783:
  %r86 = phi i32 [%r32, %b6356], [%r32, %b4688]
  %r85 = phi i32 [%r23, %b6356], [%r39, %b4688]
  %r84 = add i32 ptrtoint(i8* @objects to i32), 12
  %r83 = inttoptr i32 %r84 to i32*
  %r82 = load i32, i32* %r83
  %r80 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r81 = load i8, i8* %r80
  %r76 = zext i8 %r81 to i32
  %r79 = add i32 ptrtoint(i8* @console to i32), 2
  %r77 = inttoptr i32 %r79 to i8*
  %r78 = load i8, i8* %r77
  %r75 = zext i8 %r78 to i32
  %r74 = sub i32 %r75, %r76
  %r73 = icmp ule i32 %r74, 24
  br i1 %r73, label %b6957, label %b6958

b2715:
  %r99 = add i32 %r45, 8
  %r98 = inttoptr i32 %r99 to i32*
  %r97 = load i32, i32* %r98
  %r96 = add i32 ptrtoint(i8* @console to i32), 1
  %r94 = inttoptr i32 %r96 to i8*
  %r95 = load i8, i8* %r94
  %r90 = zext i8 %r95 to i32
  %r93 = add i32 ptrtoint(i8* @console to i32), 3
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r89 = zext i8 %r92 to i32
  %r88 = sub i32 %r89, %r90
  %r87 = icmp ule i32 %r88, 79
  br i1 %r87, label %b6224, label %b2716

b6713:
  %r103 = phi i32 [1, %b6715], [1, %b6224], [1, %b2716], [1, %b6975], [1, %b6976], [1, %b6973], [1, %b6971], [1, %b6175], [1, %b3217], [1, %b3211]
  %r102 = phi i32 [%r47, %b6715], [%r47, %b6224], [%r47, %b2716], [%r104, %b6975], [%r104, %b6976], [%r104, %b6973], [%r104, %b6971], [%r105, %b6175], [%r104, %b3217], [%r104, %b3211]
  %r101 = phi i32 [20, %b6715], [20, %b6224], [20, %b2716], [20, %b6975], [20, %b6976], [20, %b6973], [20, %b6971], [20, %b6175], [20, %b3217], [20, %b3211]
  %r48 = add i32 %r102, %r103
  %r100 = icmp ule i32 %r48, %r101
  br i1 %r100, label %b6715, label %b2034

b3704:
  %r107 = add i32 %r50, %r61
  %r106 = icmp ugt i32 %r107, %r52
  br i1 %r106, label %b3705, label %b6784

b6957:
  %r108 = icmp ule i32 %r82, %r74
  br i1 %r108, label %b6982, label %b2504

b6958:
  %r109 = icmp ule i32 %r82, 0
  br i1 %r109, label %b6981, label %b2504

b6224:
  %r110 = icmp ule i32 %r97, %r88
  br i1 %r110, label %b6712, label %b6713

b2716:
  %r112 = call i32 @func_b5219()
  %r111 = icmp ule i32 %r97, %r112
  br i1 %r111, label %b6712, label %b6713

b2034:
  %r137 = add i32 %r36, 8
  %r136 = inttoptr i32 %r137 to i32*
  %r114 = load i32, i32* %r136
  %r135 = add i32 %r121, 8
  %r134 = inttoptr i32 %r135 to i32*
  %r116 = load i32, i32* %r134
  %r133 = add i32 %r36, 12
  %r132 = inttoptr i32 %r133 to i32*
  %r131 = load i32, i32* %r132
  %r130 = add i32 %r121, 12
  %r129 = inttoptr i32 %r130 to i32*
  %r128 = load i32, i32* %r129
  %r127 = inttoptr i32 %r36 to i32*
  %r126 = load i32, i32* %r127
  %r125 = add i32 %r36, 4
  %r124 = inttoptr i32 %r125 to i32*
  %r123 = load i32, i32* %r124
  %r122 = inttoptr i32 %r121 to i32*
  %r117 = load i32, i32* %r122
  %r120 = add i32 %r121, 4
  %r119 = inttoptr i32 %r120 to i32*
  %r118 = load i32, i32* %r119
  %r115 = add i32 %r116, %r117
  %r113 = icmp ult i32 %r114, %r115
  br i1 %r113, label %b2035, label %b303

b3705:
  %r139 = add i32 %r63, %r54
  %r138 = icmp ult i32 %r66, %r139
  br i1 %r138, label %b3706, label %b6784

b6982:
  %r150 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r143 = load i32, i32* %r150
  %r149 = add i32 ptrtoint(i8* @objects to i32), 4
  %r148 = inttoptr i32 %r149 to i32*
  %r147 = load i32, i32* %r148
  %r146 = add i32 ptrtoint(i8* @objects to i32), 16
  %r145 = inttoptr i32 %r146 to i32*
  %r144 = load i32, i32* %r145
  %r142 = add i32 %r86, %r143
  %r141 = add i32 %r142, -1
  %r140 = icmp ule i32 %r141, %r85
  br i1 %r140, label %b6955, label %b6956

b6981:
  %r161 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r154 = load i32, i32* %r161
  %r160 = add i32 ptrtoint(i8* @objects to i32), 4
  %r159 = inttoptr i32 %r160 to i32*
  %r158 = load i32, i32* %r159
  %r157 = add i32 ptrtoint(i8* @objects to i32), 16
  %r156 = inttoptr i32 %r157 to i32*
  %r155 = load i32, i32* %r156
  %r153 = add i32 %r86, %r154
  %r152 = add i32 %r153, -1
  %r151 = icmp ule i32 %r152, %r85
  br i1 %r151, label %b6953, label %b6954

b6712:
  %r176 = phi i32 [%r97, %b6224], [%r97, %b2716]
  %r174 = phi i32 [%r45, %b6224], [%r45, %b2716]
  %r175 = phi i32 [%r88, %b6224], [%r112, %b2716]
  %r104 = phi i32 [%r47, %b6224], [%r47, %b2716]
  %r173 = add i32 %r174, 12
  %r172 = inttoptr i32 %r173 to i32*
  %r171 = load i32, i32* %r172
  %r169 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r170 = load i8, i8* %r169
  %r165 = zext i8 %r170 to i32
  %r168 = add i32 ptrtoint(i8* @console to i32), 2
  %r166 = inttoptr i32 %r168 to i8*
  %r167 = load i8, i8* %r166
  %r164 = zext i8 %r167 to i32
  %r163 = sub i32 %r164, %r165
  %r162 = icmp ule i32 %r163, 24
  br i1 %r162, label %b6975, label %b6976

b2035:
  %r178 = add i32 %r114, %r126
  %r177 = icmp ugt i32 %r178, %r116
  br i1 %r177, label %b2036, label %b303

b303:
  ret void

b3706:
  %r180 = add i32 %r66, %r58
  %r179 = icmp ugt i32 %r180, %r63
  br i1 %r179, label %b3707, label %b6784

b6955:
  %r182 = add i32 %r82, %r147
  %r181 = add i32 %r182, -1
  call void @func_b6201(i32 %r181, i32 %r74, i32 %r82, i32 %r144, i32 %r141, i32 %r86)
  br label %b6715

b6956:
  %r185 = add i32 %r82, %r147
  %r184 = add i32 %r185, -1
  %r183 = icmp ule i32 %r184, %r74
  br i1 %r183, label %b6318, label %b2735

b6953:
  %r187 = add i32 %r82, %r158
  %r186 = add i32 %r187, -1
  call void @func_b6180(i32 %r186, i32 0, i32 %r82, i32 %r155, i32 %r152, i32 %r86)
  br label %b6715

b6954:
  %r190 = add i32 %r82, %r158
  %r189 = add i32 %r190, -1
  %r188 = icmp ule i32 %r189, 0
  br i1 %r188, label %b6318, label %b2729

b6975:
  %r191 = icmp ule i32 %r171, %r163
  br i1 %r191, label %b6992, label %b6713

b6976:
  %r192 = icmp ule i32 %r171, 0
  br i1 %r192, label %b6991, label %b6713

b2036:
  %r194 = add i32 %r128, %r118
  %r193 = icmp ult i32 %r131, %r194
  br i1 %r193, label %b2037, label %b303

b3707:
  %r201 = add i32 %r13, 20
  %r203 = inttoptr i32 %r201 to i32*
  %r202 = load i32, i32* %r203
  %r200 = and i32 %r202, -17
  %r199 = inttoptr i32 %r201 to i32*
  store i32 %r200, i32* %r199
  %r198 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r197 = load i32, i32* %r198
  %r196 = add i32 %r197, -1
  %r195 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r196, i32* %r195
  br label %b6784

b6318:
  %r205 = phi i32 [%r184, %b6956], [%r189, %b6954]
  %r206 = phi i32 [%r86, %b6956], [%r86, %b6954]
  %r207 = phi i32 [%r85, %b6956], [%r85, %b6954]
  %r208 = phi i32 [%r144, %b6956], [%r155, %b6954]
  %r204 = phi i32 [%r82, %b6956], [%r82, %b6954]
  %r215 = add i32 ptrtoint(i8* @console to i32), 1
  %r213 = inttoptr i32 %r215 to i8*
  %r214 = load i8, i8* %r213
  %r210 = zext i8 %r214 to i32
  %r211 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r212 = load i8, i8* %r211
  %r209 = zext i8 %r212 to i32
  call void @func_b6700(i32 %r210, i32 %r206, i32 79, i32 %r207, i32 %r208, i32 %r204, i32 %r209)
  call void @func_b6709(i32 1, i32 %r204, i32 %r205, i32 %r206, i32 %r207, i32 %r208, i32 %r209, i32 %r210)
  br label %b6715

b2735:
  %r222 = add i32 ptrtoint(i8* @console to i32), 1
  %r220 = inttoptr i32 %r222 to i8*
  %r221 = load i8, i8* %r220
  %r217 = zext i8 %r221 to i32
  %r218 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r219 = load i8, i8* %r218
  %r216 = zext i8 %r219 to i32
  call void @func_b6700(i32 %r217, i32 %r86, i32 79, i32 %r85, i32 %r144, i32 %r82, i32 %r216)
  call void @func_b6709(i32 1, i32 %r82, i32 %r74, i32 %r86, i32 %r85, i32 %r144, i32 %r216, i32 %r217)
  br label %b6715

b2729:
  %r229 = add i32 ptrtoint(i8* @console to i32), 1
  %r227 = inttoptr i32 %r229 to i8*
  %r228 = load i8, i8* %r227
  %r224 = zext i8 %r228 to i32
  %r225 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r226 = load i8, i8* %r225
  %r223 = zext i8 %r226 to i32
  call void @func_b6700(i32 %r224, i32 %r86, i32 79, i32 %r85, i32 %r155, i32 %r82, i32 %r223)
  call void @func_b6701(i32 1, i32 %r82, i32 0, i32 %r86, i32 %r85, i32 %r155, i32 %r223, i32 %r224)
  br label %b6715

b6992:
  %r240 = inttoptr i32 %r174 to i32*
  %r233 = load i32, i32* %r240
  %r239 = add i32 %r174, 4
  %r238 = inttoptr i32 %r239 to i32*
  %r237 = load i32, i32* %r238
  %r236 = add i32 %r174, 16
  %r235 = inttoptr i32 %r236 to i32*
  %r234 = load i32, i32* %r235
  %r232 = add i32 %r176, %r233
  %r231 = add i32 %r232, -1
  %r230 = icmp ule i32 %r231, %r175
  br i1 %r230, label %b6973, label %b6974

b6991:
  %r251 = inttoptr i32 %r174 to i32*
  %r244 = load i32, i32* %r251
  %r250 = add i32 %r174, 4
  %r249 = inttoptr i32 %r250 to i32*
  %r248 = load i32, i32* %r249
  %r247 = add i32 %r174, 16
  %r246 = inttoptr i32 %r247 to i32*
  %r245 = load i32, i32* %r246
  %r243 = add i32 %r176, %r244
  %r242 = add i32 %r243, -1
  %r241 = icmp ule i32 %r242, %r175
  br i1 %r241, label %b6971, label %b6972

b2037:
  %r253 = add i32 %r131, %r123
  %r252 = icmp ugt i32 %r253, %r128
  br i1 %r252, label %b1041, label %b303

b6973:
  %r255 = add i32 %r171, %r237
  %r254 = add i32 %r255, -1
  call void @func_b6201(i32 %r254, i32 %r163, i32 %r171, i32 %r234, i32 %r231, i32 %r176)
  br label %b6713

b6974:
  %r258 = add i32 %r171, %r237
  %r257 = add i32 %r258, -1
  %r256 = icmp ule i32 %r257, %r163
  br i1 %r256, label %b6175, label %b3217

b6971:
  %r260 = add i32 %r171, %r248
  %r259 = add i32 %r260, -1
  call void @func_b6180(i32 %r259, i32 0, i32 %r171, i32 %r245, i32 %r242, i32 %r176)
  br label %b6713

b6972:
  %r263 = add i32 %r171, %r248
  %r262 = add i32 %r263, -1
  %r261 = icmp ule i32 %r262, 0
  br i1 %r261, label %b6175, label %b3211

b1041:
  call void @func_b1244()
  %r266 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r267 = load i8, i8* %r266
  %r265 = zext i8 %r267 to i32
  %r264 = icmp eq i32 %r265, 0
  br i1 %r264, label %b4261, label %b5218

b6175:
  %r269 = phi i32 [%r257, %b6974], [%r262, %b6972]
  %r270 = phi i32 [%r176, %b6974], [%r176, %b6972]
  %r271 = phi i32 [%r175, %b6974], [%r175, %b6972]
  %r272 = phi i32 [%r234, %b6974], [%r245, %b6972]
  %r268 = phi i32 [%r171, %b6974], [%r171, %b6972]
  %r105 = phi i32 [%r104, %b6974], [%r104, %b6972]
  %r279 = add i32 ptrtoint(i8* @console to i32), 1
  %r277 = inttoptr i32 %r279 to i8*
  %r278 = load i8, i8* %r277
  %r274 = zext i8 %r278 to i32
  %r275 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r276 = load i8, i8* %r275
  %r273 = zext i8 %r276 to i32
  call void @func_b6700(i32 %r274, i32 %r270, i32 79, i32 %r271, i32 %r272, i32 %r268, i32 %r273)
  call void @func_b6709(i32 1, i32 %r268, i32 %r269, i32 %r270, i32 %r271, i32 %r272, i32 %r273, i32 %r274)
  br label %b6713

b3217:
  %r286 = add i32 ptrtoint(i8* @console to i32), 1
  %r284 = inttoptr i32 %r286 to i8*
  %r285 = load i8, i8* %r284
  %r281 = zext i8 %r285 to i32
  %r282 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r283 = load i8, i8* %r282
  %r280 = zext i8 %r283 to i32
  call void @func_b6700(i32 %r281, i32 %r176, i32 79, i32 %r175, i32 %r234, i32 %r171, i32 %r280)
  call void @func_b6709(i32 1, i32 %r171, i32 %r163, i32 %r176, i32 %r175, i32 %r234, i32 %r280, i32 %r281)
  br label %b6713

b3211:
  %r293 = add i32 ptrtoint(i8* @console to i32), 1
  %r291 = inttoptr i32 %r293 to i8*
  %r292 = load i8, i8* %r291
  %r288 = zext i8 %r292 to i32
  %r289 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r290 = load i8, i8* %r289
  %r287 = zext i8 %r290 to i32
  call void @func_b6700(i32 %r288, i32 %r176, i32 79, i32 %r175, i32 %r245, i32 %r171, i32 %r287)
  call void @func_b6701(i32 1, i32 %r171, i32 0, i32 %r176, i32 %r175, i32 %r245, i32 %r287, i32 %r288)
  br label %b6713

b4261:
  %r294 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  store i1 false, i1* %r294
  ret void

b5218:
  %r295 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %b5187

b5187:
  %r297 = phi i32 [%r265, %b5218], [%r302, %b5185]
  %r301 = phi i32 [%r295, %b5218], [%r300, %b5185]
  %r299 = call i32 @inb(i32 1021)
  %r298 = and i32 %r299, 96
  call void @func_b1602(i32 %r298, i32 0, i32 %r297)
  %r296 = icmp eq i32 %r297, 10
  br i1 %r296, label %b5190, label %b5192

b5190:
  %r304 = call i32 @inb(i32 1021)
  %r303 = and i32 %r304, 96
  call void @func_b1602(i32 %r303, i32 0, i32 13)
  call void @func_b1988(i32 %r297)
  br label %b5183

b5192:
  call void @func_b1988(i32 %r297)
  br label %b5183

b5183:
  %r308 = phi i32 [%r301, %b5190], [%r301, %b5192]
  %r306 = inttoptr i32 %r308 to i8*
  %r307 = load i8, i8* %r306
  %r302 = zext i8 %r307 to i32
  %r305 = icmp eq i32 %r302, 0
  br i1 %r305, label %b4261, label %b5185

b5185:
  %r300 = add i32 %r308, 1
  br label %b5187
}

define internal void @func_b3311(i32 %r0, i32 %r1) {
  %r4 = load i32, i32* @ball
  %r241 = load i32, i32* @gameoverZone
  br label %b3311

b3311:
  %r10 = phi i32 [%r0, %0], [%r12, %b6804], [%r11, %b3535], [%r10, %b3537]
  %r6 = phi i32 [%r1, %0], [%r9, %b6804], [%r8, %b3535], [%r7, %b3537]
  %r5 = mul i32 %r6, 24
  %r3 = add i32 ptrtoint(i8* @objects to i32), %r5
  %r2 = icmp eq i32 %r3, %r4
  br i1 %r2, label %b6804, label %b3539

b6804:
  %r16 = phi i32 [1, %b3311], [1, %b3539], [1, %b3669], [1, %b3716], [1, %b3731], [1, %b3744], [1, %b3752]
  %r15 = phi i32 [%r6, %b3311], [%r6, %b3539], [%r6, %b3669], [%r6, %b3716], [%r6, %b3731], [%r6, %b3744], [%r6, %b3752]
  %r14 = phi i32 [20, %b3311], [20, %b3539], [20, %b3669], [20, %b3716], [20, %b3731], [20, %b3744], [20, %b3752]
  %r12 = phi i32 [%r10, %b3311], [%r10, %b3539], [%r10, %b3669], [%r10, %b3716], [%r10, %b3731], [%r10, %b3744], [%r10, %b3752]
  %r9 = add i32 %r15, %r16
  %r13 = icmp ule i32 %r9, %r14
  br i1 %r13, label %b3311, label %b2208

b3539:
  %r21 = add i32 %r3, 20
  %r20 = inttoptr i32 %r21 to i32*
  %r19 = load i32, i32* %r20
  %r18 = and i32 %r19, 16
  %r17 = icmp ne i32 %r18, 0
  br i1 %r17, label %b3669, label %b6804

b2208:
  %r26 = add i32 ptrtoint(i8* @objects to i32), 20
  %r25 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r25
  %r23 = and i32 %r24, 16
  %r22 = icmp ne i32 %r23, 0
  br i1 %r22, label %b4703, label %b3080

b3669:
  %r28 = and i32 %r19, 2
  %r27 = icmp ne i32 %r28, 0
  br i1 %r27, label %b3716, label %b6804

b4703:
  %r30 = and i32 %r24, 1
  %r29 = icmp ne i32 %r30, 0
  br i1 %r29, label %b4704, label %b3080

b3080:
  br label %b6786

b3716:
  %r54 = add i32 %r3, 8
  %r53 = inttoptr i32 %r54 to i32*
  %r32 = load i32, i32* %r53
  %r52 = add i32 %r4, 8
  %r51 = inttoptr i32 %r52 to i32*
  %r34 = load i32, i32* %r51
  %r50 = add i32 %r3, 12
  %r49 = inttoptr i32 %r50 to i32*
  %r48 = load i32, i32* %r49
  %r47 = add i32 %r4, 12
  %r46 = inttoptr i32 %r47 to i32*
  %r45 = load i32, i32* %r46
  %r44 = inttoptr i32 %r3 to i32*
  %r43 = load i32, i32* %r44
  %r42 = add i32 %r3, 4
  %r41 = inttoptr i32 %r42 to i32*
  %r40 = load i32, i32* %r41
  %r39 = inttoptr i32 %r4 to i32*
  %r35 = load i32, i32* %r39
  %r38 = add i32 %r4, 4
  %r37 = inttoptr i32 %r38 to i32*
  %r36 = load i32, i32* %r37
  %r33 = add i32 %r34, %r35
  %r31 = icmp ult i32 %r32, %r33
  br i1 %r31, label %b3731, label %b6804

b4704:
  %r55 = icmp eq i32 ptrtoint(i8* @objects to i32), %r4
  br i1 %r55, label %b3080, label %b4705

b6786:
  %r63 = phi i32 [1, %b3080], [%r64, %b6784], [1, %b4709]
  %r62 = mul i32 %r63, 24
  %r61 = add i32 ptrtoint(i8* @objects to i32), %r62
  %r60 = add i32 %r61, 20
  %r59 = inttoptr i32 %r60 to i32*
  %r58 = load i32, i32* %r59
  %r57 = and i32 %r58, 16
  %r56 = icmp ne i32 %r57, 0
  br i1 %r56, label %b3230, label %b6784

b3731:
  %r66 = add i32 %r32, %r43
  %r65 = icmp ugt i32 %r66, %r34
  br i1 %r65, label %b3744, label %b6804

b4705:
  %r90 = add i32 ptrtoint(i8* @objects to i32), 8
  %r89 = inttoptr i32 %r90 to i32*
  %r68 = load i32, i32* %r89
  %r88 = add i32 %r4, 8
  %r87 = inttoptr i32 %r88 to i32*
  %r70 = load i32, i32* %r87
  %r86 = add i32 ptrtoint(i8* @objects to i32), 12
  %r85 = inttoptr i32 %r86 to i32*
  %r84 = load i32, i32* %r85
  %r83 = add i32 %r4, 12
  %r82 = inttoptr i32 %r83 to i32*
  %r81 = load i32, i32* %r82
  %r80 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r79 = load i32, i32* %r80
  %r78 = add i32 ptrtoint(i8* @objects to i32), 4
  %r77 = inttoptr i32 %r78 to i32*
  %r76 = load i32, i32* %r77
  %r75 = inttoptr i32 %r4 to i32*
  %r71 = load i32, i32* %r75
  %r74 = add i32 %r4, 4
  %r73 = inttoptr i32 %r74 to i32*
  %r72 = load i32, i32* %r73
  %r69 = add i32 %r70, %r71
  %r67 = icmp ult i32 %r68, %r69
  br i1 %r67, label %b4706, label %b3080

b3230:
  %r92 = and i32 %r58, 1
  %r91 = icmp ne i32 %r92, 0
  br i1 %r91, label %b3701, label %b6784

b6784:
  %r96 = phi i32 [1, %b6786], [1, %b3230], [1, %b3701], [1, %b3703], [1, %b3704], [1, %b3705], [1, %b3706], [1, %b3707]
  %r95 = phi i32 [%r63, %b6786], [%r63, %b3230], [%r63, %b3701], [%r63, %b3703], [%r63, %b3704], [%r63, %b3705], [%r63, %b3706], [%r63, %b3707]
  %r94 = phi i32 [20, %b6786], [20, %b3230], [20, %b3701], [20, %b3703], [20, %b3704], [20, %b3705], [20, %b3706], [20, %b3707]
  %r64 = add i32 %r95, %r96
  %r93 = icmp ule i32 %r64, %r94
  br i1 %r93, label %b6786, label %b2720

b3744:
  %r98 = add i32 %r45, %r36
  %r97 = icmp ult i32 %r48, %r98
  br i1 %r97, label %b3752, label %b6804

b4706:
  %r100 = add i32 %r68, %r79
  %r99 = icmp ugt i32 %r100, %r70
  br i1 %r99, label %b4707, label %b3080

b3701:
  %r101 = icmp eq i32 %r61, %r4
  br i1 %r101, label %b6784, label %b3703

b2720:
  %r106 = add i32 ptrtoint(i8* @objects to i32), 20
  %r105 = inttoptr i32 %r106 to i32*
  %r104 = load i32, i32* %r105
  %r103 = and i32 %r104, 16
  %r102 = icmp ne i32 %r103, 0
  br i1 %r102, label %b4687, label %b2504

b3752:
  %r108 = add i32 %r48, %r40
  %r107 = icmp ugt i32 %r108, %r45
  br i1 %r107, label %b3757, label %b6804

b4707:
  %r110 = add i32 %r81, %r72
  %r109 = icmp ult i32 %r84, %r110
  br i1 %r109, label %b4708, label %b3080

b3703:
  %r134 = add i32 %r61, 8
  %r133 = inttoptr i32 %r134 to i32*
  %r112 = load i32, i32* %r133
  %r132 = add i32 %r4, 8
  %r131 = inttoptr i32 %r132 to i32*
  %r114 = load i32, i32* %r131
  %r130 = add i32 %r61, 12
  %r129 = inttoptr i32 %r130 to i32*
  %r128 = load i32, i32* %r129
  %r127 = add i32 %r4, 12
  %r126 = inttoptr i32 %r127 to i32*
  %r125 = load i32, i32* %r126
  %r124 = inttoptr i32 %r61 to i32*
  %r123 = load i32, i32* %r124
  %r122 = add i32 %r61, 4
  %r121 = inttoptr i32 %r122 to i32*
  %r120 = load i32, i32* %r121
  %r119 = inttoptr i32 %r4 to i32*
  %r115 = load i32, i32* %r119
  %r118 = add i32 %r4, 4
  %r117 = inttoptr i32 %r118 to i32*
  %r116 = load i32, i32* %r117
  %r113 = add i32 %r114, %r115
  %r111 = icmp ult i32 %r112, %r113
  br i1 %r111, label %b3704, label %b6784

b4687:
  %r147 = add i32 ptrtoint(i8* @objects to i32), 8
  %r146 = inttoptr i32 %r147 to i32*
  %r145 = load i32, i32* %r146
  %r144 = add i32 ptrtoint(i8* @console to i32), 1
  %r142 = inttoptr i32 %r144 to i8*
  %r143 = load i8, i8* %r142
  %r138 = zext i8 %r143 to i32
  %r141 = add i32 ptrtoint(i8* @console to i32), 3
  %r139 = inttoptr i32 %r141 to i8*
  %r140 = load i8, i8* %r139
  %r137 = zext i8 %r140 to i32
  %r136 = sub i32 %r137, %r138
  %r135 = icmp ule i32 %r136, 79
  br i1 %r135, label %b6356, label %b4688

b2504:
  br label %b6715

b3757:
  %r159 = add i32 %r4, 4
  %r158 = inttoptr i32 %r159 to i32*
  %r153 = load i32, i32* %r158
  %r157 = add i32 %r3, 4
  %r156 = inttoptr i32 %r157 to i32*
  %r151 = load i32, i32* %r156
  %r155 = add i32 %r3, 12
  %r154 = inttoptr i32 %r155 to i32*
  %r149 = load i32, i32* %r154
  %r152 = add i32 %r10, %r153
  %r150 = add i32 %r149, %r151
  %r148 = icmp ule i32 %r10, %r149
  br i1 %r148, label %b3535, label %b3536

b4708:
  %r161 = add i32 %r84, %r76
  %r160 = icmp ugt i32 %r161, %r81
  br i1 %r160, label %b4709, label %b3080

b3704:
  %r163 = add i32 %r112, %r123
  %r162 = icmp ugt i32 %r163, %r114
  br i1 %r162, label %b3705, label %b6784

b6356:
  %r164 = icmp ule i32 %r145, %r136
  br i1 %r164, label %b6783, label %b2504

b4688:
  %r166 = call i32 @func_b5219()
  %r165 = icmp ule i32 %r145, %r166
  br i1 %r165, label %b6783, label %b2504

b6715:
  %r174 = phi i32 [1, %b2504], [%r175, %b6713], [1, %b6955], [1, %b6953], [1, %b6318], [1, %b2735], [1, %b2729]
  %r173 = mul i32 %r174, 24
  %r172 = add i32 ptrtoint(i8* @objects to i32), %r173
  %r171 = add i32 %r172, 20
  %r170 = inttoptr i32 %r171 to i32*
  %r169 = load i32, i32* %r170
  %r168 = and i32 %r169, 16
  %r167 = icmp ne i32 %r168, 0
  br i1 %r167, label %b2715, label %b6713

b3535:
  %r11 = phi i32 [%r10, %b3757], [%r10, %b3536]
  %r177 = phi i32 [%r6, %b3757], [%r6, %b3536]
  %r178 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r178
  %r8 = add i32 %r177, 1
  %r176 = icmp ule i32 %r8, 20
  br i1 %r176, label %b3311, label %b2208

b3536:
  %r179 = icmp uge i32 %r152, %r150
  br i1 %r179, label %b3535, label %b3537

b4709:
  %r186 = add i32 ptrtoint(i8* @objects to i32), 20
  %r188 = inttoptr i32 %r186 to i32*
  %r187 = load i32, i32* %r188
  %r185 = and i32 %r187, -17
  %r184 = inttoptr i32 %r186 to i32*
  store i32 %r185, i32* %r184
  %r183 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r182 = load i32, i32* %r183
  %r181 = add i32 %r182, -1
  %r180 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r181, i32* %r180
  br label %b6786

b3705:
  %r190 = add i32 %r125, %r116
  %r189 = icmp ult i32 %r128, %r190
  br i1 %r189, label %b3706, label %b6784

b6783:
  %r204 = phi i32 [%r145, %b6356], [%r145, %b4688]
  %r203 = phi i32 [%r136, %b6356], [%r166, %b4688]
  %r202 = add i32 ptrtoint(i8* @objects to i32), 12
  %r201 = inttoptr i32 %r202 to i32*
  %r200 = load i32, i32* %r201
  %r198 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r199 = load i8, i8* %r198
  %r194 = zext i8 %r199 to i32
  %r197 = add i32 ptrtoint(i8* @console to i32), 2
  %r195 = inttoptr i32 %r197 to i8*
  %r196 = load i8, i8* %r195
  %r193 = zext i8 %r196 to i32
  %r192 = sub i32 %r193, %r194
  %r191 = icmp ule i32 %r192, 24
  br i1 %r191, label %b6957, label %b6958

b2715:
  %r217 = add i32 %r172, 8
  %r216 = inttoptr i32 %r217 to i32*
  %r215 = load i32, i32* %r216
  %r214 = add i32 ptrtoint(i8* @console to i32), 1
  %r212 = inttoptr i32 %r214 to i8*
  %r213 = load i8, i8* %r212
  %r208 = zext i8 %r213 to i32
  %r211 = add i32 ptrtoint(i8* @console to i32), 3
  %r209 = inttoptr i32 %r211 to i8*
  %r210 = load i8, i8* %r209
  %r207 = zext i8 %r210 to i32
  %r206 = sub i32 %r207, %r208
  %r205 = icmp ule i32 %r206, 79
  br i1 %r205, label %b6224, label %b2716

b6713:
  %r221 = phi i32 [1, %b6715], [1, %b6224], [1, %b2716], [1, %b6975], [1, %b6976], [1, %b6973], [1, %b6971], [1, %b6175], [1, %b3217], [1, %b3211]
  %r220 = phi i32 [%r174, %b6715], [%r174, %b6224], [%r174, %b2716], [%r222, %b6975], [%r222, %b6976], [%r222, %b6973], [%r222, %b6971], [%r223, %b6175], [%r222, %b3217], [%r222, %b3211]
  %r219 = phi i32 [20, %b6715], [20, %b6224], [20, %b2716], [20, %b6975], [20, %b6976], [20, %b6973], [20, %b6971], [20, %b6175], [20, %b3217], [20, %b3211]
  %r175 = add i32 %r220, %r221
  %r218 = icmp ule i32 %r175, %r219
  br i1 %r218, label %b6715, label %b2034

b3537:
  %r225 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r225
  %r7 = add i32 %r6, 1
  %r224 = icmp ule i32 %r7, 20
  br i1 %r224, label %b3311, label %b2208

b3706:
  %r227 = add i32 %r128, %r120
  %r226 = icmp ugt i32 %r227, %r125
  br i1 %r226, label %b3707, label %b6784

b6957:
  %r228 = icmp ule i32 %r200, %r192
  br i1 %r228, label %b6982, label %b2504

b6958:
  %r229 = icmp ule i32 %r200, 0
  br i1 %r229, label %b6981, label %b2504

b6224:
  %r230 = icmp ule i32 %r215, %r206
  br i1 %r230, label %b6712, label %b6713

b2716:
  %r232 = call i32 @func_b5219()
  %r231 = icmp ule i32 %r215, %r232
  br i1 %r231, label %b6712, label %b6713

b2034:
  %r257 = add i32 %r4, 8
  %r256 = inttoptr i32 %r257 to i32*
  %r234 = load i32, i32* %r256
  %r255 = add i32 %r241, 8
  %r254 = inttoptr i32 %r255 to i32*
  %r236 = load i32, i32* %r254
  %r253 = add i32 %r4, 12
  %r252 = inttoptr i32 %r253 to i32*
  %r251 = load i32, i32* %r252
  %r250 = add i32 %r241, 12
  %r249 = inttoptr i32 %r250 to i32*
  %r248 = load i32, i32* %r249
  %r247 = inttoptr i32 %r4 to i32*
  %r246 = load i32, i32* %r247
  %r245 = add i32 %r4, 4
  %r244 = inttoptr i32 %r245 to i32*
  %r243 = load i32, i32* %r244
  %r242 = inttoptr i32 %r241 to i32*
  %r237 = load i32, i32* %r242
  %r240 = add i32 %r241, 4
  %r239 = inttoptr i32 %r240 to i32*
  %r238 = load i32, i32* %r239
  %r235 = add i32 %r236, %r237
  %r233 = icmp ult i32 %r234, %r235
  br i1 %r233, label %b2035, label %b303

b3707:
  %r264 = add i32 %r61, 20
  %r266 = inttoptr i32 %r264 to i32*
  %r265 = load i32, i32* %r266
  %r263 = and i32 %r265, -17
  %r262 = inttoptr i32 %r264 to i32*
  store i32 %r263, i32* %r262
  %r261 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r260 = load i32, i32* %r261
  %r259 = add i32 %r260, -1
  %r258 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r259, i32* %r258
  br label %b6784

b6982:
  %r277 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r270 = load i32, i32* %r277
  %r276 = add i32 ptrtoint(i8* @objects to i32), 4
  %r275 = inttoptr i32 %r276 to i32*
  %r274 = load i32, i32* %r275
  %r273 = add i32 ptrtoint(i8* @objects to i32), 16
  %r272 = inttoptr i32 %r273 to i32*
  %r271 = load i32, i32* %r272
  %r269 = add i32 %r204, %r270
  %r268 = add i32 %r269, -1
  %r267 = icmp ule i32 %r268, %r203
  br i1 %r267, label %b6955, label %b6956

b6981:
  %r288 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r281 = load i32, i32* %r288
  %r287 = add i32 ptrtoint(i8* @objects to i32), 4
  %r286 = inttoptr i32 %r287 to i32*
  %r285 = load i32, i32* %r286
  %r284 = add i32 ptrtoint(i8* @objects to i32), 16
  %r283 = inttoptr i32 %r284 to i32*
  %r282 = load i32, i32* %r283
  %r280 = add i32 %r204, %r281
  %r279 = add i32 %r280, -1
  %r278 = icmp ule i32 %r279, %r203
  br i1 %r278, label %b6953, label %b6954

b6712:
  %r303 = phi i32 [%r215, %b6224], [%r215, %b2716]
  %r301 = phi i32 [%r172, %b6224], [%r172, %b2716]
  %r302 = phi i32 [%r206, %b6224], [%r232, %b2716]
  %r222 = phi i32 [%r174, %b6224], [%r174, %b2716]
  %r300 = add i32 %r301, 12
  %r299 = inttoptr i32 %r300 to i32*
  %r298 = load i32, i32* %r299
  %r296 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r297 = load i8, i8* %r296
  %r292 = zext i8 %r297 to i32
  %r295 = add i32 ptrtoint(i8* @console to i32), 2
  %r293 = inttoptr i32 %r295 to i8*
  %r294 = load i8, i8* %r293
  %r291 = zext i8 %r294 to i32
  %r290 = sub i32 %r291, %r292
  %r289 = icmp ule i32 %r290, 24
  br i1 %r289, label %b6975, label %b6976

b2035:
  %r305 = add i32 %r234, %r246
  %r304 = icmp ugt i32 %r305, %r236
  br i1 %r304, label %b2036, label %b303

b303:
  ret void

b6955:
  %r307 = add i32 %r200, %r274
  %r306 = add i32 %r307, -1
  call void @func_b6201(i32 %r306, i32 %r192, i32 %r200, i32 %r271, i32 %r268, i32 %r204)
  br label %b6715

b6956:
  %r310 = add i32 %r200, %r274
  %r309 = add i32 %r310, -1
  %r308 = icmp ule i32 %r309, %r192
  br i1 %r308, label %b6318, label %b2735

b6953:
  %r312 = add i32 %r200, %r285
  %r311 = add i32 %r312, -1
  call void @func_b6180(i32 %r311, i32 0, i32 %r200, i32 %r282, i32 %r279, i32 %r204)
  br label %b6715

b6954:
  %r315 = add i32 %r200, %r285
  %r314 = add i32 %r315, -1
  %r313 = icmp ule i32 %r314, 0
  br i1 %r313, label %b6318, label %b2729

b6975:
  %r316 = icmp ule i32 %r298, %r290
  br i1 %r316, label %b6992, label %b6713

b6976:
  %r317 = icmp ule i32 %r298, 0
  br i1 %r317, label %b6991, label %b6713

b2036:
  %r319 = add i32 %r248, %r238
  %r318 = icmp ult i32 %r251, %r319
  br i1 %r318, label %b2037, label %b303

b6318:
  %r321 = phi i32 [%r309, %b6956], [%r314, %b6954]
  %r322 = phi i32 [%r204, %b6956], [%r204, %b6954]
  %r323 = phi i32 [%r203, %b6956], [%r203, %b6954]
  %r324 = phi i32 [%r271, %b6956], [%r282, %b6954]
  %r320 = phi i32 [%r200, %b6956], [%r200, %b6954]
  %r331 = add i32 ptrtoint(i8* @console to i32), 1
  %r329 = inttoptr i32 %r331 to i8*
  %r330 = load i8, i8* %r329
  %r326 = zext i8 %r330 to i32
  %r327 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r328 = load i8, i8* %r327
  %r325 = zext i8 %r328 to i32
  call void @func_b6700(i32 %r326, i32 %r322, i32 79, i32 %r323, i32 %r324, i32 %r320, i32 %r325)
  call void @func_b6709(i32 1, i32 %r320, i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326)
  br label %b6715

b2735:
  %r338 = add i32 ptrtoint(i8* @console to i32), 1
  %r336 = inttoptr i32 %r338 to i8*
  %r337 = load i8, i8* %r336
  %r333 = zext i8 %r337 to i32
  %r334 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r335 = load i8, i8* %r334
  %r332 = zext i8 %r335 to i32
  call void @func_b6700(i32 %r333, i32 %r204, i32 79, i32 %r203, i32 %r271, i32 %r200, i32 %r332)
  call void @func_b6709(i32 1, i32 %r200, i32 %r192, i32 %r204, i32 %r203, i32 %r271, i32 %r332, i32 %r333)
  br label %b6715

b2729:
  %r345 = add i32 ptrtoint(i8* @console to i32), 1
  %r343 = inttoptr i32 %r345 to i8*
  %r344 = load i8, i8* %r343
  %r340 = zext i8 %r344 to i32
  %r341 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r342 = load i8, i8* %r341
  %r339 = zext i8 %r342 to i32
  call void @func_b6700(i32 %r340, i32 %r204, i32 79, i32 %r203, i32 %r282, i32 %r200, i32 %r339)
  call void @func_b6701(i32 1, i32 %r200, i32 0, i32 %r204, i32 %r203, i32 %r282, i32 %r339, i32 %r340)
  br label %b6715

b6992:
  %r356 = inttoptr i32 %r301 to i32*
  %r349 = load i32, i32* %r356
  %r355 = add i32 %r301, 4
  %r354 = inttoptr i32 %r355 to i32*
  %r353 = load i32, i32* %r354
  %r352 = add i32 %r301, 16
  %r351 = inttoptr i32 %r352 to i32*
  %r350 = load i32, i32* %r351
  %r348 = add i32 %r303, %r349
  %r347 = add i32 %r348, -1
  %r346 = icmp ule i32 %r347, %r302
  br i1 %r346, label %b6973, label %b6974

b6991:
  %r367 = inttoptr i32 %r301 to i32*
  %r360 = load i32, i32* %r367
  %r366 = add i32 %r301, 4
  %r365 = inttoptr i32 %r366 to i32*
  %r364 = load i32, i32* %r365
  %r363 = add i32 %r301, 16
  %r362 = inttoptr i32 %r363 to i32*
  %r361 = load i32, i32* %r362
  %r359 = add i32 %r303, %r360
  %r358 = add i32 %r359, -1
  %r357 = icmp ule i32 %r358, %r302
  br i1 %r357, label %b6971, label %b6972

b2037:
  %r369 = add i32 %r251, %r243
  %r368 = icmp ugt i32 %r369, %r248
  br i1 %r368, label %b1041, label %b303

b6973:
  %r371 = add i32 %r298, %r353
  %r370 = add i32 %r371, -1
  call void @func_b6201(i32 %r370, i32 %r290, i32 %r298, i32 %r350, i32 %r347, i32 %r303)
  br label %b6713

b6974:
  %r374 = add i32 %r298, %r353
  %r373 = add i32 %r374, -1
  %r372 = icmp ule i32 %r373, %r290
  br i1 %r372, label %b6175, label %b3217

b6971:
  %r376 = add i32 %r298, %r364
  %r375 = add i32 %r376, -1
  call void @func_b6180(i32 %r375, i32 0, i32 %r298, i32 %r361, i32 %r358, i32 %r303)
  br label %b6713

b6972:
  %r379 = add i32 %r298, %r364
  %r378 = add i32 %r379, -1
  %r377 = icmp ule i32 %r378, 0
  br i1 %r377, label %b6175, label %b3211

b1041:
  call void @func_b1244()
  %r382 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r383 = load i8, i8* %r382
  %r381 = zext i8 %r383 to i32
  %r380 = icmp eq i32 %r381, 0
  br i1 %r380, label %b4261, label %b5218

b6175:
  %r385 = phi i32 [%r373, %b6974], [%r378, %b6972]
  %r386 = phi i32 [%r303, %b6974], [%r303, %b6972]
  %r387 = phi i32 [%r302, %b6974], [%r302, %b6972]
  %r388 = phi i32 [%r350, %b6974], [%r361, %b6972]
  %r384 = phi i32 [%r298, %b6974], [%r298, %b6972]
  %r223 = phi i32 [%r222, %b6974], [%r222, %b6972]
  %r395 = add i32 ptrtoint(i8* @console to i32), 1
  %r393 = inttoptr i32 %r395 to i8*
  %r394 = load i8, i8* %r393
  %r390 = zext i8 %r394 to i32
  %r391 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r392 = load i8, i8* %r391
  %r389 = zext i8 %r392 to i32
  call void @func_b6700(i32 %r390, i32 %r386, i32 79, i32 %r387, i32 %r388, i32 %r384, i32 %r389)
  call void @func_b6709(i32 1, i32 %r384, i32 %r385, i32 %r386, i32 %r387, i32 %r388, i32 %r389, i32 %r390)
  br label %b6713

b3217:
  %r402 = add i32 ptrtoint(i8* @console to i32), 1
  %r400 = inttoptr i32 %r402 to i8*
  %r401 = load i8, i8* %r400
  %r397 = zext i8 %r401 to i32
  %r398 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r399 = load i8, i8* %r398
  %r396 = zext i8 %r399 to i32
  call void @func_b6700(i32 %r397, i32 %r303, i32 79, i32 %r302, i32 %r350, i32 %r298, i32 %r396)
  call void @func_b6709(i32 1, i32 %r298, i32 %r290, i32 %r303, i32 %r302, i32 %r350, i32 %r396, i32 %r397)
  br label %b6713

b3211:
  %r409 = add i32 ptrtoint(i8* @console to i32), 1
  %r407 = inttoptr i32 %r409 to i8*
  %r408 = load i8, i8* %r407
  %r404 = zext i8 %r408 to i32
  %r405 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r406 = load i8, i8* %r405
  %r403 = zext i8 %r406 to i32
  call void @func_b6700(i32 %r404, i32 %r303, i32 79, i32 %r302, i32 %r361, i32 %r298, i32 %r403)
  call void @func_b6701(i32 1, i32 %r298, i32 0, i32 %r303, i32 %r302, i32 %r361, i32 %r403, i32 %r404)
  br label %b6713

b4261:
  %r410 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  store i1 false, i1* %r410
  ret void

b5218:
  %r411 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %b5187

b5187:
  %r413 = phi i32 [%r381, %b5218], [%r418, %b5185]
  %r417 = phi i32 [%r411, %b5218], [%r416, %b5185]
  %r415 = call i32 @inb(i32 1021)
  %r414 = and i32 %r415, 96
  call void @func_b1602(i32 %r414, i32 0, i32 %r413)
  %r412 = icmp eq i32 %r413, 10
  br i1 %r412, label %b5190, label %b5192

b5190:
  %r420 = call i32 @inb(i32 1021)
  %r419 = and i32 %r420, 96
  call void @func_b1602(i32 %r419, i32 0, i32 13)
  call void @func_b1988(i32 %r413)
  br label %b5183

b5192:
  call void @func_b1988(i32 %r413)
  br label %b5183

b5183:
  %r424 = phi i32 [%r417, %b5190], [%r417, %b5192]
  %r422 = inttoptr i32 %r424 to i8*
  %r423 = load i8, i8* %r422
  %r418 = zext i8 %r423 to i32
  %r421 = icmp eq i32 %r418, 0
  br i1 %r421, label %b4261, label %b5185

b5185:
  %r416 = add i32 %r424, 1
  br label %b5187
}

define internal void @func_b3292(i32 %r0, i32 %r1) {
  %r4 = load i32, i32* @ball
  %r241 = load i32, i32* @gameoverZone
  br label %b3292

b3292:
  %r10 = phi i32 [%r0, %0], [%r12, %b6866], [%r11, %b3526], [%r10, %b3528]
  %r6 = phi i32 [%r1, %0], [%r9, %b6866], [%r8, %b3526], [%r7, %b3528]
  %r5 = mul i32 %r6, 24
  %r3 = add i32 ptrtoint(i8* @objects to i32), %r5
  %r2 = icmp eq i32 %r3, %r4
  br i1 %r2, label %b6866, label %b3530

b6866:
  %r16 = phi i32 [1, %b3292], [1, %b3530], [1, %b3667], [1, %b3714], [1, %b3729], [1, %b3742], [1, %b3750]
  %r15 = phi i32 [%r6, %b3292], [%r6, %b3530], [%r6, %b3667], [%r6, %b3714], [%r6, %b3729], [%r6, %b3742], [%r6, %b3750]
  %r14 = phi i32 [20, %b3292], [20, %b3530], [20, %b3667], [20, %b3714], [20, %b3729], [20, %b3742], [20, %b3750]
  %r12 = phi i32 [%r10, %b3292], [%r10, %b3530], [%r10, %b3667], [%r10, %b3714], [%r10, %b3729], [%r10, %b3742], [%r10, %b3750]
  %r9 = add i32 %r15, %r16
  %r13 = icmp ule i32 %r9, %r14
  br i1 %r13, label %b3292, label %b2208

b3530:
  %r21 = add i32 %r3, 20
  %r20 = inttoptr i32 %r21 to i32*
  %r19 = load i32, i32* %r20
  %r18 = and i32 %r19, 16
  %r17 = icmp ne i32 %r18, 0
  br i1 %r17, label %b3667, label %b6866

b2208:
  %r26 = add i32 ptrtoint(i8* @objects to i32), 20
  %r25 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r25
  %r23 = and i32 %r24, 16
  %r22 = icmp ne i32 %r23, 0
  br i1 %r22, label %b4703, label %b3080

b3667:
  %r28 = and i32 %r19, 2
  %r27 = icmp ne i32 %r28, 0
  br i1 %r27, label %b3714, label %b6866

b4703:
  %r30 = and i32 %r24, 1
  %r29 = icmp ne i32 %r30, 0
  br i1 %r29, label %b4704, label %b3080

b3080:
  br label %b6786

b3714:
  %r54 = add i32 %r3, 8
  %r53 = inttoptr i32 %r54 to i32*
  %r32 = load i32, i32* %r53
  %r52 = add i32 %r4, 8
  %r51 = inttoptr i32 %r52 to i32*
  %r34 = load i32, i32* %r51
  %r50 = add i32 %r3, 12
  %r49 = inttoptr i32 %r50 to i32*
  %r48 = load i32, i32* %r49
  %r47 = add i32 %r4, 12
  %r46 = inttoptr i32 %r47 to i32*
  %r45 = load i32, i32* %r46
  %r44 = inttoptr i32 %r3 to i32*
  %r43 = load i32, i32* %r44
  %r42 = add i32 %r3, 4
  %r41 = inttoptr i32 %r42 to i32*
  %r40 = load i32, i32* %r41
  %r39 = inttoptr i32 %r4 to i32*
  %r35 = load i32, i32* %r39
  %r38 = add i32 %r4, 4
  %r37 = inttoptr i32 %r38 to i32*
  %r36 = load i32, i32* %r37
  %r33 = add i32 %r34, %r35
  %r31 = icmp ult i32 %r32, %r33
  br i1 %r31, label %b3729, label %b6866

b4704:
  %r55 = icmp eq i32 ptrtoint(i8* @objects to i32), %r4
  br i1 %r55, label %b3080, label %b4705

b6786:
  %r63 = phi i32 [1, %b3080], [%r64, %b6784], [1, %b4709]
  %r62 = mul i32 %r63, 24
  %r61 = add i32 ptrtoint(i8* @objects to i32), %r62
  %r60 = add i32 %r61, 20
  %r59 = inttoptr i32 %r60 to i32*
  %r58 = load i32, i32* %r59
  %r57 = and i32 %r58, 16
  %r56 = icmp ne i32 %r57, 0
  br i1 %r56, label %b3230, label %b6784

b3729:
  %r66 = add i32 %r32, %r43
  %r65 = icmp ugt i32 %r66, %r34
  br i1 %r65, label %b3742, label %b6866

b4705:
  %r90 = add i32 ptrtoint(i8* @objects to i32), 8
  %r89 = inttoptr i32 %r90 to i32*
  %r68 = load i32, i32* %r89
  %r88 = add i32 %r4, 8
  %r87 = inttoptr i32 %r88 to i32*
  %r70 = load i32, i32* %r87
  %r86 = add i32 ptrtoint(i8* @objects to i32), 12
  %r85 = inttoptr i32 %r86 to i32*
  %r84 = load i32, i32* %r85
  %r83 = add i32 %r4, 12
  %r82 = inttoptr i32 %r83 to i32*
  %r81 = load i32, i32* %r82
  %r80 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r79 = load i32, i32* %r80
  %r78 = add i32 ptrtoint(i8* @objects to i32), 4
  %r77 = inttoptr i32 %r78 to i32*
  %r76 = load i32, i32* %r77
  %r75 = inttoptr i32 %r4 to i32*
  %r71 = load i32, i32* %r75
  %r74 = add i32 %r4, 4
  %r73 = inttoptr i32 %r74 to i32*
  %r72 = load i32, i32* %r73
  %r69 = add i32 %r70, %r71
  %r67 = icmp ult i32 %r68, %r69
  br i1 %r67, label %b4706, label %b3080

b3230:
  %r92 = and i32 %r58, 1
  %r91 = icmp ne i32 %r92, 0
  br i1 %r91, label %b3701, label %b6784

b6784:
  %r96 = phi i32 [1, %b6786], [1, %b3230], [1, %b3701], [1, %b3703], [1, %b3704], [1, %b3705], [1, %b3706], [1, %b3707]
  %r95 = phi i32 [%r63, %b6786], [%r63, %b3230], [%r63, %b3701], [%r63, %b3703], [%r63, %b3704], [%r63, %b3705], [%r63, %b3706], [%r63, %b3707]
  %r94 = phi i32 [20, %b6786], [20, %b3230], [20, %b3701], [20, %b3703], [20, %b3704], [20, %b3705], [20, %b3706], [20, %b3707]
  %r64 = add i32 %r95, %r96
  %r93 = icmp ule i32 %r64, %r94
  br i1 %r93, label %b6786, label %b2720

b3742:
  %r98 = add i32 %r45, %r36
  %r97 = icmp ult i32 %r48, %r98
  br i1 %r97, label %b3750, label %b6866

b4706:
  %r100 = add i32 %r68, %r79
  %r99 = icmp ugt i32 %r100, %r70
  br i1 %r99, label %b4707, label %b3080

b3701:
  %r101 = icmp eq i32 %r61, %r4
  br i1 %r101, label %b6784, label %b3703

b2720:
  %r106 = add i32 ptrtoint(i8* @objects to i32), 20
  %r105 = inttoptr i32 %r106 to i32*
  %r104 = load i32, i32* %r105
  %r103 = and i32 %r104, 16
  %r102 = icmp ne i32 %r103, 0
  br i1 %r102, label %b4687, label %b2504

b3750:
  %r108 = add i32 %r48, %r40
  %r107 = icmp ugt i32 %r108, %r45
  br i1 %r107, label %b3756, label %b6866

b4707:
  %r110 = add i32 %r81, %r72
  %r109 = icmp ult i32 %r84, %r110
  br i1 %r109, label %b4708, label %b3080

b3703:
  %r134 = add i32 %r61, 8
  %r133 = inttoptr i32 %r134 to i32*
  %r112 = load i32, i32* %r133
  %r132 = add i32 %r4, 8
  %r131 = inttoptr i32 %r132 to i32*
  %r114 = load i32, i32* %r131
  %r130 = add i32 %r61, 12
  %r129 = inttoptr i32 %r130 to i32*
  %r128 = load i32, i32* %r129
  %r127 = add i32 %r4, 12
  %r126 = inttoptr i32 %r127 to i32*
  %r125 = load i32, i32* %r126
  %r124 = inttoptr i32 %r61 to i32*
  %r123 = load i32, i32* %r124
  %r122 = add i32 %r61, 4
  %r121 = inttoptr i32 %r122 to i32*
  %r120 = load i32, i32* %r121
  %r119 = inttoptr i32 %r4 to i32*
  %r115 = load i32, i32* %r119
  %r118 = add i32 %r4, 4
  %r117 = inttoptr i32 %r118 to i32*
  %r116 = load i32, i32* %r117
  %r113 = add i32 %r114, %r115
  %r111 = icmp ult i32 %r112, %r113
  br i1 %r111, label %b3704, label %b6784

b4687:
  %r147 = add i32 ptrtoint(i8* @objects to i32), 8
  %r146 = inttoptr i32 %r147 to i32*
  %r145 = load i32, i32* %r146
  %r144 = add i32 ptrtoint(i8* @console to i32), 1
  %r142 = inttoptr i32 %r144 to i8*
  %r143 = load i8, i8* %r142
  %r138 = zext i8 %r143 to i32
  %r141 = add i32 ptrtoint(i8* @console to i32), 3
  %r139 = inttoptr i32 %r141 to i8*
  %r140 = load i8, i8* %r139
  %r137 = zext i8 %r140 to i32
  %r136 = sub i32 %r137, %r138
  %r135 = icmp ule i32 %r136, 79
  br i1 %r135, label %b6356, label %b4688

b2504:
  br label %b6715

b3756:
  %r159 = add i32 %r4, 4
  %r158 = inttoptr i32 %r159 to i32*
  %r153 = load i32, i32* %r158
  %r157 = add i32 %r3, 4
  %r156 = inttoptr i32 %r157 to i32*
  %r151 = load i32, i32* %r156
  %r155 = add i32 %r3, 12
  %r154 = inttoptr i32 %r155 to i32*
  %r149 = load i32, i32* %r154
  %r152 = add i32 %r10, %r153
  %r150 = add i32 %r149, %r151
  %r148 = icmp ule i32 %r10, %r149
  br i1 %r148, label %b3526, label %b3527

b4708:
  %r161 = add i32 %r84, %r76
  %r160 = icmp ugt i32 %r161, %r81
  br i1 %r160, label %b4709, label %b3080

b3704:
  %r163 = add i32 %r112, %r123
  %r162 = icmp ugt i32 %r163, %r114
  br i1 %r162, label %b3705, label %b6784

b6356:
  %r164 = icmp ule i32 %r145, %r136
  br i1 %r164, label %b6783, label %b2504

b4688:
  %r166 = call i32 @func_b5219()
  %r165 = icmp ule i32 %r145, %r166
  br i1 %r165, label %b6783, label %b2504

b6715:
  %r174 = phi i32 [1, %b2504], [%r175, %b6713], [1, %b6955], [1, %b6953], [1, %b6318], [1, %b2735], [1, %b2729]
  %r173 = mul i32 %r174, 24
  %r172 = add i32 ptrtoint(i8* @objects to i32), %r173
  %r171 = add i32 %r172, 20
  %r170 = inttoptr i32 %r171 to i32*
  %r169 = load i32, i32* %r170
  %r168 = and i32 %r169, 16
  %r167 = icmp ne i32 %r168, 0
  br i1 %r167, label %b2715, label %b6713

b3526:
  %r11 = phi i32 [%r10, %b3756], [%r10, %b3527]
  %r177 = phi i32 [%r6, %b3756], [%r6, %b3527]
  %r178 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 false, i1* %r178
  %r8 = add i32 %r177, 1
  %r176 = icmp ule i32 %r8, 20
  br i1 %r176, label %b3292, label %b2208

b3527:
  %r179 = icmp uge i32 %r152, %r150
  br i1 %r179, label %b3526, label %b3528

b4709:
  %r186 = add i32 ptrtoint(i8* @objects to i32), 20
  %r188 = inttoptr i32 %r186 to i32*
  %r187 = load i32, i32* %r188
  %r185 = and i32 %r187, -17
  %r184 = inttoptr i32 %r186 to i32*
  store i32 %r185, i32* %r184
  %r183 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r182 = load i32, i32* %r183
  %r181 = add i32 %r182, -1
  %r180 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r181, i32* %r180
  br label %b6786

b3705:
  %r190 = add i32 %r125, %r116
  %r189 = icmp ult i32 %r128, %r190
  br i1 %r189, label %b3706, label %b6784

b6783:
  %r204 = phi i32 [%r145, %b6356], [%r145, %b4688]
  %r203 = phi i32 [%r136, %b6356], [%r166, %b4688]
  %r202 = add i32 ptrtoint(i8* @objects to i32), 12
  %r201 = inttoptr i32 %r202 to i32*
  %r200 = load i32, i32* %r201
  %r198 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r199 = load i8, i8* %r198
  %r194 = zext i8 %r199 to i32
  %r197 = add i32 ptrtoint(i8* @console to i32), 2
  %r195 = inttoptr i32 %r197 to i8*
  %r196 = load i8, i8* %r195
  %r193 = zext i8 %r196 to i32
  %r192 = sub i32 %r193, %r194
  %r191 = icmp ule i32 %r192, 24
  br i1 %r191, label %b6957, label %b6958

b2715:
  %r217 = add i32 %r172, 8
  %r216 = inttoptr i32 %r217 to i32*
  %r215 = load i32, i32* %r216
  %r214 = add i32 ptrtoint(i8* @console to i32), 1
  %r212 = inttoptr i32 %r214 to i8*
  %r213 = load i8, i8* %r212
  %r208 = zext i8 %r213 to i32
  %r211 = add i32 ptrtoint(i8* @console to i32), 3
  %r209 = inttoptr i32 %r211 to i8*
  %r210 = load i8, i8* %r209
  %r207 = zext i8 %r210 to i32
  %r206 = sub i32 %r207, %r208
  %r205 = icmp ule i32 %r206, 79
  br i1 %r205, label %b6224, label %b2716

b6713:
  %r221 = phi i32 [1, %b6715], [1, %b6224], [1, %b2716], [1, %b6975], [1, %b6976], [1, %b6973], [1, %b6971], [1, %b6175], [1, %b3217], [1, %b3211]
  %r220 = phi i32 [%r174, %b6715], [%r174, %b6224], [%r174, %b2716], [%r222, %b6975], [%r222, %b6976], [%r222, %b6973], [%r222, %b6971], [%r223, %b6175], [%r222, %b3217], [%r222, %b3211]
  %r219 = phi i32 [20, %b6715], [20, %b6224], [20, %b2716], [20, %b6975], [20, %b6976], [20, %b6973], [20, %b6971], [20, %b6175], [20, %b3217], [20, %b3211]
  %r175 = add i32 %r220, %r221
  %r218 = icmp ule i32 %r175, %r219
  br i1 %r218, label %b6715, label %b2034

b3528:
  %r225 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r225
  %r7 = add i32 %r6, 1
  %r224 = icmp ule i32 %r7, 20
  br i1 %r224, label %b3292, label %b2208

b3706:
  %r227 = add i32 %r128, %r120
  %r226 = icmp ugt i32 %r227, %r125
  br i1 %r226, label %b3707, label %b6784

b6957:
  %r228 = icmp ule i32 %r200, %r192
  br i1 %r228, label %b6982, label %b2504

b6958:
  %r229 = icmp ule i32 %r200, 0
  br i1 %r229, label %b6981, label %b2504

b6224:
  %r230 = icmp ule i32 %r215, %r206
  br i1 %r230, label %b6712, label %b6713

b2716:
  %r232 = call i32 @func_b5219()
  %r231 = icmp ule i32 %r215, %r232
  br i1 %r231, label %b6712, label %b6713

b2034:
  %r257 = add i32 %r4, 8
  %r256 = inttoptr i32 %r257 to i32*
  %r234 = load i32, i32* %r256
  %r255 = add i32 %r241, 8
  %r254 = inttoptr i32 %r255 to i32*
  %r236 = load i32, i32* %r254
  %r253 = add i32 %r4, 12
  %r252 = inttoptr i32 %r253 to i32*
  %r251 = load i32, i32* %r252
  %r250 = add i32 %r241, 12
  %r249 = inttoptr i32 %r250 to i32*
  %r248 = load i32, i32* %r249
  %r247 = inttoptr i32 %r4 to i32*
  %r246 = load i32, i32* %r247
  %r245 = add i32 %r4, 4
  %r244 = inttoptr i32 %r245 to i32*
  %r243 = load i32, i32* %r244
  %r242 = inttoptr i32 %r241 to i32*
  %r237 = load i32, i32* %r242
  %r240 = add i32 %r241, 4
  %r239 = inttoptr i32 %r240 to i32*
  %r238 = load i32, i32* %r239
  %r235 = add i32 %r236, %r237
  %r233 = icmp ult i32 %r234, %r235
  br i1 %r233, label %b2035, label %b303

b3707:
  %r264 = add i32 %r61, 20
  %r266 = inttoptr i32 %r264 to i32*
  %r265 = load i32, i32* %r266
  %r263 = and i32 %r265, -17
  %r262 = inttoptr i32 %r264 to i32*
  store i32 %r263, i32* %r262
  %r261 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r260 = load i32, i32* %r261
  %r259 = add i32 %r260, -1
  %r258 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r259, i32* %r258
  br label %b6784

b6982:
  %r277 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r270 = load i32, i32* %r277
  %r276 = add i32 ptrtoint(i8* @objects to i32), 4
  %r275 = inttoptr i32 %r276 to i32*
  %r274 = load i32, i32* %r275
  %r273 = add i32 ptrtoint(i8* @objects to i32), 16
  %r272 = inttoptr i32 %r273 to i32*
  %r271 = load i32, i32* %r272
  %r269 = add i32 %r204, %r270
  %r268 = add i32 %r269, -1
  %r267 = icmp ule i32 %r268, %r203
  br i1 %r267, label %b6955, label %b6956

b6981:
  %r288 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r281 = load i32, i32* %r288
  %r287 = add i32 ptrtoint(i8* @objects to i32), 4
  %r286 = inttoptr i32 %r287 to i32*
  %r285 = load i32, i32* %r286
  %r284 = add i32 ptrtoint(i8* @objects to i32), 16
  %r283 = inttoptr i32 %r284 to i32*
  %r282 = load i32, i32* %r283
  %r280 = add i32 %r204, %r281
  %r279 = add i32 %r280, -1
  %r278 = icmp ule i32 %r279, %r203
  br i1 %r278, label %b6953, label %b6954

b6712:
  %r303 = phi i32 [%r215, %b6224], [%r215, %b2716]
  %r301 = phi i32 [%r172, %b6224], [%r172, %b2716]
  %r302 = phi i32 [%r206, %b6224], [%r232, %b2716]
  %r222 = phi i32 [%r174, %b6224], [%r174, %b2716]
  %r300 = add i32 %r301, 12
  %r299 = inttoptr i32 %r300 to i32*
  %r298 = load i32, i32* %r299
  %r296 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r297 = load i8, i8* %r296
  %r292 = zext i8 %r297 to i32
  %r295 = add i32 ptrtoint(i8* @console to i32), 2
  %r293 = inttoptr i32 %r295 to i8*
  %r294 = load i8, i8* %r293
  %r291 = zext i8 %r294 to i32
  %r290 = sub i32 %r291, %r292
  %r289 = icmp ule i32 %r290, 24
  br i1 %r289, label %b6975, label %b6976

b2035:
  %r305 = add i32 %r234, %r246
  %r304 = icmp ugt i32 %r305, %r236
  br i1 %r304, label %b2036, label %b303

b303:
  ret void

b6955:
  %r307 = add i32 %r200, %r274
  %r306 = add i32 %r307, -1
  call void @func_b6201(i32 %r306, i32 %r192, i32 %r200, i32 %r271, i32 %r268, i32 %r204)
  br label %b6715

b6956:
  %r310 = add i32 %r200, %r274
  %r309 = add i32 %r310, -1
  %r308 = icmp ule i32 %r309, %r192
  br i1 %r308, label %b6318, label %b2735

b6953:
  %r312 = add i32 %r200, %r285
  %r311 = add i32 %r312, -1
  call void @func_b6180(i32 %r311, i32 0, i32 %r200, i32 %r282, i32 %r279, i32 %r204)
  br label %b6715

b6954:
  %r315 = add i32 %r200, %r285
  %r314 = add i32 %r315, -1
  %r313 = icmp ule i32 %r314, 0
  br i1 %r313, label %b6318, label %b2729

b6975:
  %r316 = icmp ule i32 %r298, %r290
  br i1 %r316, label %b6992, label %b6713

b6976:
  %r317 = icmp ule i32 %r298, 0
  br i1 %r317, label %b6991, label %b6713

b2036:
  %r319 = add i32 %r248, %r238
  %r318 = icmp ult i32 %r251, %r319
  br i1 %r318, label %b2037, label %b303

b6318:
  %r321 = phi i32 [%r309, %b6956], [%r314, %b6954]
  %r322 = phi i32 [%r204, %b6956], [%r204, %b6954]
  %r323 = phi i32 [%r203, %b6956], [%r203, %b6954]
  %r324 = phi i32 [%r271, %b6956], [%r282, %b6954]
  %r320 = phi i32 [%r200, %b6956], [%r200, %b6954]
  %r331 = add i32 ptrtoint(i8* @console to i32), 1
  %r329 = inttoptr i32 %r331 to i8*
  %r330 = load i8, i8* %r329
  %r326 = zext i8 %r330 to i32
  %r327 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r328 = load i8, i8* %r327
  %r325 = zext i8 %r328 to i32
  call void @func_b6700(i32 %r326, i32 %r322, i32 79, i32 %r323, i32 %r324, i32 %r320, i32 %r325)
  call void @func_b6709(i32 1, i32 %r320, i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326)
  br label %b6715

b2735:
  %r338 = add i32 ptrtoint(i8* @console to i32), 1
  %r336 = inttoptr i32 %r338 to i8*
  %r337 = load i8, i8* %r336
  %r333 = zext i8 %r337 to i32
  %r334 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r335 = load i8, i8* %r334
  %r332 = zext i8 %r335 to i32
  call void @func_b6700(i32 %r333, i32 %r204, i32 79, i32 %r203, i32 %r271, i32 %r200, i32 %r332)
  call void @func_b6709(i32 1, i32 %r200, i32 %r192, i32 %r204, i32 %r203, i32 %r271, i32 %r332, i32 %r333)
  br label %b6715

b2729:
  %r345 = add i32 ptrtoint(i8* @console to i32), 1
  %r343 = inttoptr i32 %r345 to i8*
  %r344 = load i8, i8* %r343
  %r340 = zext i8 %r344 to i32
  %r341 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r342 = load i8, i8* %r341
  %r339 = zext i8 %r342 to i32
  call void @func_b6700(i32 %r340, i32 %r204, i32 79, i32 %r203, i32 %r282, i32 %r200, i32 %r339)
  call void @func_b6701(i32 1, i32 %r200, i32 0, i32 %r204, i32 %r203, i32 %r282, i32 %r339, i32 %r340)
  br label %b6715

b6992:
  %r356 = inttoptr i32 %r301 to i32*
  %r349 = load i32, i32* %r356
  %r355 = add i32 %r301, 4
  %r354 = inttoptr i32 %r355 to i32*
  %r353 = load i32, i32* %r354
  %r352 = add i32 %r301, 16
  %r351 = inttoptr i32 %r352 to i32*
  %r350 = load i32, i32* %r351
  %r348 = add i32 %r303, %r349
  %r347 = add i32 %r348, -1
  %r346 = icmp ule i32 %r347, %r302
  br i1 %r346, label %b6973, label %b6974

b6991:
  %r367 = inttoptr i32 %r301 to i32*
  %r360 = load i32, i32* %r367
  %r366 = add i32 %r301, 4
  %r365 = inttoptr i32 %r366 to i32*
  %r364 = load i32, i32* %r365
  %r363 = add i32 %r301, 16
  %r362 = inttoptr i32 %r363 to i32*
  %r361 = load i32, i32* %r362
  %r359 = add i32 %r303, %r360
  %r358 = add i32 %r359, -1
  %r357 = icmp ule i32 %r358, %r302
  br i1 %r357, label %b6971, label %b6972

b2037:
  %r369 = add i32 %r251, %r243
  %r368 = icmp ugt i32 %r369, %r248
  br i1 %r368, label %b1041, label %b303

b6973:
  %r371 = add i32 %r298, %r353
  %r370 = add i32 %r371, -1
  call void @func_b6201(i32 %r370, i32 %r290, i32 %r298, i32 %r350, i32 %r347, i32 %r303)
  br label %b6713

b6974:
  %r374 = add i32 %r298, %r353
  %r373 = add i32 %r374, -1
  %r372 = icmp ule i32 %r373, %r290
  br i1 %r372, label %b6175, label %b3217

b6971:
  %r376 = add i32 %r298, %r364
  %r375 = add i32 %r376, -1
  call void @func_b6180(i32 %r375, i32 0, i32 %r298, i32 %r361, i32 %r358, i32 %r303)
  br label %b6713

b6972:
  %r379 = add i32 %r298, %r364
  %r378 = add i32 %r379, -1
  %r377 = icmp ule i32 %r378, 0
  br i1 %r377, label %b6175, label %b3211

b1041:
  call void @func_b1244()
  %r382 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r383 = load i8, i8* %r382
  %r381 = zext i8 %r383 to i32
  %r380 = icmp eq i32 %r381, 0
  br i1 %r380, label %b4261, label %b5218

b6175:
  %r385 = phi i32 [%r373, %b6974], [%r378, %b6972]
  %r386 = phi i32 [%r303, %b6974], [%r303, %b6972]
  %r387 = phi i32 [%r302, %b6974], [%r302, %b6972]
  %r388 = phi i32 [%r350, %b6974], [%r361, %b6972]
  %r384 = phi i32 [%r298, %b6974], [%r298, %b6972]
  %r223 = phi i32 [%r222, %b6974], [%r222, %b6972]
  %r395 = add i32 ptrtoint(i8* @console to i32), 1
  %r393 = inttoptr i32 %r395 to i8*
  %r394 = load i8, i8* %r393
  %r390 = zext i8 %r394 to i32
  %r391 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r392 = load i8, i8* %r391
  %r389 = zext i8 %r392 to i32
  call void @func_b6700(i32 %r390, i32 %r386, i32 79, i32 %r387, i32 %r388, i32 %r384, i32 %r389)
  call void @func_b6709(i32 1, i32 %r384, i32 %r385, i32 %r386, i32 %r387, i32 %r388, i32 %r389, i32 %r390)
  br label %b6713

b3217:
  %r402 = add i32 ptrtoint(i8* @console to i32), 1
  %r400 = inttoptr i32 %r402 to i8*
  %r401 = load i8, i8* %r400
  %r397 = zext i8 %r401 to i32
  %r398 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r399 = load i8, i8* %r398
  %r396 = zext i8 %r399 to i32
  call void @func_b6700(i32 %r397, i32 %r303, i32 79, i32 %r302, i32 %r350, i32 %r298, i32 %r396)
  call void @func_b6709(i32 1, i32 %r298, i32 %r290, i32 %r303, i32 %r302, i32 %r350, i32 %r396, i32 %r397)
  br label %b6713

b3211:
  %r409 = add i32 ptrtoint(i8* @console to i32), 1
  %r407 = inttoptr i32 %r409 to i8*
  %r408 = load i8, i8* %r407
  %r404 = zext i8 %r408 to i32
  %r405 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r406 = load i8, i8* %r405
  %r403 = zext i8 %r406 to i32
  call void @func_b6700(i32 %r404, i32 %r303, i32 79, i32 %r302, i32 %r361, i32 %r298, i32 %r403)
  call void @func_b6701(i32 1, i32 %r298, i32 0, i32 %r303, i32 %r302, i32 %r361, i32 %r403, i32 %r404)
  br label %b6713

b4261:
  %r410 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  store i1 false, i1* %r410
  ret void

b5218:
  %r411 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %b5187

b5187:
  %r413 = phi i32 [%r381, %b5218], [%r418, %b5185]
  %r417 = phi i32 [%r411, %b5218], [%r416, %b5185]
  %r415 = call i32 @inb(i32 1021)
  %r414 = and i32 %r415, 96
  call void @func_b1602(i32 %r414, i32 0, i32 %r413)
  %r412 = icmp eq i32 %r413, 10
  br i1 %r412, label %b5190, label %b5192

b5190:
  %r420 = call i32 @inb(i32 1021)
  %r419 = and i32 %r420, 96
  call void @func_b1602(i32 %r419, i32 0, i32 13)
  call void @func_b1988(i32 %r413)
  br label %b5183

b5192:
  call void @func_b1988(i32 %r413)
  br label %b5183

b5183:
  %r424 = phi i32 [%r417, %b5190], [%r417, %b5192]
  %r422 = inttoptr i32 %r424 to i8*
  %r423 = load i8, i8* %r422
  %r418 = zext i8 %r423 to i32
  %r421 = icmp eq i32 %r418, 0
  br i1 %r421, label %b4261, label %b5185

b5185:
  %r416 = add i32 %r424, 1
  br label %b5187
}

define internal void @func_b3273(i32 %r0, i32 %r1) {
  %r4 = load i32, i32* @ball
  %r241 = load i32, i32* @gameoverZone
  br label %b3273

b3273:
  %r10 = phi i32 [%r0, %0], [%r12, %b6883], [%r11, %b3517], [%r10, %b3519]
  %r6 = phi i32 [%r1, %0], [%r9, %b6883], [%r8, %b3517], [%r7, %b3519]
  %r5 = mul i32 %r6, 24
  %r3 = add i32 ptrtoint(i8* @objects to i32), %r5
  %r2 = icmp eq i32 %r3, %r4
  br i1 %r2, label %b6883, label %b3521

b6883:
  %r16 = phi i32 [1, %b3273], [1, %b3521], [1, %b3665], [1, %b3712], [1, %b3727], [1, %b3740], [1, %b3748]
  %r15 = phi i32 [%r6, %b3273], [%r6, %b3521], [%r6, %b3665], [%r6, %b3712], [%r6, %b3727], [%r6, %b3740], [%r6, %b3748]
  %r14 = phi i32 [20, %b3273], [20, %b3521], [20, %b3665], [20, %b3712], [20, %b3727], [20, %b3740], [20, %b3748]
  %r12 = phi i32 [%r10, %b3273], [%r10, %b3521], [%r10, %b3665], [%r10, %b3712], [%r10, %b3727], [%r10, %b3740], [%r10, %b3748]
  %r9 = add i32 %r15, %r16
  %r13 = icmp ule i32 %r9, %r14
  br i1 %r13, label %b3273, label %b2208

b3521:
  %r21 = add i32 %r3, 20
  %r20 = inttoptr i32 %r21 to i32*
  %r19 = load i32, i32* %r20
  %r18 = and i32 %r19, 16
  %r17 = icmp ne i32 %r18, 0
  br i1 %r17, label %b3665, label %b6883

b2208:
  %r26 = add i32 ptrtoint(i8* @objects to i32), 20
  %r25 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r25
  %r23 = and i32 %r24, 16
  %r22 = icmp ne i32 %r23, 0
  br i1 %r22, label %b4703, label %b3080

b3665:
  %r28 = and i32 %r19, 2
  %r27 = icmp ne i32 %r28, 0
  br i1 %r27, label %b3712, label %b6883

b4703:
  %r30 = and i32 %r24, 1
  %r29 = icmp ne i32 %r30, 0
  br i1 %r29, label %b4704, label %b3080

b3080:
  br label %b6786

b3712:
  %r54 = add i32 %r3, 8
  %r53 = inttoptr i32 %r54 to i32*
  %r32 = load i32, i32* %r53
  %r52 = add i32 %r4, 8
  %r51 = inttoptr i32 %r52 to i32*
  %r34 = load i32, i32* %r51
  %r50 = add i32 %r3, 12
  %r49 = inttoptr i32 %r50 to i32*
  %r48 = load i32, i32* %r49
  %r47 = add i32 %r4, 12
  %r46 = inttoptr i32 %r47 to i32*
  %r45 = load i32, i32* %r46
  %r44 = inttoptr i32 %r3 to i32*
  %r43 = load i32, i32* %r44
  %r42 = add i32 %r3, 4
  %r41 = inttoptr i32 %r42 to i32*
  %r40 = load i32, i32* %r41
  %r39 = inttoptr i32 %r4 to i32*
  %r35 = load i32, i32* %r39
  %r38 = add i32 %r4, 4
  %r37 = inttoptr i32 %r38 to i32*
  %r36 = load i32, i32* %r37
  %r33 = add i32 %r34, %r35
  %r31 = icmp ult i32 %r32, %r33
  br i1 %r31, label %b3727, label %b6883

b4704:
  %r55 = icmp eq i32 ptrtoint(i8* @objects to i32), %r4
  br i1 %r55, label %b3080, label %b4705

b6786:
  %r63 = phi i32 [1, %b3080], [%r64, %b6784], [1, %b4709]
  %r62 = mul i32 %r63, 24
  %r61 = add i32 ptrtoint(i8* @objects to i32), %r62
  %r60 = add i32 %r61, 20
  %r59 = inttoptr i32 %r60 to i32*
  %r58 = load i32, i32* %r59
  %r57 = and i32 %r58, 16
  %r56 = icmp ne i32 %r57, 0
  br i1 %r56, label %b3230, label %b6784

b3727:
  %r66 = add i32 %r32, %r43
  %r65 = icmp ugt i32 %r66, %r34
  br i1 %r65, label %b3740, label %b6883

b4705:
  %r90 = add i32 ptrtoint(i8* @objects to i32), 8
  %r89 = inttoptr i32 %r90 to i32*
  %r68 = load i32, i32* %r89
  %r88 = add i32 %r4, 8
  %r87 = inttoptr i32 %r88 to i32*
  %r70 = load i32, i32* %r87
  %r86 = add i32 ptrtoint(i8* @objects to i32), 12
  %r85 = inttoptr i32 %r86 to i32*
  %r84 = load i32, i32* %r85
  %r83 = add i32 %r4, 12
  %r82 = inttoptr i32 %r83 to i32*
  %r81 = load i32, i32* %r82
  %r80 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r79 = load i32, i32* %r80
  %r78 = add i32 ptrtoint(i8* @objects to i32), 4
  %r77 = inttoptr i32 %r78 to i32*
  %r76 = load i32, i32* %r77
  %r75 = inttoptr i32 %r4 to i32*
  %r71 = load i32, i32* %r75
  %r74 = add i32 %r4, 4
  %r73 = inttoptr i32 %r74 to i32*
  %r72 = load i32, i32* %r73
  %r69 = add i32 %r70, %r71
  %r67 = icmp ult i32 %r68, %r69
  br i1 %r67, label %b4706, label %b3080

b3230:
  %r92 = and i32 %r58, 1
  %r91 = icmp ne i32 %r92, 0
  br i1 %r91, label %b3701, label %b6784

b6784:
  %r96 = phi i32 [1, %b6786], [1, %b3230], [1, %b3701], [1, %b3703], [1, %b3704], [1, %b3705], [1, %b3706], [1, %b3707]
  %r95 = phi i32 [%r63, %b6786], [%r63, %b3230], [%r63, %b3701], [%r63, %b3703], [%r63, %b3704], [%r63, %b3705], [%r63, %b3706], [%r63, %b3707]
  %r94 = phi i32 [20, %b6786], [20, %b3230], [20, %b3701], [20, %b3703], [20, %b3704], [20, %b3705], [20, %b3706], [20, %b3707]
  %r64 = add i32 %r95, %r96
  %r93 = icmp ule i32 %r64, %r94
  br i1 %r93, label %b6786, label %b2720

b3740:
  %r98 = add i32 %r45, %r36
  %r97 = icmp ult i32 %r48, %r98
  br i1 %r97, label %b3748, label %b6883

b4706:
  %r100 = add i32 %r68, %r79
  %r99 = icmp ugt i32 %r100, %r70
  br i1 %r99, label %b4707, label %b3080

b3701:
  %r101 = icmp eq i32 %r61, %r4
  br i1 %r101, label %b6784, label %b3703

b2720:
  %r106 = add i32 ptrtoint(i8* @objects to i32), 20
  %r105 = inttoptr i32 %r106 to i32*
  %r104 = load i32, i32* %r105
  %r103 = and i32 %r104, 16
  %r102 = icmp ne i32 %r103, 0
  br i1 %r102, label %b4687, label %b2504

b3748:
  %r108 = add i32 %r48, %r40
  %r107 = icmp ugt i32 %r108, %r45
  br i1 %r107, label %b3755, label %b6883

b4707:
  %r110 = add i32 %r81, %r72
  %r109 = icmp ult i32 %r84, %r110
  br i1 %r109, label %b4708, label %b3080

b3703:
  %r134 = add i32 %r61, 8
  %r133 = inttoptr i32 %r134 to i32*
  %r112 = load i32, i32* %r133
  %r132 = add i32 %r4, 8
  %r131 = inttoptr i32 %r132 to i32*
  %r114 = load i32, i32* %r131
  %r130 = add i32 %r61, 12
  %r129 = inttoptr i32 %r130 to i32*
  %r128 = load i32, i32* %r129
  %r127 = add i32 %r4, 12
  %r126 = inttoptr i32 %r127 to i32*
  %r125 = load i32, i32* %r126
  %r124 = inttoptr i32 %r61 to i32*
  %r123 = load i32, i32* %r124
  %r122 = add i32 %r61, 4
  %r121 = inttoptr i32 %r122 to i32*
  %r120 = load i32, i32* %r121
  %r119 = inttoptr i32 %r4 to i32*
  %r115 = load i32, i32* %r119
  %r118 = add i32 %r4, 4
  %r117 = inttoptr i32 %r118 to i32*
  %r116 = load i32, i32* %r117
  %r113 = add i32 %r114, %r115
  %r111 = icmp ult i32 %r112, %r113
  br i1 %r111, label %b3704, label %b6784

b4687:
  %r147 = add i32 ptrtoint(i8* @objects to i32), 8
  %r146 = inttoptr i32 %r147 to i32*
  %r145 = load i32, i32* %r146
  %r144 = add i32 ptrtoint(i8* @console to i32), 1
  %r142 = inttoptr i32 %r144 to i8*
  %r143 = load i8, i8* %r142
  %r138 = zext i8 %r143 to i32
  %r141 = add i32 ptrtoint(i8* @console to i32), 3
  %r139 = inttoptr i32 %r141 to i8*
  %r140 = load i8, i8* %r139
  %r137 = zext i8 %r140 to i32
  %r136 = sub i32 %r137, %r138
  %r135 = icmp ule i32 %r136, 79
  br i1 %r135, label %b6356, label %b4688

b2504:
  br label %b6715

b3755:
  %r159 = add i32 %r4, 4
  %r158 = inttoptr i32 %r159 to i32*
  %r153 = load i32, i32* %r158
  %r157 = add i32 %r3, 4
  %r156 = inttoptr i32 %r157 to i32*
  %r151 = load i32, i32* %r156
  %r155 = add i32 %r3, 12
  %r154 = inttoptr i32 %r155 to i32*
  %r149 = load i32, i32* %r154
  %r152 = add i32 %r10, %r153
  %r150 = add i32 %r149, %r151
  %r148 = icmp ule i32 %r10, %r149
  br i1 %r148, label %b3517, label %b3518

b4708:
  %r161 = add i32 %r84, %r76
  %r160 = icmp ugt i32 %r161, %r81
  br i1 %r160, label %b4709, label %b3080

b3704:
  %r163 = add i32 %r112, %r123
  %r162 = icmp ugt i32 %r163, %r114
  br i1 %r162, label %b3705, label %b6784

b6356:
  %r164 = icmp ule i32 %r145, %r136
  br i1 %r164, label %b6783, label %b2504

b4688:
  %r166 = call i32 @func_b5219()
  %r165 = icmp ule i32 %r145, %r166
  br i1 %r165, label %b6783, label %b2504

b6715:
  %r174 = phi i32 [1, %b2504], [%r175, %b6713], [1, %b6955], [1, %b6953], [1, %b6318], [1, %b2735], [1, %b2729]
  %r173 = mul i32 %r174, 24
  %r172 = add i32 ptrtoint(i8* @objects to i32), %r173
  %r171 = add i32 %r172, 20
  %r170 = inttoptr i32 %r171 to i32*
  %r169 = load i32, i32* %r170
  %r168 = and i32 %r169, 16
  %r167 = icmp ne i32 %r168, 0
  br i1 %r167, label %b2715, label %b6713

b3517:
  %r11 = phi i32 [%r10, %b3755], [%r10, %b3518]
  %r177 = phi i32 [%r6, %b3755], [%r6, %b3518]
  %r178 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r178
  %r8 = add i32 %r177, 1
  %r176 = icmp ule i32 %r8, 20
  br i1 %r176, label %b3273, label %b2208

b3518:
  %r179 = icmp uge i32 %r152, %r150
  br i1 %r179, label %b3517, label %b3519

b4709:
  %r186 = add i32 ptrtoint(i8* @objects to i32), 20
  %r188 = inttoptr i32 %r186 to i32*
  %r187 = load i32, i32* %r188
  %r185 = and i32 %r187, -17
  %r184 = inttoptr i32 %r186 to i32*
  store i32 %r185, i32* %r184
  %r183 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r182 = load i32, i32* %r183
  %r181 = add i32 %r182, -1
  %r180 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r181, i32* %r180
  br label %b6786

b3705:
  %r190 = add i32 %r125, %r116
  %r189 = icmp ult i32 %r128, %r190
  br i1 %r189, label %b3706, label %b6784

b6783:
  %r204 = phi i32 [%r145, %b6356], [%r145, %b4688]
  %r203 = phi i32 [%r136, %b6356], [%r166, %b4688]
  %r202 = add i32 ptrtoint(i8* @objects to i32), 12
  %r201 = inttoptr i32 %r202 to i32*
  %r200 = load i32, i32* %r201
  %r198 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r199 = load i8, i8* %r198
  %r194 = zext i8 %r199 to i32
  %r197 = add i32 ptrtoint(i8* @console to i32), 2
  %r195 = inttoptr i32 %r197 to i8*
  %r196 = load i8, i8* %r195
  %r193 = zext i8 %r196 to i32
  %r192 = sub i32 %r193, %r194
  %r191 = icmp ule i32 %r192, 24
  br i1 %r191, label %b6957, label %b6958

b2715:
  %r217 = add i32 %r172, 8
  %r216 = inttoptr i32 %r217 to i32*
  %r215 = load i32, i32* %r216
  %r214 = add i32 ptrtoint(i8* @console to i32), 1
  %r212 = inttoptr i32 %r214 to i8*
  %r213 = load i8, i8* %r212
  %r208 = zext i8 %r213 to i32
  %r211 = add i32 ptrtoint(i8* @console to i32), 3
  %r209 = inttoptr i32 %r211 to i8*
  %r210 = load i8, i8* %r209
  %r207 = zext i8 %r210 to i32
  %r206 = sub i32 %r207, %r208
  %r205 = icmp ule i32 %r206, 79
  br i1 %r205, label %b6224, label %b2716

b6713:
  %r221 = phi i32 [1, %b6715], [1, %b6224], [1, %b2716], [1, %b6975], [1, %b6976], [1, %b6973], [1, %b6971], [1, %b6175], [1, %b3217], [1, %b3211]
  %r220 = phi i32 [%r174, %b6715], [%r174, %b6224], [%r174, %b2716], [%r222, %b6975], [%r222, %b6976], [%r222, %b6973], [%r222, %b6971], [%r223, %b6175], [%r222, %b3217], [%r222, %b3211]
  %r219 = phi i32 [20, %b6715], [20, %b6224], [20, %b2716], [20, %b6975], [20, %b6976], [20, %b6973], [20, %b6971], [20, %b6175], [20, %b3217], [20, %b3211]
  %r175 = add i32 %r220, %r221
  %r218 = icmp ule i32 %r175, %r219
  br i1 %r218, label %b6715, label %b2034

b3519:
  %r225 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 false, i1* %r225
  %r7 = add i32 %r6, 1
  %r224 = icmp ule i32 %r7, 20
  br i1 %r224, label %b3273, label %b2208

b3706:
  %r227 = add i32 %r128, %r120
  %r226 = icmp ugt i32 %r227, %r125
  br i1 %r226, label %b3707, label %b6784

b6957:
  %r228 = icmp ule i32 %r200, %r192
  br i1 %r228, label %b6982, label %b2504

b6958:
  %r229 = icmp ule i32 %r200, 0
  br i1 %r229, label %b6981, label %b2504

b6224:
  %r230 = icmp ule i32 %r215, %r206
  br i1 %r230, label %b6712, label %b6713

b2716:
  %r232 = call i32 @func_b5219()
  %r231 = icmp ule i32 %r215, %r232
  br i1 %r231, label %b6712, label %b6713

b2034:
  %r257 = add i32 %r4, 8
  %r256 = inttoptr i32 %r257 to i32*
  %r234 = load i32, i32* %r256
  %r255 = add i32 %r241, 8
  %r254 = inttoptr i32 %r255 to i32*
  %r236 = load i32, i32* %r254
  %r253 = add i32 %r4, 12
  %r252 = inttoptr i32 %r253 to i32*
  %r251 = load i32, i32* %r252
  %r250 = add i32 %r241, 12
  %r249 = inttoptr i32 %r250 to i32*
  %r248 = load i32, i32* %r249
  %r247 = inttoptr i32 %r4 to i32*
  %r246 = load i32, i32* %r247
  %r245 = add i32 %r4, 4
  %r244 = inttoptr i32 %r245 to i32*
  %r243 = load i32, i32* %r244
  %r242 = inttoptr i32 %r241 to i32*
  %r237 = load i32, i32* %r242
  %r240 = add i32 %r241, 4
  %r239 = inttoptr i32 %r240 to i32*
  %r238 = load i32, i32* %r239
  %r235 = add i32 %r236, %r237
  %r233 = icmp ult i32 %r234, %r235
  br i1 %r233, label %b2035, label %b303

b3707:
  %r264 = add i32 %r61, 20
  %r266 = inttoptr i32 %r264 to i32*
  %r265 = load i32, i32* %r266
  %r263 = and i32 %r265, -17
  %r262 = inttoptr i32 %r264 to i32*
  store i32 %r263, i32* %r262
  %r261 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r260 = load i32, i32* %r261
  %r259 = add i32 %r260, -1
  %r258 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r259, i32* %r258
  br label %b6784

b6982:
  %r277 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r270 = load i32, i32* %r277
  %r276 = add i32 ptrtoint(i8* @objects to i32), 4
  %r275 = inttoptr i32 %r276 to i32*
  %r274 = load i32, i32* %r275
  %r273 = add i32 ptrtoint(i8* @objects to i32), 16
  %r272 = inttoptr i32 %r273 to i32*
  %r271 = load i32, i32* %r272
  %r269 = add i32 %r204, %r270
  %r268 = add i32 %r269, -1
  %r267 = icmp ule i32 %r268, %r203
  br i1 %r267, label %b6955, label %b6956

b6981:
  %r288 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r281 = load i32, i32* %r288
  %r287 = add i32 ptrtoint(i8* @objects to i32), 4
  %r286 = inttoptr i32 %r287 to i32*
  %r285 = load i32, i32* %r286
  %r284 = add i32 ptrtoint(i8* @objects to i32), 16
  %r283 = inttoptr i32 %r284 to i32*
  %r282 = load i32, i32* %r283
  %r280 = add i32 %r204, %r281
  %r279 = add i32 %r280, -1
  %r278 = icmp ule i32 %r279, %r203
  br i1 %r278, label %b6953, label %b6954

b6712:
  %r303 = phi i32 [%r215, %b6224], [%r215, %b2716]
  %r301 = phi i32 [%r172, %b6224], [%r172, %b2716]
  %r302 = phi i32 [%r206, %b6224], [%r232, %b2716]
  %r222 = phi i32 [%r174, %b6224], [%r174, %b2716]
  %r300 = add i32 %r301, 12
  %r299 = inttoptr i32 %r300 to i32*
  %r298 = load i32, i32* %r299
  %r296 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r297 = load i8, i8* %r296
  %r292 = zext i8 %r297 to i32
  %r295 = add i32 ptrtoint(i8* @console to i32), 2
  %r293 = inttoptr i32 %r295 to i8*
  %r294 = load i8, i8* %r293
  %r291 = zext i8 %r294 to i32
  %r290 = sub i32 %r291, %r292
  %r289 = icmp ule i32 %r290, 24
  br i1 %r289, label %b6975, label %b6976

b2035:
  %r305 = add i32 %r234, %r246
  %r304 = icmp ugt i32 %r305, %r236
  br i1 %r304, label %b2036, label %b303

b303:
  ret void

b6955:
  %r307 = add i32 %r200, %r274
  %r306 = add i32 %r307, -1
  call void @func_b6201(i32 %r306, i32 %r192, i32 %r200, i32 %r271, i32 %r268, i32 %r204)
  br label %b6715

b6956:
  %r310 = add i32 %r200, %r274
  %r309 = add i32 %r310, -1
  %r308 = icmp ule i32 %r309, %r192
  br i1 %r308, label %b6318, label %b2735

b6953:
  %r312 = add i32 %r200, %r285
  %r311 = add i32 %r312, -1
  call void @func_b6180(i32 %r311, i32 0, i32 %r200, i32 %r282, i32 %r279, i32 %r204)
  br label %b6715

b6954:
  %r315 = add i32 %r200, %r285
  %r314 = add i32 %r315, -1
  %r313 = icmp ule i32 %r314, 0
  br i1 %r313, label %b6318, label %b2729

b6975:
  %r316 = icmp ule i32 %r298, %r290
  br i1 %r316, label %b6992, label %b6713

b6976:
  %r317 = icmp ule i32 %r298, 0
  br i1 %r317, label %b6991, label %b6713

b2036:
  %r319 = add i32 %r248, %r238
  %r318 = icmp ult i32 %r251, %r319
  br i1 %r318, label %b2037, label %b303

b6318:
  %r321 = phi i32 [%r309, %b6956], [%r314, %b6954]
  %r322 = phi i32 [%r204, %b6956], [%r204, %b6954]
  %r323 = phi i32 [%r203, %b6956], [%r203, %b6954]
  %r324 = phi i32 [%r271, %b6956], [%r282, %b6954]
  %r320 = phi i32 [%r200, %b6956], [%r200, %b6954]
  %r331 = add i32 ptrtoint(i8* @console to i32), 1
  %r329 = inttoptr i32 %r331 to i8*
  %r330 = load i8, i8* %r329
  %r326 = zext i8 %r330 to i32
  %r327 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r328 = load i8, i8* %r327
  %r325 = zext i8 %r328 to i32
  call void @func_b6700(i32 %r326, i32 %r322, i32 79, i32 %r323, i32 %r324, i32 %r320, i32 %r325)
  call void @func_b6709(i32 1, i32 %r320, i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326)
  br label %b6715

b2735:
  %r338 = add i32 ptrtoint(i8* @console to i32), 1
  %r336 = inttoptr i32 %r338 to i8*
  %r337 = load i8, i8* %r336
  %r333 = zext i8 %r337 to i32
  %r334 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r335 = load i8, i8* %r334
  %r332 = zext i8 %r335 to i32
  call void @func_b6700(i32 %r333, i32 %r204, i32 79, i32 %r203, i32 %r271, i32 %r200, i32 %r332)
  call void @func_b6709(i32 1, i32 %r200, i32 %r192, i32 %r204, i32 %r203, i32 %r271, i32 %r332, i32 %r333)
  br label %b6715

b2729:
  %r345 = add i32 ptrtoint(i8* @console to i32), 1
  %r343 = inttoptr i32 %r345 to i8*
  %r344 = load i8, i8* %r343
  %r340 = zext i8 %r344 to i32
  %r341 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r342 = load i8, i8* %r341
  %r339 = zext i8 %r342 to i32
  call void @func_b6700(i32 %r340, i32 %r204, i32 79, i32 %r203, i32 %r282, i32 %r200, i32 %r339)
  call void @func_b6701(i32 1, i32 %r200, i32 0, i32 %r204, i32 %r203, i32 %r282, i32 %r339, i32 %r340)
  br label %b6715

b6992:
  %r356 = inttoptr i32 %r301 to i32*
  %r349 = load i32, i32* %r356
  %r355 = add i32 %r301, 4
  %r354 = inttoptr i32 %r355 to i32*
  %r353 = load i32, i32* %r354
  %r352 = add i32 %r301, 16
  %r351 = inttoptr i32 %r352 to i32*
  %r350 = load i32, i32* %r351
  %r348 = add i32 %r303, %r349
  %r347 = add i32 %r348, -1
  %r346 = icmp ule i32 %r347, %r302
  br i1 %r346, label %b6973, label %b6974

b6991:
  %r367 = inttoptr i32 %r301 to i32*
  %r360 = load i32, i32* %r367
  %r366 = add i32 %r301, 4
  %r365 = inttoptr i32 %r366 to i32*
  %r364 = load i32, i32* %r365
  %r363 = add i32 %r301, 16
  %r362 = inttoptr i32 %r363 to i32*
  %r361 = load i32, i32* %r362
  %r359 = add i32 %r303, %r360
  %r358 = add i32 %r359, -1
  %r357 = icmp ule i32 %r358, %r302
  br i1 %r357, label %b6971, label %b6972

b2037:
  %r369 = add i32 %r251, %r243
  %r368 = icmp ugt i32 %r369, %r248
  br i1 %r368, label %b1041, label %b303

b6973:
  %r371 = add i32 %r298, %r353
  %r370 = add i32 %r371, -1
  call void @func_b6201(i32 %r370, i32 %r290, i32 %r298, i32 %r350, i32 %r347, i32 %r303)
  br label %b6713

b6974:
  %r374 = add i32 %r298, %r353
  %r373 = add i32 %r374, -1
  %r372 = icmp ule i32 %r373, %r290
  br i1 %r372, label %b6175, label %b3217

b6971:
  %r376 = add i32 %r298, %r364
  %r375 = add i32 %r376, -1
  call void @func_b6180(i32 %r375, i32 0, i32 %r298, i32 %r361, i32 %r358, i32 %r303)
  br label %b6713

b6972:
  %r379 = add i32 %r298, %r364
  %r378 = add i32 %r379, -1
  %r377 = icmp ule i32 %r378, 0
  br i1 %r377, label %b6175, label %b3211

b1041:
  call void @func_b1244()
  %r382 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r383 = load i8, i8* %r382
  %r381 = zext i8 %r383 to i32
  %r380 = icmp eq i32 %r381, 0
  br i1 %r380, label %b4261, label %b5218

b6175:
  %r385 = phi i32 [%r373, %b6974], [%r378, %b6972]
  %r386 = phi i32 [%r303, %b6974], [%r303, %b6972]
  %r387 = phi i32 [%r302, %b6974], [%r302, %b6972]
  %r388 = phi i32 [%r350, %b6974], [%r361, %b6972]
  %r384 = phi i32 [%r298, %b6974], [%r298, %b6972]
  %r223 = phi i32 [%r222, %b6974], [%r222, %b6972]
  %r395 = add i32 ptrtoint(i8* @console to i32), 1
  %r393 = inttoptr i32 %r395 to i8*
  %r394 = load i8, i8* %r393
  %r390 = zext i8 %r394 to i32
  %r391 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r392 = load i8, i8* %r391
  %r389 = zext i8 %r392 to i32
  call void @func_b6700(i32 %r390, i32 %r386, i32 79, i32 %r387, i32 %r388, i32 %r384, i32 %r389)
  call void @func_b6709(i32 1, i32 %r384, i32 %r385, i32 %r386, i32 %r387, i32 %r388, i32 %r389, i32 %r390)
  br label %b6713

b3217:
  %r402 = add i32 ptrtoint(i8* @console to i32), 1
  %r400 = inttoptr i32 %r402 to i8*
  %r401 = load i8, i8* %r400
  %r397 = zext i8 %r401 to i32
  %r398 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r399 = load i8, i8* %r398
  %r396 = zext i8 %r399 to i32
  call void @func_b6700(i32 %r397, i32 %r303, i32 79, i32 %r302, i32 %r350, i32 %r298, i32 %r396)
  call void @func_b6709(i32 1, i32 %r298, i32 %r290, i32 %r303, i32 %r302, i32 %r350, i32 %r396, i32 %r397)
  br label %b6713

b3211:
  %r409 = add i32 ptrtoint(i8* @console to i32), 1
  %r407 = inttoptr i32 %r409 to i8*
  %r408 = load i8, i8* %r407
  %r404 = zext i8 %r408 to i32
  %r405 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r406 = load i8, i8* %r405
  %r403 = zext i8 %r406 to i32
  call void @func_b6700(i32 %r404, i32 %r303, i32 79, i32 %r302, i32 %r361, i32 %r298, i32 %r403)
  call void @func_b6701(i32 1, i32 %r298, i32 0, i32 %r303, i32 %r302, i32 %r361, i32 %r403, i32 %r404)
  br label %b6713

b4261:
  %r410 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  store i1 false, i1* %r410
  ret void

b5218:
  %r411 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %b5187

b5187:
  %r413 = phi i32 [%r381, %b5218], [%r418, %b5185]
  %r417 = phi i32 [%r411, %b5218], [%r416, %b5185]
  %r415 = call i32 @inb(i32 1021)
  %r414 = and i32 %r415, 96
  call void @func_b1602(i32 %r414, i32 0, i32 %r413)
  %r412 = icmp eq i32 %r413, 10
  br i1 %r412, label %b5190, label %b5192

b5190:
  %r420 = call i32 @inb(i32 1021)
  %r419 = and i32 %r420, 96
  call void @func_b1602(i32 %r419, i32 0, i32 13)
  call void @func_b1988(i32 %r413)
  br label %b5183

b5192:
  call void @func_b1988(i32 %r413)
  br label %b5183

b5183:
  %r424 = phi i32 [%r417, %b5190], [%r417, %b5192]
  %r422 = inttoptr i32 %r424 to i8*
  %r423 = load i8, i8* %r422
  %r418 = zext i8 %r423 to i32
  %r421 = icmp eq i32 %r418, 0
  br i1 %r421, label %b4261, label %b5185

b5185:
  %r416 = add i32 %r424, 1
  br label %b5187
}

define internal void @func_b3254(i32 %r0, i32 %r1) {
  %r4 = load i32, i32* @ball
  %r241 = load i32, i32* @gameoverZone
  br label %b3254

b3254:
  %r10 = phi i32 [%r0, %0], [%r12, %b6900], [%r11, %b3508], [%r10, %b3510]
  %r6 = phi i32 [%r1, %0], [%r9, %b6900], [%r8, %b3508], [%r7, %b3510]
  %r5 = mul i32 %r6, 24
  %r3 = add i32 ptrtoint(i8* @objects to i32), %r5
  %r2 = icmp eq i32 %r3, %r4
  br i1 %r2, label %b6900, label %b3512

b6900:
  %r16 = phi i32 [1, %b3254], [1, %b3512], [1, %b3663], [1, %b3710], [1, %b3725], [1, %b3738], [1, %b3746]
  %r15 = phi i32 [%r6, %b3254], [%r6, %b3512], [%r6, %b3663], [%r6, %b3710], [%r6, %b3725], [%r6, %b3738], [%r6, %b3746]
  %r14 = phi i32 [20, %b3254], [20, %b3512], [20, %b3663], [20, %b3710], [20, %b3725], [20, %b3738], [20, %b3746]
  %r12 = phi i32 [%r10, %b3254], [%r10, %b3512], [%r10, %b3663], [%r10, %b3710], [%r10, %b3725], [%r10, %b3738], [%r10, %b3746]
  %r9 = add i32 %r15, %r16
  %r13 = icmp ule i32 %r9, %r14
  br i1 %r13, label %b3254, label %b2208

b3512:
  %r21 = add i32 %r3, 20
  %r20 = inttoptr i32 %r21 to i32*
  %r19 = load i32, i32* %r20
  %r18 = and i32 %r19, 16
  %r17 = icmp ne i32 %r18, 0
  br i1 %r17, label %b3663, label %b6900

b2208:
  %r26 = add i32 ptrtoint(i8* @objects to i32), 20
  %r25 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r25
  %r23 = and i32 %r24, 16
  %r22 = icmp ne i32 %r23, 0
  br i1 %r22, label %b4703, label %b3080

b3663:
  %r28 = and i32 %r19, 2
  %r27 = icmp ne i32 %r28, 0
  br i1 %r27, label %b3710, label %b6900

b4703:
  %r30 = and i32 %r24, 1
  %r29 = icmp ne i32 %r30, 0
  br i1 %r29, label %b4704, label %b3080

b3080:
  br label %b6786

b3710:
  %r54 = add i32 %r3, 8
  %r53 = inttoptr i32 %r54 to i32*
  %r32 = load i32, i32* %r53
  %r52 = add i32 %r4, 8
  %r51 = inttoptr i32 %r52 to i32*
  %r34 = load i32, i32* %r51
  %r50 = add i32 %r3, 12
  %r49 = inttoptr i32 %r50 to i32*
  %r48 = load i32, i32* %r49
  %r47 = add i32 %r4, 12
  %r46 = inttoptr i32 %r47 to i32*
  %r45 = load i32, i32* %r46
  %r44 = inttoptr i32 %r3 to i32*
  %r43 = load i32, i32* %r44
  %r42 = add i32 %r3, 4
  %r41 = inttoptr i32 %r42 to i32*
  %r40 = load i32, i32* %r41
  %r39 = inttoptr i32 %r4 to i32*
  %r35 = load i32, i32* %r39
  %r38 = add i32 %r4, 4
  %r37 = inttoptr i32 %r38 to i32*
  %r36 = load i32, i32* %r37
  %r33 = add i32 %r34, %r35
  %r31 = icmp ult i32 %r32, %r33
  br i1 %r31, label %b3725, label %b6900

b4704:
  %r55 = icmp eq i32 ptrtoint(i8* @objects to i32), %r4
  br i1 %r55, label %b3080, label %b4705

b6786:
  %r63 = phi i32 [1, %b3080], [%r64, %b6784], [1, %b4709]
  %r62 = mul i32 %r63, 24
  %r61 = add i32 ptrtoint(i8* @objects to i32), %r62
  %r60 = add i32 %r61, 20
  %r59 = inttoptr i32 %r60 to i32*
  %r58 = load i32, i32* %r59
  %r57 = and i32 %r58, 16
  %r56 = icmp ne i32 %r57, 0
  br i1 %r56, label %b3230, label %b6784

b3725:
  %r66 = add i32 %r32, %r43
  %r65 = icmp ugt i32 %r66, %r34
  br i1 %r65, label %b3738, label %b6900

b4705:
  %r90 = add i32 ptrtoint(i8* @objects to i32), 8
  %r89 = inttoptr i32 %r90 to i32*
  %r68 = load i32, i32* %r89
  %r88 = add i32 %r4, 8
  %r87 = inttoptr i32 %r88 to i32*
  %r70 = load i32, i32* %r87
  %r86 = add i32 ptrtoint(i8* @objects to i32), 12
  %r85 = inttoptr i32 %r86 to i32*
  %r84 = load i32, i32* %r85
  %r83 = add i32 %r4, 12
  %r82 = inttoptr i32 %r83 to i32*
  %r81 = load i32, i32* %r82
  %r80 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r79 = load i32, i32* %r80
  %r78 = add i32 ptrtoint(i8* @objects to i32), 4
  %r77 = inttoptr i32 %r78 to i32*
  %r76 = load i32, i32* %r77
  %r75 = inttoptr i32 %r4 to i32*
  %r71 = load i32, i32* %r75
  %r74 = add i32 %r4, 4
  %r73 = inttoptr i32 %r74 to i32*
  %r72 = load i32, i32* %r73
  %r69 = add i32 %r70, %r71
  %r67 = icmp ult i32 %r68, %r69
  br i1 %r67, label %b4706, label %b3080

b3230:
  %r92 = and i32 %r58, 1
  %r91 = icmp ne i32 %r92, 0
  br i1 %r91, label %b3701, label %b6784

b6784:
  %r96 = phi i32 [1, %b6786], [1, %b3230], [1, %b3701], [1, %b3703], [1, %b3704], [1, %b3705], [1, %b3706], [1, %b3707]
  %r95 = phi i32 [%r63, %b6786], [%r63, %b3230], [%r63, %b3701], [%r63, %b3703], [%r63, %b3704], [%r63, %b3705], [%r63, %b3706], [%r63, %b3707]
  %r94 = phi i32 [20, %b6786], [20, %b3230], [20, %b3701], [20, %b3703], [20, %b3704], [20, %b3705], [20, %b3706], [20, %b3707]
  %r64 = add i32 %r95, %r96
  %r93 = icmp ule i32 %r64, %r94
  br i1 %r93, label %b6786, label %b2720

b3738:
  %r98 = add i32 %r45, %r36
  %r97 = icmp ult i32 %r48, %r98
  br i1 %r97, label %b3746, label %b6900

b4706:
  %r100 = add i32 %r68, %r79
  %r99 = icmp ugt i32 %r100, %r70
  br i1 %r99, label %b4707, label %b3080

b3701:
  %r101 = icmp eq i32 %r61, %r4
  br i1 %r101, label %b6784, label %b3703

b2720:
  %r106 = add i32 ptrtoint(i8* @objects to i32), 20
  %r105 = inttoptr i32 %r106 to i32*
  %r104 = load i32, i32* %r105
  %r103 = and i32 %r104, 16
  %r102 = icmp ne i32 %r103, 0
  br i1 %r102, label %b4687, label %b2504

b3746:
  %r108 = add i32 %r48, %r40
  %r107 = icmp ugt i32 %r108, %r45
  br i1 %r107, label %b3754, label %b6900

b4707:
  %r110 = add i32 %r81, %r72
  %r109 = icmp ult i32 %r84, %r110
  br i1 %r109, label %b4708, label %b3080

b3703:
  %r134 = add i32 %r61, 8
  %r133 = inttoptr i32 %r134 to i32*
  %r112 = load i32, i32* %r133
  %r132 = add i32 %r4, 8
  %r131 = inttoptr i32 %r132 to i32*
  %r114 = load i32, i32* %r131
  %r130 = add i32 %r61, 12
  %r129 = inttoptr i32 %r130 to i32*
  %r128 = load i32, i32* %r129
  %r127 = add i32 %r4, 12
  %r126 = inttoptr i32 %r127 to i32*
  %r125 = load i32, i32* %r126
  %r124 = inttoptr i32 %r61 to i32*
  %r123 = load i32, i32* %r124
  %r122 = add i32 %r61, 4
  %r121 = inttoptr i32 %r122 to i32*
  %r120 = load i32, i32* %r121
  %r119 = inttoptr i32 %r4 to i32*
  %r115 = load i32, i32* %r119
  %r118 = add i32 %r4, 4
  %r117 = inttoptr i32 %r118 to i32*
  %r116 = load i32, i32* %r117
  %r113 = add i32 %r114, %r115
  %r111 = icmp ult i32 %r112, %r113
  br i1 %r111, label %b3704, label %b6784

b4687:
  %r147 = add i32 ptrtoint(i8* @objects to i32), 8
  %r146 = inttoptr i32 %r147 to i32*
  %r145 = load i32, i32* %r146
  %r144 = add i32 ptrtoint(i8* @console to i32), 1
  %r142 = inttoptr i32 %r144 to i8*
  %r143 = load i8, i8* %r142
  %r138 = zext i8 %r143 to i32
  %r141 = add i32 ptrtoint(i8* @console to i32), 3
  %r139 = inttoptr i32 %r141 to i8*
  %r140 = load i8, i8* %r139
  %r137 = zext i8 %r140 to i32
  %r136 = sub i32 %r137, %r138
  %r135 = icmp ule i32 %r136, 79
  br i1 %r135, label %b6356, label %b4688

b2504:
  br label %b6715

b3754:
  %r159 = add i32 %r4, 4
  %r158 = inttoptr i32 %r159 to i32*
  %r153 = load i32, i32* %r158
  %r157 = add i32 %r3, 4
  %r156 = inttoptr i32 %r157 to i32*
  %r151 = load i32, i32* %r156
  %r155 = add i32 %r3, 12
  %r154 = inttoptr i32 %r155 to i32*
  %r149 = load i32, i32* %r154
  %r152 = add i32 %r10, %r153
  %r150 = add i32 %r149, %r151
  %r148 = icmp ule i32 %r10, %r149
  br i1 %r148, label %b3508, label %b3509

b4708:
  %r161 = add i32 %r84, %r76
  %r160 = icmp ugt i32 %r161, %r81
  br i1 %r160, label %b4709, label %b3080

b3704:
  %r163 = add i32 %r112, %r123
  %r162 = icmp ugt i32 %r163, %r114
  br i1 %r162, label %b3705, label %b6784

b6356:
  %r164 = icmp ule i32 %r145, %r136
  br i1 %r164, label %b6783, label %b2504

b4688:
  %r166 = call i32 @func_b5219()
  %r165 = icmp ule i32 %r145, %r166
  br i1 %r165, label %b6783, label %b2504

b6715:
  %r174 = phi i32 [1, %b2504], [%r175, %b6713], [1, %b6955], [1, %b6953], [1, %b6318], [1, %b2735], [1, %b2729]
  %r173 = mul i32 %r174, 24
  %r172 = add i32 ptrtoint(i8* @objects to i32), %r173
  %r171 = add i32 %r172, 20
  %r170 = inttoptr i32 %r171 to i32*
  %r169 = load i32, i32* %r170
  %r168 = and i32 %r169, 16
  %r167 = icmp ne i32 %r168, 0
  br i1 %r167, label %b2715, label %b6713

b3508:
  %r11 = phi i32 [%r10, %b3754], [%r10, %b3509]
  %r177 = phi i32 [%r6, %b3754], [%r6, %b3509]
  %r178 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 false, i1* %r178
  %r8 = add i32 %r177, 1
  %r176 = icmp ule i32 %r8, 20
  br i1 %r176, label %b3254, label %b2208

b3509:
  %r179 = icmp uge i32 %r152, %r150
  br i1 %r179, label %b3508, label %b3510

b4709:
  %r186 = add i32 ptrtoint(i8* @objects to i32), 20
  %r188 = inttoptr i32 %r186 to i32*
  %r187 = load i32, i32* %r188
  %r185 = and i32 %r187, -17
  %r184 = inttoptr i32 %r186 to i32*
  store i32 %r185, i32* %r184
  %r183 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r182 = load i32, i32* %r183
  %r181 = add i32 %r182, -1
  %r180 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r181, i32* %r180
  br label %b6786

b3705:
  %r190 = add i32 %r125, %r116
  %r189 = icmp ult i32 %r128, %r190
  br i1 %r189, label %b3706, label %b6784

b6783:
  %r204 = phi i32 [%r145, %b6356], [%r145, %b4688]
  %r203 = phi i32 [%r136, %b6356], [%r166, %b4688]
  %r202 = add i32 ptrtoint(i8* @objects to i32), 12
  %r201 = inttoptr i32 %r202 to i32*
  %r200 = load i32, i32* %r201
  %r198 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r199 = load i8, i8* %r198
  %r194 = zext i8 %r199 to i32
  %r197 = add i32 ptrtoint(i8* @console to i32), 2
  %r195 = inttoptr i32 %r197 to i8*
  %r196 = load i8, i8* %r195
  %r193 = zext i8 %r196 to i32
  %r192 = sub i32 %r193, %r194
  %r191 = icmp ule i32 %r192, 24
  br i1 %r191, label %b6957, label %b6958

b2715:
  %r217 = add i32 %r172, 8
  %r216 = inttoptr i32 %r217 to i32*
  %r215 = load i32, i32* %r216
  %r214 = add i32 ptrtoint(i8* @console to i32), 1
  %r212 = inttoptr i32 %r214 to i8*
  %r213 = load i8, i8* %r212
  %r208 = zext i8 %r213 to i32
  %r211 = add i32 ptrtoint(i8* @console to i32), 3
  %r209 = inttoptr i32 %r211 to i8*
  %r210 = load i8, i8* %r209
  %r207 = zext i8 %r210 to i32
  %r206 = sub i32 %r207, %r208
  %r205 = icmp ule i32 %r206, 79
  br i1 %r205, label %b6224, label %b2716

b6713:
  %r221 = phi i32 [1, %b6715], [1, %b6224], [1, %b2716], [1, %b6975], [1, %b6976], [1, %b6973], [1, %b6971], [1, %b6175], [1, %b3217], [1, %b3211]
  %r220 = phi i32 [%r174, %b6715], [%r174, %b6224], [%r174, %b2716], [%r222, %b6975], [%r222, %b6976], [%r222, %b6973], [%r222, %b6971], [%r223, %b6175], [%r222, %b3217], [%r222, %b3211]
  %r219 = phi i32 [20, %b6715], [20, %b6224], [20, %b2716], [20, %b6975], [20, %b6976], [20, %b6973], [20, %b6971], [20, %b6175], [20, %b3217], [20, %b3211]
  %r175 = add i32 %r220, %r221
  %r218 = icmp ule i32 %r175, %r219
  br i1 %r218, label %b6715, label %b2034

b3510:
  %r225 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 false, i1* %r225
  %r7 = add i32 %r6, 1
  %r224 = icmp ule i32 %r7, 20
  br i1 %r224, label %b3254, label %b2208

b3706:
  %r227 = add i32 %r128, %r120
  %r226 = icmp ugt i32 %r227, %r125
  br i1 %r226, label %b3707, label %b6784

b6957:
  %r228 = icmp ule i32 %r200, %r192
  br i1 %r228, label %b6982, label %b2504

b6958:
  %r229 = icmp ule i32 %r200, 0
  br i1 %r229, label %b6981, label %b2504

b6224:
  %r230 = icmp ule i32 %r215, %r206
  br i1 %r230, label %b6712, label %b6713

b2716:
  %r232 = call i32 @func_b5219()
  %r231 = icmp ule i32 %r215, %r232
  br i1 %r231, label %b6712, label %b6713

b2034:
  %r257 = add i32 %r4, 8
  %r256 = inttoptr i32 %r257 to i32*
  %r234 = load i32, i32* %r256
  %r255 = add i32 %r241, 8
  %r254 = inttoptr i32 %r255 to i32*
  %r236 = load i32, i32* %r254
  %r253 = add i32 %r4, 12
  %r252 = inttoptr i32 %r253 to i32*
  %r251 = load i32, i32* %r252
  %r250 = add i32 %r241, 12
  %r249 = inttoptr i32 %r250 to i32*
  %r248 = load i32, i32* %r249
  %r247 = inttoptr i32 %r4 to i32*
  %r246 = load i32, i32* %r247
  %r245 = add i32 %r4, 4
  %r244 = inttoptr i32 %r245 to i32*
  %r243 = load i32, i32* %r244
  %r242 = inttoptr i32 %r241 to i32*
  %r237 = load i32, i32* %r242
  %r240 = add i32 %r241, 4
  %r239 = inttoptr i32 %r240 to i32*
  %r238 = load i32, i32* %r239
  %r235 = add i32 %r236, %r237
  %r233 = icmp ult i32 %r234, %r235
  br i1 %r233, label %b2035, label %b303

b3707:
  %r264 = add i32 %r61, 20
  %r266 = inttoptr i32 %r264 to i32*
  %r265 = load i32, i32* %r266
  %r263 = and i32 %r265, -17
  %r262 = inttoptr i32 %r264 to i32*
  store i32 %r263, i32* %r262
  %r261 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r260 = load i32, i32* %r261
  %r259 = add i32 %r260, -1
  %r258 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r259, i32* %r258
  br label %b6784

b6982:
  %r277 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r270 = load i32, i32* %r277
  %r276 = add i32 ptrtoint(i8* @objects to i32), 4
  %r275 = inttoptr i32 %r276 to i32*
  %r274 = load i32, i32* %r275
  %r273 = add i32 ptrtoint(i8* @objects to i32), 16
  %r272 = inttoptr i32 %r273 to i32*
  %r271 = load i32, i32* %r272
  %r269 = add i32 %r204, %r270
  %r268 = add i32 %r269, -1
  %r267 = icmp ule i32 %r268, %r203
  br i1 %r267, label %b6955, label %b6956

b6981:
  %r288 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r281 = load i32, i32* %r288
  %r287 = add i32 ptrtoint(i8* @objects to i32), 4
  %r286 = inttoptr i32 %r287 to i32*
  %r285 = load i32, i32* %r286
  %r284 = add i32 ptrtoint(i8* @objects to i32), 16
  %r283 = inttoptr i32 %r284 to i32*
  %r282 = load i32, i32* %r283
  %r280 = add i32 %r204, %r281
  %r279 = add i32 %r280, -1
  %r278 = icmp ule i32 %r279, %r203
  br i1 %r278, label %b6953, label %b6954

b6712:
  %r303 = phi i32 [%r215, %b6224], [%r215, %b2716]
  %r301 = phi i32 [%r172, %b6224], [%r172, %b2716]
  %r302 = phi i32 [%r206, %b6224], [%r232, %b2716]
  %r222 = phi i32 [%r174, %b6224], [%r174, %b2716]
  %r300 = add i32 %r301, 12
  %r299 = inttoptr i32 %r300 to i32*
  %r298 = load i32, i32* %r299
  %r296 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r297 = load i8, i8* %r296
  %r292 = zext i8 %r297 to i32
  %r295 = add i32 ptrtoint(i8* @console to i32), 2
  %r293 = inttoptr i32 %r295 to i8*
  %r294 = load i8, i8* %r293
  %r291 = zext i8 %r294 to i32
  %r290 = sub i32 %r291, %r292
  %r289 = icmp ule i32 %r290, 24
  br i1 %r289, label %b6975, label %b6976

b2035:
  %r305 = add i32 %r234, %r246
  %r304 = icmp ugt i32 %r305, %r236
  br i1 %r304, label %b2036, label %b303

b303:
  ret void

b6955:
  %r307 = add i32 %r200, %r274
  %r306 = add i32 %r307, -1
  call void @func_b6201(i32 %r306, i32 %r192, i32 %r200, i32 %r271, i32 %r268, i32 %r204)
  br label %b6715

b6956:
  %r310 = add i32 %r200, %r274
  %r309 = add i32 %r310, -1
  %r308 = icmp ule i32 %r309, %r192
  br i1 %r308, label %b6318, label %b2735

b6953:
  %r312 = add i32 %r200, %r285
  %r311 = add i32 %r312, -1
  call void @func_b6180(i32 %r311, i32 0, i32 %r200, i32 %r282, i32 %r279, i32 %r204)
  br label %b6715

b6954:
  %r315 = add i32 %r200, %r285
  %r314 = add i32 %r315, -1
  %r313 = icmp ule i32 %r314, 0
  br i1 %r313, label %b6318, label %b2729

b6975:
  %r316 = icmp ule i32 %r298, %r290
  br i1 %r316, label %b6992, label %b6713

b6976:
  %r317 = icmp ule i32 %r298, 0
  br i1 %r317, label %b6991, label %b6713

b2036:
  %r319 = add i32 %r248, %r238
  %r318 = icmp ult i32 %r251, %r319
  br i1 %r318, label %b2037, label %b303

b6318:
  %r321 = phi i32 [%r309, %b6956], [%r314, %b6954]
  %r322 = phi i32 [%r204, %b6956], [%r204, %b6954]
  %r323 = phi i32 [%r203, %b6956], [%r203, %b6954]
  %r324 = phi i32 [%r271, %b6956], [%r282, %b6954]
  %r320 = phi i32 [%r200, %b6956], [%r200, %b6954]
  %r331 = add i32 ptrtoint(i8* @console to i32), 1
  %r329 = inttoptr i32 %r331 to i8*
  %r330 = load i8, i8* %r329
  %r326 = zext i8 %r330 to i32
  %r327 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r328 = load i8, i8* %r327
  %r325 = zext i8 %r328 to i32
  call void @func_b6700(i32 %r326, i32 %r322, i32 79, i32 %r323, i32 %r324, i32 %r320, i32 %r325)
  call void @func_b6709(i32 1, i32 %r320, i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326)
  br label %b6715

b2735:
  %r338 = add i32 ptrtoint(i8* @console to i32), 1
  %r336 = inttoptr i32 %r338 to i8*
  %r337 = load i8, i8* %r336
  %r333 = zext i8 %r337 to i32
  %r334 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r335 = load i8, i8* %r334
  %r332 = zext i8 %r335 to i32
  call void @func_b6700(i32 %r333, i32 %r204, i32 79, i32 %r203, i32 %r271, i32 %r200, i32 %r332)
  call void @func_b6709(i32 1, i32 %r200, i32 %r192, i32 %r204, i32 %r203, i32 %r271, i32 %r332, i32 %r333)
  br label %b6715

b2729:
  %r345 = add i32 ptrtoint(i8* @console to i32), 1
  %r343 = inttoptr i32 %r345 to i8*
  %r344 = load i8, i8* %r343
  %r340 = zext i8 %r344 to i32
  %r341 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r342 = load i8, i8* %r341
  %r339 = zext i8 %r342 to i32
  call void @func_b6700(i32 %r340, i32 %r204, i32 79, i32 %r203, i32 %r282, i32 %r200, i32 %r339)
  call void @func_b6701(i32 1, i32 %r200, i32 0, i32 %r204, i32 %r203, i32 %r282, i32 %r339, i32 %r340)
  br label %b6715

b6992:
  %r356 = inttoptr i32 %r301 to i32*
  %r349 = load i32, i32* %r356
  %r355 = add i32 %r301, 4
  %r354 = inttoptr i32 %r355 to i32*
  %r353 = load i32, i32* %r354
  %r352 = add i32 %r301, 16
  %r351 = inttoptr i32 %r352 to i32*
  %r350 = load i32, i32* %r351
  %r348 = add i32 %r303, %r349
  %r347 = add i32 %r348, -1
  %r346 = icmp ule i32 %r347, %r302
  br i1 %r346, label %b6973, label %b6974

b6991:
  %r367 = inttoptr i32 %r301 to i32*
  %r360 = load i32, i32* %r367
  %r366 = add i32 %r301, 4
  %r365 = inttoptr i32 %r366 to i32*
  %r364 = load i32, i32* %r365
  %r363 = add i32 %r301, 16
  %r362 = inttoptr i32 %r363 to i32*
  %r361 = load i32, i32* %r362
  %r359 = add i32 %r303, %r360
  %r358 = add i32 %r359, -1
  %r357 = icmp ule i32 %r358, %r302
  br i1 %r357, label %b6971, label %b6972

b2037:
  %r369 = add i32 %r251, %r243
  %r368 = icmp ugt i32 %r369, %r248
  br i1 %r368, label %b1041, label %b303

b6973:
  %r371 = add i32 %r298, %r353
  %r370 = add i32 %r371, -1
  call void @func_b6201(i32 %r370, i32 %r290, i32 %r298, i32 %r350, i32 %r347, i32 %r303)
  br label %b6713

b6974:
  %r374 = add i32 %r298, %r353
  %r373 = add i32 %r374, -1
  %r372 = icmp ule i32 %r373, %r290
  br i1 %r372, label %b6175, label %b3217

b6971:
  %r376 = add i32 %r298, %r364
  %r375 = add i32 %r376, -1
  call void @func_b6180(i32 %r375, i32 0, i32 %r298, i32 %r361, i32 %r358, i32 %r303)
  br label %b6713

b6972:
  %r379 = add i32 %r298, %r364
  %r378 = add i32 %r379, -1
  %r377 = icmp ule i32 %r378, 0
  br i1 %r377, label %b6175, label %b3211

b1041:
  call void @func_b1244()
  %r382 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r383 = load i8, i8* %r382
  %r381 = zext i8 %r383 to i32
  %r380 = icmp eq i32 %r381, 0
  br i1 %r380, label %b4261, label %b5218

b6175:
  %r385 = phi i32 [%r373, %b6974], [%r378, %b6972]
  %r386 = phi i32 [%r303, %b6974], [%r303, %b6972]
  %r387 = phi i32 [%r302, %b6974], [%r302, %b6972]
  %r388 = phi i32 [%r350, %b6974], [%r361, %b6972]
  %r384 = phi i32 [%r298, %b6974], [%r298, %b6972]
  %r223 = phi i32 [%r222, %b6974], [%r222, %b6972]
  %r395 = add i32 ptrtoint(i8* @console to i32), 1
  %r393 = inttoptr i32 %r395 to i8*
  %r394 = load i8, i8* %r393
  %r390 = zext i8 %r394 to i32
  %r391 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r392 = load i8, i8* %r391
  %r389 = zext i8 %r392 to i32
  call void @func_b6700(i32 %r390, i32 %r386, i32 79, i32 %r387, i32 %r388, i32 %r384, i32 %r389)
  call void @func_b6709(i32 1, i32 %r384, i32 %r385, i32 %r386, i32 %r387, i32 %r388, i32 %r389, i32 %r390)
  br label %b6713

b3217:
  %r402 = add i32 ptrtoint(i8* @console to i32), 1
  %r400 = inttoptr i32 %r402 to i8*
  %r401 = load i8, i8* %r400
  %r397 = zext i8 %r401 to i32
  %r398 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r399 = load i8, i8* %r398
  %r396 = zext i8 %r399 to i32
  call void @func_b6700(i32 %r397, i32 %r303, i32 79, i32 %r302, i32 %r350, i32 %r298, i32 %r396)
  call void @func_b6709(i32 1, i32 %r298, i32 %r290, i32 %r303, i32 %r302, i32 %r350, i32 %r396, i32 %r397)
  br label %b6713

b3211:
  %r409 = add i32 ptrtoint(i8* @console to i32), 1
  %r407 = inttoptr i32 %r409 to i8*
  %r408 = load i8, i8* %r407
  %r404 = zext i8 %r408 to i32
  %r405 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r406 = load i8, i8* %r405
  %r403 = zext i8 %r406 to i32
  call void @func_b6700(i32 %r404, i32 %r303, i32 79, i32 %r302, i32 %r361, i32 %r298, i32 %r403)
  call void @func_b6701(i32 1, i32 %r298, i32 0, i32 %r303, i32 %r302, i32 %r361, i32 %r403, i32 %r404)
  br label %b6713

b4261:
  %r410 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  store i1 false, i1* %r410
  ret void

b5218:
  %r411 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %b5187

b5187:
  %r413 = phi i32 [%r381, %b5218], [%r418, %b5185]
  %r417 = phi i32 [%r411, %b5218], [%r416, %b5185]
  %r415 = call i32 @inb(i32 1021)
  %r414 = and i32 %r415, 96
  call void @func_b1602(i32 %r414, i32 0, i32 %r413)
  %r412 = icmp eq i32 %r413, 10
  br i1 %r412, label %b5190, label %b5192

b5190:
  %r420 = call i32 @inb(i32 1021)
  %r419 = and i32 %r420, 96
  call void @func_b1602(i32 %r419, i32 0, i32 13)
  call void @func_b1988(i32 %r413)
  br label %b5183

b5192:
  call void @func_b1988(i32 %r413)
  br label %b5183

b5183:
  %r424 = phi i32 [%r417, %b5190], [%r417, %b5192]
  %r422 = inttoptr i32 %r424 to i8*
  %r423 = load i8, i8* %r422
  %r418 = zext i8 %r423 to i32
  %r421 = icmp eq i32 %r418, 0
  br i1 %r421, label %b4261, label %b5185

b5185:
  %r416 = add i32 %r424, 1
  br label %b5187
}

define void @timerInterrupt() {
  %r109 = load i32, i32* @ball
  %r372 = load i32, i32* @gameoverZone
  br label %timerInterrupt

timerInterrupt:
  %r9 = call i32 @inb(i32 33)
  %r8 = or i32 %r9, 1
  call void @outb(i32 33, i32 %r8)
  call void @outb(i32 32, i32 96)
  %r7 = call i32 @inb(i32 33)
  %r6 = and i32 %r7, -2
  call void @outb(i32 33, i32 %r6)
  %r5 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  %r4 = load i32, i32* %r5
  %r3 = add i32 %r4, 1
  %r2 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  store i32 %r3, i32* %r2
  %r1 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  %r0 = load i1, i1* %r1
  br i1 %r0, label %b3380, label %b3124

b3380:
  call void @func_b1244()
  %r15 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r13 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r14 = load i8, i8* %r13
  %r12 = zext i8 %r14 to i32
  %r10 = icmp eq i32 54, %r11
  br i1 %r10, label %b3597, label %b3598

b3124:
  %r27 = phi i32 [%r4, %timerInterrupt], [%r50, %b6906], [%r49, %b6889], [%r48, %b6872], [%r47, %b6810], [%r41, %b3876], [%r41, %b3877], [%r41, %b3878], [%r41, %b3879], [%r46, %b3924], [%r41, %b3881], [%r45, %b3932], [%r44, %b3940], [%r43, %b3948], [%r42, %b3956], [%r38, %b6944], [%r37, %b6942], [%r41, %b5199], [%r41, %b5201], [%r40, %b3936], [%r40, %b3944], [%r40, %b3952], [%r40, %b3960], [%r39, %b6228], [%r38, %b3900], [%r37, %b3894]
  %r35 = inttoptr i32 753818 to i16*
  %r36 = load i16, i16* %r35
  %r33 = zext i16 %r36 to i32
  %r34 = and i32 %r27, 15
  %r32 = call i32 @func_b1638(i32 %r34, i32 9)
  %r31 = and i32 %r33, 65280
  %r29 = or i32 %r31, %r32
  %r28 = inttoptr i32 753818 to i16*
  %r30 = trunc i32 %r29 to i16
  store i16 %r30, i16* %r28
  %r24 = lshr i32 %r27, 4
  %r25 = inttoptr i32 753816 to i16*
  %r26 = load i16, i16* %r25
  %r22 = zext i16 %r26 to i32
  %r23 = and i32 %r24, 15
  %r21 = call i32 @func_b1638(i32 %r23, i32 9)
  %r20 = and i32 %r22, 65280
  %r18 = or i32 %r20, %r21
  %r17 = inttoptr i32 753816 to i16*
  %r19 = trunc i32 %r18 to i16
  store i16 %r19, i16* %r17
  br label %b6667

b3597:
  %r51 = icmp ne i32 54, %r12
  br i1 %r51, label %b3681, label %b3598

b3598:
  %r59 = phi i32 [%r4, %b3380], [%r4, %b3597]
  %r57 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r58 = load i8, i8* %r57
  %r53 = zext i8 %r58 to i32
  %r55 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r56 = load i8, i8* %r55
  %r54 = zext i8 %r56 to i32
  %r52 = icmp eq i32 52, %r53
  br i1 %r52, label %b3671, label %b3672

b6667:
  %r62 = phi i32 [75, %b3124], [%r61, %b6667]
  %r75 = phi i32 [%r24, %b3124], [%r71, %b6667]
  %r76 = phi i32 [%r27, %b3124], [%r76, %b6667]
  %r71 = lshr i32 %r75, 4
  %r74 = mul i32 %r62, 2
  %r66 = add i32 %r74, 753664
  %r72 = inttoptr i32 %r66 to i16*
  %r73 = load i16, i16* %r72
  %r69 = zext i16 %r73 to i32
  %r70 = and i32 %r71, 15
  %r68 = call i32 @func_b1638(i32 %r70, i32 9)
  %r67 = and i32 %r69, 65280
  %r64 = or i32 %r67, %r68
  %r63 = inttoptr i32 %r66 to i16*
  %r65 = trunc i32 %r64 to i16
  store i16 %r65, i16* %r63
  %r61 = add i32 %r62, -1
  %r60 = icmp sle i32 70, %r61
  br i1 %r60, label %b6667, label %b2556

b3681:
  %r86 = add i32 ptrtoint(i8* @objects to i32), 8
  %r88 = inttoptr i32 %r86 to i32*
  %r87 = load i32, i32* %r88
  %r85 = add i32 %r87, 1
  %r84 = inttoptr i32 %r86 to i32*
  store i32 %r85, i32* %r84
  %r82 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r83 = load i8, i8* %r82
  %r78 = zext i8 %r83 to i32
  %r80 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r77 = icmp eq i32 52, %r78
  br i1 %r77, label %b3671, label %b3672

b3671:
  %r90 = phi i32 [52, %b3598], [52, %b3681]
  %r91 = phi i32 [%r54, %b3598], [%r79, %b3681]
  %r92 = phi i32 [%r59, %b3598], [%r4, %b3681]
  %r89 = icmp ne i32 %r90, %r91
  br i1 %r89, label %b4070, label %b3672

b3672:
  %r95 = phi i32 [%r59, %b3598], [%r4, %b3681], [%r92, %b3671]
  %r94 = and i32 %r95, 15
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b3335, label %b3339

b2556:
  %r97 = and i32 %r76, 3
  %r96 = icmp eq i32 %r97, 0
  br i1 %r96, label %b1758, label %b1128

b4070:
  %r102 = add i32 ptrtoint(i8* @objects to i32), 8
  %r104 = inttoptr i32 %r102 to i32*
  %r103 = load i32, i32* %r104
  %r101 = add i32 %r103, -1
  %r100 = inttoptr i32 %r102 to i32*
  store i32 %r101, i32* %r100
  %r99 = and i32 %r92, 15
  %r98 = icmp eq i32 %r99, 0
  br i1 %r98, label %b3335, label %b3339

b3335:
  %r40 = phi i32 [%r95, %b3672], [%r92, %b4070]
  %r115 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  %r105 = load i1, i1* %r115
  %r114 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  %r113 = load i1, i1* %r114
  %r112 = add i32 %r109, 8
  %r111 = inttoptr i32 %r112 to i32*
  %r110 = load i32, i32* %r111
  %r108 = add i32 %r109, 12
  %r107 = inttoptr i32 %r108 to i32*
  %r106 = load i32, i32* %r107
  br i1 %r105, label %b3336, label %b3358

b3339:
  %r125 = phi i32 [%r95, %b3672], [%r92, %b4070], [%r124, %b6904], [%r123, %b6887], [%r122, %b6870], [%r121, %b6808]
  %r120 = add i32 ptrtoint(i8* @objects to i32), 20
  %r119 = inttoptr i32 %r120 to i32*
  %r118 = load i32, i32* %r119
  %r117 = and i32 %r118, 16
  %r116 = icmp ne i32 %r117, 0
  br i1 %r116, label %b4696, label %b6788

b1758:
  %r129 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r130 = load i8, i8* %r129
  %r128 = zext i8 %r130 to i32
  call void @func_b865(i32 %r128, i32 32)
  %r127 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  %r126 = load i1, i1* %r127
  br i1 %r126, label %b6664, label %b6659

b1128:
  %r132 = and i32 %r76, 15
  %r131 = icmp eq i32 %r132, 0
  br i1 %r131, label %b1126, label %b1384

b3336:
  %r133 = add i32 %r110, -1
  br i1 %r113, label %b3337, label %b3348

b3358:
  %r134 = add i32 %r110, 1
  br i1 %r113, label %b3359, label %b3369

b4696:
  %r136 = and i32 %r118, 1
  %r135 = icmp ne i32 %r136, 0
  br i1 %r135, label %b4697, label %b6788

b6788:
  %r141 = phi i32 [1, %b3339], [1, %b4696], [1, %b4697], [1, %b6790], [1, %b4698], [1, %b3917], [1, %b4699], [1, %b3918], [1, %b4700], [1, %b3920], [1, %b4701], [1, %b3921], [1, %b3922], [1, %b3923]
  %r140 = phi i32 [0, %b3339], [0, %b4696], [0, %b4697], [%r144, %b6790], [0, %b4698], [%r144, %b3917], [0, %b4699], [%r144, %b3918], [0, %b4700], [%r144, %b3920], [0, %b4701], [%r144, %b3921], [%r144, %b3922], [%r144, %b3923]
  %r139 = phi i32 [20, %b3339], [20, %b4696], [20, %b4697], [20, %b6790], [20, %b4698], [20, %b3917], [20, %b4699], [20, %b3918], [20, %b4700], [20, %b3920], [20, %b4701], [20, %b3921], [20, %b3922], [20, %b3923]
  %r143 = phi i32 [%r125, %b3339], [%r125, %b4696], [%r125, %b4697], [%r142, %b6790], [%r125, %b4698], [%r142, %b3917], [%r125, %b4699], [%r142, %b3918], [%r125, %b4700], [%r142, %b3920], [%r125, %b4701], [%r142, %b3921], [%r142, %b3922], [%r142, %b3923]
  %r138 = add i32 %r140, %r141
  %r137 = icmp ule i32 %r138, %r139
  br i1 %r137, label %b6790, label %b3872

b6664:
  %r146 = add i32 %r128, 1
  %r145 = icmp ule i32 %r146, 68
  br i1 %r145, label %b6662, label %b1761

b6659:
  %r148 = sub i32 %r128, 1
  %r147 = icmp sle i32 46, %r148
  br i1 %r147, label %b6657, label %b1764

b1126:
  %r153 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r152 = load i1, i1* %r153
  %r151 = zext i1 %r152 to i32
  %r150 = add i32 %r151, 1
  %r149 = icmp ule i32 %r150, 1
  br i1 %r149, label %b6652, label %b4232

b1384:
  %r158 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r157 = load i1, i1* %r158
  %r156 = zext i1 %r157 to i32
  %r155 = mul i32 %r156, 72
  %r154 = add i32 ptrtoint(i8* @users to i32), %r155
  tail call void @returnTo(i32 %r154)
  ret void

b3337:
  %r161 = add i32 %r106, -1
  %r164 = add i32 %r109, 8
  %r163 = inttoptr i32 %r164 to i32*
  store i32 %r133, i32* %r163
  %r162 = add i32 %r109, 12
  %r160 = inttoptr i32 %r162 to i32*
  store i32 %r161, i32* %r160
  %r159 = icmp eq i32 ptrtoint(i8* @objects to i32), %r109
  br i1 %r159, label %b6904, label %b4746

b3348:
  %r167 = add i32 %r106, 1
  %r170 = add i32 %r109, 8
  %r169 = inttoptr i32 %r170 to i32*
  store i32 %r133, i32* %r169
  %r168 = add i32 %r109, 12
  %r166 = inttoptr i32 %r168 to i32*
  store i32 %r167, i32* %r166
  %r165 = icmp eq i32 ptrtoint(i8* @objects to i32), %r109
  br i1 %r165, label %b6887, label %b4739

b3359:
  %r173 = add i32 %r106, -1
  %r176 = add i32 %r109, 8
  %r175 = inttoptr i32 %r176 to i32*
  store i32 %r134, i32* %r175
  %r174 = add i32 %r109, 12
  %r172 = inttoptr i32 %r174 to i32*
  store i32 %r173, i32* %r172
  %r171 = icmp eq i32 ptrtoint(i8* @objects to i32), %r109
  br i1 %r171, label %b6870, label %b4732

b3369:
  %r179 = add i32 %r106, 1
  %r182 = add i32 %r109, 8
  %r181 = inttoptr i32 %r182 to i32*
  store i32 %r134, i32* %r181
  %r180 = add i32 %r109, 12
  %r178 = inttoptr i32 %r180 to i32*
  store i32 %r179, i32* %r178
  %r177 = icmp eq i32 ptrtoint(i8* @objects to i32), %r109
  br i1 %r177, label %b6808, label %b4725

b4697:
  %r183 = icmp eq i32 ptrtoint(i8* @objects to i32), %r109
  br i1 %r183, label %b6788, label %b4698

b6790:
  %r144 = phi i32 [%r138, %b6788], [1, %b4702]
  %r142 = phi i32 [%r143, %b6788], [%r125, %b4702]
  %r190 = mul i32 %r144, 24
  %r189 = add i32 ptrtoint(i8* @objects to i32), %r190
  %r188 = add i32 %r189, 20
  %r187 = inttoptr i32 %r188 to i32*
  %r186 = load i32, i32* %r187
  %r185 = and i32 %r186, 16
  %r184 = icmp ne i32 %r185, 0
  br i1 %r184, label %b3917, label %b6788

b3872:
  %r195 = add i32 ptrtoint(i8* @objects to i32), 20
  %r194 = inttoptr i32 %r195 to i32*
  %r193 = load i32, i32* %r194
  %r192 = and i32 %r193, 16
  %r191 = icmp ne i32 %r192, 0
  br i1 %r191, label %b4679, label %b6720

b6662:
  call void @func_b865(i32 %r146, i32 62)
  %r198 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r199 = trunc i32 %r146 to i8
  store i8 %r199, i8* %r198
  %r197 = and i32 %r76, 15
  %r196 = icmp eq i32 %r197, 0
  br i1 %r196, label %b1126, label %b1384

b1761:
  call void @func_b865(i32 %r128, i32 124)
  %r202 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 false, i1* %r202
  %r201 = and i32 %r76, 15
  %r200 = icmp eq i32 %r201, 0
  br i1 %r200, label %b1126, label %b1384

b6657:
  call void @func_b865(i32 %r148, i32 60)
  %r205 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r206 = trunc i32 %r148 to i8
  store i8 %r206, i8* %r205
  %r204 = and i32 %r76, 15
  %r203 = icmp eq i32 %r204, 0
  br i1 %r203, label %b1126, label %b1384

b1764:
  call void @func_b865(i32 %r128, i32 124)
  %r209 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r209
  %r208 = and i32 %r76, 15
  %r207 = icmp eq i32 %r208, 0
  br i1 %r207, label %b1126, label %b1384

b6652:
  %r211 = trunc i32 %r150 to i1
  %r210 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 %r211, i1* %r210
  br label %b2552

b4232:
  %r212 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r212
  br label %b2552

b6904:
  %r217 = phi i32 [1, %b3337], [1, %b4746], [1, %b4747], [1, %b4748], [1, %b4749], [1, %b4750]
  %r216 = phi i32 [0, %b3337], [0, %b4746], [0, %b4747], [0, %b4748], [0, %b4749], [0, %b4750]
  %r215 = phi i32 [20, %b3337], [20, %b4746], [20, %b4747], [20, %b4748], [20, %b4749], [20, %b4750]
  %r218 = phi i32 [%r106, %b3337], [%r106, %b4746], [%r106, %b4747], [%r106, %b4748], [%r106, %b4749], [%r106, %b4750]
  %r124 = phi i32 [%r40, %b3337], [%r40, %b4746], [%r40, %b4747], [%r40, %b4748], [%r40, %b4749], [%r40, %b4750]
  %r214 = add i32 %r216, %r217
  %r213 = icmp ule i32 %r214, %r215
  br i1 %r213, label %b6906, label %b3339

b4746:
  %r223 = add i32 ptrtoint(i8* @objects to i32), 20
  %r222 = inttoptr i32 %r223 to i32*
  %r221 = load i32, i32* %r222
  %r220 = and i32 %r221, 16
  %r219 = icmp ne i32 %r220, 0
  br i1 %r219, label %b4747, label %b6904

b6887:
  %r228 = phi i32 [1, %b3348], [1, %b4739], [1, %b4740], [1, %b4741], [1, %b4742], [1, %b4743]
  %r227 = phi i32 [0, %b3348], [0, %b4739], [0, %b4740], [0, %b4741], [0, %b4742], [0, %b4743]
  %r226 = phi i32 [20, %b3348], [20, %b4739], [20, %b4740], [20, %b4741], [20, %b4742], [20, %b4743]
  %r229 = phi i32 [%r106, %b3348], [%r106, %b4739], [%r106, %b4740], [%r106, %b4741], [%r106, %b4742], [%r106, %b4743]
  %r123 = phi i32 [%r40, %b3348], [%r40, %b4739], [%r40, %b4740], [%r40, %b4741], [%r40, %b4742], [%r40, %b4743]
  %r225 = add i32 %r227, %r228
  %r224 = icmp ule i32 %r225, %r226
  br i1 %r224, label %b6889, label %b3339

b4739:
  %r234 = add i32 ptrtoint(i8* @objects to i32), 20
  %r233 = inttoptr i32 %r234 to i32*
  %r232 = load i32, i32* %r233
  %r231 = and i32 %r232, 16
  %r230 = icmp ne i32 %r231, 0
  br i1 %r230, label %b4740, label %b6887

b6870:
  %r239 = phi i32 [1, %b3359], [1, %b4732], [1, %b4733], [1, %b4734], [1, %b4735], [1, %b4736]
  %r238 = phi i32 [0, %b3359], [0, %b4732], [0, %b4733], [0, %b4734], [0, %b4735], [0, %b4736]
  %r237 = phi i32 [20, %b3359], [20, %b4732], [20, %b4733], [20, %b4734], [20, %b4735], [20, %b4736]
  %r240 = phi i32 [%r106, %b3359], [%r106, %b4732], [%r106, %b4733], [%r106, %b4734], [%r106, %b4735], [%r106, %b4736]
  %r122 = phi i32 [%r40, %b3359], [%r40, %b4732], [%r40, %b4733], [%r40, %b4734], [%r40, %b4735], [%r40, %b4736]
  %r236 = add i32 %r238, %r239
  %r235 = icmp ule i32 %r236, %r237
  br i1 %r235, label %b6872, label %b3339

b4732:
  %r245 = add i32 ptrtoint(i8* @objects to i32), 20
  %r244 = inttoptr i32 %r245 to i32*
  %r243 = load i32, i32* %r244
  %r242 = and i32 %r243, 16
  %r241 = icmp ne i32 %r242, 0
  br i1 %r241, label %b4733, label %b6870

b6808:
  %r250 = phi i32 [1, %b3369], [1, %b4725], [1, %b4726], [1, %b4727], [1, %b4728], [1, %b4729]
  %r249 = phi i32 [0, %b3369], [0, %b4725], [0, %b4726], [0, %b4727], [0, %b4728], [0, %b4729]
  %r248 = phi i32 [20, %b3369], [20, %b4725], [20, %b4726], [20, %b4727], [20, %b4728], [20, %b4729]
  %r251 = phi i32 [%r106, %b3369], [%r106, %b4725], [%r106, %b4726], [%r106, %b4727], [%r106, %b4728], [%r106, %b4729]
  %r121 = phi i32 [%r40, %b3369], [%r40, %b4725], [%r40, %b4726], [%r40, %b4727], [%r40, %b4728], [%r40, %b4729]
  %r247 = add i32 %r249, %r250
  %r246 = icmp ule i32 %r247, %r248
  br i1 %r246, label %b6810, label %b3339

b4725:
  %r256 = add i32 ptrtoint(i8* @objects to i32), 20
  %r255 = inttoptr i32 %r256 to i32*
  %r254 = load i32, i32* %r255
  %r253 = and i32 %r254, 16
  %r252 = icmp ne i32 %r253, 0
  br i1 %r252, label %b4726, label %b6808

b4698:
  %r280 = add i32 ptrtoint(i8* @objects to i32), 8
  %r279 = inttoptr i32 %r280 to i32*
  %r258 = load i32, i32* %r279
  %r278 = add i32 %r109, 8
  %r277 = inttoptr i32 %r278 to i32*
  %r260 = load i32, i32* %r277
  %r276 = add i32 ptrtoint(i8* @objects to i32), 12
  %r275 = inttoptr i32 %r276 to i32*
  %r274 = load i32, i32* %r275
  %r273 = add i32 %r109, 12
  %r272 = inttoptr i32 %r273 to i32*
  %r271 = load i32, i32* %r272
  %r270 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r269 = load i32, i32* %r270
  %r268 = add i32 ptrtoint(i8* @objects to i32), 4
  %r267 = inttoptr i32 %r268 to i32*
  %r266 = load i32, i32* %r267
  %r265 = inttoptr i32 %r109 to i32*
  %r261 = load i32, i32* %r265
  %r264 = add i32 %r109, 4
  %r263 = inttoptr i32 %r264 to i32*
  %r262 = load i32, i32* %r263
  %r259 = add i32 %r260, %r261
  %r257 = icmp ult i32 %r258, %r259
  br i1 %r257, label %b4699, label %b6788

b3917:
  %r282 = and i32 %r186, 1
  %r281 = icmp ne i32 %r282, 0
  br i1 %r281, label %b3918, label %b6788

b4679:
  %r295 = add i32 ptrtoint(i8* @objects to i32), 8
  %r294 = inttoptr i32 %r295 to i32*
  %r293 = load i32, i32* %r294
  %r292 = add i32 ptrtoint(i8* @console to i32), 1
  %r290 = inttoptr i32 %r292 to i8*
  %r291 = load i8, i8* %r290
  %r286 = zext i8 %r291 to i32
  %r289 = add i32 ptrtoint(i8* @console to i32), 3
  %r287 = inttoptr i32 %r289 to i8*
  %r288 = load i8, i8* %r287
  %r285 = zext i8 %r288 to i32
  %r284 = sub i32 %r285, %r286
  %r283 = icmp ule i32 %r284, 79
  br i1 %r283, label %b6311, label %b4680

b6720:
  %r300 = phi i32 [1, %b3872], [1, %b6311], [1, %b4680], [1, %b6722], [1, %b6951], [1, %b6952], [1, %b6269], [1, %b3888], [1, %b6977], [1, %b6978]
  %r299 = phi i32 [0, %b3872], [0, %b6311], [0, %b4680], [%r306, %b6722], [0, %b6951], [0, %b6952], [%r306, %b6269], [%r306, %b3888], [%r305, %b6977], [%r305, %b6978]
  %r298 = phi i32 [20, %b3872], [20, %b6311], [20, %b4680], [20, %b6722], [20, %b6951], [20, %b6952], [20, %b6269], [20, %b3888], [20, %b6977], [20, %b6978]
  %r304 = phi i32 [%r143, %b3872], [%r143, %b6311], [%r143, %b4680], [%r302, %b6722], [%r303, %b6951], [%r303, %b6952], [%r302, %b6269], [%r302, %b3888], [%r301, %b6977], [%r301, %b6978]
  %r297 = add i32 %r299, %r300
  %r296 = icmp ule i32 %r297, %r298
  br i1 %r296, label %b6722, label %b3876

b2552:
  %r328 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r329 = load i8, i8* %r328
  %r324 = zext i8 %r329 to i32
  %r327 = add i32 ptrtoint(i8* @spinner to i32), %r324
  %r325 = inttoptr i32 %r327 to i8*
  %r326 = load i8, i8* %r325
  %r316 = zext i8 %r326 to i32
  %r323 = add i32 %r324, 1
  %r321 = and i32 %r323, 3
  %r320 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r322 = trunc i32 %r321 to i8
  store i8 %r322, i8* %r320
  %r318 = inttoptr i32 753822 to i16*
  %r319 = load i16, i16* %r318
  %r317 = zext i16 %r319 to i32
  %r315 = and i32 %r317, 65280
  %r313 = or i32 %r315, %r316
  %r312 = inttoptr i32 753822 to i16*
  %r314 = trunc i32 %r313 to i16
  store i16 %r314, i16* %r312
  %r311 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r310 = load i1, i1* %r311
  %r309 = zext i1 %r310 to i32
  %r308 = mul i32 %r309, 72
  %r307 = add i32 ptrtoint(i8* @users to i32), %r308
  tail call void @returnTo(i32 %r307)
  ret void

b6906:
  %r331 = phi i32 [%r214, %b6904], [%r332, %b6908]
  %r330 = phi i32 [%r218, %b6904], [%r106, %b6908]
  %r50 = phi i32 [%r124, %b6904], [%r40, %b6908]
  call void @func_b3254(i32 %r330, i32 %r331)
  br label %b3124

b4747:
  %r334 = and i32 %r221, 2
  %r333 = icmp ne i32 %r334, 0
  br i1 %r333, label %b4748, label %b6904

b6889:
  %r336 = phi i32 [%r225, %b6887], [%r337, %b6891]
  %r335 = phi i32 [%r229, %b6887], [%r106, %b6891]
  %r49 = phi i32 [%r123, %b6887], [%r40, %b6891]
  call void @func_b3273(i32 %r335, i32 %r336)
  br label %b3124

b4740:
  %r339 = and i32 %r232, 2
  %r338 = icmp ne i32 %r339, 0
  br i1 %r338, label %b4741, label %b6887

b6872:
  %r341 = phi i32 [%r236, %b6870], [%r342, %b6874]
  %r340 = phi i32 [%r240, %b6870], [%r106, %b6874]
  %r48 = phi i32 [%r122, %b6870], [%r40, %b6874]
  call void @func_b3292(i32 %r340, i32 %r341)
  br label %b3124

b4733:
  %r344 = and i32 %r243, 2
  %r343 = icmp ne i32 %r344, 0
  br i1 %r343, label %b4734, label %b6870

b6810:
  %r346 = phi i32 [%r247, %b6808], [%r347, %b6857]
  %r345 = phi i32 [%r251, %b6808], [%r106, %b6857]
  %r47 = phi i32 [%r121, %b6808], [%r40, %b6857]
  call void @func_b3311(i32 %r345, i32 %r346)
  br label %b3124

b4726:
  %r349 = and i32 %r254, 2
  %r348 = icmp ne i32 %r349, 0
  br i1 %r348, label %b4727, label %b6808

b4699:
  %r351 = add i32 %r258, %r269
  %r350 = icmp ugt i32 %r351, %r260
  br i1 %r350, label %b4700, label %b6788

b3918:
  %r352 = icmp eq i32 %r189, %r109
  br i1 %r352, label %b6788, label %b3920

b6311:
  %r353 = icmp ule i32 %r293, %r284
  br i1 %r353, label %b6753, label %b6720

b4680:
  %r355 = call i32 @func_b5219()
  %r354 = icmp ule i32 %r293, %r355
  br i1 %r354, label %b6753, label %b6720

b6722:
  %r306 = phi i32 [%r297, %b6720], [1, %b6949], [1, %b6947], [1, %b6273], [1, %b3913], [1, %b3907]
  %r302 = phi i32 [%r304, %b6720], [%r303, %b6949], [%r303, %b6947], [%r363, %b6273], [%r303, %b3913], [%r303, %b3907]
  %r362 = mul i32 %r306, 24
  %r361 = add i32 ptrtoint(i8* @objects to i32), %r362
  %r360 = add i32 %r361, 20
  %r359 = inttoptr i32 %r360 to i32*
  %r358 = load i32, i32* %r359
  %r357 = and i32 %r358, 16
  %r356 = icmp ne i32 %r357, 0
  br i1 %r356, label %b3887, label %b6720

b3876:
  %r41 = phi i32 [%r304, %b6720], [%r389, %b6813]
  %r388 = add i32 %r109, 8
  %r387 = inttoptr i32 %r388 to i32*
  %r365 = load i32, i32* %r387
  %r386 = add i32 %r372, 8
  %r385 = inttoptr i32 %r386 to i32*
  %r367 = load i32, i32* %r385
  %r384 = add i32 %r109, 12
  %r383 = inttoptr i32 %r384 to i32*
  %r382 = load i32, i32* %r383
  %r381 = add i32 %r372, 12
  %r380 = inttoptr i32 %r381 to i32*
  %r379 = load i32, i32* %r380
  %r378 = inttoptr i32 %r109 to i32*
  %r377 = load i32, i32* %r378
  %r376 = add i32 %r109, 4
  %r375 = inttoptr i32 %r376 to i32*
  %r374 = load i32, i32* %r375
  %r373 = inttoptr i32 %r372 to i32*
  %r368 = load i32, i32* %r373
  %r371 = add i32 %r372, 4
  %r370 = inttoptr i32 %r371 to i32*
  %r369 = load i32, i32* %r370
  %r366 = add i32 %r367, %r368
  %r364 = icmp ult i32 %r365, %r366
  br i1 %r364, label %b3877, label %b3124

b4748:
  %r413 = add i32 ptrtoint(i8* @objects to i32), 8
  %r412 = inttoptr i32 %r413 to i32*
  %r391 = load i32, i32* %r412
  %r411 = add i32 %r109, 8
  %r410 = inttoptr i32 %r411 to i32*
  %r393 = load i32, i32* %r410
  %r409 = add i32 ptrtoint(i8* @objects to i32), 12
  %r408 = inttoptr i32 %r409 to i32*
  %r407 = load i32, i32* %r408
  %r406 = add i32 %r109, 12
  %r405 = inttoptr i32 %r406 to i32*
  %r404 = load i32, i32* %r405
  %r403 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r402 = load i32, i32* %r403
  %r401 = add i32 ptrtoint(i8* @objects to i32), 4
  %r400 = inttoptr i32 %r401 to i32*
  %r399 = load i32, i32* %r400
  %r398 = inttoptr i32 %r109 to i32*
  %r394 = load i32, i32* %r398
  %r397 = add i32 %r109, 4
  %r396 = inttoptr i32 %r397 to i32*
  %r395 = load i32, i32* %r396
  %r392 = add i32 %r393, %r394
  %r390 = icmp ult i32 %r391, %r392
  br i1 %r390, label %b4749, label %b6904

b4741:
  %r437 = add i32 ptrtoint(i8* @objects to i32), 8
  %r436 = inttoptr i32 %r437 to i32*
  %r415 = load i32, i32* %r436
  %r435 = add i32 %r109, 8
  %r434 = inttoptr i32 %r435 to i32*
  %r417 = load i32, i32* %r434
  %r433 = add i32 ptrtoint(i8* @objects to i32), 12
  %r432 = inttoptr i32 %r433 to i32*
  %r431 = load i32, i32* %r432
  %r430 = add i32 %r109, 12
  %r429 = inttoptr i32 %r430 to i32*
  %r428 = load i32, i32* %r429
  %r427 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r426 = load i32, i32* %r427
  %r425 = add i32 ptrtoint(i8* @objects to i32), 4
  %r424 = inttoptr i32 %r425 to i32*
  %r423 = load i32, i32* %r424
  %r422 = inttoptr i32 %r109 to i32*
  %r418 = load i32, i32* %r422
  %r421 = add i32 %r109, 4
  %r420 = inttoptr i32 %r421 to i32*
  %r419 = load i32, i32* %r420
  %r416 = add i32 %r417, %r418
  %r414 = icmp ult i32 %r415, %r416
  br i1 %r414, label %b4742, label %b6887

b4734:
  %r461 = add i32 ptrtoint(i8* @objects to i32), 8
  %r460 = inttoptr i32 %r461 to i32*
  %r439 = load i32, i32* %r460
  %r459 = add i32 %r109, 8
  %r458 = inttoptr i32 %r459 to i32*
  %r441 = load i32, i32* %r458
  %r457 = add i32 ptrtoint(i8* @objects to i32), 12
  %r456 = inttoptr i32 %r457 to i32*
  %r455 = load i32, i32* %r456
  %r454 = add i32 %r109, 12
  %r453 = inttoptr i32 %r454 to i32*
  %r452 = load i32, i32* %r453
  %r451 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r450 = load i32, i32* %r451
  %r449 = add i32 ptrtoint(i8* @objects to i32), 4
  %r448 = inttoptr i32 %r449 to i32*
  %r447 = load i32, i32* %r448
  %r446 = inttoptr i32 %r109 to i32*
  %r442 = load i32, i32* %r446
  %r445 = add i32 %r109, 4
  %r444 = inttoptr i32 %r445 to i32*
  %r443 = load i32, i32* %r444
  %r440 = add i32 %r441, %r442
  %r438 = icmp ult i32 %r439, %r440
  br i1 %r438, label %b4735, label %b6870

b4727:
  %r485 = add i32 ptrtoint(i8* @objects to i32), 8
  %r484 = inttoptr i32 %r485 to i32*
  %r463 = load i32, i32* %r484
  %r483 = add i32 %r109, 8
  %r482 = inttoptr i32 %r483 to i32*
  %r465 = load i32, i32* %r482
  %r481 = add i32 ptrtoint(i8* @objects to i32), 12
  %r480 = inttoptr i32 %r481 to i32*
  %r479 = load i32, i32* %r480
  %r478 = add i32 %r109, 12
  %r477 = inttoptr i32 %r478 to i32*
  %r476 = load i32, i32* %r477
  %r475 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r474 = load i32, i32* %r475
  %r473 = add i32 ptrtoint(i8* @objects to i32), 4
  %r472 = inttoptr i32 %r473 to i32*
  %r471 = load i32, i32* %r472
  %r470 = inttoptr i32 %r109 to i32*
  %r466 = load i32, i32* %r470
  %r469 = add i32 %r109, 4
  %r468 = inttoptr i32 %r469 to i32*
  %r467 = load i32, i32* %r468
  %r464 = add i32 %r465, %r466
  %r462 = icmp ult i32 %r463, %r464
  br i1 %r462, label %b4728, label %b6808

b4700:
  %r487 = add i32 %r271, %r262
  %r486 = icmp ult i32 %r274, %r487
  br i1 %r486, label %b4701, label %b6788

b3920:
  %r511 = add i32 %r189, 8
  %r510 = inttoptr i32 %r511 to i32*
  %r489 = load i32, i32* %r510
  %r509 = add i32 %r109, 8
  %r508 = inttoptr i32 %r509 to i32*
  %r491 = load i32, i32* %r508
  %r507 = add i32 %r189, 12
  %r506 = inttoptr i32 %r507 to i32*
  %r505 = load i32, i32* %r506
  %r504 = add i32 %r109, 12
  %r503 = inttoptr i32 %r504 to i32*
  %r502 = load i32, i32* %r503
  %r501 = inttoptr i32 %r189 to i32*
  %r500 = load i32, i32* %r501
  %r499 = add i32 %r189, 4
  %r498 = inttoptr i32 %r499 to i32*
  %r497 = load i32, i32* %r498
  %r496 = inttoptr i32 %r109 to i32*
  %r492 = load i32, i32* %r496
  %r495 = add i32 %r109, 4
  %r494 = inttoptr i32 %r495 to i32*
  %r493 = load i32, i32* %r494
  %r490 = add i32 %r491, %r492
  %r488 = icmp ult i32 %r489, %r490
  br i1 %r488, label %b3921, label %b6788

b6753:
  %r525 = phi i32 [%r293, %b6311], [%r293, %b4680]
  %r524 = phi i32 [%r284, %b6311], [%r355, %b4680]
  %r303 = phi i32 [%r143, %b6311], [%r143, %b4680]
  %r523 = add i32 ptrtoint(i8* @objects to i32), 12
  %r522 = inttoptr i32 %r523 to i32*
  %r521 = load i32, i32* %r522
  %r519 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r520 = load i8, i8* %r519
  %r515 = zext i8 %r520 to i32
  %r518 = add i32 ptrtoint(i8* @console to i32), 2
  %r516 = inttoptr i32 %r518 to i8*
  %r517 = load i8, i8* %r516
  %r514 = zext i8 %r517 to i32
  %r513 = sub i32 %r514, %r515
  %r512 = icmp ule i32 %r513, 24
  br i1 %r512, label %b6951, label %b6952

b3887:
  %r538 = add i32 %r361, 8
  %r537 = inttoptr i32 %r538 to i32*
  %r536 = load i32, i32* %r537
  %r535 = add i32 ptrtoint(i8* @console to i32), 1
  %r533 = inttoptr i32 %r535 to i8*
  %r534 = load i8, i8* %r533
  %r529 = zext i8 %r534 to i32
  %r532 = add i32 ptrtoint(i8* @console to i32), 3
  %r530 = inttoptr i32 %r532 to i8*
  %r531 = load i8, i8* %r530
  %r528 = zext i8 %r531 to i32
  %r527 = sub i32 %r528, %r529
  %r526 = icmp ule i32 %r527, 79
  br i1 %r526, label %b6269, label %b3888

b3877:
  %r540 = add i32 %r365, %r377
  %r539 = icmp ugt i32 %r540, %r367
  br i1 %r539, label %b3878, label %b3124

b4749:
  %r542 = add i32 %r391, %r402
  %r541 = icmp ugt i32 %r542, %r393
  br i1 %r541, label %b4750, label %b6904

b4742:
  %r544 = add i32 %r415, %r426
  %r543 = icmp ugt i32 %r544, %r417
  br i1 %r543, label %b4743, label %b6887

b4735:
  %r546 = add i32 %r439, %r450
  %r545 = icmp ugt i32 %r546, %r441
  br i1 %r545, label %b4736, label %b6870

b4728:
  %r548 = add i32 %r463, %r474
  %r547 = icmp ugt i32 %r548, %r465
  br i1 %r547, label %b4729, label %b6808

b4701:
  %r550 = add i32 %r274, %r266
  %r549 = icmp ugt i32 %r550, %r271
  br i1 %r549, label %b4702, label %b6788

b3921:
  %r552 = add i32 %r489, %r500
  %r551 = icmp ugt i32 %r552, %r491
  br i1 %r551, label %b3922, label %b6788

b6951:
  %r553 = icmp ule i32 %r521, %r513
  br i1 %r553, label %b6980, label %b6720

b6952:
  %r554 = icmp ule i32 %r521, 0
  br i1 %r554, label %b6979, label %b6720

b6269:
  %r555 = icmp ule i32 %r536, %r527
  br i1 %r555, label %b6719, label %b6720

b3888:
  %r557 = call i32 @func_b5219()
  %r556 = icmp ule i32 %r536, %r557
  br i1 %r556, label %b6719, label %b6720

b3878:
  %r559 = add i32 %r379, %r369
  %r558 = icmp ult i32 %r382, %r559
  br i1 %r558, label %b3879, label %b3124

b4750:
  %r561 = add i32 %r404, %r395
  %r560 = icmp ult i32 %r407, %r561
  br i1 %r560, label %b4751, label %b6904

b4743:
  %r563 = add i32 %r428, %r419
  %r562 = icmp ult i32 %r431, %r563
  br i1 %r562, label %b4744, label %b6887

b4736:
  %r565 = add i32 %r452, %r443
  %r564 = icmp ult i32 %r455, %r565
  br i1 %r564, label %b4737, label %b6870

b4729:
  %r567 = add i32 %r476, %r467
  %r566 = icmp ult i32 %r479, %r567
  br i1 %r566, label %b4730, label %b6808

b4702:
  %r574 = add i32 ptrtoint(i8* @objects to i32), 20
  %r576 = inttoptr i32 %r574 to i32*
  %r575 = load i32, i32* %r576
  %r573 = and i32 %r575, -17
  %r572 = inttoptr i32 %r574 to i32*
  store i32 %r573, i32* %r572
  %r571 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r570 = load i32, i32* %r571
  %r569 = add i32 %r570, -1
  %r568 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r569, i32* %r568
  br label %b6790

b3922:
  %r578 = add i32 %r502, %r493
  %r577 = icmp ult i32 %r505, %r578
  br i1 %r577, label %b3923, label %b6788

b6980:
  %r589 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r582 = load i32, i32* %r589
  %r588 = add i32 ptrtoint(i8* @objects to i32), 4
  %r587 = inttoptr i32 %r588 to i32*
  %r586 = load i32, i32* %r587
  %r585 = add i32 ptrtoint(i8* @objects to i32), 16
  %r584 = inttoptr i32 %r585 to i32*
  %r583 = load i32, i32* %r584
  %r581 = add i32 %r525, %r582
  %r580 = add i32 %r581, -1
  %r579 = icmp ule i32 %r580, %r524
  br i1 %r579, label %b6949, label %b6950

b6979:
  %r600 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r593 = load i32, i32* %r600
  %r599 = add i32 ptrtoint(i8* @objects to i32), 4
  %r598 = inttoptr i32 %r599 to i32*
  %r597 = load i32, i32* %r598
  %r596 = add i32 ptrtoint(i8* @objects to i32), 16
  %r595 = inttoptr i32 %r596 to i32*
  %r594 = load i32, i32* %r595
  %r592 = add i32 %r525, %r593
  %r591 = add i32 %r592, -1
  %r590 = icmp ule i32 %r591, %r524
  br i1 %r590, label %b6947, label %b6948

b6719:
  %r615 = phi i32 [%r536, %b6269], [%r536, %b3888]
  %r613 = phi i32 [%r361, %b6269], [%r361, %b3888]
  %r614 = phi i32 [%r527, %b6269], [%r557, %b3888]
  %r305 = phi i32 [%r306, %b6269], [%r306, %b3888]
  %r301 = phi i32 [%r302, %b6269], [%r302, %b3888]
  %r612 = add i32 %r613, 12
  %r611 = inttoptr i32 %r612 to i32*
  %r610 = load i32, i32* %r611
  %r608 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r609 = load i8, i8* %r608
  %r604 = zext i8 %r609 to i32
  %r607 = add i32 ptrtoint(i8* @console to i32), 2
  %r605 = inttoptr i32 %r607 to i8*
  %r606 = load i8, i8* %r605
  %r603 = zext i8 %r606 to i32
  %r602 = sub i32 %r603, %r604
  %r601 = icmp ule i32 %r602, 24
  br i1 %r601, label %b6977, label %b6978

b3879:
  %r617 = add i32 %r382, %r374
  %r616 = icmp ugt i32 %r617, %r379
  br i1 %r616, label %b3880, label %b3124

b4751:
  %r619 = add i32 %r407, %r399
  %r618 = icmp ugt i32 %r619, %r404
  br i1 %r618, label %b4752, label %b6908

b4744:
  %r621 = add i32 %r431, %r423
  %r620 = icmp ugt i32 %r621, %r428
  br i1 %r620, label %b4745, label %b6891

b4737:
  %r623 = add i32 %r455, %r447
  %r622 = icmp ugt i32 %r623, %r452
  br i1 %r622, label %b4738, label %b6874

b4730:
  %r625 = add i32 %r479, %r471
  %r624 = icmp ugt i32 %r625, %r476
  br i1 %r624, label %b4731, label %b6857

b3923:
  %r627 = add i32 %r505, %r497
  %r626 = icmp ugt i32 %r627, %r502
  br i1 %r626, label %b3924, label %b6788

b6949:
  %r629 = add i32 %r521, %r586
  %r628 = add i32 %r629, -1
  call void @func_b6201(i32 %r628, i32 %r513, i32 %r521, i32 %r583, i32 %r580, i32 %r525)
  br label %b6722

b6950:
  %r632 = add i32 %r521, %r586
  %r631 = add i32 %r632, -1
  %r630 = icmp ule i32 %r631, %r513
  br i1 %r630, label %b6273, label %b3913

b6947:
  %r634 = add i32 %r521, %r597
  %r633 = add i32 %r634, -1
  call void @func_b6180(i32 %r633, i32 0, i32 %r521, i32 %r594, i32 %r591, i32 %r525)
  br label %b6722

b6948:
  %r637 = add i32 %r521, %r597
  %r636 = add i32 %r637, -1
  %r635 = icmp ule i32 %r636, 0
  br i1 %r635, label %b6273, label %b3907

b6977:
  %r638 = icmp ule i32 %r610, %r602
  br i1 %r638, label %b6994, label %b6720

b6978:
  %r639 = icmp ule i32 %r610, 0
  br i1 %r639, label %b6993, label %b6720

b3880:
  call void @func_b1244()
  %r642 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r643 = load i8, i8* %r642
  %r641 = zext i8 %r643 to i32
  %r640 = icmp eq i32 %r641, 0
  br i1 %r640, label %b3881, label %b5195

b4752:
  %r655 = add i32 %r109, 4
  %r654 = inttoptr i32 %r655 to i32*
  %r649 = load i32, i32* %r654
  %r653 = add i32 ptrtoint(i8* @objects to i32), 4
  %r652 = inttoptr i32 %r653 to i32*
  %r647 = load i32, i32* %r652
  %r651 = add i32 ptrtoint(i8* @objects to i32), 12
  %r650 = inttoptr i32 %r651 to i32*
  %r645 = load i32, i32* %r650
  %r648 = add i32 %r106, %r649
  %r646 = add i32 %r645, %r647
  %r644 = icmp ule i32 %r106, %r645
  br i1 %r644, label %b3932, label %b3935

b6908:
  %r332 = add i32 0, 1
  %r656 = icmp ule i32 %r332, 20
  br i1 %r656, label %b6906, label %b3933

b4745:
  %r668 = add i32 %r109, 4
  %r667 = inttoptr i32 %r668 to i32*
  %r662 = load i32, i32* %r667
  %r666 = add i32 ptrtoint(i8* @objects to i32), 4
  %r665 = inttoptr i32 %r666 to i32*
  %r660 = load i32, i32* %r665
  %r664 = add i32 ptrtoint(i8* @objects to i32), 12
  %r663 = inttoptr i32 %r664 to i32*
  %r658 = load i32, i32* %r663
  %r661 = add i32 %r106, %r662
  %r659 = add i32 %r658, %r660
  %r657 = icmp ule i32 %r106, %r658
  br i1 %r657, label %b3940, label %b3943

b6891:
  %r337 = add i32 0, 1
  %r669 = icmp ule i32 %r337, 20
  br i1 %r669, label %b6889, label %b3933

b4738:
  %r681 = add i32 %r109, 4
  %r680 = inttoptr i32 %r681 to i32*
  %r675 = load i32, i32* %r680
  %r679 = add i32 ptrtoint(i8* @objects to i32), 4
  %r678 = inttoptr i32 %r679 to i32*
  %r673 = load i32, i32* %r678
  %r677 = add i32 ptrtoint(i8* @objects to i32), 12
  %r676 = inttoptr i32 %r677 to i32*
  %r671 = load i32, i32* %r676
  %r674 = add i32 %r106, %r675
  %r672 = add i32 %r671, %r673
  %r670 = icmp ule i32 %r106, %r671
  br i1 %r670, label %b3948, label %b3951

b6874:
  %r342 = add i32 0, 1
  %r682 = icmp ule i32 %r342, 20
  br i1 %r682, label %b6872, label %b3933

b4731:
  %r694 = add i32 %r109, 4
  %r693 = inttoptr i32 %r694 to i32*
  %r688 = load i32, i32* %r693
  %r692 = add i32 ptrtoint(i8* @objects to i32), 4
  %r691 = inttoptr i32 %r692 to i32*
  %r686 = load i32, i32* %r691
  %r690 = add i32 ptrtoint(i8* @objects to i32), 12
  %r689 = inttoptr i32 %r690 to i32*
  %r684 = load i32, i32* %r689
  %r687 = add i32 %r106, %r688
  %r685 = add i32 %r684, %r686
  %r683 = icmp ule i32 %r106, %r684
  br i1 %r683, label %b3956, label %b3959

b6857:
  %r347 = add i32 0, 1
  %r695 = icmp ule i32 %r347, 20
  br i1 %r695, label %b6810, label %b3933

b3924:
  %r706 = phi i32 [%r189, %b3923], [%r709, %b4041]
  %r696 = phi i32 [%r144, %b3923], [%r708, %b4041]
  %r46 = phi i32 [%r142, %b3923], [%r707, %b4041]
  %r703 = add i32 %r706, 20
  %r705 = inttoptr i32 %r703 to i32*
  %r704 = load i32, i32* %r705
  %r702 = and i32 %r704, -17
  %r701 = inttoptr i32 %r703 to i32*
  store i32 %r702, i32* %r701
  %r700 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r699 = load i32, i32* %r700
  %r698 = add i32 %r699, -1
  %r697 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r698, i32* %r697
  call void @func_b6784(i32 1, i32 %r696, i32 20)
  br label %b3124

b6273:
  %r711 = phi i32 [%r631, %b6950], [%r636, %b6948]
  %r712 = phi i32 [%r525, %b6950], [%r525, %b6948]
  %r713 = phi i32 [%r524, %b6950], [%r524, %b6948]
  %r714 = phi i32 [%r583, %b6950], [%r594, %b6948]
  %r710 = phi i32 [%r521, %b6950], [%r521, %b6948]
  %r363 = phi i32 [%r303, %b6950], [%r303, %b6948]
  %r721 = add i32 ptrtoint(i8* @console to i32), 1
  %r719 = inttoptr i32 %r721 to i8*
  %r720 = load i8, i8* %r719
  %r716 = zext i8 %r720 to i32
  %r717 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r718 = load i8, i8* %r717
  %r715 = zext i8 %r718 to i32
  call void @func_b6700(i32 %r716, i32 %r712, i32 79, i32 %r713, i32 %r714, i32 %r710, i32 %r715)
  call void @func_b6709(i32 1, i32 %r710, i32 %r711, i32 %r712, i32 %r713, i32 %r714, i32 %r715, i32 %r716)
  br label %b6722

b3913:
  %r728 = add i32 ptrtoint(i8* @console to i32), 1
  %r726 = inttoptr i32 %r728 to i8*
  %r727 = load i8, i8* %r726
  %r723 = zext i8 %r727 to i32
  %r724 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r725 = load i8, i8* %r724
  %r722 = zext i8 %r725 to i32
  call void @func_b6700(i32 %r723, i32 %r525, i32 79, i32 %r524, i32 %r583, i32 %r521, i32 %r722)
  call void @func_b6709(i32 1, i32 %r521, i32 %r513, i32 %r525, i32 %r524, i32 %r583, i32 %r722, i32 %r723)
  br label %b6722

b3907:
  %r735 = add i32 ptrtoint(i8* @console to i32), 1
  %r733 = inttoptr i32 %r735 to i8*
  %r734 = load i8, i8* %r733
  %r730 = zext i8 %r734 to i32
  %r731 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r732 = load i8, i8* %r731
  %r729 = zext i8 %r732 to i32
  call void @func_b6700(i32 %r730, i32 %r525, i32 79, i32 %r524, i32 %r594, i32 %r521, i32 %r729)
  call void @func_b6701(i32 1, i32 %r521, i32 0, i32 %r525, i32 %r524, i32 %r594, i32 %r729, i32 %r730)
  br label %b6722

b6994:
  %r759 = phi i32 [%r610, %b6977], [%r758, %b6983]
  %r745 = phi i32 [%r613, %b6977], [%r757, %b6983]
  %r740 = phi i32 [%r615, %b6977], [%r756, %b6983]
  %r738 = phi i32 [%r614, %b6977], [%r755, %b6983]
  %r754 = phi i32 [%r602, %b6977], [%r753, %b6983]
  %r752 = phi i32 [%r305, %b6977], [%r751, %b6983]
  %r38 = phi i32 [%r301, %b6977], [%r750, %b6983]
  %r749 = inttoptr i32 %r745 to i32*
  %r741 = load i32, i32* %r749
  %r748 = add i32 %r745, 4
  %r747 = inttoptr i32 %r748 to i32*
  %r746 = load i32, i32* %r747
  %r744 = add i32 %r745, 16
  %r743 = inttoptr i32 %r744 to i32*
  %r742 = load i32, i32* %r743
  %r739 = add i32 %r740, %r741
  %r737 = add i32 %r739, -1
  %r736 = icmp ule i32 %r737, %r738
  br i1 %r736, label %b6944, label %b6945

b6993:
  %r775 = phi i32 [%r610, %b6978], [%r758, %b6984]
  %r769 = phi i32 [%r613, %b6978], [%r757, %b6984]
  %r764 = phi i32 [%r615, %b6978], [%r756, %b6984]
  %r762 = phi i32 [%r614, %b6978], [%r755, %b6984]
  %r774 = phi i32 [%r305, %b6978], [%r751, %b6984]
  %r37 = phi i32 [%r301, %b6978], [%r750, %b6984]
  %r773 = inttoptr i32 %r769 to i32*
  %r765 = load i32, i32* %r773
  %r772 = add i32 %r769, 4
  %r771 = inttoptr i32 %r772 to i32*
  %r770 = load i32, i32* %r771
  %r768 = add i32 %r769, 16
  %r767 = inttoptr i32 %r768 to i32*
  %r766 = load i32, i32* %r767
  %r763 = add i32 %r764, %r765
  %r761 = add i32 %r763, -1
  %r760 = icmp ule i32 %r761, %r762
  br i1 %r760, label %b6942, label %b6943

b3881:
  %r776 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  store i1 false, i1* %r776
  br label %b3124

b5195:
  %r780 = add i32 ptrtoint(i8* @str45 to i32), 1
  %r779 = call i32 @inb(i32 1021)
  %r778 = and i32 %r779, 96
  call void @func_b1602(i32 %r778, i32 0, i32 %r641)
  %r777 = icmp eq i32 %r641, 10
  br i1 %r777, label %b5199, label %b5201

b3932:
  %r781 = phi i32 [%r106, %b4752], [%r106, %b3935]
  %r45 = phi i32 [%r40, %b4752], [%r40, %b3935]
  %r782 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 false, i1* %r782
  call void @func_b3254(i32 %r781, i32 1)
  br label %b3124

b3935:
  %r783 = icmp uge i32 %r648, %r646
  br i1 %r783, label %b3932, label %b3936

b3933:
  %r789 = phi i32 [%r40, %b6908], [%r40, %b6891], [%r40, %b6874], [%r40, %b6857]
  %r788 = add i32 ptrtoint(i8* @objects to i32), 20
  %r787 = inttoptr i32 %r788 to i32*
  %r786 = load i32, i32* %r787
  %r785 = and i32 %r786, 16
  %r784 = icmp ne i32 %r785, 0
  br i1 %r784, label %b4718, label %b6847

b3940:
  %r790 = phi i32 [%r106, %b4745], [%r106, %b3943]
  %r44 = phi i32 [%r40, %b4745], [%r40, %b3943]
  %r791 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r791
  call void @func_b3273(i32 %r790, i32 1)
  br label %b3124

b3943:
  %r792 = icmp uge i32 %r661, %r659
  br i1 %r792, label %b3940, label %b3944

b3948:
  %r793 = phi i32 [%r106, %b4738], [%r106, %b3951]
  %r43 = phi i32 [%r40, %b4738], [%r40, %b3951]
  %r794 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 false, i1* %r794
  call void @func_b3292(i32 %r793, i32 1)
  br label %b3124

b3951:
  %r795 = icmp uge i32 %r674, %r672
  br i1 %r795, label %b3948, label %b3952

b3956:
  %r796 = phi i32 [%r106, %b4731], [%r106, %b3959]
  %r42 = phi i32 [%r40, %b4731], [%r40, %b3959]
  %r797 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r797
  call void @func_b3311(i32 %r796, i32 1)
  br label %b3124

b3959:
  %r798 = icmp uge i32 %r687, %r685
  br i1 %r798, label %b3956, label %b3960

b6944:
  %r800 = add i32 %r759, %r746
  %r799 = add i32 %r800, -1
  call void @func_b6201(i32 %r799, i32 %r754, i32 %r759, i32 %r742, i32 %r737, i32 %r740)
  call void @func_b6713(i32 1, i32 %r752, i32 20)
  br label %b3124

b6945:
  %r803 = add i32 %r759, %r746
  %r802 = add i32 %r803, -1
  %r801 = icmp ule i32 %r802, %r754
  br i1 %r801, label %b6228, label %b3900

b6942:
  %r805 = add i32 %r775, %r770
  %r804 = add i32 %r805, -1
  call void @func_b6180(i32 %r804, i32 0, i32 %r775, i32 %r766, i32 %r761, i32 %r764)
  call void @func_b6713(i32 1, i32 %r774, i32 20)
  br label %b3124

b6943:
  %r808 = add i32 %r775, %r770
  %r807 = add i32 %r808, -1
  %r806 = icmp ule i32 %r807, 0
  br i1 %r806, label %b6228, label %b3894

b5199:
  %r810 = call i32 @inb(i32 1021)
  %r809 = and i32 %r810, 96
  call void @func_b1602(i32 %r809, i32 0, i32 13)
  call void @func_b1988(i32 %r641)
  call void @func_b5183(i32 %r780)
  br label %b3124

b5201:
  call void @func_b1988(i32 %r641)
  call void @func_b5183(i32 %r780)
  br label %b3124

b3936:
  %r811 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 false, i1* %r811
  call void @func_b3254(i32 %r106, i32 1)
  br label %b3124

b4718:
  %r813 = and i32 %r786, 1
  %r812 = icmp ne i32 %r813, 0
  br i1 %r812, label %b4719, label %b6847

b6847:
  %r818 = phi i32 [1, %b3933], [1, %b4718], [1, %b4719], [1, %b6849], [1, %b4720], [1, %b4035], [1, %b4721], [1, %b4036], [1, %b4722], [1, %b4038], [1, %b4723], [1, %b4039], [1, %b4040], [1, %b4041]
  %r817 = phi i32 [0, %b3933], [0, %b4718], [0, %b4719], [%r708, %b6849], [0, %b4720], [%r708, %b4035], [0, %b4721], [%r708, %b4036], [0, %b4722], [%r708, %b4038], [0, %b4723], [%r708, %b4039], [%r708, %b4040], [%r708, %b4041]
  %r816 = phi i32 [20, %b3933], [20, %b4718], [20, %b4719], [20, %b6849], [20, %b4720], [20, %b4035], [20, %b4721], [20, %b4036], [20, %b4722], [20, %b4038], [20, %b4723], [20, %b4039], [20, %b4040], [20, %b4041]
  %r819 = phi i32 [%r789, %b3933], [%r789, %b4718], [%r789, %b4719], [%r707, %b6849], [%r789, %b4720], [%r707, %b4035], [%r789, %b4721], [%r707, %b4036], [%r789, %b4722], [%r707, %b4038], [%r789, %b4723], [%r707, %b4039], [%r707, %b4040], [%r707, %b4041]
  %r815 = add i32 %r817, %r818
  %r814 = icmp ule i32 %r815, %r816
  br i1 %r814, label %b6849, label %b3990

b3944:
  %r820 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 false, i1* %r820
  call void @func_b3273(i32 %r106, i32 1)
  br label %b3124

b3952:
  %r821 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r821
  call void @func_b3292(i32 %r106, i32 1)
  br label %b3124

b3960:
  %r822 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r822
  call void @func_b3311(i32 %r106, i32 1)
  br label %b3124

b6228:
  %r825 = phi i32 [%r802, %b6945], [%r807, %b6943]
  %r826 = phi i32 [%r740, %b6945], [%r764, %b6943]
  %r827 = phi i32 [%r738, %b6945], [%r762, %b6943]
  %r828 = phi i32 [%r742, %b6945], [%r766, %b6943]
  %r824 = phi i32 [%r759, %b6945], [%r775, %b6943]
  %r823 = phi i32 [%r752, %b6945], [%r774, %b6943]
  %r39 = phi i32 [%r38, %b6945], [%r37, %b6943]
  %r835 = add i32 ptrtoint(i8* @console to i32), 1
  %r833 = inttoptr i32 %r835 to i8*
  %r834 = load i8, i8* %r833
  %r830 = zext i8 %r834 to i32
  %r831 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r832 = load i8, i8* %r831
  %r829 = zext i8 %r832 to i32
  call void @func_b6700(i32 %r830, i32 %r826, i32 79, i32 %r827, i32 %r828, i32 %r824, i32 %r829)
  call void @func_b6709(i32 1, i32 %r824, i32 %r825, i32 %r826, i32 %r827, i32 %r828, i32 %r829, i32 %r830)
  call void @func_b6713(i32 1, i32 %r823, i32 20)
  br label %b3124

b3900:
  %r842 = add i32 ptrtoint(i8* @console to i32), 1
  %r840 = inttoptr i32 %r842 to i8*
  %r841 = load i8, i8* %r840
  %r837 = zext i8 %r841 to i32
  %r838 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r839 = load i8, i8* %r838
  %r836 = zext i8 %r839 to i32
  call void @func_b6700(i32 %r837, i32 %r740, i32 79, i32 %r738, i32 %r742, i32 %r759, i32 %r836)
  call void @func_b6709(i32 1, i32 %r759, i32 %r754, i32 %r740, i32 %r738, i32 %r742, i32 %r836, i32 %r837)
  call void @func_b6713(i32 1, i32 %r752, i32 20)
  br label %b3124

b3894:
  %r849 = add i32 ptrtoint(i8* @console to i32), 1
  %r847 = inttoptr i32 %r849 to i8*
  %r848 = load i8, i8* %r847
  %r844 = zext i8 %r848 to i32
  %r845 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r846 = load i8, i8* %r845
  %r843 = zext i8 %r846 to i32
  call void @func_b6700(i32 %r844, i32 %r764, i32 79, i32 %r762, i32 %r766, i32 %r775, i32 %r843)
  call void @func_b6701(i32 1, i32 %r775, i32 0, i32 %r764, i32 %r762, i32 %r766, i32 %r843, i32 %r844)
  call void @func_b6713(i32 1, i32 %r774, i32 20)
  br label %b3124

b4719:
  %r850 = icmp eq i32 ptrtoint(i8* @objects to i32), %r109
  br i1 %r850, label %b6847, label %b4720

b6849:
  %r708 = phi i32 [%r815, %b6847], [1, %b4724]
  %r707 = phi i32 [%r819, %b6847], [%r789, %b4724]
  %r856 = mul i32 %r708, 24
  %r709 = add i32 ptrtoint(i8* @objects to i32), %r856
  %r855 = add i32 %r709, 20
  %r854 = inttoptr i32 %r855 to i32*
  %r853 = load i32, i32* %r854
  %r852 = and i32 %r853, 16
  %r851 = icmp ne i32 %r852, 0
  br i1 %r851, label %b4035, label %b6847

b3990:
  %r861 = add i32 ptrtoint(i8* @objects to i32), 20
  %r860 = inttoptr i32 %r861 to i32*
  %r859 = load i32, i32* %r860
  %r858 = and i32 %r859, 16
  %r857 = icmp ne i32 %r858, 0
  br i1 %r857, label %b4710, label %b6813

b4720:
  %r885 = add i32 ptrtoint(i8* @objects to i32), 8
  %r884 = inttoptr i32 %r885 to i32*
  %r863 = load i32, i32* %r884
  %r883 = add i32 %r109, 8
  %r882 = inttoptr i32 %r883 to i32*
  %r865 = load i32, i32* %r882
  %r881 = add i32 ptrtoint(i8* @objects to i32), 12
  %r880 = inttoptr i32 %r881 to i32*
  %r879 = load i32, i32* %r880
  %r878 = add i32 %r109, 12
  %r877 = inttoptr i32 %r878 to i32*
  %r876 = load i32, i32* %r877
  %r875 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r874 = load i32, i32* %r875
  %r873 = add i32 ptrtoint(i8* @objects to i32), 4
  %r872 = inttoptr i32 %r873 to i32*
  %r871 = load i32, i32* %r872
  %r870 = inttoptr i32 %r109 to i32*
  %r866 = load i32, i32* %r870
  %r869 = add i32 %r109, 4
  %r868 = inttoptr i32 %r869 to i32*
  %r867 = load i32, i32* %r868
  %r864 = add i32 %r865, %r866
  %r862 = icmp ult i32 %r863, %r864
  br i1 %r862, label %b4721, label %b6847

b4035:
  %r887 = and i32 %r853, 1
  %r886 = icmp ne i32 %r887, 0
  br i1 %r886, label %b4036, label %b6847

b4710:
  %r900 = add i32 ptrtoint(i8* @objects to i32), 8
  %r899 = inttoptr i32 %r900 to i32*
  %r898 = load i32, i32* %r899
  %r897 = add i32 ptrtoint(i8* @console to i32), 1
  %r895 = inttoptr i32 %r897 to i8*
  %r896 = load i8, i8* %r895
  %r891 = zext i8 %r896 to i32
  %r894 = add i32 ptrtoint(i8* @console to i32), 3
  %r892 = inttoptr i32 %r894 to i8*
  %r893 = load i8, i8* %r892
  %r890 = zext i8 %r893 to i32
  %r889 = sub i32 %r890, %r891
  %r888 = icmp ule i32 %r889, 79
  br i1 %r888, label %b6426, label %b4711

b6813:
  %r905 = phi i32 [1, %b3990], [1, %b6426], [1, %b4711], [1, %b6815], [1, %b6964], [1, %b6965], [1, %b6384], [1, %b4006], [1, %b6983], [1, %b6984]
  %r904 = phi i32 [0, %b3990], [0, %b6426], [0, %b4711], [%r908, %b6815], [0, %b6964], [0, %b6965], [%r908, %b6384], [%r908, %b4006], [%r751, %b6983], [%r751, %b6984]
  %r903 = phi i32 [20, %b3990], [20, %b6426], [20, %b4711], [20, %b6815], [20, %b6964], [20, %b6965], [20, %b6384], [20, %b4006], [20, %b6983], [20, %b6984]
  %r389 = phi i32 [%r819, %b3990], [%r819, %b6426], [%r819, %b4711], [%r906, %b6815], [%r907, %b6964], [%r907, %b6965], [%r906, %b6384], [%r906, %b4006], [%r750, %b6983], [%r750, %b6984]
  %r902 = add i32 %r904, %r905
  %r901 = icmp ule i32 %r902, %r903
  br i1 %r901, label %b6815, label %b3876

b4721:
  %r910 = add i32 %r863, %r874
  %r909 = icmp ugt i32 %r910, %r865
  br i1 %r909, label %b4722, label %b6847

b4036:
  %r911 = icmp eq i32 %r709, %r109
  br i1 %r911, label %b6847, label %b4038

b6426:
  %r912 = icmp ule i32 %r898, %r889
  br i1 %r912, label %b6846, label %b6813

b4711:
  %r914 = call i32 @func_b5219()
  %r913 = icmp ule i32 %r898, %r914
  br i1 %r913, label %b6846, label %b6813

b6815:
  %r908 = phi i32 [%r902, %b6813], [1, %b6962], [1, %b6960], [1, %b6388], [1, %b4031], [1, %b4025]
  %r906 = phi i32 [%r389, %b6813], [%r907, %b6962], [%r907, %b6960], [%r922, %b6388], [%r907, %b4031], [%r907, %b4025]
  %r921 = mul i32 %r908, 24
  %r920 = add i32 ptrtoint(i8* @objects to i32), %r921
  %r919 = add i32 %r920, 20
  %r918 = inttoptr i32 %r919 to i32*
  %r917 = load i32, i32* %r918
  %r916 = and i32 %r917, 16
  %r915 = icmp ne i32 %r916, 0
  br i1 %r915, label %b4005, label %b6813

b4722:
  %r924 = add i32 %r876, %r867
  %r923 = icmp ult i32 %r879, %r924
  br i1 %r923, label %b4723, label %b6847

b4038:
  %r948 = add i32 %r709, 8
  %r947 = inttoptr i32 %r948 to i32*
  %r926 = load i32, i32* %r947
  %r946 = add i32 %r109, 8
  %r945 = inttoptr i32 %r946 to i32*
  %r928 = load i32, i32* %r945
  %r944 = add i32 %r709, 12
  %r943 = inttoptr i32 %r944 to i32*
  %r942 = load i32, i32* %r943
  %r941 = add i32 %r109, 12
  %r940 = inttoptr i32 %r941 to i32*
  %r939 = load i32, i32* %r940
  %r938 = inttoptr i32 %r709 to i32*
  %r937 = load i32, i32* %r938
  %r936 = add i32 %r709, 4
  %r935 = inttoptr i32 %r936 to i32*
  %r934 = load i32, i32* %r935
  %r933 = inttoptr i32 %r109 to i32*
  %r929 = load i32, i32* %r933
  %r932 = add i32 %r109, 4
  %r931 = inttoptr i32 %r932 to i32*
  %r930 = load i32, i32* %r931
  %r927 = add i32 %r928, %r929
  %r925 = icmp ult i32 %r926, %r927
  br i1 %r925, label %b4039, label %b6847

b6846:
  %r962 = phi i32 [%r898, %b6426], [%r898, %b4711]
  %r961 = phi i32 [%r889, %b6426], [%r914, %b4711]
  %r907 = phi i32 [%r819, %b6426], [%r819, %b4711]
  %r960 = add i32 ptrtoint(i8* @objects to i32), 12
  %r959 = inttoptr i32 %r960 to i32*
  %r958 = load i32, i32* %r959
  %r956 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r957 = load i8, i8* %r956
  %r952 = zext i8 %r957 to i32
  %r955 = add i32 ptrtoint(i8* @console to i32), 2
  %r953 = inttoptr i32 %r955 to i8*
  %r954 = load i8, i8* %r953
  %r951 = zext i8 %r954 to i32
  %r950 = sub i32 %r951, %r952
  %r949 = icmp ule i32 %r950, 24
  br i1 %r949, label %b6964, label %b6965

b4005:
  %r975 = add i32 %r920, 8
  %r974 = inttoptr i32 %r975 to i32*
  %r973 = load i32, i32* %r974
  %r972 = add i32 ptrtoint(i8* @console to i32), 1
  %r970 = inttoptr i32 %r972 to i8*
  %r971 = load i8, i8* %r970
  %r966 = zext i8 %r971 to i32
  %r969 = add i32 ptrtoint(i8* @console to i32), 3
  %r967 = inttoptr i32 %r969 to i8*
  %r968 = load i8, i8* %r967
  %r965 = zext i8 %r968 to i32
  %r964 = sub i32 %r965, %r966
  %r963 = icmp ule i32 %r964, 79
  br i1 %r963, label %b6384, label %b4006

b4723:
  %r977 = add i32 %r879, %r871
  %r976 = icmp ugt i32 %r977, %r876
  br i1 %r976, label %b4724, label %b6847

b4039:
  %r979 = add i32 %r926, %r937
  %r978 = icmp ugt i32 %r979, %r928
  br i1 %r978, label %b4040, label %b6847

b6964:
  %r980 = icmp ule i32 %r958, %r950
  br i1 %r980, label %b6986, label %b6813

b6965:
  %r981 = icmp ule i32 %r958, 0
  br i1 %r981, label %b6985, label %b6813

b6384:
  %r982 = icmp ule i32 %r973, %r964
  br i1 %r982, label %b6812, label %b6813

b4006:
  %r984 = call i32 @func_b5219()
  %r983 = icmp ule i32 %r973, %r984
  br i1 %r983, label %b6812, label %b6813

b4724:
  %r991 = add i32 ptrtoint(i8* @objects to i32), 20
  %r993 = inttoptr i32 %r991 to i32*
  %r992 = load i32, i32* %r993
  %r990 = and i32 %r992, -17
  %r989 = inttoptr i32 %r991 to i32*
  store i32 %r990, i32* %r989
  %r988 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  %r987 = load i32, i32* %r988
  %r986 = add i32 %r987, -1
  %r985 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 %r986, i32* %r985
  br label %b6849

b4040:
  %r995 = add i32 %r939, %r930
  %r994 = icmp ult i32 %r942, %r995
  br i1 %r994, label %b4041, label %b6847

b6986:
  %r1006 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r999 = load i32, i32* %r1006
  %r1005 = add i32 ptrtoint(i8* @objects to i32), 4
  %r1004 = inttoptr i32 %r1005 to i32*
  %r1003 = load i32, i32* %r1004
  %r1002 = add i32 ptrtoint(i8* @objects to i32), 16
  %r1001 = inttoptr i32 %r1002 to i32*
  %r1000 = load i32, i32* %r1001
  %r998 = add i32 %r962, %r999
  %r997 = add i32 %r998, -1
  %r996 = icmp ule i32 %r997, %r961
  br i1 %r996, label %b6962, label %b6963

b6985:
  %r1017 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r1010 = load i32, i32* %r1017
  %r1016 = add i32 ptrtoint(i8* @objects to i32), 4
  %r1015 = inttoptr i32 %r1016 to i32*
  %r1014 = load i32, i32* %r1015
  %r1013 = add i32 ptrtoint(i8* @objects to i32), 16
  %r1012 = inttoptr i32 %r1013 to i32*
  %r1011 = load i32, i32* %r1012
  %r1009 = add i32 %r962, %r1010
  %r1008 = add i32 %r1009, -1
  %r1007 = icmp ule i32 %r1008, %r961
  br i1 %r1007, label %b6960, label %b6961

b6812:
  %r756 = phi i32 [%r973, %b6384], [%r973, %b4006]
  %r757 = phi i32 [%r920, %b6384], [%r920, %b4006]
  %r755 = phi i32 [%r964, %b6384], [%r984, %b4006]
  %r751 = phi i32 [%r908, %b6384], [%r908, %b4006]
  %r750 = phi i32 [%r906, %b6384], [%r906, %b4006]
  %r1027 = add i32 %r757, 12
  %r1026 = inttoptr i32 %r1027 to i32*
  %r758 = load i32, i32* %r1026
  %r1024 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r1025 = load i8, i8* %r1024
  %r1020 = zext i8 %r1025 to i32
  %r1023 = add i32 ptrtoint(i8* @console to i32), 2
  %r1021 = inttoptr i32 %r1023 to i8*
  %r1022 = load i8, i8* %r1021
  %r1019 = zext i8 %r1022 to i32
  %r753 = sub i32 %r1019, %r1020
  %r1018 = icmp ule i32 %r753, 24
  br i1 %r1018, label %b6983, label %b6984

b4041:
  %r1029 = add i32 %r942, %r934
  %r1028 = icmp ugt i32 %r1029, %r939
  br i1 %r1028, label %b3924, label %b6847

b6962:
  %r1031 = add i32 %r958, %r1003
  %r1030 = add i32 %r1031, -1
  call void @func_b6201(i32 %r1030, i32 %r950, i32 %r958, i32 %r1000, i32 %r997, i32 %r962)
  br label %b6815

b6963:
  %r1034 = add i32 %r958, %r1003
  %r1033 = add i32 %r1034, -1
  %r1032 = icmp ule i32 %r1033, %r950
  br i1 %r1032, label %b6388, label %b4031

b6960:
  %r1036 = add i32 %r958, %r1014
  %r1035 = add i32 %r1036, -1
  call void @func_b6180(i32 %r1035, i32 0, i32 %r958, i32 %r1011, i32 %r1008, i32 %r962)
  br label %b6815

b6961:
  %r1039 = add i32 %r958, %r1014
  %r1038 = add i32 %r1039, -1
  %r1037 = icmp ule i32 %r1038, 0
  br i1 %r1037, label %b6388, label %b4025

b6983:
  %r1040 = icmp ule i32 %r758, %r753
  br i1 %r1040, label %b6994, label %b6813

b6984:
  %r1041 = icmp ule i32 %r758, 0
  br i1 %r1041, label %b6993, label %b6813

b6388:
  %r1043 = phi i32 [%r1033, %b6963], [%r1038, %b6961]
  %r1044 = phi i32 [%r962, %b6963], [%r962, %b6961]
  %r1045 = phi i32 [%r961, %b6963], [%r961, %b6961]
  %r1046 = phi i32 [%r1000, %b6963], [%r1011, %b6961]
  %r1042 = phi i32 [%r958, %b6963], [%r958, %b6961]
  %r922 = phi i32 [%r907, %b6963], [%r907, %b6961]
  %r1053 = add i32 ptrtoint(i8* @console to i32), 1
  %r1051 = inttoptr i32 %r1053 to i8*
  %r1052 = load i8, i8* %r1051
  %r1048 = zext i8 %r1052 to i32
  %r1049 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r1050 = load i8, i8* %r1049
  %r1047 = zext i8 %r1050 to i32
  call void @func_b6700(i32 %r1048, i32 %r1044, i32 79, i32 %r1045, i32 %r1046, i32 %r1042, i32 %r1047)
  call void @func_b6709(i32 1, i32 %r1042, i32 %r1043, i32 %r1044, i32 %r1045, i32 %r1046, i32 %r1047, i32 %r1048)
  br label %b6815

b4031:
  %r1060 = add i32 ptrtoint(i8* @console to i32), 1
  %r1058 = inttoptr i32 %r1060 to i8*
  %r1059 = load i8, i8* %r1058
  %r1055 = zext i8 %r1059 to i32
  %r1056 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r1057 = load i8, i8* %r1056
  %r1054 = zext i8 %r1057 to i32
  call void @func_b6700(i32 %r1055, i32 %r962, i32 79, i32 %r961, i32 %r1000, i32 %r958, i32 %r1054)
  call void @func_b6709(i32 1, i32 %r958, i32 %r950, i32 %r962, i32 %r961, i32 %r1000, i32 %r1054, i32 %r1055)
  br label %b6815

b4025:
  %r1067 = add i32 ptrtoint(i8* @console to i32), 1
  %r1065 = inttoptr i32 %r1067 to i8*
  %r1066 = load i8, i8* %r1065
  %r1062 = zext i8 %r1066 to i32
  %r1063 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r1064 = load i8, i8* %r1063
  %r1061 = zext i8 %r1064 to i32
  call void @func_b6700(i32 %r1062, i32 %r962, i32 79, i32 %r961, i32 %r1011, i32 %r958, i32 %r1061)
  call void @func_b6701(i32 1, i32 %r958, i32 0, i32 %r962, i32 %r961, i32 %r1011, i32 %r1061, i32 %r1062)
  br label %b6815
}

define internal void @func_b1997(i32 %r0) {
  br label %b1997

b1997:
  %r3 = call i32 @inb(i32 1021)
  %r2 = and i32 %r3, 96
  call void @func_b1602(i32 %r2, i32 0, i32 %r0)
  %r1 = icmp eq i32 %r0, 10
  br i1 %r1, label %b1985, label %c675

b1985:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1602(i32 %r9, i32 0, i32 13)
  %r8 = add i32 ptrtoint(i8* @console to i32), 4
  %r6 = inttoptr i32 %r8 to i8*
  %r7 = load i8, i8* %r6
  %r5 = zext i8 %r7 to i32
  %r4 = icmp eq i32 %r0, 13
  br i1 %r4, label %b1990, label %b1993

c675:
  tail call void @func_b1988(i32 %r0)
  ret void

b1990:
  %r14 = phi i32 [%r5, %b1985], [%r5, %b1993], [%r5, %b1995]
  %r24 = add i32 ptrtoint(i8* @console to i32), 1
  %r21 = add i32 ptrtoint(i8* @console to i32), 5
  %r22 = inttoptr i32 %r24 to i8*
  %r23 = load i8, i8* %r22
  %r19 = zext i8 %r23 to i32
  %r18 = inttoptr i32 %r21 to i8*
  %r20 = trunc i32 %r19 to i8
  store i8 %r20, i8* %r18
  %r17 = add i32 ptrtoint(i8* @console to i32), 2
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r13 = zext i8 %r16 to i32
  %r12 = add i32 %r14, 1
  %r11 = icmp ule i32 %r12, %r13
  br i1 %r11, label %b6618, label %b1992

b1993:
  %r25 = icmp eq i32 %r0, 10
  br i1 %r25, label %b1990, label %b1995

b6618:
  %r28 = add i32 ptrtoint(i8* @console to i32), 4
  %r26 = inttoptr i32 %r28 to i8*
  %r27 = trunc i32 %r12 to i8
  store i8 %r27, i8* %r26
  ret void

b1992:
  %r48 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r49 = load i8, i8* %r48
  %r32 = zext i8 %r49 to i32
  %r47 = add i32 ptrtoint(i8* @console to i32), 1
  %r45 = inttoptr i32 %r47 to i8*
  %r46 = load i8, i8* %r45
  %r44 = zext i8 %r46 to i32
  %r43 = add i32 ptrtoint(i8* @console to i32), 2
  %r41 = inttoptr i32 %r43 to i8*
  %r42 = load i8, i8* %r41
  %r31 = zext i8 %r42 to i32
  %r40 = add i32 ptrtoint(i8* @console to i32), 3
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  %r36 = add i32 ptrtoint(i8* @console to i32), 6
  %r34 = inttoptr i32 %r36 to i8*
  %r35 = load i8, i8* %r34
  %r33 = zext i8 %r35 to i32
  %r30 = add i32 %r32, 1
  %r29 = icmp ule i32 %r30, %r31
  br i1 %r29, label %b6609, label %b1608

b1995:
  %r72 = add i32 ptrtoint(i8* @console to i32), 5
  %r70 = inttoptr i32 %r72 to i8*
  %r71 = load i8, i8* %r70
  %r53 = zext i8 %r71 to i32
  %r69 = add i32 ptrtoint(i8* @console to i32), 6
  %r67 = inttoptr i32 %r69 to i8*
  %r68 = load i8, i8* %r67
  %r63 = zext i8 %r68 to i32
  %r65 = mul i32 %r5, 160
  %r66 = mul i32 %r53, 2
  %r64 = add i32 %r65, %r66
  %r60 = add i32 %r64, 753664
  %r61 = and i32 %r0, 255
  %r62 = shl i32 %r63, 8
  %r58 = or i32 %r61, %r62
  %r57 = inttoptr i32 %r60 to i16*
  %r59 = trunc i32 %r58 to i16
  store i16 %r59, i16* %r57
  %r56 = add i32 ptrtoint(i8* @console to i32), 3
  %r54 = inttoptr i32 %r56 to i8*
  %r55 = load i8, i8* %r54
  %r52 = zext i8 %r55 to i32
  %r51 = add i32 %r53, 1
  %r50 = icmp ule i32 %r51, %r52
  br i1 %r50, label %b6622, label %b1990

b6609:
  %r76 = phi i32 [%r30, %b1992], [%r74, %b6609]
  %r79 = phi i32 [%r32, %b1992], [%r76, %b6609]
  %r75 = phi i32 [%r31, %b1992], [%r75, %b6609]
  %r78 = phi i32 [%r37, %b1992], [%r78, %b6609]
  %r77 = phi i32 [%r44, %b1992], [%r77, %b6609]
  %r80 = phi i32 [%r33, %b1992], [%r80, %b6609]
  call void @func_b1610(i32 %r77, i32 %r78, i32 %r79, i32 %r76)
  %r74 = add i32 %r76, 1
  %r73 = icmp ule i32 %r74, %r75
  br i1 %r73, label %b6609, label %b1608

b1608:
  %r84 = phi i32 [%r44, %b1992], [%r77, %b6609], [%r82, %b1608]
  %r83 = phi i32 [%r37, %b1992], [%r78, %b6609], [%r83, %b1608]
  %r90 = phi i32 [%r33, %b1992], [%r80, %b6609], [%r90, %b1608]
  %r94 = phi i32 [%r31, %b1992], [%r75, %b6609], [%r94, %b1608]
  %r92 = mul i32 %r94, 160
  %r93 = mul i32 %r84, 2
  %r91 = add i32 %r92, %r93
  %r88 = add i32 %r91, 753664
  %r89 = shl i32 %r90, 8
  %r86 = or i32 %r89, 32
  %r85 = inttoptr i32 %r88 to i16*
  %r87 = trunc i32 %r86 to i16
  store i16 %r87, i16* %r85
  %r82 = add i32 %r84, 1
  %r81 = icmp ule i32 %r82, %r83
  br i1 %r81, label %b1608, label %b303

b6622:
  %r97 = add i32 ptrtoint(i8* @console to i32), 5
  %r95 = inttoptr i32 %r97 to i8*
  %r96 = trunc i32 %r51 to i8
  store i8 %r96, i8* %r95
  ret void

b303:
  ret void
}

define internal void @func_b6631(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b6631

b6631:
  %r8 = phi i32 [%r0, %0], [1, %b6633]
  %r7 = phi i32 [%r1, %0], [%r5, %b6633]
  %r6 = phi i32 [%r2, %0], [0, %b6633]
  %r9 = phi i32 [%r3, %0], [%r9, %b6633]
  %r5 = add i32 %r7, %r8
  %r4 = icmp ule i32 %r5, %r6
  br i1 %r4, label %b6633, label %b303

b6633:
  call void @func_b1997(i32 %r9)
  br label %b6631

b303:
  ret void
}

define internal void @func_b6647(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b6647

b6647:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b6649, label %b6638

b6649:
  %r8 = lshr i32 %r3, 4
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b6638, label %b3196

b6638:
  %r12 = phi i32 [1, %b6647], [1, %b6649]
  %r11 = phi i32 [0, %b6647], [0, %b6649]
  %r13 = phi i32 [%r4, %b6647], [%r4, %b6649]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b6640, label %b3433

b3196:
  %r22 = phi i32 [%r8, %b6649], [%r24, %b6644]
  %r16 = phi i32 [%r6, %b6649], [%r15, %b6644]
  %r23 = phi i32 [%r4, %b6649], [%r23, %b6644]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = and i32 %r22, 15
  %r18 = call i32 @func_b1638(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b6644, label %b3197

b6640:
  call void @func_b1997(i32 %r13)
  call void @func_b6631(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1997(i32 %r25)
  ret void

b3433:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1997(i32 %r28)
  ret void

b6644:
  %r24 = lshr i32 %r22, 4
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b3197, label %b3196

b3197:
  %r33 = phi i32 [%r23, %b3196], [%r23, %b6644]
  %r32 = phi i32 [%r16, %b3196], [%r16, %b6644]
  call void @func_b6631(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b3194

b3194:
  %r36 = phi i32 [%r32, %b3197], [%r35, %b3194]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1997(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b3194, label %b303

b303:
  ret void
}

define internal void @func_b5150(i32 %r0, i32 %r1) {
  br label %b5150

b5150:
  %r3 = phi i32 [%r0, %0], [%r8, %b5143]
  %r7 = phi i32 [%r1, %0], [%r6, %b5143]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1602(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b6164, label %b6165

b6164:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1602(i32 %r9, i32 0, i32 13)
  call void @func_b1988(i32 %r3)
  br label %b5141

b6165:
  call void @func_b1988(i32 %r3)
  br label %b5141

b5141:
  %r14 = phi i32 [%r7, %b6164], [%r7, %b6165]
  %r12 = inttoptr i32 %r14 to i8*
  %r13 = load i8, i8* %r12
  %r8 = zext i8 %r13 to i32
  %r11 = icmp eq i32 %r8, 0
  br i1 %r11, label %b303, label %b5143

b303:
  ret void

b5143:
  %r6 = add i32 %r14, 1
  br label %b5150
}

define void @unhandled(i32 %r0, i32 %r1) {
  br label %unhandled

unhandled:
  %r4 = inttoptr i32 ptrtoint(i8* @str57 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1842, label %b5179

b1842:
  %r10 = phi i32 [%r0, %unhandled], [%r17, %b5167]
  %r16 = phi i32 [%r1, %unhandled], [%r15, %b5167]
  %r14 = and i32 %r10, 15
  %r12 = call i32 @func_b1638(i32 %r14, i32 9)
  %r11 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r13 = trunc i32 %r12 to i8
  store i8 %r13, i8* %r11
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r10, i32 32)
  %r8 = inttoptr i32 ptrtoint(i8* @str58 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1838, label %b5166

b5179:
  %r18 = add i32 ptrtoint(i8* @str57 to i32), 1
  br label %b5171

b1838:
  %r23 = phi i32 [%r16, %b1842], [%r28, %b5154]
  %r27 = and i32 %r23, 15
  %r25 = call i32 @func_b1638(i32 %r27, i32 9)
  %r24 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r26 = trunc i32 %r25 to i8
  store i8 %r26, i8* %r24
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r23, i32 32)
  %r21 = inttoptr i32 ptrtoint(i8* @str59 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b303, label %b5153

b5166:
  %r29 = add i32 ptrtoint(i8* @str58 to i32), 1
  br label %b5158

b5171:
  %r31 = phi i32 [%r3, %b5179], [%r38, %b5169]
  %r37 = phi i32 [%r18, %b5179], [%r36, %b5169]
  %r35 = phi i32 [%r0, %b5179], [%r17, %b5169]
  %r34 = phi i32 [%r1, %b5179], [%r15, %b5169]
  %r33 = call i32 @inb(i32 1021)
  %r32 = and i32 %r33, 96
  call void @func_b1602(i32 %r32, i32 0, i32 %r31)
  %r30 = icmp eq i32 %r31, 10
  br i1 %r30, label %b5174, label %b5176

b303:
  ret void

b5153:
  %r39 = add i32 ptrtoint(i8* @str59 to i32), 1
  br label %c719

b5158:
  %r41 = phi i32 [%r7, %b5166], [%r47, %b5156]
  %r46 = phi i32 [%r29, %b5166], [%r45, %b5156]
  %r44 = phi i32 [%r16, %b5166], [%r28, %b5156]
  %r43 = call i32 @inb(i32 1021)
  %r42 = and i32 %r43, 96
  call void @func_b1602(i32 %r42, i32 0, i32 %r41)
  %r40 = icmp eq i32 %r41, 10
  br i1 %r40, label %b5161, label %b5163

b5174:
  %r49 = call i32 @inb(i32 1021)
  %r48 = and i32 %r49, 96
  call void @func_b1602(i32 %r48, i32 0, i32 13)
  call void @func_b1988(i32 %r31)
  br label %b5167

b5176:
  call void @func_b1988(i32 %r31)
  br label %b5167

c719:
  tail call void @func_b5150(i32 %r20, i32 %r39)
  ret void

b5161:
  %r51 = call i32 @inb(i32 1021)
  %r50 = and i32 %r51, 96
  call void @func_b1602(i32 %r50, i32 0, i32 13)
  call void @func_b1988(i32 %r41)
  br label %b5154

b5163:
  call void @func_b1988(i32 %r41)
  br label %b5154

b5167:
  %r55 = phi i32 [%r37, %b5174], [%r37, %b5176]
  %r15 = phi i32 [%r34, %b5174], [%r34, %b5176]
  %r17 = phi i32 [%r35, %b5174], [%r35, %b5176]
  %r53 = inttoptr i32 %r55 to i8*
  %r54 = load i8, i8* %r53
  %r38 = zext i8 %r54 to i32
  %r52 = icmp eq i32 %r38, 0
  br i1 %r52, label %b1842, label %b5169

b5154:
  %r59 = phi i32 [%r46, %b5161], [%r46, %b5163]
  %r28 = phi i32 [%r44, %b5161], [%r44, %b5163]
  %r57 = inttoptr i32 %r59 to i8*
  %r58 = load i8, i8* %r57
  %r47 = zext i8 %r58 to i32
  %r56 = icmp eq i32 %r47, 0
  br i1 %r56, label %b1838, label %b5156

b5169:
  %r36 = add i32 %r55, 1
  br label %b5171

b5156:
  %r45 = add i32 %r59, 1
  br label %b5158
}

define internal void @func_b4426(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5, i32 %r6, i32 %r7, i32 %r8, i32 %r9, i32 %r10, i32 %r11, i32 %r12) {
  br label %b4426

b4426:
  %r24 = add i32 %r12, %r1
  %r23 = inttoptr i32 %r24 to i32*
  store i32 %r0, i32* %r23
  %r22 = add i32 %r12, %r3
  %r21 = inttoptr i32 %r22 to i32*
  store i32 %r2, i32* %r21
  %r20 = add i32 %r12, %r5
  %r19 = inttoptr i32 %r20 to i32*
  store i32 %r4, i32* %r19
  %r18 = add i32 %r12, %r7
  %r17 = inttoptr i32 %r18 to i32*
  store i32 %r6, i32* %r17
  %r16 = add i32 %r12, %r9
  %r15 = inttoptr i32 %r16 to i32*
  store i32 %r8, i32* %r15
  %r14 = add i32 %r12, %r11
  %r13 = inttoptr i32 %r14 to i32*
  store i32 %r10, i32* %r13
  ret void
}

define internal void @func_b4614(i32 %r0, i32 %r1) {
  br label %b4614

b4614:
  %r6 = phi i32 [%r0, %0], [%r5, %b5107]
  %r3 = phi i32 [%r1, %0], [%r4, %b5107]
  %r2 = icmp ult i32 %r3, 21
  br i1 %r2, label %b6070, label %b4096

b6070:
  %r7 = icmp eq i32 %r3, 0
  br i1 %r7, label %b6431, label %b6432

b4096:
  ret void

b6431:
  call void @func_b4426(i32 8, i32 0, i32 1, i32 4, i32 18, i32 8, i32 21, i32 12, i32 48, i32 16, i32 22, i32 20, i32 %r6)
  br label %b5107

b6432:
  %r8 = icmp eq i32 %r3, 1
  br i1 %r8, label %b6917, label %b6918

b5107:
  %r10 = phi i32 [%r3, %b6431], [%r3, %b6917], [%r14, %b6966], [%r3, %b6999], [%r13, %b7002]
  %r9 = phi i32 [%r6, %b6431], [%r6, %b6917], [%r12, %b6966], [%r6, %b6999], [%r11, %b7002]
  %r4 = add i32 %r10, 1
  %r5 = add i32 %r9, 24
  br label %b4614

b6917:
  call void @func_b4426(i32 1, i32 0, i32 1, i32 4, i32 18, i32 8, i32 20, i32 12, i32 224, i32 16, i32 26, i32 20, i32 %r6)
  br label %b5107

b6918:
  %r15 = icmp eq i32 %r3, 2
  br i1 %r15, label %b6966, label %b6967

b6966:
  %r36 = phi i32 [1, %b6918], [1, %b6967], [44, %b6987]
  %r38 = phi i32 [0, %b6918], [0, %b6967], [0, %b6987]
  %r32 = phi i32 [25, %b6918], [25, %b6967], [1, %b6987]
  %r34 = phi i32 [4, %b6918], [4, %b6967], [4, %b6987]
  %r28 = phi i32 [0, %b6918], [44, %b6967], [0, %b6987]
  %r30 = phi i32 [8, %b6918], [8, %b6967], [8, %b6987]
  %r24 = phi i32 [0, %b6918], [0, %b6967], [0, %b6987]
  %r26 = phi i32 [12, %b6918], [12, %b6967], [12, %b6987]
  %r20 = phi i32 [112, %b6918], [112, %b6967], [112, %b6987]
  %r22 = phi i32 [16, %b6918], [16, %b6967], [16, %b6987]
  %r18 = phi i32 [20, %b6918], [20, %b6967], [20, %b6987]
  %r12 = phi i32 [%r6, %b6918], [%r6, %b6967], [%r6, %b6987]
  %r14 = phi i32 [%r3, %b6918], [%r3, %b6967], [%r3, %b6987]
  %r37 = add i32 %r12, %r38
  %r35 = inttoptr i32 %r37 to i32*
  store i32 %r36, i32* %r35
  %r33 = add i32 %r12, %r34
  %r31 = inttoptr i32 %r33 to i32*
  store i32 %r32, i32* %r31
  %r29 = add i32 %r12, %r30
  %r27 = inttoptr i32 %r29 to i32*
  store i32 %r28, i32* %r27
  %r25 = add i32 %r12, %r26
  %r23 = inttoptr i32 %r25 to i32*
  store i32 %r24, i32* %r23
  %r21 = add i32 %r12, %r22
  %r19 = inttoptr i32 %r21 to i32*
  store i32 %r20, i32* %r19
  %r17 = add i32 %r12, %r18
  %r16 = inttoptr i32 %r17 to i32*
  store i32 18, i32* %r16
  br label %b5107

b6967:
  %r39 = icmp eq i32 %r3, 3
  br i1 %r39, label %b6966, label %b6987

b6987:
  %r40 = icmp eq i32 %r3, 4
  br i1 %r40, label %b6966, label %b6995

b6995:
  %r41 = icmp eq i32 %r3, 5
  br i1 %r41, label %b6999, label %b7000

b6999:
  call void @func_b4426(i32 44, i32 0, i32 1, i32 4, i32 0, i32 8, i32 24, i32 12, i32 0, i32 16, i32 16, i32 20, i32 %r6)
  br label %b5107

b7000:
  %r44 = add i32 %r3, -6
  %r47 = sdiv i32 %r44, 5
  %r50 = urem i32 %r44, 5
  %r49 = shl i32 %r50, 3
  %r48 = add i32 %r49, 3
  %r46 = mul i32 %r47, 3
  %r45 = add i32 %r46, 2
  %r43 = and i32 %r44, 1
  %r42 = icmp eq i32 %r43, 1
  br i1 %r42, label %b7002, label %b7003

b7002:
  %r53 = phi i32 [80, %b7000], [192, %b7003], [208, %g745]
  %r52 = phi i32 [%r45, %b7000], [%r45, %b7003], [%r45, %g745]
  %r51 = phi i32 [%r48, %b7000], [%r48, %b7003], [%r48, %g745]
  %r11 = phi i32 [%r6, %b7000], [%r6, %b7003], [%r6, %g745]
  %r13 = phi i32 [%r3, %b7000], [%r3, %b7003], [%r3, %g745]
  call void @func_b4426(i32 6, i32 0, i32 1, i32 4, i32 %r51, i32 8, i32 %r52, i32 12, i32 %r53, i32 16, i32 19, i32 20, i32 %r11)
  br label %b5107

b7003:
  %r55 = and i32 %r44, 2
  %r54 = icmp eq i32 %r55, 2
  br i1 %r54, label %b7002, label %g745

g745:
  br label %b7002
}

define internal void @func_b4621(i32 %r0, i32 %r1) {
  br label %b4621

b4621:
  %r6 = phi i32 [%r0, %0], [%r5, %b4622]
  %r3 = phi i32 [%r1, %0], [%r4, %b4622]
  %r2 = icmp ult i32 %r3, 32
  br i1 %r2, label %b4622, label %b4096

b4622:
  %r7 = inttoptr i32 %r6 to i8*
  %r8 = trunc i32 0 to i8
  store i8 %r8, i8* %r7
  %r4 = add i32 %r3, 1
  %r5 = add i32 %r6, 1
  br label %b4621

b4096:
  ret void
}

define internal void @func_b6927(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b6927

b6927:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b6929, label %b6638

b6929:
  %r8 = udiv i32 %r3, 10
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b6638, label %b3382

b6638:
  %r12 = phi i32 [1, %b6927], [1, %b6929]
  %r11 = phi i32 [0, %b6927], [0, %b6929]
  %r13 = phi i32 [%r4, %b6927], [%r4, %b6929]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b6640, label %b3433

b3382:
  %r22 = phi i32 [%r8, %b6929], [%r24, %b6921]
  %r16 = phi i32 [%r6, %b6929], [%r15, %b6921]
  %r23 = phi i32 [%r4, %b6929], [%r23, %b6921]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = urem i32 %r22, 10
  %r18 = call i32 @func_b1638(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b6921, label %b3197

b6640:
  call void @func_b1997(i32 %r13)
  call void @func_b6631(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1997(i32 %r25)
  ret void

b3433:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1997(i32 %r28)
  ret void

b6921:
  %r24 = udiv i32 %r22, 10
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b3197, label %b3382

b3197:
  %r33 = phi i32 [%r23, %b3382], [%r23, %b6921]
  %r32 = phi i32 [%r16, %b3382], [%r16, %b6921]
  call void @func_b6631(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b3194

b3194:
  %r36 = phi i32 [%r32, %b3197], [%r35, %b3194]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1997(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b3194, label %b303

b303:
  ret void
}

define internal void @func_b5284(i32 %r0) {
  br label %b5284

b5284:
  %r3 = inttoptr i32 ptrtoint(i8* @str5 to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b1922, label %b5286

b1922:
  %r15 = phi i32 [%r0, %b5284], [%r16, %b5264]
  %r14 = inttoptr i32 %r15 to i32*
  %r9 = load i32, i32* %r14
  %r13 = and i32 %r9, 15
  %r11 = call i32 @func_b1638(i32 %r13, i32 9)
  %r10 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r12 = trunc i32 %r11 to i8
  store i8 %r12, i8* %r10
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r9, i32 32)
  %r7 = inttoptr i32 ptrtoint(i8* @str6 to i32) to i8*
  %r8 = load i8, i8* %r7
  %r6 = zext i8 %r8 to i32
  %r5 = icmp eq i32 %r6, 0
  br i1 %r5, label %b1920, label %b5263

b5286:
  %r17 = add i32 ptrtoint(i8* @str5 to i32), 1
  br label %b5268

b1920:
  %r29 = phi i32 [%r15, %b1922], [%r30, %b5251]
  %r28 = add i32 %r29, 4
  %r27 = inttoptr i32 %r28 to i32*
  %r22 = load i32, i32* %r27
  %r26 = and i32 %r22, 15
  %r24 = call i32 @func_b1638(i32 %r26, i32 9)
  %r23 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r25 = trunc i32 %r24 to i8
  store i8 %r25, i8* %r23
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r22, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str7 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1918, label %b5250

b5263:
  %r31 = add i32 ptrtoint(i8* @str6 to i32), 1
  br label %b5255

b5268:
  %r33 = phi i32 [%r2, %b5286], [%r39, %b5266]
  %r38 = phi i32 [%r17, %b5286], [%r37, %b5266]
  %r36 = phi i32 [%r0, %b5286], [%r16, %b5266]
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1602(i32 %r34, i32 0, i32 %r33)
  %r32 = icmp eq i32 %r33, 10
  br i1 %r32, label %b5271, label %b5273

b1918:
  %r49 = phi i32 [%r29, %b1920], [%r50, %b5238]
  %r48 = add i32 %r49, 8
  %r47 = inttoptr i32 %r48 to i32*
  %r42 = load i32, i32* %r47
  %r46 = and i32 %r42, 15
  %r44 = call i32 @func_b1638(i32 %r46, i32 9)
  %r43 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r45 = trunc i32 %r44 to i8
  store i8 %r45, i8* %r43
  %r41 = lshr i32 %r42, 4
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b6638, label %b3196

b5250:
  %r51 = add i32 ptrtoint(i8* @str7 to i32), 1
  br label %b5242

b5255:
  %r53 = phi i32 [%r6, %b5263], [%r59, %b5253]
  %r58 = phi i32 [%r31, %b5263], [%r57, %b5253]
  %r56 = phi i32 [%r15, %b5263], [%r30, %b5253]
  %r55 = call i32 @inb(i32 1021)
  %r54 = and i32 %r55, 96
  call void @func_b1602(i32 %r54, i32 0, i32 %r53)
  %r52 = icmp eq i32 %r53, 10
  br i1 %r52, label %b5258, label %b5260

b5271:
  %r61 = call i32 @inb(i32 1021)
  %r60 = and i32 %r61, 96
  call void @func_b1602(i32 %r60, i32 0, i32 13)
  call void @func_b1988(i32 %r33)
  br label %b5264

b5273:
  call void @func_b1988(i32 %r33)
  br label %b5264

b6638:
  %r63 = add i32 0, 1
  %r62 = icmp ule i32 %r63, 0
  br i1 %r62, label %b6640, label %b3433

b3196:
  %r72 = phi i32 [%r41, %b1918], [%r74, %b6644]
  %r66 = phi i32 [1, %b1918], [%r65, %b6644]
  %r73 = phi i32 [32, %b1918], [%r73, %b6644]
  %r70 = add i32 ptrtoint(i8* @itoaBuf to i32), %r66
  %r71 = and i32 %r72, 15
  %r68 = call i32 @func_b1638(i32 %r71, i32 9)
  %r67 = inttoptr i32 %r70 to i8*
  %r69 = trunc i32 %r68 to i8
  store i8 %r69, i8* %r67
  %r65 = add i32 %r66, 1
  %r64 = icmp ule i32 %r65, 31
  br i1 %r64, label %b6644, label %b3197

b5242:
  %r76 = phi i32 [%r19, %b5250], [%r82, %b5240]
  %r81 = phi i32 [%r51, %b5250], [%r80, %b5240]
  %r79 = phi i32 [%r29, %b5250], [%r50, %b5240]
  %r78 = call i32 @inb(i32 1021)
  %r77 = and i32 %r78, 96
  call void @func_b1602(i32 %r77, i32 0, i32 %r76)
  %r75 = icmp eq i32 %r76, 10
  br i1 %r75, label %b5245, label %b5247

b5258:
  %r84 = call i32 @inb(i32 1021)
  %r83 = and i32 %r84, 96
  call void @func_b1602(i32 %r83, i32 0, i32 13)
  call void @func_b1988(i32 %r53)
  br label %b5251

b5260:
  call void @func_b1988(i32 %r53)
  br label %b5251

b5264:
  %r88 = phi i32 [%r38, %b5271], [%r38, %b5273]
  %r16 = phi i32 [%r36, %b5271], [%r36, %b5273]
  %r86 = inttoptr i32 %r88 to i8*
  %r87 = load i8, i8* %r86
  %r39 = zext i8 %r87 to i32
  %r85 = icmp eq i32 %r39, 0
  br i1 %r85, label %b1922, label %b5266

b6640:
  call void @func_b1997(i32 32)
  call void @func_b6631(i32 1, i32 %r63, i32 0, i32 32)
  %r90 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r91 = load i8, i8* %r90
  %r89 = zext i8 %r91 to i32
  call void @func_b1997(i32 %r89)
  ret void

b3433:
  %r93 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r94 = load i8, i8* %r93
  %r92 = zext i8 %r94 to i32
  call void @func_b1997(i32 %r92)
  ret void

b6644:
  %r74 = lshr i32 %r72, 4
  %r95 = icmp eq i32 %r74, 0
  br i1 %r95, label %b3197, label %b3196

b3197:
  %r97 = phi i32 [%r73, %b3196], [%r73, %b6644]
  %r96 = phi i32 [%r66, %b3196], [%r66, %b6644]
  call void @func_b6631(i32 1, i32 %r96, i32 0, i32 %r97)
  br label %b3194

b5245:
  %r99 = call i32 @inb(i32 1021)
  %r98 = and i32 %r99, 96
  call void @func_b1602(i32 %r98, i32 0, i32 13)
  call void @func_b1988(i32 %r76)
  br label %b5238

b5247:
  call void @func_b1988(i32 %r76)
  br label %b5238

b5251:
  %r103 = phi i32 [%r58, %b5258], [%r58, %b5260]
  %r30 = phi i32 [%r56, %b5258], [%r56, %b5260]
  %r101 = inttoptr i32 %r103 to i8*
  %r102 = load i8, i8* %r101
  %r59 = zext i8 %r102 to i32
  %r100 = icmp eq i32 %r59, 0
  br i1 %r100, label %b1920, label %b5253

b5266:
  %r37 = add i32 %r88, 1
  br label %b5268

b3194:
  %r106 = phi i32 [%r96, %b3197], [%r105, %b3194]
  %r110 = add i32 ptrtoint(i8* @itoaBuf to i32), %r106
  %r108 = inttoptr i32 %r110 to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  call void @func_b1997(i32 %r107)
  %r105 = add i32 %r106, -1
  %r104 = icmp sle i32 0, %r105
  br i1 %r104, label %b3194, label %b303

b5238:
  %r114 = phi i32 [%r81, %b5245], [%r81, %b5247]
  %r50 = phi i32 [%r79, %b5245], [%r79, %b5247]
  %r112 = inttoptr i32 %r114 to i8*
  %r113 = load i8, i8* %r112
  %r82 = zext i8 %r113 to i32
  %r111 = icmp eq i32 %r82, 0
  br i1 %r111, label %b1918, label %b5240

b5253:
  %r57 = add i32 %r103, 1
  br label %b5255

b303:
  ret void

b5240:
  %r80 = add i32 %r114, 1
  br label %b5242
}

define internal i32 @func_b5321(i32 %r0, i32 %r1) {
  br label %b5321

b5321:
  %r4 = inttoptr i32 ptrtoint(i8* @str12 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b5313, label %b5323

b5313:
  %r13 = phi i32 [%r1, %b5321], [%r12, %b5320]
  %r11 = phi i32 [%r0, %b5321], [%r10, %b5320]
  %r8 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b2930, label %b5315

b5323:
  %r14 = add i32 ptrtoint(i8* @str12 to i32), 1
  br label %b5320

b2930:
  %r19 = phi i32 [%r11, %b5313], [%r26, %b5303]
  %r25 = phi i32 [%r13, %b5313], [%r24, %b5303]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1638(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b6927(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b2931, label %b5302

b5315:
  %r27 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b5307

b5320:
  %r33 = phi i32 [%r3, %b5323], [%r29, %b5318]
  %r32 = phi i32 [%r14, %b5323], [%r34, %b5318]
  %r12 = phi i32 [%r1, %b5323], [%r12, %b5318]
  %r10 = phi i32 [%r0, %b5323], [%r10, %b5318]
  call void @func_b1997(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b5313, label %b5318

b2931:
  %r39 = phi i32 [%r25, %b2930], [%r42, %b5290]
  %r41 = phi i32 [%r19, %b2930], [%r40, %b5290]
  call void @func_b5284(i32 %r39)
  %r37 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b1924, label %b5289

b5302:
  %r43 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b5294

b5307:
  %r45 = phi i32 [%r7, %b5315], [%r52, %b5305]
  %r51 = phi i32 [%r27, %b5315], [%r50, %b5305]
  %r49 = phi i32 [%r11, %b5315], [%r26, %b5305]
  %r48 = phi i32 [%r13, %b5315], [%r24, %b5305]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1602(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b5310, label %b5312

b5318:
  %r34 = add i32 %r32, 1
  br label %b5320

b1924:
  %r54 = phi i32 [%r41, %b2931], [%r55, %b5274]
  %r53 = add i32 %r54, 1
  ret i32 %r53

b5289:
  %r56 = add i32 ptrtoint(i8* @str4 to i32), 1
  br label %b5278

b5294:
  %r58 = phi i32 [%r16, %b5302], [%r65, %b5292]
  %r64 = phi i32 [%r43, %b5302], [%r63, %b5292]
  %r62 = phi i32 [%r25, %b5302], [%r42, %b5292]
  %r61 = phi i32 [%r19, %b5302], [%r40, %b5292]
  %r60 = call i32 @inb(i32 1021)
  %r59 = and i32 %r60, 96
  call void @func_b1602(i32 %r59, i32 0, i32 %r58)
  %r57 = icmp eq i32 %r58, 10
  br i1 %r57, label %b5297, label %b5299

b5310:
  %r67 = call i32 @inb(i32 1021)
  %r66 = and i32 %r67, 96
  call void @func_b1602(i32 %r66, i32 0, i32 13)
  call void @func_b1988(i32 %r45)
  br label %b5303

b5312:
  call void @func_b1988(i32 %r45)
  br label %b5303

b5278:
  %r69 = phi i32 [%r36, %b5289], [%r75, %b5276]
  %r74 = phi i32 [%r56, %b5289], [%r73, %b5276]
  %r72 = phi i32 [%r41, %b5289], [%r55, %b5276]
  %r71 = call i32 @inb(i32 1021)
  %r70 = and i32 %r71, 96
  call void @func_b1602(i32 %r70, i32 0, i32 %r69)
  %r68 = icmp eq i32 %r69, 10
  br i1 %r68, label %b5281, label %b5283

b5297:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1602(i32 %r76, i32 0, i32 13)
  call void @func_b1988(i32 %r58)
  br label %b5290

b5299:
  call void @func_b1988(i32 %r58)
  br label %b5290

b5303:
  %r81 = phi i32 [%r51, %b5310], [%r51, %b5312]
  %r24 = phi i32 [%r48, %b5310], [%r48, %b5312]
  %r26 = phi i32 [%r49, %b5310], [%r49, %b5312]
  %r79 = inttoptr i32 %r81 to i8*
  %r80 = load i8, i8* %r79
  %r52 = zext i8 %r80 to i32
  %r78 = icmp eq i32 %r52, 0
  br i1 %r78, label %b2930, label %b5305

b5281:
  %r83 = call i32 @inb(i32 1021)
  %r82 = and i32 %r83, 96
  call void @func_b1602(i32 %r82, i32 0, i32 13)
  call void @func_b1988(i32 %r69)
  br label %b5274

b5283:
  call void @func_b1988(i32 %r69)
  br label %b5274

b5290:
  %r87 = phi i32 [%r64, %b5297], [%r64, %b5299]
  %r40 = phi i32 [%r61, %b5297], [%r61, %b5299]
  %r42 = phi i32 [%r62, %b5297], [%r62, %b5299]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r65 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r65, 0
  br i1 %r84, label %b2931, label %b5292

b5305:
  %r50 = add i32 %r81, 1
  br label %b5307

b5274:
  %r91 = phi i32 [%r74, %b5281], [%r74, %b5283]
  %r55 = phi i32 [%r72, %b5281], [%r72, %b5283]
  %r89 = inttoptr i32 %r91 to i8*
  %r90 = load i8, i8* %r89
  %r75 = zext i8 %r90 to i32
  %r88 = icmp eq i32 %r75, 0
  br i1 %r88, label %b1924, label %b5276

b5292:
  %r63 = add i32 %r87, 1
  br label %b5294

b5276:
  %r73 = add i32 %r91, 1
  br label %b5278
}

define internal i32 @func_b5333(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b5333

b5333:
  %r5 = phi i32 [%r0, %0], [%r14, %b5326]
  %r13 = phi i32 [%r1, %0], [%r12, %b5326]
  %r11 = phi i32 [%r2, %0], [%r10, %b5326]
  %r9 = phi i32 [%r3, %0], [%r8, %b5326]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1602(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b6433, label %b6434

b6433:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1602(i32 %r15, i32 0, i32 13)
  call void @func_b1988(i32 %r5)
  br label %b5324

b6434:
  call void @func_b1988(i32 %r5)
  br label %b5324

b5324:
  %r20 = phi i32 [%r13, %b6433], [%r13, %b6434]
  %r10 = phi i32 [%r11, %b6433], [%r11, %b6434]
  %r8 = phi i32 [%r9, %b6433], [%r9, %b6434]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c824, label %b5326

c824:
  %r21 = tail call i32 @func_b5321(i32 %r10, i32 %r8)
  ret i32 %r21

b5326:
  %r12 = add i32 %r20, 1
  br label %b5333
}

define internal i32 @func_b5339(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b5339

b5339:
  %r5 = phi i32 [%r0, %0], [%r12, %b6437], [%r12, %b6438]
  %r11 = phi i32 [%r1, %0], [%r10, %b6437], [%r10, %b6438]
  %r9 = phi i32 [%r2, %0], [12, %b6437], [12, %b6438]
  %r8 = phi i32 [%r3, %0], [%r7, %b6437], [%r6, %b6438]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b444, label %b5341

b444:
  ret i32 %r8

b5341:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b6437, label %b6438

b6437:
  %r7 = call i32 @func_b5321(i32 %r8, i32 %r11)
  br label %b5339

b6438:
  %r17 = add i32 ptrtoint(i8* @str1 to i32), 1
  %r6 = call i32 @func_b5333(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b5339
}

define internal void @func_b5375(i32 %r0, i32 %r1) {
  br label %b5375

b5375:
  %r6 = phi i32 [%r0, %0], [%r8, %b5382], [%r8, %b5384]
  %r7 = phi i32 [%r1, %0], [%r7, %b5382], [%r7, %b5384]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1932, label %b5377

b1932:
  %r19 = add i32 %r7, 4
  %r18 = inttoptr i32 %r19 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1638(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b303, label %b5374

b5377:
  %r8 = add i32 %r6, 1
  br label %b5379

b303:
  ret void

b5374:
  %r20 = add i32 ptrtoint(i8* @str10 to i32), 1
  br label %c839

b5379:
  %r23 = call i32 @inb(i32 1021)
  %r22 = and i32 %r23, 96
  call void @func_b1602(i32 %r22, i32 0, i32 %r3)
  %r21 = icmp eq i32 %r3, 10
  br i1 %r21, label %b5382, label %b5384

c839:
  tail call void @func_b5150(i32 %r10, i32 %r20)
  ret void

b5382:
  %r25 = call i32 @inb(i32 1021)
  %r24 = and i32 %r25, 96
  call void @func_b1602(i32 %r24, i32 0, i32 13)
  call void @func_b1988(i32 %r3)
  br label %b5375

b5384:
  call void @func_b1988(i32 %r3)
  br label %b5375
}

define internal void @func_b5403(i32 %r0, i32 %r1) {
  br label %b5403

b5403:
  %r6 = phi i32 [%r0, %0], [%r8, %b5410], [%r8, %b5412]
  %r7 = phi i32 [%r1, %0], [%r7, %b5410], [%r7, %b5412]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1934, label %b5405

b1934:
  %r18 = inttoptr i32 %r7 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1638(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1932, label %b5402

b5405:
  %r8 = add i32 %r6, 1
  %r21 = call i32 @inb(i32 1021)
  %r20 = and i32 %r21, 96
  call void @func_b1602(i32 %r20, i32 0, i32 %r3)
  %r19 = icmp eq i32 %r3, 10
  br i1 %r19, label %b5410, label %b5412

b1932:
  %r33 = phi i32 [%r7, %b1934], [%r34, %b5375]
  %r32 = add i32 %r33, 4
  %r31 = inttoptr i32 %r32 to i32*
  %r26 = load i32, i32* %r31
  %r30 = and i32 %r26, 15
  %r28 = call i32 @func_b1638(i32 %r30, i32 9)
  %r27 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r29 = trunc i32 %r28 to i8
  store i8 %r29, i8* %r27
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r26, i32 32)
  %r24 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b303, label %b5374

b5402:
  %r35 = add i32 ptrtoint(i8* @str9 to i32), 1
  br label %b5379

b5410:
  %r37 = call i32 @inb(i32 1021)
  %r36 = and i32 %r37, 96
  call void @func_b1602(i32 %r36, i32 0, i32 13)
  call void @func_b1988(i32 %r3)
  br label %b5403

b5412:
  call void @func_b1988(i32 %r3)
  br label %b5403

b303:
  ret void

b5374:
  %r38 = add i32 ptrtoint(i8* @str10 to i32), 1
  br label %c853

b5379:
  %r40 = phi i32 [%r10, %b5402], [%r46, %b5377]
  %r45 = phi i32 [%r35, %b5402], [%r44, %b5377]
  %r43 = phi i32 [%r7, %b5402], [%r34, %b5377]
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1602(i32 %r41, i32 0, i32 %r40)
  %r39 = icmp eq i32 %r40, 10
  br i1 %r39, label %b5382, label %b5384

c853:
  tail call void @func_b5150(i32 %r23, i32 %r38)
  ret void

b5382:
  %r48 = call i32 @inb(i32 1021)
  %r47 = and i32 %r48, 96
  call void @func_b1602(i32 %r47, i32 0, i32 13)
  call void @func_b1988(i32 %r40)
  br label %b5375

b5384:
  call void @func_b1988(i32 %r40)
  br label %b5375

b5375:
  %r52 = phi i32 [%r45, %b5382], [%r45, %b5384]
  %r34 = phi i32 [%r43, %b5382], [%r43, %b5384]
  %r50 = inttoptr i32 %r52 to i8*
  %r51 = load i8, i8* %r50
  %r46 = zext i8 %r51 to i32
  %r49 = icmp eq i32 %r46, 0
  br i1 %r49, label %b1932, label %b5377

b5377:
  %r44 = add i32 %r52, 1
  br label %b5379
}

define internal i32 @func_b5459(i32 %r0, i32 %r1) {
  br label %b5459

b5459:
  %r4 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b5451, label %b5461

b5451:
  %r13 = phi i32 [%r1, %b5459], [%r12, %b5458]
  %r11 = phi i32 [%r0, %b5459], [%r10, %b5458]
  %r8 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b2994, label %b5453

b5461:
  %r14 = add i32 ptrtoint(i8* @str14 to i32), 1
  br label %b5458

b2994:
  %r19 = phi i32 [%r11, %b5451], [%r26, %b5441]
  %r25 = phi i32 [%r13, %b5451], [%r24, %b5441]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1638(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b6927(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b5419, label %b5440

b5453:
  %r27 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b5445

b5458:
  %r33 = phi i32 [%r3, %b5461], [%r29, %b5456]
  %r32 = phi i32 [%r14, %b5461], [%r34, %b5456]
  %r12 = phi i32 [%r1, %b5461], [%r12, %b5456]
  %r10 = phi i32 [%r0, %b5461], [%r10, %b5456]
  call void @func_b1997(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b5451, label %b5456

b5419:
  %r42 = phi i32 [%r19, %b2994], [%r41, %b5428]
  %r40 = phi i32 [%r25, %b2994], [%r39, %b5428]
  %r37 = inttoptr i32 ptrtoint(i8* @str8 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b3604, label %b5421

b5440:
  %r43 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b5432

b5445:
  %r45 = phi i32 [%r7, %b5453], [%r52, %b5443]
  %r51 = phi i32 [%r27, %b5453], [%r50, %b5443]
  %r49 = phi i32 [%r11, %b5453], [%r26, %b5443]
  %r48 = phi i32 [%r13, %b5453], [%r24, %b5443]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1602(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b5448, label %b5450

b5456:
  %r34 = add i32 %r32, 1
  br label %b5458

b3604:
  %r62 = inttoptr i32 %r40 to i32*
  %r57 = load i32, i32* %r62
  %r61 = and i32 %r57, 15
  %r59 = call i32 @func_b1638(i32 %r61, i32 9)
  %r58 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r60 = trunc i32 %r59 to i8
  store i8 %r60, i8* %r58
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r57, i32 32)
  %r55 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r56 = load i8, i8* %r55
  %r54 = zext i8 %r56 to i32
  %r53 = icmp eq i32 %r54, 0
  br i1 %r53, label %b3605, label %b5393

b5421:
  %r66 = add i32 ptrtoint(i8* @str8 to i32), 1
  %r65 = call i32 @inb(i32 1021)
  %r64 = and i32 %r65, 96
  call void @func_b1602(i32 %r64, i32 0, i32 %r36)
  %r63 = icmp eq i32 %r36, 10
  br i1 %r63, label %b5425, label %b5427

b5432:
  %r68 = phi i32 [%r16, %b5440], [%r75, %b5430]
  %r74 = phi i32 [%r43, %b5440], [%r73, %b5430]
  %r72 = phi i32 [%r25, %b5440], [%r39, %b5430]
  %r71 = phi i32 [%r19, %b5440], [%r41, %b5430]
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1602(i32 %r69, i32 0, i32 %r68)
  %r67 = icmp eq i32 %r68, 10
  br i1 %r67, label %b5435, label %b5437

b5448:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1602(i32 %r76, i32 0, i32 13)
  call void @func_b1988(i32 %r45)
  br label %b5441

b5450:
  call void @func_b1988(i32 %r45)
  br label %b5441

b3605:
  %r88 = add i32 %r40, 4
  %r87 = inttoptr i32 %r88 to i32*
  %r82 = load i32, i32* %r87
  %r86 = and i32 %r82, 15
  %r84 = call i32 @func_b1638(i32 %r86, i32 9)
  %r83 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r85 = trunc i32 %r84 to i8
  store i8 %r85, i8* %r83
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r82, i32 32)
  %r80 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b5361, label %b5369

b5393:
  %r92 = add i32 ptrtoint(i8* @str9 to i32), 1
  %r91 = call i32 @inb(i32 1021)
  %r90 = and i32 %r91, 96
  call void @func_b1602(i32 %r90, i32 0, i32 %r54)
  %r89 = icmp eq i32 %r54, 10
  br i1 %r89, label %b5397, label %b5399

b5425:
  %r98 = call i32 @inb(i32 1021)
  %r97 = and i32 %r98, 96
  call void @func_b1602(i32 %r97, i32 0, i32 13)
  call void @func_b1988(i32 %r36)
  call void @func_b5403(i32 %r66, i32 %r40)
  %r95 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b1924, label %b5415

b5427:
  call void @func_b1988(i32 %r36)
  call void @func_b5403(i32 %r66, i32 %r40)
  %r101 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r102 = load i8, i8* %r101
  %r100 = zext i8 %r102 to i32
  %r99 = icmp eq i32 %r100, 0
  br i1 %r99, label %b1924, label %b5415

b5435:
  %r104 = call i32 @inb(i32 1021)
  %r103 = and i32 %r104, 96
  call void @func_b1602(i32 %r103, i32 0, i32 13)
  call void @func_b1988(i32 %r68)
  br label %b5428

b5437:
  call void @func_b1988(i32 %r68)
  br label %b5428

b5441:
  %r108 = phi i32 [%r51, %b5448], [%r51, %b5450]
  %r24 = phi i32 [%r48, %b5448], [%r48, %b5450]
  %r26 = phi i32 [%r49, %b5448], [%r49, %b5450]
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r52 = zext i8 %r107 to i32
  %r105 = icmp eq i32 %r52, 0
  br i1 %r105, label %b2994, label %b5443

b5361:
  %r111 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r112 = load i8, i8* %r111
  %r110 = zext i8 %r112 to i32
  %r109 = icmp eq i32 %r110, 0
  br i1 %r109, label %b1924, label %b5415

b5369:
  %r117 = add i32 ptrtoint(i8* @str10 to i32), 1
  call void @func_b5150(i32 %r79, i32 %r117)
  %r115 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r116 = load i8, i8* %r115
  %r114 = zext i8 %r116 to i32
  %r113 = icmp eq i32 %r114, 0
  br i1 %r113, label %b1924, label %b5415

b5397:
  %r123 = call i32 @inb(i32 1021)
  %r122 = and i32 %r123, 96
  call void @func_b1602(i32 %r122, i32 0, i32 13)
  call void @func_b1988(i32 %r54)
  call void @func_b5375(i32 %r92, i32 %r40)
  %r120 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r119 = zext i8 %r121 to i32
  %r118 = icmp eq i32 %r119, 0
  br i1 %r118, label %b1924, label %b5415

b5399:
  call void @func_b1988(i32 %r54)
  call void @func_b5375(i32 %r92, i32 %r40)
  %r126 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r127 = load i8, i8* %r126
  %r125 = zext i8 %r127 to i32
  %r124 = icmp eq i32 %r125, 0
  br i1 %r124, label %b1924, label %b5415

b1924:
  %r129 = phi i32 [%r42, %b5425], [%r42, %b5427], [%r42, %b5361], [%r42, %b5369], [%r42, %b5397], [%r42, %b5399], [%r130, %b5351]
  %r128 = add i32 %r129, 1
  ret i32 %r128

b5415:
  %r133 = phi i32 [%r94, %b5425], [%r100, %b5427], [%r110, %b5361], [%r114, %b5369], [%r119, %b5397], [%r125, %b5399]
  %r132 = phi i32 [%r42, %b5425], [%r42, %b5427], [%r42, %b5361], [%r42, %b5369], [%r42, %b5397], [%r42, %b5399]
  %r131 = add i32 ptrtoint(i8* @str4 to i32), 1
  br label %b5355

b5428:
  %r137 = phi i32 [%r74, %b5435], [%r74, %b5437]
  %r41 = phi i32 [%r71, %b5435], [%r71, %b5437]
  %r39 = phi i32 [%r72, %b5435], [%r72, %b5437]
  %r135 = inttoptr i32 %r137 to i8*
  %r136 = load i8, i8* %r135
  %r75 = zext i8 %r136 to i32
  %r134 = icmp eq i32 %r75, 0
  br i1 %r134, label %b5419, label %b5430

b5443:
  %r50 = add i32 %r108, 1
  br label %b5445

b5355:
  %r139 = phi i32 [%r133, %b5415], [%r145, %b5353]
  %r144 = phi i32 [%r131, %b5415], [%r143, %b5353]
  %r142 = phi i32 [%r132, %b5415], [%r130, %b5353]
  %r141 = call i32 @inb(i32 1021)
  %r140 = and i32 %r141, 96
  call void @func_b1602(i32 %r140, i32 0, i32 %r139)
  %r138 = icmp eq i32 %r139, 10
  br i1 %r138, label %b5358, label %b5360

b5430:
  %r73 = add i32 %r137, 1
  br label %b5432

b5358:
  %r147 = call i32 @inb(i32 1021)
  %r146 = and i32 %r147, 96
  call void @func_b1602(i32 %r146, i32 0, i32 13)
  call void @func_b1988(i32 %r139)
  br label %b5351

b5360:
  call void @func_b1988(i32 %r139)
  br label %b5351

b5351:
  %r151 = phi i32 [%r144, %b5358], [%r144, %b5360]
  %r130 = phi i32 [%r142, %b5358], [%r142, %b5360]
  %r149 = inttoptr i32 %r151 to i8*
  %r150 = load i8, i8* %r149
  %r145 = zext i8 %r150 to i32
  %r148 = icmp eq i32 %r145, 0
  br i1 %r148, label %b1924, label %b5353

b5353:
  %r143 = add i32 %r151, 1
  br label %b5355
}

define internal i32 @func_b5471(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b5471

b5471:
  %r5 = phi i32 [%r0, %0], [%r14, %b5464]
  %r13 = phi i32 [%r1, %0], [%r12, %b5464]
  %r11 = phi i32 [%r2, %0], [%r10, %b5464]
  %r9 = phi i32 [%r3, %0], [%r8, %b5464]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1602(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b6439, label %b6440

b6439:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1602(i32 %r15, i32 0, i32 13)
  call void @func_b1988(i32 %r5)
  br label %b5462

b6440:
  call void @func_b1988(i32 %r5)
  br label %b5462

b5462:
  %r20 = phi i32 [%r13, %b6439], [%r13, %b6440]
  %r10 = phi i32 [%r11, %b6439], [%r11, %b6440]
  %r8 = phi i32 [%r9, %b6439], [%r9, %b6440]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c900, label %b5464

c900:
  %r21 = tail call i32 @func_b5459(i32 %r10, i32 %r8)
  ret i32 %r21

b5464:
  %r12 = add i32 %r20, 1
  br label %b5471
}

define internal i32 @func_b5477(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b5477

b5477:
  %r5 = phi i32 [%r0, %0], [%r12, %b6443], [%r12, %b6444]
  %r11 = phi i32 [%r1, %0], [%r10, %b6443], [%r10, %b6444]
  %r9 = phi i32 [%r2, %0], [8, %b6443], [8, %b6444]
  %r8 = phi i32 [%r3, %0], [%r7, %b6443], [%r6, %b6444]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b444, label %b5479

b444:
  ret i32 %r8

b5479:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b6443, label %b6444

b6443:
  %r7 = call i32 @func_b5459(i32 %r8, i32 %r11)
  br label %b5477

b6444:
  %r17 = add i32 ptrtoint(i8* @str1 to i32), 1
  %r6 = call i32 @func_b5471(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b5477
}

define internal void @func_b5726(i32 %r0, i32 %r1) {
  br label %b5726

b5726:
  %r6 = phi i32 [%r0, %0], [%r8, %b5733], [%r8, %b5735]
  %r7 = phi i32 [%r1, %0], [%r7, %b5733], [%r7, %b5735]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1940, label %b5728

b1940:
  %r16 = and i32 %r7, 15
  %r14 = call i32 @func_b1638(i32 %r16, i32 9)
  %r13 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r15 = trunc i32 %r14 to i8
  store i8 %r15, i8* %r13
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b303, label %b5725

b5728:
  %r8 = add i32 %r6, 1
  br label %b5730

b303:
  ret void

b5725:
  %r17 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c915

b5730:
  %r20 = call i32 @inb(i32 1021)
  %r19 = and i32 %r20, 96
  call void @func_b1602(i32 %r19, i32 0, i32 %r3)
  %r18 = icmp eq i32 %r3, 10
  br i1 %r18, label %b5733, label %b5735

c915:
  tail call void @func_b5150(i32 %r10, i32 %r17)
  ret void

b5733:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1602(i32 %r21, i32 0, i32 13)
  call void @func_b1988(i32 %r3)
  br label %b5726

b5735:
  call void @func_b1988(i32 %r3)
  br label %b5726
}

define internal void @func_b5766(i32 %r0, i32 %r1) {
  br label %b5766

b5766:
  %r6 = phi i32 [%r0, %0], [%r8, %b5773], [%r8, %b5775]
  %r7 = phi i32 [%r1, %0], [%r7, %b5773], [%r7, %b5775]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b5765, label %b5768

b5765:
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b5754, label %b6445

b5768:
  %r8 = add i32 %r6, 1
  br label %b5770

b5754:
  %r18 = phi i32 [%r7, %b5765], [%r17, %b5761]
  %r15 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b1940, label %b5756

b6445:
  %r19 = add i32 %r7, 1
  br label %b5761

b5770:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1602(i32 %r21, i32 0, i32 %r3)
  %r20 = icmp eq i32 %r3, 10
  br i1 %r20, label %b5773, label %b5775

b1940:
  %r27 = phi i32 [%r18, %b5754], [%r32, %b5726]
  %r31 = and i32 %r27, 15
  %r29 = call i32 @func_b1638(i32 %r31, i32 9)
  %r28 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = trunc i32 %r29 to i8
  store i8 %r30, i8* %r28
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r27, i32 32)
  %r25 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r26 = load i8, i8* %r25
  %r24 = zext i8 %r26 to i32
  %r23 = icmp eq i32 %r24, 0
  br i1 %r23, label %b303, label %b5725

b5756:
  %r33 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5730

b5761:
  %r39 = phi i32 [%r10, %b6445], [%r35, %b5759]
  %r38 = phi i32 [%r19, %b6445], [%r40, %b5759]
  %r17 = phi i32 [%r7, %b6445], [%r17, %b5759]
  call void @func_b1997(i32 %r39)
  %r36 = inttoptr i32 %r38 to i8*
  %r37 = load i8, i8* %r36
  %r35 = zext i8 %r37 to i32
  %r34 = icmp eq i32 %r35, 0
  br i1 %r34, label %b5754, label %b5759

b5773:
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1602(i32 %r41, i32 0, i32 13)
  call void @func_b1988(i32 %r3)
  br label %b5766

b5775:
  call void @func_b1988(i32 %r3)
  br label %b5766

b303:
  ret void

b5725:
  %r43 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c934

b5730:
  %r45 = phi i32 [%r14, %b5756], [%r51, %b5728]
  %r50 = phi i32 [%r33, %b5756], [%r49, %b5728]
  %r48 = phi i32 [%r18, %b5756], [%r32, %b5728]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1602(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b5733, label %b5735

b5759:
  %r40 = add i32 %r38, 1
  br label %b5761

c934:
  tail call void @func_b5150(i32 %r24, i32 %r43)
  ret void

b5733:
  %r53 = call i32 @inb(i32 1021)
  %r52 = and i32 %r53, 96
  call void @func_b1602(i32 %r52, i32 0, i32 13)
  call void @func_b1988(i32 %r45)
  br label %b5726

b5735:
  call void @func_b1988(i32 %r45)
  br label %b5726

b5726:
  %r57 = phi i32 [%r50, %b5733], [%r50, %b5735]
  %r32 = phi i32 [%r48, %b5733], [%r48, %b5735]
  %r55 = inttoptr i32 %r57 to i8*
  %r56 = load i8, i8* %r55
  %r51 = zext i8 %r56 to i32
  %r54 = icmp eq i32 %r51, 0
  br i1 %r54, label %b1940, label %b5728

b5728:
  %r49 = add i32 %r57, 1
  br label %b5730
}

define internal void @func_b5890(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5890

b5890:
  %r4 = phi i32 [%r0, %0], [%r11, %b5883]
  %r10 = phi i32 [%r1, %0], [%r9, %b5883]
  %r8 = phi i32 [%r2, %0], [%r7, %b5883]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1602(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b6446, label %b6447

b6446:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1602(i32 %r12, i32 0, i32 13)
  call void @func_b1988(i32 %r4)
  br label %b5881

b6447:
  call void @func_b1988(i32 %r4)
  br label %b5881

b5881:
  %r17 = phi i32 [%r10, %b6446], [%r10, %b6447]
  %r7 = phi i32 [%r8, %b6446], [%r8, %b6447]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b5878, label %b5883

b5878:
  %r20 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b5793, label %b5880

b5883:
  %r9 = add i32 %r17, 1
  br label %b5890

b5793:
  %r24 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b5765, label %b5798

b5880:
  %r30 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5150(i32 %r19, i32 %r30)
  %r28 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b5765, label %b5798

b5765:
  %r35 = phi i32 [%r7, %b5793], [%r7, %b5880], [%r36, %b5766]
  %r33 = inttoptr i32 %r35 to i8*
  %r34 = load i8, i8* %r33
  %r32 = zext i8 %r34 to i32
  %r31 = icmp eq i32 %r32, 0
  br i1 %r31, label %b5754, label %b6445

b5798:
  %r39 = phi i32 [%r23, %b5793], [%r27, %b5880]
  %r38 = phi i32 [%r7, %b5793], [%r7, %b5880]
  %r37 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5770

b5754:
  %r45 = phi i32 [%r35, %b5765], [%r44, %b5761]
  %r42 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r43 = load i8, i8* %r42
  %r41 = zext i8 %r43 to i32
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b1940, label %b5756

b6445:
  %r46 = add i32 %r35, 1
  br label %b5761

b5770:
  %r48 = phi i32 [%r39, %b5798], [%r54, %b5768]
  %r53 = phi i32 [%r37, %b5798], [%r52, %b5768]
  %r51 = phi i32 [%r38, %b5798], [%r36, %b5768]
  %r50 = call i32 @inb(i32 1021)
  %r49 = and i32 %r50, 96
  call void @func_b1602(i32 %r49, i32 0, i32 %r48)
  %r47 = icmp eq i32 %r48, 10
  br i1 %r47, label %b5773, label %b5775

b1940:
  %r59 = phi i32 [%r45, %b5754], [%r64, %b5726]
  %r63 = and i32 %r59, 15
  %r61 = call i32 @func_b1638(i32 %r63, i32 9)
  %r60 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r62 = trunc i32 %r61 to i8
  store i8 %r62, i8* %r60
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r59, i32 32)
  %r57 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r58 = load i8, i8* %r57
  %r56 = zext i8 %r58 to i32
  %r55 = icmp eq i32 %r56, 0
  br i1 %r55, label %b303, label %b5725

b5756:
  %r65 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5730

b5761:
  %r71 = phi i32 [%r32, %b6445], [%r67, %b5759]
  %r70 = phi i32 [%r46, %b6445], [%r72, %b5759]
  %r44 = phi i32 [%r35, %b6445], [%r44, %b5759]
  call void @func_b1997(i32 %r71)
  %r68 = inttoptr i32 %r70 to i8*
  %r69 = load i8, i8* %r68
  %r67 = zext i8 %r69 to i32
  %r66 = icmp eq i32 %r67, 0
  br i1 %r66, label %b5754, label %b5759

b5773:
  %r74 = call i32 @inb(i32 1021)
  %r73 = and i32 %r74, 96
  call void @func_b1602(i32 %r73, i32 0, i32 13)
  call void @func_b1988(i32 %r48)
  br label %b5766

b5775:
  call void @func_b1988(i32 %r48)
  br label %b5766

b303:
  ret void

b5725:
  %r75 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c963

b5730:
  %r77 = phi i32 [%r41, %b5756], [%r83, %b5728]
  %r82 = phi i32 [%r65, %b5756], [%r81, %b5728]
  %r80 = phi i32 [%r45, %b5756], [%r64, %b5728]
  %r79 = call i32 @inb(i32 1021)
  %r78 = and i32 %r79, 96
  call void @func_b1602(i32 %r78, i32 0, i32 %r77)
  %r76 = icmp eq i32 %r77, 10
  br i1 %r76, label %b5733, label %b5735

b5759:
  %r72 = add i32 %r70, 1
  br label %b5761

b5766:
  %r87 = phi i32 [%r53, %b5773], [%r53, %b5775]
  %r36 = phi i32 [%r51, %b5773], [%r51, %b5775]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r54 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r54, 0
  br i1 %r84, label %b5765, label %b5768

c963:
  tail call void @func_b5150(i32 %r56, i32 %r75)
  ret void

b5733:
  %r89 = call i32 @inb(i32 1021)
  %r88 = and i32 %r89, 96
  call void @func_b1602(i32 %r88, i32 0, i32 13)
  call void @func_b1988(i32 %r77)
  br label %b5726

b5735:
  call void @func_b1988(i32 %r77)
  br label %b5726

b5768:
  %r52 = add i32 %r87, 1
  br label %b5770

b5726:
  %r93 = phi i32 [%r82, %b5733], [%r82, %b5735]
  %r64 = phi i32 [%r80, %b5733], [%r80, %b5735]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r83 = zext i8 %r92 to i32
  %r90 = icmp eq i32 %r83, 0
  br i1 %r90, label %b1940, label %b5728

b5728:
  %r81 = add i32 %r93, 1
  br label %b5730
}

define internal void @func_b5804(i32 %r0, i32 %r1) {
  br label %b5804

b5804:
  %r6 = phi i32 [%r0, %0], [%r8, %b5811], [%r8, %b5813]
  %r7 = phi i32 [%r1, %0], [%r7, %b5811], [%r7, %b5813]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b5799, label %b5806

b5799:
  %r11 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b5793, label %b5801

b5806:
  %r8 = add i32 %r6, 1
  br label %b5808

b5793:
  %r15 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b5765, label %b5798

b5801:
  %r21 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5150(i32 %r10, i32 %r21)
  %r19 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r20 = load i8, i8* %r19
  %r18 = zext i8 %r20 to i32
  %r17 = icmp eq i32 %r18, 0
  br i1 %r17, label %b5765, label %b5798

b5808:
  %r24 = call i32 @inb(i32 1021)
  %r23 = and i32 %r24, 96
  call void @func_b1602(i32 %r23, i32 0, i32 %r3)
  %r22 = icmp eq i32 %r3, 10
  br i1 %r22, label %b5811, label %b5813

b5765:
  %r29 = phi i32 [%r7, %b5793], [%r7, %b5801], [%r30, %b5766]
  %r27 = inttoptr i32 %r29 to i8*
  %r28 = load i8, i8* %r27
  %r26 = zext i8 %r28 to i32
  %r25 = icmp eq i32 %r26, 0
  br i1 %r25, label %b5754, label %b6445

b5798:
  %r33 = phi i32 [%r14, %b5793], [%r18, %b5801]
  %r32 = phi i32 [%r7, %b5793], [%r7, %b5801]
  %r31 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5770

b5811:
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1602(i32 %r34, i32 0, i32 13)
  call void @func_b1988(i32 %r3)
  br label %b5804

b5813:
  call void @func_b1988(i32 %r3)
  br label %b5804

b5754:
  %r41 = phi i32 [%r29, %b5765], [%r40, %b5761]
  %r38 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  %r36 = icmp eq i32 %r37, 0
  br i1 %r36, label %b1940, label %b5756

b6445:
  %r42 = add i32 %r29, 1
  br label %b5761

b5770:
  %r44 = phi i32 [%r33, %b5798], [%r50, %b5768]
  %r49 = phi i32 [%r31, %b5798], [%r48, %b5768]
  %r47 = phi i32 [%r32, %b5798], [%r30, %b5768]
  %r46 = call i32 @inb(i32 1021)
  %r45 = and i32 %r46, 96
  call void @func_b1602(i32 %r45, i32 0, i32 %r44)
  %r43 = icmp eq i32 %r44, 10
  br i1 %r43, label %b5773, label %b5775

b1940:
  %r55 = phi i32 [%r41, %b5754], [%r60, %b5726]
  %r59 = and i32 %r55, 15
  %r57 = call i32 @func_b1638(i32 %r59, i32 9)
  %r56 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r58 = trunc i32 %r57 to i8
  store i8 %r58, i8* %r56
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r55, i32 32)
  %r53 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r54 = load i8, i8* %r53
  %r52 = zext i8 %r54 to i32
  %r51 = icmp eq i32 %r52, 0
  br i1 %r51, label %b303, label %b5725

b5756:
  %r61 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5730

b5761:
  %r67 = phi i32 [%r26, %b6445], [%r63, %b5759]
  %r66 = phi i32 [%r42, %b6445], [%r68, %b5759]
  %r40 = phi i32 [%r29, %b6445], [%r40, %b5759]
  call void @func_b1997(i32 %r67)
  %r64 = inttoptr i32 %r66 to i8*
  %r65 = load i8, i8* %r64
  %r63 = zext i8 %r65 to i32
  %r62 = icmp eq i32 %r63, 0
  br i1 %r62, label %b5754, label %b5759

b5773:
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1602(i32 %r69, i32 0, i32 13)
  call void @func_b1988(i32 %r44)
  br label %b5766

b5775:
  call void @func_b1988(i32 %r44)
  br label %b5766

b303:
  ret void

b5725:
  %r71 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c993

b5730:
  %r73 = phi i32 [%r37, %b5756], [%r79, %b5728]
  %r78 = phi i32 [%r61, %b5756], [%r77, %b5728]
  %r76 = phi i32 [%r41, %b5756], [%r60, %b5728]
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1602(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b5733, label %b5735

b5759:
  %r68 = add i32 %r66, 1
  br label %b5761

b5766:
  %r83 = phi i32 [%r49, %b5773], [%r49, %b5775]
  %r30 = phi i32 [%r47, %b5773], [%r47, %b5775]
  %r81 = inttoptr i32 %r83 to i8*
  %r82 = load i8, i8* %r81
  %r50 = zext i8 %r82 to i32
  %r80 = icmp eq i32 %r50, 0
  br i1 %r80, label %b5765, label %b5768

c993:
  tail call void @func_b5150(i32 %r52, i32 %r71)
  ret void

b5733:
  %r85 = call i32 @inb(i32 1021)
  %r84 = and i32 %r85, 96
  call void @func_b1602(i32 %r84, i32 0, i32 13)
  call void @func_b1988(i32 %r73)
  br label %b5726

b5735:
  call void @func_b1988(i32 %r73)
  br label %b5726

b5768:
  %r48 = add i32 %r83, 1
  br label %b5770

b5726:
  %r89 = phi i32 [%r78, %b5733], [%r78, %b5735]
  %r60 = phi i32 [%r76, %b5733], [%r76, %b5735]
  %r87 = inttoptr i32 %r89 to i8*
  %r88 = load i8, i8* %r87
  %r79 = zext i8 %r88 to i32
  %r86 = icmp eq i32 %r79, 0
  br i1 %r86, label %b1940, label %b5728

b5728:
  %r77 = add i32 %r89, 1
  br label %b5730
}

define internal void @func_b5974(i32 %r0, i32 %r1) {
  br label %b5974

b5974:
  %r3 = phi i32 [%r0, %0], [%r8, %b5967]
  %r7 = phi i32 [%r1, %0], [%r6, %b5967]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1602(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b6449, label %b6450

b6449:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1602(i32 %r13, i32 0, i32 13)
  call void @func_b1988(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1946, label %b5967

b6450:
  call void @func_b1988(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1946, label %b5967

b1946:
  %r24 = inttoptr i32 4104 to i32*
  %r23 = load i32, i32* %r24
  %r21 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b5952, label %b5962

b5967:
  %r8 = phi i32 [%r10, %b6449], [%r16, %b6450]
  %r25 = phi i32 [%r7, %b6449], [%r7, %b6450]
  %r6 = add i32 %r25, 1
  br label %b5974

b5952:
  %r28 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b5940, label %b5954

b5962:
  %r36 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b5890(i32 %r20, i32 %r36, i32 %r23)
  %r35 = inttoptr i32 4108 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b5799, label %b5959

b5940:
  %r39 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b5933, label %b5951

b5954:
  %r45 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5150(i32 %r27, i32 %r45)
  %r43 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b5933, label %b5951

b5799:
  %r57 = phi i32 [%r34, %b5962], [%r56, %b5946], [%r55, %b5948], [%r54, %b5804], [%r53, %b3170], [%r52, %b5907], [%r51, %b5922], [%r50, %b5924]
  %r48 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r49 = load i8, i8* %r48
  %r47 = zext i8 %r49 to i32
  %r46 = icmp eq i32 %r47, 0
  br i1 %r46, label %b5793, label %b5801

b5959:
  %r66 = phi i32 [%r31, %b5962], [%r65, %b5946], [%r64, %b5948], [%r63, %b3170], [%r62, %b5907], [%r61, %b5922], [%r60, %b5924]
  %r59 = phi i32 [%r34, %b5962], [%r56, %b5946], [%r55, %b5948], [%r53, %b3170], [%r52, %b5907], [%r51, %b5922], [%r50, %b5924]
  %r58 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b5808

b5933:
  %r71 = phi i32 [%r23, %b5940], [%r23, %b5954]
  %r69 = inttoptr i32 %r71 to i8*
  %r70 = load i8, i8* %r69
  %r68 = zext i8 %r70 to i32
  %r67 = icmp eq i32 %r68, 0
  br i1 %r67, label %b5916, label %b6448

b5951:
  %r73 = phi i32 [%r38, %b5940], [%r42, %b5954]
  %r77 = phi i32 [%r23, %b5940], [%r23, %b5954]
  %r76 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1602(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b5946, label %b5948

b5793:
  %r80 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b5765, label %b5798

b5801:
  %r86 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5150(i32 %r47, i32 %r86)
  %r84 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r85 = load i8, i8* %r84
  %r83 = zext i8 %r85 to i32
  %r82 = icmp eq i32 %r83, 0
  br i1 %r82, label %b5765, label %b5798

b5808:
  %r88 = phi i32 [%r66, %b5959], [%r94, %b5806]
  %r93 = phi i32 [%r58, %b5959], [%r92, %b5806]
  %r91 = phi i32 [%r59, %b5959], [%r54, %b5806]
  %r90 = call i32 @inb(i32 1021)
  %r89 = and i32 %r90, 96
  call void @func_b1602(i32 %r89, i32 0, i32 %r88)
  %r87 = icmp eq i32 %r88, 10
  br i1 %r87, label %b5811, label %b5813

b5916:
  %r100 = phi i32 [%r71, %b5933], [%r99, %b5929]
  %r97 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r98 = load i8, i8* %r97
  %r96 = zext i8 %r98 to i32
  %r95 = icmp eq i32 %r96, 0
  br i1 %r95, label %b3414, label %b5918

b6448:
  %r101 = add i32 %r71, 1
  br label %b5929

b5946:
  %r107 = call i32 @inb(i32 1021)
  %r106 = and i32 %r107, 96
  call void @func_b1602(i32 %r106, i32 0, i32 13)
  call void @func_b1988(i32 %r73)
  call void @func_b5766(i32 %r76, i32 %r77)
  %r105 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r105
  %r103 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r104 = load i8, i8* %r103
  %r65 = zext i8 %r104 to i32
  %r102 = icmp eq i32 %r65, 0
  br i1 %r102, label %b5799, label %b5959

b5948:
  call void @func_b1988(i32 %r73)
  call void @func_b5766(i32 %r76, i32 %r77)
  %r111 = inttoptr i32 4108 to i32*
  %r55 = load i32, i32* %r111
  %r109 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r110 = load i8, i8* %r109
  %r64 = zext i8 %r110 to i32
  %r108 = icmp eq i32 %r64, 0
  br i1 %r108, label %b5799, label %b5959

b5765:
  %r116 = phi i32 [%r57, %b5793], [%r57, %b5801], [%r117, %b5766]
  %r114 = inttoptr i32 %r116 to i8*
  %r115 = load i8, i8* %r114
  %r113 = zext i8 %r115 to i32
  %r112 = icmp eq i32 %r113, 0
  br i1 %r112, label %b5754, label %b6445

b5798:
  %r120 = phi i32 [%r79, %b5793], [%r83, %b5801]
  %r119 = phi i32 [%r57, %b5793], [%r57, %b5801]
  %r118 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5770

b5811:
  %r122 = call i32 @inb(i32 1021)
  %r121 = and i32 %r122, 96
  call void @func_b1602(i32 %r121, i32 0, i32 13)
  call void @func_b1988(i32 %r88)
  br label %b5804

b5813:
  call void @func_b1988(i32 %r88)
  br label %b5804

b3414:
  %r130 = and i32 %r100, 15
  %r128 = call i32 @func_b1638(i32 %r130, i32 9)
  %r127 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r129 = trunc i32 %r128 to i8
  store i8 %r129, i8* %r127
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r100, i32 32)
  %r125 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b3170, label %b5907

b5918:
  %r134 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1602(i32 %r132, i32 0, i32 %r96)
  %r131 = icmp eq i32 %r96, 10
  br i1 %r131, label %b5922, label %b5924

b5929:
  %r140 = phi i32 [%r68, %b6448], [%r136, %b5927]
  %r139 = phi i32 [%r101, %b6448], [%r141, %b5927]
  %r99 = phi i32 [%r71, %b6448], [%r99, %b5927]
  call void @func_b1997(i32 %r140)
  %r137 = inttoptr i32 %r139 to i8*
  %r138 = load i8, i8* %r137
  %r136 = zext i8 %r138 to i32
  %r135 = icmp eq i32 %r136, 0
  br i1 %r135, label %b5916, label %b5927

b5754:
  %r147 = phi i32 [%r116, %b5765], [%r146, %b5761]
  %r144 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r145 = load i8, i8* %r144
  %r143 = zext i8 %r145 to i32
  %r142 = icmp eq i32 %r143, 0
  br i1 %r142, label %b1940, label %b5756

b6445:
  %r148 = add i32 %r116, 1
  br label %b5761

b5770:
  %r150 = phi i32 [%r120, %b5798], [%r156, %b5768]
  %r155 = phi i32 [%r118, %b5798], [%r154, %b5768]
  %r153 = phi i32 [%r119, %b5798], [%r117, %b5768]
  %r152 = call i32 @inb(i32 1021)
  %r151 = and i32 %r152, 96
  call void @func_b1602(i32 %r151, i32 0, i32 %r150)
  %r149 = icmp eq i32 %r150, 10
  br i1 %r149, label %b5773, label %b5775

b5804:
  %r160 = phi i32 [%r93, %b5811], [%r93, %b5813]
  %r54 = phi i32 [%r91, %b5811], [%r91, %b5813]
  %r158 = inttoptr i32 %r160 to i8*
  %r159 = load i8, i8* %r158
  %r94 = zext i8 %r159 to i32
  %r157 = icmp eq i32 %r94, 0
  br i1 %r157, label %b5799, label %b5806

b3170:
  %r164 = inttoptr i32 4108 to i32*
  %r53 = load i32, i32* %r164
  %r162 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r163 = load i8, i8* %r162
  %r63 = zext i8 %r163 to i32
  %r161 = icmp eq i32 %r63, 0
  br i1 %r161, label %b5799, label %b5959

b5907:
  %r169 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5150(i32 %r124, i32 %r169)
  %r168 = inttoptr i32 4108 to i32*
  %r52 = load i32, i32* %r168
  %r166 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r62 = zext i8 %r167 to i32
  %r165 = icmp eq i32 %r62, 0
  br i1 %r165, label %b5799, label %b5959

b5922:
  %r175 = call i32 @inb(i32 1021)
  %r174 = and i32 %r175, 96
  call void @func_b1602(i32 %r174, i32 0, i32 13)
  call void @func_b1988(i32 %r96)
  call void @func_b5726(i32 %r134, i32 %r100)
  %r173 = inttoptr i32 4108 to i32*
  %r51 = load i32, i32* %r173
  %r171 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r172 = load i8, i8* %r171
  %r61 = zext i8 %r172 to i32
  %r170 = icmp eq i32 %r61, 0
  br i1 %r170, label %b5799, label %b5959

b5924:
  call void @func_b1988(i32 %r96)
  call void @func_b5726(i32 %r134, i32 %r100)
  %r179 = inttoptr i32 4108 to i32*
  %r50 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r60 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r60, 0
  br i1 %r176, label %b5799, label %b5959

b5927:
  %r141 = add i32 %r139, 1
  br label %b5929

b1940:
  %r184 = phi i32 [%r147, %b5754], [%r189, %b5726]
  %r188 = and i32 %r184, 15
  %r186 = call i32 @func_b1638(i32 %r188, i32 9)
  %r185 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r187 = trunc i32 %r186 to i8
  store i8 %r187, i8* %r185
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r184, i32 32)
  %r182 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r181 = zext i8 %r183 to i32
  %r180 = icmp eq i32 %r181, 0
  br i1 %r180, label %b303, label %b5725

b5756:
  %r190 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5730

b5761:
  %r196 = phi i32 [%r113, %b6445], [%r192, %b5759]
  %r195 = phi i32 [%r148, %b6445], [%r197, %b5759]
  %r146 = phi i32 [%r116, %b6445], [%r146, %b5759]
  call void @func_b1997(i32 %r196)
  %r193 = inttoptr i32 %r195 to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b5754, label %b5759

b5773:
  %r199 = call i32 @inb(i32 1021)
  %r198 = and i32 %r199, 96
  call void @func_b1602(i32 %r198, i32 0, i32 13)
  call void @func_b1988(i32 %r150)
  br label %b5766

b5775:
  call void @func_b1988(i32 %r150)
  br label %b5766

b5806:
  %r92 = add i32 %r160, 1
  br label %b5808

b303:
  ret void

b5725:
  %r200 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c1047

b5730:
  %r202 = phi i32 [%r143, %b5756], [%r208, %b5728]
  %r207 = phi i32 [%r190, %b5756], [%r206, %b5728]
  %r205 = phi i32 [%r147, %b5756], [%r189, %b5728]
  %r204 = call i32 @inb(i32 1021)
  %r203 = and i32 %r204, 96
  call void @func_b1602(i32 %r203, i32 0, i32 %r202)
  %r201 = icmp eq i32 %r202, 10
  br i1 %r201, label %b5733, label %b5735

b5759:
  %r197 = add i32 %r195, 1
  br label %b5761

b5766:
  %r212 = phi i32 [%r155, %b5773], [%r155, %b5775]
  %r117 = phi i32 [%r153, %b5773], [%r153, %b5775]
  %r210 = inttoptr i32 %r212 to i8*
  %r211 = load i8, i8* %r210
  %r156 = zext i8 %r211 to i32
  %r209 = icmp eq i32 %r156, 0
  br i1 %r209, label %b5765, label %b5768

c1047:
  tail call void @func_b5150(i32 %r181, i32 %r200)
  ret void

b5733:
  %r214 = call i32 @inb(i32 1021)
  %r213 = and i32 %r214, 96
  call void @func_b1602(i32 %r213, i32 0, i32 13)
  call void @func_b1988(i32 %r202)
  br label %b5726

b5735:
  call void @func_b1988(i32 %r202)
  br label %b5726

b5768:
  %r154 = add i32 %r212, 1
  br label %b5770

b5726:
  %r218 = phi i32 [%r207, %b5733], [%r207, %b5735]
  %r189 = phi i32 [%r205, %b5733], [%r205, %b5735]
  %r216 = inttoptr i32 %r218 to i8*
  %r217 = load i8, i8* %r216
  %r208 = zext i8 %r217 to i32
  %r215 = icmp eq i32 %r208, 0
  br i1 %r215, label %b1940, label %b5728

b5728:
  %r206 = add i32 %r218, 1
  br label %b5730
}

define internal void @func_b5992(i32 %r0, i32 %r1) {
  br label %b5992

b5992:
  %r3 = phi i32 [%r0, %0], [%r8, %b5985]
  %r7 = phi i32 [%r1, %0], [%r6, %b5985]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1602(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b6451, label %b6452

b6451:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1602(i32 %r13, i32 0, i32 13)
  call void @func_b1988(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1948, label %b5985

b6452:
  call void @func_b1988(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1948, label %b5985

b1948:
  %r28 = inttoptr i32 4100 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b5477(i32 %r24, i32 %r25, i32 8, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1946, label %b5982

b5985:
  %r8 = phi i32 [%r10, %b6451], [%r16, %b6452]
  %r29 = phi i32 [%r7, %b6451], [%r7, %b6452]
  %r6 = add i32 %r29, 1
  br label %b5992

b1946:
  %r35 = inttoptr i32 4104 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b5952, label %b5962

b5982:
  %r36 = add i32 ptrtoint(i8* @str15 to i32), 1
  br label %c1063

b5952:
  %r39 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b5940, label %b5954

b5962:
  %r47 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b5890(i32 %r31, i32 %r47, i32 %r34)
  %r46 = inttoptr i32 4108 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b5799, label %b5959

c1063:
  tail call void @func_b5974(i32 %r20, i32 %r36)
  ret void

b5940:
  %r50 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b5933, label %b5951

b5954:
  %r56 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5150(i32 %r38, i32 %r56)
  %r54 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b5933, label %b5951

b5799:
  %r68 = phi i32 [%r45, %b5962], [%r67, %b5946], [%r66, %b5948], [%r65, %b5804], [%r64, %b3170], [%r63, %b5907], [%r62, %b5922], [%r61, %b5924]
  %r59 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r60 = load i8, i8* %r59
  %r58 = zext i8 %r60 to i32
  %r57 = icmp eq i32 %r58, 0
  br i1 %r57, label %b5793, label %b5801

b5959:
  %r77 = phi i32 [%r42, %b5962], [%r76, %b5946], [%r75, %b5948], [%r74, %b3170], [%r73, %b5907], [%r72, %b5922], [%r71, %b5924]
  %r70 = phi i32 [%r45, %b5962], [%r67, %b5946], [%r66, %b5948], [%r64, %b3170], [%r63, %b5907], [%r62, %b5922], [%r61, %b5924]
  %r69 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b5808

b5933:
  %r82 = phi i32 [%r34, %b5940], [%r34, %b5954]
  %r80 = inttoptr i32 %r82 to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b5916, label %b6448

b5951:
  %r84 = phi i32 [%r49, %b5940], [%r53, %b5954]
  %r88 = phi i32 [%r34, %b5940], [%r34, %b5954]
  %r87 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r86 = call i32 @inb(i32 1021)
  %r85 = and i32 %r86, 96
  call void @func_b1602(i32 %r85, i32 0, i32 %r84)
  %r83 = icmp eq i32 %r84, 10
  br i1 %r83, label %b5946, label %b5948

b5793:
  %r91 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b5765, label %b5798

b5801:
  %r97 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5150(i32 %r58, i32 %r97)
  %r95 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b5765, label %b5798

b5808:
  %r99 = phi i32 [%r77, %b5959], [%r105, %b5806]
  %r104 = phi i32 [%r69, %b5959], [%r103, %b5806]
  %r102 = phi i32 [%r70, %b5959], [%r65, %b5806]
  %r101 = call i32 @inb(i32 1021)
  %r100 = and i32 %r101, 96
  call void @func_b1602(i32 %r100, i32 0, i32 %r99)
  %r98 = icmp eq i32 %r99, 10
  br i1 %r98, label %b5811, label %b5813

b5916:
  %r111 = phi i32 [%r82, %b5933], [%r110, %b5929]
  %r108 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  %r106 = icmp eq i32 %r107, 0
  br i1 %r106, label %b3414, label %b5918

b6448:
  %r112 = add i32 %r82, 1
  br label %b5929

b5946:
  %r118 = call i32 @inb(i32 1021)
  %r117 = and i32 %r118, 96
  call void @func_b1602(i32 %r117, i32 0, i32 13)
  call void @func_b1988(i32 %r84)
  call void @func_b5766(i32 %r87, i32 %r88)
  %r116 = inttoptr i32 4108 to i32*
  %r67 = load i32, i32* %r116
  %r114 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r115 = load i8, i8* %r114
  %r76 = zext i8 %r115 to i32
  %r113 = icmp eq i32 %r76, 0
  br i1 %r113, label %b5799, label %b5959

b5948:
  call void @func_b1988(i32 %r84)
  call void @func_b5766(i32 %r87, i32 %r88)
  %r122 = inttoptr i32 4108 to i32*
  %r66 = load i32, i32* %r122
  %r120 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r75 = zext i8 %r121 to i32
  %r119 = icmp eq i32 %r75, 0
  br i1 %r119, label %b5799, label %b5959

b5765:
  %r127 = phi i32 [%r68, %b5793], [%r68, %b5801], [%r128, %b5766]
  %r125 = inttoptr i32 %r127 to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b5754, label %b6445

b5798:
  %r131 = phi i32 [%r90, %b5793], [%r94, %b5801]
  %r130 = phi i32 [%r68, %b5793], [%r68, %b5801]
  %r129 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5770

b5811:
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1602(i32 %r132, i32 0, i32 13)
  call void @func_b1988(i32 %r99)
  br label %b5804

b5813:
  call void @func_b1988(i32 %r99)
  br label %b5804

b3414:
  %r141 = and i32 %r111, 15
  %r139 = call i32 @func_b1638(i32 %r141, i32 9)
  %r138 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r140 = trunc i32 %r139 to i8
  store i8 %r140, i8* %r138
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r111, i32 32)
  %r136 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b3170, label %b5907

b5918:
  %r145 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1602(i32 %r143, i32 0, i32 %r107)
  %r142 = icmp eq i32 %r107, 10
  br i1 %r142, label %b5922, label %b5924

b5929:
  %r151 = phi i32 [%r79, %b6448], [%r147, %b5927]
  %r150 = phi i32 [%r112, %b6448], [%r152, %b5927]
  %r110 = phi i32 [%r82, %b6448], [%r110, %b5927]
  call void @func_b1997(i32 %r151)
  %r148 = inttoptr i32 %r150 to i8*
  %r149 = load i8, i8* %r148
  %r147 = zext i8 %r149 to i32
  %r146 = icmp eq i32 %r147, 0
  br i1 %r146, label %b5916, label %b5927

b5754:
  %r158 = phi i32 [%r127, %b5765], [%r157, %b5761]
  %r155 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r156 = load i8, i8* %r155
  %r154 = zext i8 %r156 to i32
  %r153 = icmp eq i32 %r154, 0
  br i1 %r153, label %b1940, label %b5756

b6445:
  %r159 = add i32 %r127, 1
  br label %b5761

b5770:
  %r161 = phi i32 [%r131, %b5798], [%r167, %b5768]
  %r166 = phi i32 [%r129, %b5798], [%r165, %b5768]
  %r164 = phi i32 [%r130, %b5798], [%r128, %b5768]
  %r163 = call i32 @inb(i32 1021)
  %r162 = and i32 %r163, 96
  call void @func_b1602(i32 %r162, i32 0, i32 %r161)
  %r160 = icmp eq i32 %r161, 10
  br i1 %r160, label %b5773, label %b5775

b5804:
  %r171 = phi i32 [%r104, %b5811], [%r104, %b5813]
  %r65 = phi i32 [%r102, %b5811], [%r102, %b5813]
  %r169 = inttoptr i32 %r171 to i8*
  %r170 = load i8, i8* %r169
  %r105 = zext i8 %r170 to i32
  %r168 = icmp eq i32 %r105, 0
  br i1 %r168, label %b5799, label %b5806

b3170:
  %r175 = inttoptr i32 4108 to i32*
  %r64 = load i32, i32* %r175
  %r173 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r174 = load i8, i8* %r173
  %r74 = zext i8 %r174 to i32
  %r172 = icmp eq i32 %r74, 0
  br i1 %r172, label %b5799, label %b5959

b5907:
  %r180 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5150(i32 %r135, i32 %r180)
  %r179 = inttoptr i32 4108 to i32*
  %r63 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r73 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r73, 0
  br i1 %r176, label %b5799, label %b5959

b5922:
  %r186 = call i32 @inb(i32 1021)
  %r185 = and i32 %r186, 96
  call void @func_b1602(i32 %r185, i32 0, i32 13)
  call void @func_b1988(i32 %r107)
  call void @func_b5726(i32 %r145, i32 %r111)
  %r184 = inttoptr i32 4108 to i32*
  %r62 = load i32, i32* %r184
  %r182 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r72 = zext i8 %r183 to i32
  %r181 = icmp eq i32 %r72, 0
  br i1 %r181, label %b5799, label %b5959

b5924:
  call void @func_b1988(i32 %r107)
  call void @func_b5726(i32 %r145, i32 %r111)
  %r190 = inttoptr i32 4108 to i32*
  %r61 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r71 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r71, 0
  br i1 %r187, label %b5799, label %b5959

b5927:
  %r152 = add i32 %r150, 1
  br label %b5929

b1940:
  %r195 = phi i32 [%r158, %b5754], [%r200, %b5726]
  %r199 = and i32 %r195, 15
  %r197 = call i32 @func_b1638(i32 %r199, i32 9)
  %r196 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r198 = trunc i32 %r197 to i8
  store i8 %r198, i8* %r196
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r195, i32 32)
  %r193 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b303, label %b5725

b5756:
  %r201 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5730

b5761:
  %r207 = phi i32 [%r124, %b6445], [%r203, %b5759]
  %r206 = phi i32 [%r159, %b6445], [%r208, %b5759]
  %r157 = phi i32 [%r127, %b6445], [%r157, %b5759]
  call void @func_b1997(i32 %r207)
  %r204 = inttoptr i32 %r206 to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b5754, label %b5759

b5773:
  %r210 = call i32 @inb(i32 1021)
  %r209 = and i32 %r210, 96
  call void @func_b1602(i32 %r209, i32 0, i32 13)
  call void @func_b1988(i32 %r161)
  br label %b5766

b5775:
  call void @func_b1988(i32 %r161)
  br label %b5766

b5806:
  %r103 = add i32 %r171, 1
  br label %b5808

b303:
  ret void

b5725:
  %r211 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c1104

b5730:
  %r213 = phi i32 [%r154, %b5756], [%r219, %b5728]
  %r218 = phi i32 [%r201, %b5756], [%r217, %b5728]
  %r216 = phi i32 [%r158, %b5756], [%r200, %b5728]
  %r215 = call i32 @inb(i32 1021)
  %r214 = and i32 %r215, 96
  call void @func_b1602(i32 %r214, i32 0, i32 %r213)
  %r212 = icmp eq i32 %r213, 10
  br i1 %r212, label %b5733, label %b5735

b5759:
  %r208 = add i32 %r206, 1
  br label %b5761

b5766:
  %r223 = phi i32 [%r166, %b5773], [%r166, %b5775]
  %r128 = phi i32 [%r164, %b5773], [%r164, %b5775]
  %r221 = inttoptr i32 %r223 to i8*
  %r222 = load i8, i8* %r221
  %r167 = zext i8 %r222 to i32
  %r220 = icmp eq i32 %r167, 0
  br i1 %r220, label %b5765, label %b5768

c1104:
  tail call void @func_b5150(i32 %r192, i32 %r211)
  ret void

b5733:
  %r225 = call i32 @inb(i32 1021)
  %r224 = and i32 %r225, 96
  call void @func_b1602(i32 %r224, i32 0, i32 13)
  call void @func_b1988(i32 %r213)
  br label %b5726

b5735:
  call void @func_b1988(i32 %r213)
  br label %b5726

b5768:
  %r165 = add i32 %r223, 1
  br label %b5770

b5726:
  %r229 = phi i32 [%r218, %b5733], [%r218, %b5735]
  %r200 = phi i32 [%r216, %b5733], [%r216, %b5735]
  %r227 = inttoptr i32 %r229 to i8*
  %r228 = load i8, i8* %r227
  %r219 = zext i8 %r228 to i32
  %r226 = icmp eq i32 %r219, 0
  br i1 %r226, label %b1940, label %b5728

b5728:
  %r217 = add i32 %r229, 1
  br label %b5730
}

define internal void @func_b6010(i32 %r0, i32 %r1) {
  br label %b6010

b6010:
  %r3 = phi i32 [%r0, %0], [%r8, %b6003]
  %r7 = phi i32 [%r1, %0], [%r6, %b6003]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1602(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b6453, label %b6454

b6453:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1602(i32 %r13, i32 0, i32 13)
  call void @func_b1988(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1950, label %b6003

b6454:
  call void @func_b1988(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1950, label %b6003

b1950:
  %r28 = inttoptr i32 4096 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b5339(i32 %r24, i32 %r25, i32 12, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str13 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1948, label %b6000

b6003:
  %r8 = phi i32 [%r10, %b6453], [%r16, %b6454]
  %r29 = phi i32 [%r7, %b6453], [%r7, %b6454]
  %r6 = add i32 %r29, 1
  br label %b6010

b1948:
  %r39 = inttoptr i32 4100 to i32*
  %r37 = load i32, i32* %r39
  %r38 = inttoptr i32 %r37 to i32*
  %r35 = load i32, i32* %r38
  %r36 = add i32 %r37, 4
  %r34 = call i32 @func_b5477(i32 %r35, i32 %r36, i32 8, i32 0)
  %r32 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b1946, label %b5982

b6000:
  %r40 = add i32 ptrtoint(i8* @str13 to i32), 1
  br label %c1120

b1946:
  %r46 = inttoptr i32 4104 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b5952, label %b5962

b5982:
  %r47 = add i32 ptrtoint(i8* @str15 to i32), 1
  br label %c1123

c1120:
  tail call void @func_b5992(i32 %r20, i32 %r40)
  ret void

b5952:
  %r50 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b5940, label %b5954

b5962:
  %r58 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b5890(i32 %r42, i32 %r58, i32 %r45)
  %r57 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r57
  %r54 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b5799, label %b5959

c1123:
  tail call void @func_b5974(i32 %r31, i32 %r47)
  ret void

b5940:
  %r61 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r62 = load i8, i8* %r61
  %r60 = zext i8 %r62 to i32
  %r59 = icmp eq i32 %r60, 0
  br i1 %r59, label %b5933, label %b5951

b5954:
  %r67 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5150(i32 %r49, i32 %r67)
  %r65 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r66 = load i8, i8* %r65
  %r64 = zext i8 %r66 to i32
  %r63 = icmp eq i32 %r64, 0
  br i1 %r63, label %b5933, label %b5951

b5799:
  %r79 = phi i32 [%r56, %b5962], [%r78, %b5946], [%r77, %b5948], [%r76, %b5804], [%r75, %b3170], [%r74, %b5907], [%r73, %b5922], [%r72, %b5924]
  %r70 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r71 = load i8, i8* %r70
  %r69 = zext i8 %r71 to i32
  %r68 = icmp eq i32 %r69, 0
  br i1 %r68, label %b5793, label %b5801

b5959:
  %r88 = phi i32 [%r53, %b5962], [%r87, %b5946], [%r86, %b5948], [%r85, %b3170], [%r84, %b5907], [%r83, %b5922], [%r82, %b5924]
  %r81 = phi i32 [%r56, %b5962], [%r78, %b5946], [%r77, %b5948], [%r75, %b3170], [%r74, %b5907], [%r73, %b5922], [%r72, %b5924]
  %r80 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b5808

b5933:
  %r93 = phi i32 [%r45, %b5940], [%r45, %b5954]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b5916, label %b6448

b5951:
  %r95 = phi i32 [%r60, %b5940], [%r64, %b5954]
  %r99 = phi i32 [%r45, %b5940], [%r45, %b5954]
  %r98 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r97 = call i32 @inb(i32 1021)
  %r96 = and i32 %r97, 96
  call void @func_b1602(i32 %r96, i32 0, i32 %r95)
  %r94 = icmp eq i32 %r95, 10
  br i1 %r94, label %b5946, label %b5948

b5793:
  %r102 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r103 = load i8, i8* %r102
  %r101 = zext i8 %r103 to i32
  %r100 = icmp eq i32 %r101, 0
  br i1 %r100, label %b5765, label %b5798

b5801:
  %r108 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5150(i32 %r69, i32 %r108)
  %r106 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r107 = load i8, i8* %r106
  %r105 = zext i8 %r107 to i32
  %r104 = icmp eq i32 %r105, 0
  br i1 %r104, label %b5765, label %b5798

b5808:
  %r110 = phi i32 [%r88, %b5959], [%r116, %b5806]
  %r115 = phi i32 [%r80, %b5959], [%r114, %b5806]
  %r113 = phi i32 [%r81, %b5959], [%r76, %b5806]
  %r112 = call i32 @inb(i32 1021)
  %r111 = and i32 %r112, 96
  call void @func_b1602(i32 %r111, i32 0, i32 %r110)
  %r109 = icmp eq i32 %r110, 10
  br i1 %r109, label %b5811, label %b5813

b5916:
  %r122 = phi i32 [%r93, %b5933], [%r121, %b5929]
  %r119 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r120 = load i8, i8* %r119
  %r118 = zext i8 %r120 to i32
  %r117 = icmp eq i32 %r118, 0
  br i1 %r117, label %b3414, label %b5918

b6448:
  %r123 = add i32 %r93, 1
  br label %b5929

b5946:
  %r129 = call i32 @inb(i32 1021)
  %r128 = and i32 %r129, 96
  call void @func_b1602(i32 %r128, i32 0, i32 13)
  call void @func_b1988(i32 %r95)
  call void @func_b5766(i32 %r98, i32 %r99)
  %r127 = inttoptr i32 4108 to i32*
  %r78 = load i32, i32* %r127
  %r125 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r87 = zext i8 %r126 to i32
  %r124 = icmp eq i32 %r87, 0
  br i1 %r124, label %b5799, label %b5959

b5948:
  call void @func_b1988(i32 %r95)
  call void @func_b5766(i32 %r98, i32 %r99)
  %r133 = inttoptr i32 4108 to i32*
  %r77 = load i32, i32* %r133
  %r131 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r132 = load i8, i8* %r131
  %r86 = zext i8 %r132 to i32
  %r130 = icmp eq i32 %r86, 0
  br i1 %r130, label %b5799, label %b5959

b5765:
  %r138 = phi i32 [%r79, %b5793], [%r79, %b5801], [%r139, %b5766]
  %r136 = inttoptr i32 %r138 to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b5754, label %b6445

b5798:
  %r142 = phi i32 [%r101, %b5793], [%r105, %b5801]
  %r141 = phi i32 [%r79, %b5793], [%r79, %b5801]
  %r140 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5770

b5811:
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1602(i32 %r143, i32 0, i32 13)
  call void @func_b1988(i32 %r110)
  br label %b5804

b5813:
  call void @func_b1988(i32 %r110)
  br label %b5804

b3414:
  %r152 = and i32 %r122, 15
  %r150 = call i32 @func_b1638(i32 %r152, i32 9)
  %r149 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r151 = trunc i32 %r150 to i8
  store i8 %r151, i8* %r149
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r122, i32 32)
  %r147 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r148 = load i8, i8* %r147
  %r146 = zext i8 %r148 to i32
  %r145 = icmp eq i32 %r146, 0
  br i1 %r145, label %b3170, label %b5907

b5918:
  %r156 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r155 = call i32 @inb(i32 1021)
  %r154 = and i32 %r155, 96
  call void @func_b1602(i32 %r154, i32 0, i32 %r118)
  %r153 = icmp eq i32 %r118, 10
  br i1 %r153, label %b5922, label %b5924

b5929:
  %r162 = phi i32 [%r90, %b6448], [%r158, %b5927]
  %r161 = phi i32 [%r123, %b6448], [%r163, %b5927]
  %r121 = phi i32 [%r93, %b6448], [%r121, %b5927]
  call void @func_b1997(i32 %r162)
  %r159 = inttoptr i32 %r161 to i8*
  %r160 = load i8, i8* %r159
  %r158 = zext i8 %r160 to i32
  %r157 = icmp eq i32 %r158, 0
  br i1 %r157, label %b5916, label %b5927

b5754:
  %r169 = phi i32 [%r138, %b5765], [%r168, %b5761]
  %r166 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r165 = zext i8 %r167 to i32
  %r164 = icmp eq i32 %r165, 0
  br i1 %r164, label %b1940, label %b5756

b6445:
  %r170 = add i32 %r138, 1
  br label %b5761

b5770:
  %r172 = phi i32 [%r142, %b5798], [%r178, %b5768]
  %r177 = phi i32 [%r140, %b5798], [%r176, %b5768]
  %r175 = phi i32 [%r141, %b5798], [%r139, %b5768]
  %r174 = call i32 @inb(i32 1021)
  %r173 = and i32 %r174, 96
  call void @func_b1602(i32 %r173, i32 0, i32 %r172)
  %r171 = icmp eq i32 %r172, 10
  br i1 %r171, label %b5773, label %b5775

b5804:
  %r182 = phi i32 [%r115, %b5811], [%r115, %b5813]
  %r76 = phi i32 [%r113, %b5811], [%r113, %b5813]
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r116 = zext i8 %r181 to i32
  %r179 = icmp eq i32 %r116, 0
  br i1 %r179, label %b5799, label %b5806

b3170:
  %r186 = inttoptr i32 4108 to i32*
  %r75 = load i32, i32* %r186
  %r184 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r185 = load i8, i8* %r184
  %r85 = zext i8 %r185 to i32
  %r183 = icmp eq i32 %r85, 0
  br i1 %r183, label %b5799, label %b5959

b5907:
  %r191 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5150(i32 %r146, i32 %r191)
  %r190 = inttoptr i32 4108 to i32*
  %r74 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r84 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r84, 0
  br i1 %r187, label %b5799, label %b5959

b5922:
  %r197 = call i32 @inb(i32 1021)
  %r196 = and i32 %r197, 96
  call void @func_b1602(i32 %r196, i32 0, i32 13)
  call void @func_b1988(i32 %r118)
  call void @func_b5726(i32 %r156, i32 %r122)
  %r195 = inttoptr i32 4108 to i32*
  %r73 = load i32, i32* %r195
  %r193 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r83 = zext i8 %r194 to i32
  %r192 = icmp eq i32 %r83, 0
  br i1 %r192, label %b5799, label %b5959

b5924:
  call void @func_b1988(i32 %r118)
  call void @func_b5726(i32 %r156, i32 %r122)
  %r201 = inttoptr i32 4108 to i32*
  %r72 = load i32, i32* %r201
  %r199 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r200 = load i8, i8* %r199
  %r82 = zext i8 %r200 to i32
  %r198 = icmp eq i32 %r82, 0
  br i1 %r198, label %b5799, label %b5959

b5927:
  %r163 = add i32 %r161, 1
  br label %b5929

b1940:
  %r206 = phi i32 [%r169, %b5754], [%r211, %b5726]
  %r210 = and i32 %r206, 15
  %r208 = call i32 @func_b1638(i32 %r210, i32 9)
  %r207 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r209 = trunc i32 %r208 to i8
  store i8 %r209, i8* %r207
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r206, i32 32)
  %r204 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b303, label %b5725

b5756:
  %r212 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5730

b5761:
  %r218 = phi i32 [%r135, %b6445], [%r214, %b5759]
  %r217 = phi i32 [%r170, %b6445], [%r219, %b5759]
  %r168 = phi i32 [%r138, %b6445], [%r168, %b5759]
  call void @func_b1997(i32 %r218)
  %r215 = inttoptr i32 %r217 to i8*
  %r216 = load i8, i8* %r215
  %r214 = zext i8 %r216 to i32
  %r213 = icmp eq i32 %r214, 0
  br i1 %r213, label %b5754, label %b5759

b5773:
  %r221 = call i32 @inb(i32 1021)
  %r220 = and i32 %r221, 96
  call void @func_b1602(i32 %r220, i32 0, i32 13)
  call void @func_b1988(i32 %r172)
  br label %b5766

b5775:
  call void @func_b1988(i32 %r172)
  br label %b5766

b5806:
  %r114 = add i32 %r182, 1
  br label %b5808

b303:
  ret void

b5725:
  %r222 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c1164

b5730:
  %r224 = phi i32 [%r165, %b5756], [%r230, %b5728]
  %r229 = phi i32 [%r212, %b5756], [%r228, %b5728]
  %r227 = phi i32 [%r169, %b5756], [%r211, %b5728]
  %r226 = call i32 @inb(i32 1021)
  %r225 = and i32 %r226, 96
  call void @func_b1602(i32 %r225, i32 0, i32 %r224)
  %r223 = icmp eq i32 %r224, 10
  br i1 %r223, label %b5733, label %b5735

b5759:
  %r219 = add i32 %r217, 1
  br label %b5761

b5766:
  %r234 = phi i32 [%r177, %b5773], [%r177, %b5775]
  %r139 = phi i32 [%r175, %b5773], [%r175, %b5775]
  %r232 = inttoptr i32 %r234 to i8*
  %r233 = load i8, i8* %r232
  %r178 = zext i8 %r233 to i32
  %r231 = icmp eq i32 %r178, 0
  br i1 %r231, label %b5765, label %b5768

c1164:
  tail call void @func_b5150(i32 %r203, i32 %r222)
  ret void

b5733:
  %r236 = call i32 @inb(i32 1021)
  %r235 = and i32 %r236, 96
  call void @func_b1602(i32 %r235, i32 0, i32 13)
  call void @func_b1988(i32 %r224)
  br label %b5726

b5735:
  call void @func_b1988(i32 %r224)
  br label %b5726

b5768:
  %r176 = add i32 %r234, 1
  br label %b5770

b5726:
  %r240 = phi i32 [%r229, %b5733], [%r229, %b5735]
  %r211 = phi i32 [%r227, %b5733], [%r227, %b5735]
  %r238 = inttoptr i32 %r240 to i8*
  %r239 = load i8, i8* %r238
  %r230 = zext i8 %r239 to i32
  %r237 = icmp eq i32 %r230, 0
  br i1 %r237, label %b1940, label %b5728

b5728:
  %r228 = add i32 %r240, 1
  br label %b5730
}

define internal void @func_b5522(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5522

b5522:
  %r4 = phi i32 [%r0, %0], [%r11, %b5520]
  %r10 = phi i32 [%r1, %0], [%r9, %b5520]
  %r8 = phi i32 [%r2, %0], [%r7, %b5520]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1602(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b5525, label %b5527

b5525:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1602(i32 %r12, i32 0, i32 13)
  call void @func_b1988(i32 %r4)
  br label %b5518

b5527:
  call void @func_b1988(i32 %r4)
  br label %b5518

b5518:
  %r17 = phi i32 [%r10, %b5525], [%r10, %b5527]
  %r7 = phi i32 [%r8, %b5525], [%r8, %b5527]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b2396, label %b5520

b2396:
  %r19 = add i32 ptrtoint(i8* @users to i32), 52
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b5520:
  %r9 = add i32 %r17, 1
  br label %b5522
}

define internal void @func_b5571(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5571

b5571:
  %r4 = phi i32 [%r0, %0], [%r11, %b5564]
  %r10 = phi i32 [%r1, %0], [%r9, %b5564]
  %r8 = phi i32 [%r2, %0], [%r7, %b5564]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1602(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b6455, label %b6456

b6455:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1602(i32 %r12, i32 0, i32 13)
  call void @func_b1988(i32 %r4)
  br label %b5562

b6456:
  call void @func_b1988(i32 %r4)
  br label %b5562

b5562:
  %r17 = phi i32 [%r10, %b6455], [%r10, %b6456]
  %r7 = phi i32 [%r8, %b6455], [%r8, %b6456]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b2392, label %b5564

b2392:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1638(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str56 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b2396, label %b5556

b5564:
  %r9 = add i32 %r17, 1
  br label %b5571

b2396:
  %r27 = add i32 ptrtoint(i8* @users to i32), 52
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b5556:
  %r28 = add i32 ptrtoint(i8* @str56 to i32), 1
  br label %c1186

c1186:
  tail call void @func_b5522(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define internal void @func_b5532(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5532

b5532:
  %r4 = phi i32 [%r0, %0], [%r11, %b5530]
  %r10 = phi i32 [%r1, %0], [%r9, %b5530]
  %r8 = phi i32 [%r2, %0], [%r7, %b5530]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1602(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b5535, label %b5537

b5535:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1602(i32 %r12, i32 0, i32 13)
  call void @func_b1988(i32 %r4)
  br label %b5528

b5537:
  call void @func_b1988(i32 %r4)
  br label %b5528

b5528:
  %r17 = phi i32 [%r10, %b5535], [%r10, %b5537]
  %r7 = phi i32 [%r8, %b5535], [%r8, %b5537]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b2407, label %b5530

b2407:
  %r19 = add i32 ptrtoint(i8* @users to i32), 124
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b5530:
  %r9 = add i32 %r17, 1
  br label %b5532
}

define internal void @func_b5553(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5553

b5553:
  %r4 = phi i32 [%r0, %0], [%r11, %b5546]
  %r10 = phi i32 [%r1, %0], [%r9, %b5546]
  %r8 = phi i32 [%r2, %0], [%r7, %b5546]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1602(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b6457, label %b6458

b6457:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1602(i32 %r12, i32 0, i32 13)
  call void @func_b1988(i32 %r4)
  br label %b5544

b6458:
  call void @func_b1988(i32 %r4)
  br label %b5544

b5544:
  %r17 = phi i32 [%r10, %b6457], [%r10, %b6458]
  %r7 = phi i32 [%r8, %b6457], [%r8, %b6458]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b2403, label %b5546

b2403:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1638(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str56 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b2407, label %b5543

b5546:
  %r9 = add i32 %r17, 1
  br label %b5553

b2407:
  %r27 = add i32 ptrtoint(i8* @users to i32), 124
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b5543:
  %r28 = add i32 ptrtoint(i8* @str56 to i32), 1
  br label %c1203

c1203:
  tail call void @func_b5532(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define void @kernel() {
  %r0 = load i32, i32* @keyb_layout
  %r1 = add i32 ptrtoint(i8* @objects to i32), 24
  store i32 %r1, i32* @ball
  %r2 = add i32 ptrtoint(i8* @objects to i32), 120
  store i32 %r2, i32* @gameoverZone
  br label %initialize

initialize:
  %r140 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r140
  %r139 = inttoptr i32 ptrtoint(i8* @users to i32) to i32*
  store i32 0, i32* %r139
  %r138 = add i32 ptrtoint(i8* @users to i32), 4
  %r137 = inttoptr i32 %r138 to i32*
  store i32 0, i32* %r137
  %r136 = add i32 ptrtoint(i8* @users to i32), 8
  %r135 = inttoptr i32 %r136 to i32*
  store i32 0, i32* %r135
  %r134 = add i32 ptrtoint(i8* @users to i32), 12
  %r133 = inttoptr i32 %r134 to i32*
  store i32 0, i32* %r133
  %r132 = add i32 ptrtoint(i8* @users to i32), 16
  %r131 = inttoptr i32 %r132 to i32*
  store i32 0, i32* %r131
  %r130 = add i32 ptrtoint(i8* @users to i32), 20
  %r129 = inttoptr i32 %r130 to i32*
  store i32 0, i32* %r129
  %r128 = add i32 ptrtoint(i8* @users to i32), 24
  %r127 = inttoptr i32 %r128 to i32*
  store i32 0, i32* %r127
  %r126 = add i32 ptrtoint(i8* @users to i32), 28
  %r125 = inttoptr i32 %r126 to i32*
  store i32 0, i32* %r125
  %r124 = add i32 ptrtoint(i8* @users to i32), 32
  %r123 = inttoptr i32 %r124 to i32*
  store i32 59, i32* %r123
  %r122 = add i32 ptrtoint(i8* @users to i32), 36
  %r121 = inttoptr i32 %r122 to i32*
  store i32 59, i32* %r121
  %r120 = add i32 ptrtoint(i8* @users to i32), 40
  %r119 = inttoptr i32 %r120 to i32*
  store i32 59, i32* %r119
  %r118 = add i32 ptrtoint(i8* @users to i32), 44
  %r117 = inttoptr i32 %r118 to i32*
  store i32 59, i32* %r117
  %r116 = add i32 ptrtoint(i8* @users to i32), 48
  %r115 = inttoptr i32 %r116 to i32*
  store i32 0, i32* %r115
  %r114 = add i32 ptrtoint(i8* @users to i32), 52
  %r113 = inttoptr i32 %r114 to i32*
  store i32 0, i32* %r113
  %r112 = add i32 ptrtoint(i8* @users to i32), 56
  %r111 = inttoptr i32 %r112 to i32*
  store i32 51, i32* %r111
  %r110 = add i32 ptrtoint(i8* @users to i32), 60
  %r109 = inttoptr i32 %r110 to i32*
  store i32 12802, i32* %r109
  %r108 = add i32 ptrtoint(i8* @users to i32), 64
  %r107 = inttoptr i32 %r108 to i32*
  store i32 0, i32* %r107
  %r106 = add i32 ptrtoint(i8* @users to i32), 68
  %r105 = inttoptr i32 %r106 to i32*
  store i32 59, i32* %r105
  %r104 = add i32 ptrtoint(i8* @users to i32), 72
  %r103 = inttoptr i32 %r104 to i32*
  store i32 0, i32* %r103
  %r102 = add i32 ptrtoint(i8* @users to i32), 76
  %r101 = inttoptr i32 %r102 to i32*
  store i32 0, i32* %r101
  %r100 = add i32 ptrtoint(i8* @users to i32), 80
  %r99 = inttoptr i32 %r100 to i32*
  store i32 0, i32* %r99
  %r98 = add i32 ptrtoint(i8* @users to i32), 84
  %r97 = inttoptr i32 %r98 to i32*
  store i32 0, i32* %r97
  %r96 = add i32 ptrtoint(i8* @users to i32), 88
  %r95 = inttoptr i32 %r96 to i32*
  store i32 0, i32* %r95
  %r94 = add i32 ptrtoint(i8* @users to i32), 92
  %r93 = inttoptr i32 %r94 to i32*
  store i32 0, i32* %r93
  %r92 = add i32 ptrtoint(i8* @users to i32), 96
  %r91 = inttoptr i32 %r92 to i32*
  store i32 0, i32* %r91
  %r90 = add i32 ptrtoint(i8* @users to i32), 100
  %r89 = inttoptr i32 %r90 to i32*
  store i32 0, i32* %r89
  %r88 = add i32 ptrtoint(i8* @users to i32), 104
  %r87 = inttoptr i32 %r88 to i32*
  store i32 59, i32* %r87
  %r86 = add i32 ptrtoint(i8* @users to i32), 108
  %r85 = inttoptr i32 %r86 to i32*
  store i32 59, i32* %r85
  %r84 = add i32 ptrtoint(i8* @users to i32), 112
  %r83 = inttoptr i32 %r84 to i32*
  store i32 59, i32* %r83
  %r82 = add i32 ptrtoint(i8* @users to i32), 116
  %r81 = inttoptr i32 %r82 to i32*
  store i32 59, i32* %r81
  %r80 = add i32 ptrtoint(i8* @users to i32), 120
  %r79 = inttoptr i32 %r80 to i32*
  store i32 0, i32* %r79
  %r78 = add i32 ptrtoint(i8* @users to i32), 124
  %r77 = inttoptr i32 %r78 to i32*
  store i32 0, i32* %r77
  %r76 = add i32 ptrtoint(i8* @users to i32), 128
  %r75 = inttoptr i32 %r76 to i32*
  store i32 51, i32* %r75
  %r74 = add i32 ptrtoint(i8* @users to i32), 132
  %r73 = inttoptr i32 %r74 to i32*
  store i32 12802, i32* %r73
  %r72 = add i32 ptrtoint(i8* @users to i32), 136
  %r71 = inttoptr i32 %r72 to i32*
  store i32 0, i32* %r71
  %r70 = add i32 ptrtoint(i8* @users to i32), 140
  %r69 = inttoptr i32 %r70 to i32*
  store i32 59, i32* %r69
  %r67 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r68 = trunc i32 0 to i8
  store i8 %r68, i8* %r67
  %r66 = add i32 ptrtoint(i8* @console to i32), 1
  %r64 = inttoptr i32 %r66 to i8*
  %r65 = trunc i32 0 to i8
  store i8 %r65, i8* %r64
  %r63 = add i32 ptrtoint(i8* @console to i32), 2
  %r61 = inttoptr i32 %r63 to i8*
  %r62 = trunc i32 24 to i8
  store i8 %r62, i8* %r61
  %r60 = add i32 ptrtoint(i8* @console to i32), 3
  %r58 = inttoptr i32 %r60 to i8*
  %r59 = trunc i32 79 to i8
  store i8 %r59, i8* %r58
  %r57 = add i32 ptrtoint(i8* @console to i32), 4
  %r55 = inttoptr i32 %r57 to i8*
  %r56 = trunc i32 0 to i8
  store i8 %r56, i8* %r55
  %r54 = add i32 ptrtoint(i8* @console to i32), 5
  %r52 = inttoptr i32 %r54 to i8*
  %r53 = trunc i32 0 to i8
  store i8 %r53, i8* %r52
  %r9 = add i32 ptrtoint(i8* @console to i32), 6
  %r50 = inttoptr i32 %r9 to i8*
  %r51 = trunc i32 10 to i8
  store i8 %r51, i8* %r50
  %r48 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r49 = trunc i32 0 to i8
  store i8 %r49, i8* %r48
  %r46 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r47 = trunc i32 0 to i8
  store i8 %r47, i8* %r46
  %r45 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  store i32 1, i32* %r45
  %r44 = inttoptr i32 ptrtoint(i8* @isPlaying to i32) to i1*
  store i1 true, i1* %r44
  %r43 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  store i32 8, i32* %r43
  %r42 = add i32 ptrtoint(i8* @objects to i32), 4
  %r41 = inttoptr i32 %r42 to i32*
  store i32 1, i32* %r41
  %r40 = add i32 ptrtoint(i8* @objects to i32), 8
  %r39 = inttoptr i32 %r40 to i32*
  store i32 18, i32* %r39
  %r38 = add i32 ptrtoint(i8* @objects to i32), 12
  %r37 = inttoptr i32 %r38 to i32*
  store i32 21, i32* %r37
  %r36 = add i32 ptrtoint(i8* @objects to i32), 16
  %r35 = inttoptr i32 %r36 to i32*
  store i32 48, i32* %r35
  %r34 = add i32 ptrtoint(i8* @objects to i32), 20
  %r33 = inttoptr i32 %r34 to i32*
  store i32 22, i32* %r33
  %r32 = add i32 ptrtoint(i8* @objects to i32), 24
  call void @func_b4614(i32 %r32, i32 1)
  %r30 = inttoptr i32 ptrtoint(i8* @spinner to i32) to i8*
  %r31 = trunc i32 45 to i8
  store i8 %r31, i8* %r30
  %r29 = add i32 ptrtoint(i8* @spinner to i32), 1
  %r27 = inttoptr i32 %r29 to i8*
  %r28 = trunc i32 92 to i8
  store i8 %r28, i8* %r27
  %r26 = add i32 ptrtoint(i8* @spinner to i32), 2
  %r24 = inttoptr i32 %r26 to i8*
  %r25 = trunc i32 124 to i8
  store i8 %r25, i8* %r24
  %r23 = add i32 ptrtoint(i8* @spinner to i32), 3
  %r21 = inttoptr i32 %r23 to i8*
  %r22 = trunc i32 47 to i8
  store i8 %r22, i8* %r21
  %r19 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r20 = trunc i32 0 to i8
  store i8 %r20, i8* %r19
  %r17 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r18 = trunc i32 55 to i8
  store i8 %r18, i8* %r17
  %r16 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r16
  %r15 = inttoptr i32 ptrtoint(i8* @bricksLeft to i32) to i32*
  store i32 15, i32* %r15
  %r14 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r14
  %r13 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r13
  %r11 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r12 = trunc i32 0 to i8
  store i8 %r12, i8* %r11
  %r10 = add i32 ptrtoint(i8* @itoaBuf to i32), 1
  call void @func_b4621(i32 %r10, i32 1)
  %r7 = inttoptr i32 %r9 to i8*
  %r8 = trunc i32 32 to i8
  store i8 %r8, i8* %r7
  call void @func_b1244()
  %r5 = inttoptr i32 ptrtoint(i8* @str47 to i32) to i8*
  %r6 = load i8, i8* %r5
  %r4 = zext i8 %r6 to i32
  %r3 = icmp eq i32 %r4, 0
  br i1 %r3, label %b1968, label %b6028

b1968:
  %r163 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r164 = trunc i32 1 to i8
  store i8 %r164, i8* %r163
  %r162 = add i32 ptrtoint(i8* @console to i32), 1
  %r160 = inttoptr i32 %r162 to i8*
  %r161 = trunc i32 1 to i8
  store i8 %r161, i8* %r160
  %r159 = add i32 ptrtoint(i8* @console to i32), 2
  %r157 = inttoptr i32 %r159 to i8*
  %r158 = trunc i32 23 to i8
  store i8 %r158, i8* %r157
  %r156 = add i32 ptrtoint(i8* @console to i32), 3
  %r154 = inttoptr i32 %r156 to i8*
  %r155 = trunc i32 45 to i8
  store i8 %r155, i8* %r154
  %r153 = add i32 ptrtoint(i8* @console to i32), 4
  %r151 = inttoptr i32 %r153 to i8*
  %r152 = trunc i32 1 to i8
  store i8 %r152, i8* %r151
  %r150 = add i32 ptrtoint(i8* @console to i32), 5
  %r148 = inttoptr i32 %r150 to i8*
  %r149 = trunc i32 1 to i8
  store i8 %r149, i8* %r148
  %r147 = add i32 ptrtoint(i8* @console to i32), 6
  %r145 = inttoptr i32 %r147 to i8*
  %r146 = trunc i32 15 to i8
  store i8 %r146, i8* %r145
  call void @func_b1244()
  %r143 = inttoptr i32 ptrtoint(i8* @str11 to i32) to i8*
  %r144 = load i8, i8* %r143
  %r142 = zext i8 %r144 to i32
  %r141 = icmp eq i32 %r142, 0
  br i1 %r141, label %b3065, label %b6013

b6028:
  %r165 = add i32 ptrtoint(i8* @str47 to i32), 1
  br label %b6020

b3065:
  %r175 = inttoptr i32 4096 to i32*
  %r173 = load i32, i32* %r175
  %r174 = inttoptr i32 %r173 to i32*
  %r171 = load i32, i32* %r174
  %r172 = add i32 %r173, 4
  %r170 = call i32 @func_b5339(i32 %r171, i32 %r172, i32 12, i32 0)
  %r168 = inttoptr i32 ptrtoint(i8* @str13 to i32) to i8*
  %r169 = load i8, i8* %r168
  %r167 = zext i8 %r169 to i32
  %r166 = icmp eq i32 %r167, 0
  br i1 %r166, label %b3066, label %b5995

b6013:
  %r182 = add i32 ptrtoint(i8* @str11 to i32), 1
  call void @func_b6010(i32 %r142, i32 %r182)
  %r181 = inttoptr i32 4096 to i32*
  %r179 = load i32, i32* %r181
  %r180 = inttoptr i32 %r179 to i32*
  %r177 = load i32, i32* %r180
  %r178 = add i32 %r179, 4
  %r176 = icmp eq i32 %r177, 0
  br i1 %r176, label %b5502, label %b5715

b6020:
  %r184 = phi i32 [%r4, %b6028], [%r189, %b6018]
  %r188 = phi i32 [%r165, %b6028], [%r187, %b6018]
  %r186 = call i32 @inb(i32 1021)
  %r185 = and i32 %r186, 96
  call void @func_b1602(i32 %r185, i32 0, i32 %r184)
  %r183 = icmp eq i32 %r184, 10
  br i1 %r183, label %b6023, label %b6025

b3066:
  %r199 = inttoptr i32 4100 to i32*
  %r197 = load i32, i32* %r199
  %r198 = inttoptr i32 %r197 to i32*
  %r195 = load i32, i32* %r198
  %r196 = add i32 %r197, 4
  %r194 = call i32 @func_b5477(i32 %r195, i32 %r196, i32 8, i32 0)
  %r192 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r193 = load i8, i8* %r192
  %r191 = zext i8 %r193 to i32
  %r190 = icmp eq i32 %r191, 0
  br i1 %r190, label %b3067, label %b5977

b5995:
  %r206 = add i32 ptrtoint(i8* @str13 to i32), 1
  call void @func_b5992(i32 %r167, i32 %r206)
  %r205 = inttoptr i32 4096 to i32*
  %r203 = load i32, i32* %r205
  %r204 = inttoptr i32 %r203 to i32*
  %r201 = load i32, i32* %r204
  %r202 = add i32 %r203, 4
  %r200 = icmp eq i32 %r201, 0
  br i1 %r200, label %b5502, label %b5715

b5502:
  %r209 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r210 = load i8, i8* %r209
  %r208 = zext i8 %r210 to i32
  %r207 = icmp eq i32 %r208, 0
  br i1 %r207, label %b5489, label %b5504

b5715:
  %r215 = phi i32 [%r177, %b6013], [%r201, %b5995], [%r236, %b5977], [%r214, %b5713], [%r235, %b5820], [%r234, %b5822], [%r233, %b5782], [%r232, %b5784], [%r231, %b3459], [%r230, %b5720], [%r229, %b5742], [%r228, %b5744]
  %r217 = phi i32 [%r178, %b6013], [%r202, %b5995], [%r227, %b5977], [%r216, %b5713], [%r226, %b5820], [%r225, %b5822], [%r224, %b5782], [%r223, %b5784], [%r222, %b3459], [%r221, %b5720], [%r220, %b5742], [%r219, %b5744]
  %r218 = phi i32 [12, %b6013], [12, %b5995], [12, %b5977], [12, %b5713], [12, %b5820], [12, %b5822], [12, %b5782], [12, %b5784], [12, %b3459], [12, %b5720], [12, %b5742], [12, %b5744]
  %r213 = phi i32 [2, %b6013], [2, %b5995], [2, %b5977], [%r212, %b5713], [2, %b5820], [2, %b5822], [2, %b5782], [2, %b5784], [2, %b3459], [2, %b5720], [2, %b5742], [2, %b5744]
  %r216 = add i32 %r217, %r218
  %r214 = add i32 %r215, -1
  %r212 = add i32 %r213, -1
  %r211 = icmp eq i32 %r212, 0
  br i1 %r211, label %b5650, label %b5713

b6023:
  %r242 = call i32 @inb(i32 1021)
  %r241 = and i32 %r242, 96
  call void @func_b1602(i32 %r241, i32 0, i32 13)
  call void @func_b1988(i32 %r184)
  %r239 = inttoptr i32 %r188 to i8*
  %r240 = load i8, i8* %r239
  %r238 = zext i8 %r240 to i32
  %r237 = icmp eq i32 %r238, 0
  br i1 %r237, label %b1968, label %b6018

b6025:
  call void @func_b1988(i32 %r184)
  %r245 = inttoptr i32 %r188 to i8*
  %r246 = load i8, i8* %r245
  %r244 = zext i8 %r246 to i32
  %r243 = icmp eq i32 %r244, 0
  br i1 %r243, label %b1968, label %b6018

b3067:
  %r252 = inttoptr i32 4104 to i32*
  %r251 = load i32, i32* %r252
  %r249 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r250 = load i8, i8* %r249
  %r248 = zext i8 %r250 to i32
  %r247 = icmp eq i32 %r248, 0
  br i1 %r247, label %b5873, label %b5896

b5977:
  %r257 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b5974(i32 %r191, i32 %r257)
  %r256 = inttoptr i32 4096 to i32*
  %r254 = load i32, i32* %r256
  %r255 = inttoptr i32 %r254 to i32*
  %r236 = load i32, i32* %r255
  %r227 = add i32 %r254, 4
  %r253 = icmp eq i32 %r236, 0
  br i1 %r253, label %b5502, label %b5715

b5489:
  %r260 = inttoptr i32 ptrtoint(i8* @str48 to i32) to i8*
  %r261 = load i8, i8* %r260
  %r259 = zext i8 %r261 to i32
  %r258 = icmp eq i32 %r259, 0
  br i1 %r258, label %b303, label %b5491

b5504:
  %r262 = add i32 ptrtoint(i8* @str54 to i32), 1
  br label %b5496

b5650:
  %r263 = icmp eq i32 %r214, 0
  br i1 %r263, label %b5502, label %b5652

b5713:
  %r264 = icmp eq i32 %r214, 0
  br i1 %r264, label %b5502, label %b5715

b6018:
  %r189 = phi i32 [%r238, %b6023], [%r244, %b6025]
  %r265 = phi i32 [%r188, %b6023], [%r188, %b6025]
  %r187 = add i32 %r265, 1
  br label %b6020

b5873:
  %r268 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r269 = load i8, i8* %r268
  %r267 = zext i8 %r269 to i32
  %r266 = icmp eq i32 %r267, 0
  br i1 %r266, label %b5861, label %b5875

b5896:
  %r276 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b5890(i32 %r248, i32 %r276, i32 %r251)
  %r275 = inttoptr i32 4108 to i32*
  %r274 = load i32, i32* %r275
  %r272 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r273 = load i8, i8* %r272
  %r271 = zext i8 %r273 to i32
  %r270 = icmp eq i32 %r271, 0
  br i1 %r270, label %b5788, label %b5893

b303:
  ret void

b5491:
  %r279 = phi i32 [%r259, %b5489], [%r278, %b2615]
  %r277 = add i32 ptrtoint(i8* @str48 to i32), 1
  br label %c1234

b5496:
  %r281 = phi i32 [%r208, %b5504], [%r286, %b5494]
  %r285 = phi i32 [%r262, %b5504], [%r284, %b5494]
  %r283 = call i32 @inb(i32 1021)
  %r282 = and i32 %r283, 96
  call void @func_b1602(i32 %r282, i32 0, i32 %r281)
  %r280 = icmp eq i32 %r281, 10
  br i1 %r280, label %b5499, label %b5501

b5652:
  %r292 = add i32 %r216, 12
  %r291 = add i32 %r214, -1
  %r289 = inttoptr i32 ptrtoint(i8* @str49 to i32) to i8*
  %r290 = load i8, i8* %r289
  %r288 = zext i8 %r290 to i32
  %r287 = icmp eq i32 %r288, 0
  br i1 %r287, label %b5658, label %b5704

b5861:
  %r295 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r296 = load i8, i8* %r295
  %r294 = zext i8 %r296 to i32
  %r293 = icmp eq i32 %r294, 0
  br i1 %r293, label %b5854, label %b5872

b5875:
  %r301 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5150(i32 %r267, i32 %r301)
  %r299 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r300 = load i8, i8* %r299
  %r298 = zext i8 %r300 to i32
  %r297 = icmp eq i32 %r298, 0
  br i1 %r297, label %b5854, label %b5872

b5788:
  %r312 = phi i32 [%r274, %b5896], [%r311, %b5867], [%r310, %b5869], [%r309, %b3628], [%r308, %b5828], [%r307, %b5843], [%r306, %b5845]
  %r304 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r305 = load i8, i8* %r304
  %r303 = zext i8 %r305 to i32
  %r302 = icmp eq i32 %r303, 0
  br i1 %r302, label %b5776, label %b5790

b5893:
  %r314 = phi i32 [%r271, %b5896], [%r324, %b5867], [%r323, %b5869], [%r322, %b3628], [%r321, %b5828], [%r320, %b5843], [%r319, %b5845]
  %r318 = phi i32 [%r274, %b5896], [%r311, %b5867], [%r310, %b5869], [%r309, %b3628], [%r308, %b5828], [%r307, %b5843], [%r306, %b5845]
  %r317 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r316 = call i32 @inb(i32 1021)
  %r315 = and i32 %r316, 96
  call void @func_b1602(i32 %r315, i32 0, i32 %r314)
  %r313 = icmp eq i32 %r314, 10
  br i1 %r313, label %b5820, label %b5822

c1234:
  tail call void @func_b5150(i32 %r279, i32 %r277)
  ret void

b5499:
  %r330 = call i32 @inb(i32 1021)
  %r329 = and i32 %r330, 96
  call void @func_b1602(i32 %r329, i32 0, i32 13)
  call void @func_b1988(i32 %r281)
  %r327 = inttoptr i32 %r285 to i8*
  %r328 = load i8, i8* %r327
  %r326 = zext i8 %r328 to i32
  %r325 = icmp eq i32 %r326, 0
  br i1 %r325, label %b5489, label %b5494

b5501:
  call void @func_b1988(i32 %r281)
  %r333 = inttoptr i32 %r285 to i8*
  %r334 = load i8, i8* %r333
  %r332 = zext i8 %r334 to i32
  %r331 = icmp eq i32 %r332, 0
  br i1 %r331, label %b5489, label %b5494

b5658:
  %r339 = phi i32 [%r216, %b5652], [%r344, %b5706], [%r344, %b5712]
  %r343 = phi i32 [%r291, %b5652], [%r342, %b5706], [%r342, %b5712]
  %r341 = phi i32 [%r292, %b5652], [%r340, %b5706], [%r340, %b5712]
  call void @func_b5284(i32 %r339)
  %r337 = inttoptr i32 ptrtoint(i8* @str50 to i32) to i8*
  %r338 = load i8, i8* %r337
  %r336 = zext i8 %r338 to i32
  %r335 = icmp eq i32 %r336, 0
  br i1 %r335, label %b5694, label %b5695

b5704:
  %r345 = add i32 ptrtoint(i8* @str49 to i32), 1
  br label %b5705

b5854:
  %r350 = phi i32 [%r251, %b5861], [%r251, %b5875]
  %r348 = inttoptr i32 %r350 to i8*
  %r349 = load i8, i8* %r348
  %r347 = zext i8 %r349 to i32
  %r346 = icmp eq i32 %r347, 0
  br i1 %r346, label %b5837, label %b6469

b5872:
  %r352 = phi i32 [%r294, %b5861], [%r298, %b5875]
  %r356 = phi i32 [%r251, %b5861], [%r251, %b5875]
  %r355 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r354 = call i32 @inb(i32 1021)
  %r353 = and i32 %r354, 96
  call void @func_b1602(i32 %r353, i32 0, i32 %r352)
  %r351 = icmp eq i32 %r352, 10
  br i1 %r351, label %b5867, label %b5869

b5776:
  %r359 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r360 = load i8, i8* %r359
  %r358 = zext i8 %r360 to i32
  %r357 = icmp eq i32 %r358, 0
  br i1 %r357, label %b5753, label %b5787

b5790:
  %r365 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5150(i32 %r303, i32 %r365)
  %r363 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r364 = load i8, i8* %r363
  %r362 = zext i8 %r364 to i32
  %r361 = icmp eq i32 %r362, 0
  br i1 %r361, label %b5753, label %b5787

b5820:
  %r371 = call i32 @inb(i32 1021)
  %r370 = and i32 %r371, 96
  call void @func_b1602(i32 %r370, i32 0, i32 13)
  call void @func_b1988(i32 %r314)
  call void @func_b5804(i32 %r317, i32 %r318)
  %r369 = inttoptr i32 4096 to i32*
  %r367 = load i32, i32* %r369
  %r368 = inttoptr i32 %r367 to i32*
  %r235 = load i32, i32* %r368
  %r226 = add i32 %r367, 4
  %r366 = icmp eq i32 %r235, 0
  br i1 %r366, label %b5502, label %b5715

b5822:
  call void @func_b1988(i32 %r314)
  call void @func_b5804(i32 %r317, i32 %r318)
  %r375 = inttoptr i32 4096 to i32*
  %r373 = load i32, i32* %r375
  %r374 = inttoptr i32 %r373 to i32*
  %r234 = load i32, i32* %r374
  %r225 = add i32 %r373, 4
  %r372 = icmp eq i32 %r234, 0
  br i1 %r372, label %b5502, label %b5715

b5494:
  %r286 = phi i32 [%r326, %b5499], [%r332, %b5501]
  %r376 = phi i32 [%r285, %b5499], [%r285, %b5501]
  %r284 = add i32 %r376, 1
  br label %b5496

b5694:
  %r378 = phi i32 [%r343, %b5658], [%r384, %b5697], [%r384, %b5703]
  %r383 = phi i32 [%r341, %b5658], [%r382, %b5697], [%r382, %b5703]
  %r381 = phi i32 [12, %b5658], [12, %b5697], [12, %b5703]
  %r380 = phi i32 [%r339, %b5658], [%r379, %b5697], [%r379, %b5703]
  %r377 = icmp eq i32 %r378, 0
  br i1 %r377, label %b5515, label %b6467

b5695:
  %r385 = add i32 ptrtoint(i8* @str50 to i32), 1
  br label %b5696

b5705:
  %r387 = phi i32 [%r288, %b5704], [%r395, %b5711]
  %r394 = phi i32 [%r345, %b5704], [%r393, %b5711]
  %r344 = phi i32 [%r216, %b5704], [%r392, %b5711]
  %r342 = phi i32 [%r291, %b5704], [%r391, %b5711]
  %r340 = phi i32 [%r292, %b5704], [%r390, %b5711]
  %r389 = call i32 @inb(i32 1021)
  %r388 = and i32 %r389, 96
  call void @func_b1602(i32 %r388, i32 0, i32 %r387)
  %r386 = icmp eq i32 %r387, 10
  br i1 %r386, label %b5706, label %b5712

b5837:
  %r401 = phi i32 [%r350, %b5854], [%r400, %b5850]
  %r398 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r399 = load i8, i8* %r398
  %r397 = zext i8 %r399 to i32
  %r396 = icmp eq i32 %r397, 0
  br i1 %r396, label %b3627, label %b5839

b6469:
  %r402 = add i32 %r350, 1
  br label %b5850

b5867:
  %r408 = call i32 @inb(i32 1021)
  %r407 = and i32 %r408, 96
  call void @func_b1602(i32 %r407, i32 0, i32 13)
  call void @func_b1988(i32 %r352)
  call void @func_b5766(i32 %r355, i32 %r356)
  %r406 = inttoptr i32 4108 to i32*
  %r311 = load i32, i32* %r406
  %r404 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r405 = load i8, i8* %r404
  %r324 = zext i8 %r405 to i32
  %r403 = icmp eq i32 %r324, 0
  br i1 %r403, label %b5788, label %b5893

b5869:
  call void @func_b1988(i32 %r352)
  call void @func_b5766(i32 %r355, i32 %r356)
  %r412 = inttoptr i32 4108 to i32*
  %r310 = load i32, i32* %r412
  %r410 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r411 = load i8, i8* %r410
  %r323 = zext i8 %r411 to i32
  %r409 = icmp eq i32 %r323, 0
  br i1 %r409, label %b5788, label %b5893

b5753:
  %r417 = phi i32 [%r312, %b5776], [%r312, %b5790]
  %r415 = inttoptr i32 %r417 to i8*
  %r416 = load i8, i8* %r415
  %r414 = zext i8 %r416 to i32
  %r413 = icmp eq i32 %r414, 0
  br i1 %r413, label %b5736, label %b6468

b5787:
  %r419 = phi i32 [%r358, %b5776], [%r362, %b5790]
  %r423 = phi i32 [%r312, %b5776], [%r312, %b5790]
  %r422 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r421 = call i32 @inb(i32 1021)
  %r420 = and i32 %r421, 96
  call void @func_b1602(i32 %r420, i32 0, i32 %r419)
  %r418 = icmp eq i32 %r419, 10
  br i1 %r418, label %b5782, label %b5784

b5515:
  %r426 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r427 = load i8, i8* %r426
  %r425 = zext i8 %r427 to i32
  %r424 = icmp eq i32 %r425, 0
  br i1 %r424, label %b5489, label %b5517

b6467:
  %r433 = add i32 %r383, %r381
  %r432 = add i32 %r378, -1
  %r430 = inttoptr i32 ptrtoint(i8* @str51 to i32) to i8*
  %r431 = load i8, i8* %r430
  %r429 = zext i8 %r431 to i32
  %r428 = icmp eq i32 %r429, 0
  br i1 %r428, label %b6937, label %b6938

b5696:
  %r435 = phi i32 [%r336, %b5695], [%r443, %b5702]
  %r442 = phi i32 [%r385, %b5695], [%r441, %b5702]
  %r379 = phi i32 [%r339, %b5695], [%r440, %b5702]
  %r384 = phi i32 [%r343, %b5695], [%r439, %b5702]
  %r382 = phi i32 [%r341, %b5695], [%r438, %b5702]
  %r437 = call i32 @inb(i32 1021)
  %r436 = and i32 %r437, 96
  call void @func_b1602(i32 %r436, i32 0, i32 %r435)
  %r434 = icmp eq i32 %r435, 10
  br i1 %r434, label %b5697, label %b5703

b5706:
  %r449 = call i32 @inb(i32 1021)
  %r448 = and i32 %r449, 96
  call void @func_b1602(i32 %r448, i32 0, i32 13)
  call void @func_b1988(i32 %r387)
  %r446 = inttoptr i32 %r394 to i8*
  %r447 = load i8, i8* %r446
  %r445 = zext i8 %r447 to i32
  %r444 = icmp eq i32 %r445, 0
  br i1 %r444, label %b5658, label %b5711

b5712:
  call void @func_b1988(i32 %r387)
  %r452 = inttoptr i32 %r394 to i8*
  %r453 = load i8, i8* %r452
  %r451 = zext i8 %r453 to i32
  %r450 = icmp eq i32 %r451, 0
  br i1 %r450, label %b5658, label %b5711

b3627:
  %r461 = and i32 %r401, 15
  %r459 = call i32 @func_b1638(i32 %r461, i32 9)
  %r458 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r460 = trunc i32 %r459 to i8
  store i8 %r460, i8* %r458
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r401, i32 32)
  %r456 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r457 = load i8, i8* %r456
  %r455 = zext i8 %r457 to i32
  %r454 = icmp eq i32 %r455, 0
  br i1 %r454, label %b3628, label %b5828

b5839:
  %r465 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r464 = call i32 @inb(i32 1021)
  %r463 = and i32 %r464, 96
  call void @func_b1602(i32 %r463, i32 0, i32 %r397)
  %r462 = icmp eq i32 %r397, 10
  br i1 %r462, label %b5843, label %b5845

b5850:
  %r471 = phi i32 [%r347, %b6469], [%r467, %b5848]
  %r470 = phi i32 [%r402, %b6469], [%r472, %b5848]
  %r400 = phi i32 [%r350, %b6469], [%r400, %b5848]
  call void @func_b1997(i32 %r471)
  %r468 = inttoptr i32 %r470 to i8*
  %r469 = load i8, i8* %r468
  %r467 = zext i8 %r469 to i32
  %r466 = icmp eq i32 %r467, 0
  br i1 %r466, label %b5837, label %b5848

b5736:
  %r478 = phi i32 [%r417, %b5753], [%r477, %b5749]
  %r475 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r476 = load i8, i8* %r475
  %r474 = zext i8 %r476 to i32
  %r473 = icmp eq i32 %r474, 0
  br i1 %r473, label %b3633, label %b5738

b6468:
  %r479 = add i32 %r417, 1
  br label %b5749

b5782:
  %r485 = call i32 @inb(i32 1021)
  %r484 = and i32 %r485, 96
  call void @func_b1602(i32 %r484, i32 0, i32 13)
  call void @func_b1988(i32 %r419)
  call void @func_b5766(i32 %r422, i32 %r423)
  %r483 = inttoptr i32 4096 to i32*
  %r481 = load i32, i32* %r483
  %r482 = inttoptr i32 %r481 to i32*
  %r233 = load i32, i32* %r482
  %r224 = add i32 %r481, 4
  %r480 = icmp eq i32 %r233, 0
  br i1 %r480, label %b5502, label %b5715

b5784:
  call void @func_b1988(i32 %r419)
  call void @func_b5766(i32 %r422, i32 %r423)
  %r489 = inttoptr i32 4096 to i32*
  %r487 = load i32, i32* %r489
  %r488 = inttoptr i32 %r487 to i32*
  %r232 = load i32, i32* %r488
  %r223 = add i32 %r487, 4
  %r486 = icmp eq i32 %r232, 0
  br i1 %r486, label %b5502, label %b5715

b5517:
  %r490 = add i32 ptrtoint(i8* @str53 to i32), 1
  br label %b5509

b6937:
  %r495 = phi i32 [%r383, %b6467], [%r509, %b6988], [%r508, %b6989]
  %r507 = phi i32 [%r432, %b6467], [%r506, %b6988], [%r505, %b6989]
  %r504 = phi i32 [%r433, %b6467], [%r503, %b6988], [%r502, %b6989]
  %r501 = phi i32 [%r380, %b6467], [%r500, %b6988], [%r499, %b6989]
  %r498 = phi i32 [%r378, %b6467], [%r497, %b6988], [%r496, %b6989]
  call void @func_b5284(i32 %r495)
  %r493 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r494 = load i8, i8* %r493
  %r492 = zext i8 %r494 to i32
  %r491 = icmp eq i32 %r492, 0
  br i1 %r491, label %b6969, label %b6970

b6938:
  %r513 = add i32 ptrtoint(i8* @str51 to i32), 1
  %r512 = call i32 @inb(i32 1021)
  %r511 = and i32 %r512, 96
  call void @func_b1602(i32 %r511, i32 0, i32 %r429)
  %r510 = icmp eq i32 %r429, 10
  br i1 %r510, label %b6988, label %b6989

b5697:
  %r519 = call i32 @inb(i32 1021)
  %r518 = and i32 %r519, 96
  call void @func_b1602(i32 %r518, i32 0, i32 13)
  call void @func_b1988(i32 %r435)
  %r516 = inttoptr i32 %r442 to i8*
  %r517 = load i8, i8* %r516
  %r515 = zext i8 %r517 to i32
  %r514 = icmp eq i32 %r515, 0
  br i1 %r514, label %b5694, label %b5702

b5703:
  call void @func_b1988(i32 %r435)
  %r522 = inttoptr i32 %r442 to i8*
  %r523 = load i8, i8* %r522
  %r521 = zext i8 %r523 to i32
  %r520 = icmp eq i32 %r521, 0
  br i1 %r520, label %b5694, label %b5702

b5711:
  %r395 = phi i32 [%r445, %b5706], [%r451, %b5712]
  %r524 = phi i32 [%r394, %b5706], [%r394, %b5712]
  %r392 = phi i32 [%r344, %b5706], [%r344, %b5712]
  %r391 = phi i32 [%r342, %b5706], [%r342, %b5712]
  %r390 = phi i32 [%r340, %b5706], [%r340, %b5712]
  %r393 = add i32 %r524, 1
  br label %b5705

b3628:
  %r528 = inttoptr i32 4108 to i32*
  %r309 = load i32, i32* %r528
  %r526 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r527 = load i8, i8* %r526
  %r322 = zext i8 %r527 to i32
  %r525 = icmp eq i32 %r322, 0
  br i1 %r525, label %b5788, label %b5893

b5828:
  %r533 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5150(i32 %r455, i32 %r533)
  %r532 = inttoptr i32 4108 to i32*
  %r308 = load i32, i32* %r532
  %r530 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r531 = load i8, i8* %r530
  %r321 = zext i8 %r531 to i32
  %r529 = icmp eq i32 %r321, 0
  br i1 %r529, label %b5788, label %b5893

b5843:
  %r539 = call i32 @inb(i32 1021)
  %r538 = and i32 %r539, 96
  call void @func_b1602(i32 %r538, i32 0, i32 13)
  call void @func_b1988(i32 %r397)
  call void @func_b5726(i32 %r465, i32 %r401)
  %r537 = inttoptr i32 4108 to i32*
  %r307 = load i32, i32* %r537
  %r535 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r536 = load i8, i8* %r535
  %r320 = zext i8 %r536 to i32
  %r534 = icmp eq i32 %r320, 0
  br i1 %r534, label %b5788, label %b5893

b5845:
  call void @func_b1988(i32 %r397)
  call void @func_b5726(i32 %r465, i32 %r401)
  %r543 = inttoptr i32 4108 to i32*
  %r306 = load i32, i32* %r543
  %r541 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r542 = load i8, i8* %r541
  %r319 = zext i8 %r542 to i32
  %r540 = icmp eq i32 %r319, 0
  br i1 %r540, label %b5788, label %b5893

b5848:
  %r472 = add i32 %r470, 1
  br label %b5850

b3633:
  %r551 = and i32 %r478, 15
  %r549 = call i32 @func_b1638(i32 %r551, i32 9)
  %r548 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r550 = trunc i32 %r549 to i8
  store i8 %r550, i8* %r548
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r478, i32 32)
  %r546 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r547 = load i8, i8* %r546
  %r545 = zext i8 %r547 to i32
  %r544 = icmp eq i32 %r545, 0
  br i1 %r544, label %b3459, label %b5720

b5738:
  %r555 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r554 = call i32 @inb(i32 1021)
  %r553 = and i32 %r554, 96
  call void @func_b1602(i32 %r553, i32 0, i32 %r474)
  %r552 = icmp eq i32 %r474, 10
  br i1 %r552, label %b5742, label %b5744

b5749:
  %r561 = phi i32 [%r414, %b6468], [%r557, %b5747]
  %r560 = phi i32 [%r479, %b6468], [%r562, %b5747]
  %r477 = phi i32 [%r417, %b6468], [%r477, %b5747]
  call void @func_b1997(i32 %r561)
  %r558 = inttoptr i32 %r560 to i8*
  %r559 = load i8, i8* %r558
  %r557 = zext i8 %r559 to i32
  %r556 = icmp eq i32 %r557, 0
  br i1 %r556, label %b5736, label %b5747

b5509:
  %r564 = phi i32 [%r425, %b5517], [%r569, %b5507]
  %r568 = phi i32 [%r490, %b5517], [%r567, %b5507]
  %r566 = call i32 @inb(i32 1021)
  %r565 = and i32 %r566, 96
  call void @func_b1602(i32 %r565, i32 0, i32 %r564)
  %r563 = icmp eq i32 %r564, 10
  br i1 %r563, label %b5512, label %b5514

b6969:
  %r577 = phi i32 [%r501, %b6937], [%r585, %b6997], [%r584, %b6998]
  %r583 = phi i32 [%r498, %b6937], [%r582, %b6997], [%r581, %b6998]
  %r580 = phi i32 [%r495, %b6937], [%r579, %b6997], [%r578, %b6998]
  %r576 = add i32 %r577, 8
  %r575 = inttoptr i32 %r576 to i32*
  %r574 = load i32, i32* %r575
  %r572 = inttoptr i32 ptrtoint(i8* @str55 to i32) to i8*
  %r573 = load i8, i8* %r572
  %r571 = zext i8 %r573 to i32
  %r570 = icmp eq i32 %r571, 0
  br i1 %r570, label %b2873, label %b5577

b6970:
  %r589 = add i32 ptrtoint(i8* @str52 to i32), 1
  %r588 = call i32 @inb(i32 1021)
  %r587 = and i32 %r588, 96
  call void @func_b1602(i32 %r587, i32 0, i32 %r492)
  %r586 = icmp eq i32 %r492, 10
  br i1 %r586, label %b6997, label %b6998

b6988:
  %r595 = phi i32 [%r429, %b6938], [%r604, %b6996]
  %r594 = phi i32 [%r513, %b6938], [%r603, %b6996]
  %r500 = phi i32 [%r380, %b6938], [%r602, %b6996]
  %r497 = phi i32 [%r378, %b6938], [%r601, %b6996]
  %r509 = phi i32 [%r383, %b6938], [%r600, %b6996]
  %r506 = phi i32 [%r432, %b6938], [%r599, %b6996]
  %r503 = phi i32 [%r433, %b6938], [%r598, %b6996]
  %r597 = call i32 @inb(i32 1021)
  %r596 = and i32 %r597, 96
  call void @func_b1602(i32 %r596, i32 0, i32 13)
  call void @func_b1988(i32 %r595)
  %r592 = inttoptr i32 %r594 to i8*
  %r593 = load i8, i8* %r592
  %r591 = zext i8 %r593 to i32
  %r590 = icmp eq i32 %r591, 0
  br i1 %r590, label %b6937, label %b6996

b6989:
  %r610 = phi i32 [%r429, %b6938], [%r604, %b6996]
  %r609 = phi i32 [%r513, %b6938], [%r603, %b6996]
  %r499 = phi i32 [%r380, %b6938], [%r602, %b6996]
  %r496 = phi i32 [%r378, %b6938], [%r601, %b6996]
  %r508 = phi i32 [%r383, %b6938], [%r600, %b6996]
  %r505 = phi i32 [%r432, %b6938], [%r599, %b6996]
  %r502 = phi i32 [%r433, %b6938], [%r598, %b6996]
  call void @func_b1988(i32 %r610)
  %r607 = inttoptr i32 %r609 to i8*
  %r608 = load i8, i8* %r607
  %r606 = zext i8 %r608 to i32
  %r605 = icmp eq i32 %r606, 0
  br i1 %r605, label %b6937, label %b6996

b5702:
  %r443 = phi i32 [%r515, %b5697], [%r521, %b5703]
  %r611 = phi i32 [%r442, %b5697], [%r442, %b5703]
  %r440 = phi i32 [%r379, %b5697], [%r379, %b5703]
  %r439 = phi i32 [%r384, %b5697], [%r384, %b5703]
  %r438 = phi i32 [%r382, %b5697], [%r382, %b5703]
  %r441 = add i32 %r611, 1
  br label %b5696

b3459:
  %r615 = inttoptr i32 4096 to i32*
  %r613 = load i32, i32* %r615
  %r614 = inttoptr i32 %r613 to i32*
  %r231 = load i32, i32* %r614
  %r222 = add i32 %r613, 4
  %r612 = icmp eq i32 %r231, 0
  br i1 %r612, label %b5502, label %b5715

b5720:
  %r620 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5150(i32 %r545, i32 %r620)
  %r619 = inttoptr i32 4096 to i32*
  %r617 = load i32, i32* %r619
  %r618 = inttoptr i32 %r617 to i32*
  %r230 = load i32, i32* %r618
  %r221 = add i32 %r617, 4
  %r616 = icmp eq i32 %r230, 0
  br i1 %r616, label %b5502, label %b5715

b5742:
  %r626 = call i32 @inb(i32 1021)
  %r625 = and i32 %r626, 96
  call void @func_b1602(i32 %r625, i32 0, i32 13)
  call void @func_b1988(i32 %r474)
  call void @func_b5726(i32 %r555, i32 %r478)
  %r624 = inttoptr i32 4096 to i32*
  %r622 = load i32, i32* %r624
  %r623 = inttoptr i32 %r622 to i32*
  %r229 = load i32, i32* %r623
  %r220 = add i32 %r622, 4
  %r621 = icmp eq i32 %r229, 0
  br i1 %r621, label %b5502, label %b5715

b5744:
  call void @func_b1988(i32 %r474)
  call void @func_b5726(i32 %r555, i32 %r478)
  %r630 = inttoptr i32 4096 to i32*
  %r628 = load i32, i32* %r630
  %r629 = inttoptr i32 %r628 to i32*
  %r228 = load i32, i32* %r629
  %r219 = add i32 %r628, 4
  %r627 = icmp eq i32 %r228, 0
  br i1 %r627, label %b5502, label %b5715

b5747:
  %r562 = add i32 %r560, 1
  br label %b5749

b5512:
  %r636 = call i32 @inb(i32 1021)
  %r635 = and i32 %r636, 96
  call void @func_b1602(i32 %r635, i32 0, i32 13)
  call void @func_b1988(i32 %r564)
  %r633 = inttoptr i32 %r568 to i8*
  %r634 = load i8, i8* %r633
  %r632 = zext i8 %r634 to i32
  %r631 = icmp eq i32 %r632, 0
  br i1 %r631, label %b5489, label %b5507

b5514:
  call void @func_b1988(i32 %r564)
  %r639 = inttoptr i32 %r568 to i8*
  %r640 = load i8, i8* %r639
  %r638 = zext i8 %r640 to i32
  %r637 = icmp eq i32 %r638, 0
  br i1 %r637, label %b5489, label %b5507

b2873:
  %r648 = and i32 %r574, 15
  %r646 = call i32 @func_b1638(i32 %r648, i32 9)
  %r645 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r647 = trunc i32 %r646 to i8
  store i8 %r647, i8* %r645
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r574, i32 32)
  %r643 = inttoptr i32 ptrtoint(i8* @str56 to i32) to i8*
  %r644 = load i8, i8* %r643
  %r642 = zext i8 %r644 to i32
  %r641 = icmp eq i32 %r642, 0
  br i1 %r641, label %b6935, label %b6936

b5577:
  %r656 = add i32 ptrtoint(i8* @str55 to i32), 1
  call void @func_b5571(i32 %r571, i32 %r656, i32 %r574)
  %r655 = add i32 %r580, 8
  %r654 = inttoptr i32 %r655 to i32*
  %r653 = load i32, i32* %r654
  %r651 = inttoptr i32 ptrtoint(i8* @str55 to i32) to i8*
  %r652 = load i8, i8* %r651
  %r650 = zext i8 %r652 to i32
  %r649 = icmp eq i32 %r650, 0
  br i1 %r649, label %b2861, label %b5574

b6997:
  %r662 = phi i32 [%r492, %b6970], [%r669, %b7001]
  %r661 = phi i32 [%r589, %b6970], [%r668, %b7001]
  %r579 = phi i32 [%r495, %b6970], [%r667, %b7001]
  %r585 = phi i32 [%r501, %b6970], [%r666, %b7001]
  %r582 = phi i32 [%r498, %b6970], [%r665, %b7001]
  %r664 = call i32 @inb(i32 1021)
  %r663 = and i32 %r664, 96
  call void @func_b1602(i32 %r663, i32 0, i32 13)
  call void @func_b1988(i32 %r662)
  %r659 = inttoptr i32 %r661 to i8*
  %r660 = load i8, i8* %r659
  %r658 = zext i8 %r660 to i32
  %r657 = icmp eq i32 %r658, 0
  br i1 %r657, label %b6969, label %b7001

b6998:
  %r675 = phi i32 [%r492, %b6970], [%r669, %b7001]
  %r674 = phi i32 [%r589, %b6970], [%r668, %b7001]
  %r578 = phi i32 [%r495, %b6970], [%r667, %b7001]
  %r584 = phi i32 [%r501, %b6970], [%r666, %b7001]
  %r581 = phi i32 [%r498, %b6970], [%r665, %b7001]
  call void @func_b1988(i32 %r675)
  %r672 = inttoptr i32 %r674 to i8*
  %r673 = load i8, i8* %r672
  %r671 = zext i8 %r673 to i32
  %r670 = icmp eq i32 %r671, 0
  br i1 %r670, label %b6969, label %b7001

b6996:
  %r604 = phi i32 [%r591, %b6988], [%r606, %b6989]
  %r679 = phi i32 [%r594, %b6988], [%r609, %b6989]
  %r602 = phi i32 [%r500, %b6988], [%r499, %b6989]
  %r601 = phi i32 [%r497, %b6988], [%r496, %b6989]
  %r600 = phi i32 [%r509, %b6988], [%r508, %b6989]
  %r599 = phi i32 [%r506, %b6988], [%r505, %b6989]
  %r598 = phi i32 [%r503, %b6988], [%r502, %b6989]
  %r603 = add i32 %r679, 1
  %r678 = call i32 @inb(i32 1021)
  %r677 = and i32 %r678, 96
  call void @func_b1602(i32 %r677, i32 0, i32 %r604)
  %r676 = icmp eq i32 %r604, 10
  br i1 %r676, label %b6988, label %b6989

b5507:
  %r569 = phi i32 [%r632, %b5512], [%r638, %b5514]
  %r680 = phi i32 [%r568, %b5512], [%r568, %b5514]
  %r567 = add i32 %r680, 1
  br label %b5509

b6935:
  %r689 = add i32 ptrtoint(i8* @users to i32), 52
  %r688 = inttoptr i32 %r689 to i32*
  store i32 %r574, i32* %r688
  %r687 = add i32 %r580, 8
  %r686 = inttoptr i32 %r687 to i32*
  %r685 = load i32, i32* %r686
  %r683 = inttoptr i32 ptrtoint(i8* @str55 to i32) to i8*
  %r684 = load i8, i8* %r683
  %r682 = zext i8 %r684 to i32
  %r681 = icmp eq i32 %r682, 0
  br i1 %r681, label %b2861, label %b5574

b6936:
  %r697 = add i32 ptrtoint(i8* @str56 to i32), 1
  call void @func_b5522(i32 %r642, i32 %r697, i32 %r574)
  %r696 = add i32 %r580, 8
  %r695 = inttoptr i32 %r696 to i32*
  %r694 = load i32, i32* %r695
  %r692 = inttoptr i32 ptrtoint(i8* @str55 to i32) to i8*
  %r693 = load i8, i8* %r692
  %r691 = zext i8 %r693 to i32
  %r690 = icmp eq i32 %r691, 0
  br i1 %r690, label %b2861, label %b5574

b2861:
  %r702 = phi i32 [%r653, %b5577], [%r685, %b6935], [%r694, %b6936]
  %r706 = and i32 %r702, 15
  %r704 = call i32 @func_b1638(i32 %r706, i32 9)
  %r703 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r705 = trunc i32 %r704 to i8
  store i8 %r705, i8* %r703
  call void @func_b6647(i32 1, i32 0, i32 31, i32 %r702, i32 32)
  %r700 = inttoptr i32 ptrtoint(i8* @str56 to i32) to i8*
  %r701 = load i8, i8* %r700
  %r699 = zext i8 %r701 to i32
  %r698 = icmp eq i32 %r699, 0
  br i1 %r698, label %b6932, label %b6933

b5574:
  %r707 = phi i32 [%r650, %b5577], [%r682, %b6935], [%r691, %b6936]
  %r709 = phi i32 [%r653, %b5577], [%r685, %b6935], [%r694, %b6936]
  %r708 = add i32 ptrtoint(i8* @str55 to i32), 1
  call void @func_b5553(i32 %r707, i32 %r708, i32 %r709)
  br label %b2615

b7001:
  %r669 = phi i32 [%r658, %b6997], [%r671, %b6998]
  %r713 = phi i32 [%r661, %b6997], [%r674, %b6998]
  %r667 = phi i32 [%r579, %b6997], [%r578, %b6998]
  %r666 = phi i32 [%r585, %b6997], [%r584, %b6998]
  %r665 = phi i32 [%r582, %b6997], [%r581, %b6998]
  %r668 = add i32 %r713, 1
  %r712 = call i32 @inb(i32 1021)
  %r711 = and i32 %r712, 96
  call void @func_b1602(i32 %r711, i32 0, i32 %r669)
  %r710 = icmp eq i32 %r669, 10
  br i1 %r710, label %b6997, label %b6998

b6932:
  %r715 = add i32 ptrtoint(i8* @users to i32), 124
  %r714 = inttoptr i32 %r715 to i32*
  store i32 %r702, i32* %r714
  br label %b2615

b6933:
  %r716 = add i32 ptrtoint(i8* @str56 to i32), 1
  call void @func_b5532(i32 %r699, i32 %r716, i32 %r702)
  br label %b2615

b2615:
  %r729 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r729
  call void @outb(i32 32, i32 17)
  call void @outb(i32 33, i32 32)
  call void @outb(i32 33, i32 4)
  call void @outb(i32 33, i32 1)
  call void @outb(i32 33, i32 251)
  call void @outb(i32 160, i32 17)
  call void @outb(i32 161, i32 40)
  call void @outb(i32 161, i32 2)
  call void @outb(i32 161, i32 1)
  call void @outb(i32 161, i32 255)
  call void @outb(i32 67, i32 52)
  call void @outb(i32 64, i32 156)
  call void @outb(i32 64, i32 46)
  %r728 = call i32 @inb(i32 33)
  %r727 = and i32 %r728, -2
  call void @outb(i32 33, i32 %r727)
  %r726 = call i32 @inb(i32 33)
  %r725 = and i32 %r726, -3
  call void @outb(i32 33, i32 %r725)
  %r724 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r723 = load i1, i1* %r724
  %r722 = zext i1 %r723 to i32
  %r721 = mul i32 %r722, 72
  %r720 = add i32 ptrtoint(i8* @users to i32), %r721
  call void @returnTo(i32 %r720)
  %r718 = inttoptr i32 ptrtoint(i8* @str48 to i32) to i8*
  %r719 = load i8, i8* %r718
  %r278 = zext i8 %r719 to i32
  %r717 = icmp eq i32 %r278, 0
  br i1 %r717, label %b303, label %b5491
}

