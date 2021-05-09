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

@raw.6 = internal global [16 x i8] zeroinitializer, align 4

@ball = internal alias i8, i8* bitcast([16 x i8]* @raw.6 to i8*)

@str.7 = private unnamed_addr constant [9 x i8] c"nothing\0a\00"

@str0 = internal alias i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @str.7, i32 0, i32 0)

@raw.8 = internal global [16 x i8] zeroinitializer, align 4

@paddle = internal alias i8, i8* bitcast([16 x i8]* @raw.8 to i8*)

@raw.9 = internal global [4 x i8] zeroinitializer, align 1

@spinner = internal alias i8, i8* bitcast([4 x i8]* @raw.9 to i8*)

@raw.10 = internal global [1 x i8] zeroinitializer, align 1

@spinpos = internal alias i8, i8* bitcast([1 x i8]* @raw.10 to i8*)

@raw.11 = internal global [1 x i8] zeroinitializer, align 1

@pos = internal alias i8, i8* bitcast([1 x i8]* @raw.11 to i8*)

@raw.12 = internal global [1 x i8] zeroinitializer, align 1

@dir = internal alias i8, i8* bitcast([1 x i8]* @raw.12 to i8*)

@str.13 = private unnamed_addr constant [13 x i8] c"Exception 0x\00"

@str55 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.13, i32 0, i32 0)

@raw.14 = internal global [32 x i8] zeroinitializer, align 1

@itoaBuf = internal alias i8, i8* bitcast([32 x i8]* @raw.14 to i8*)

@str.15 = private unnamed_addr constant [11 x i8] c", frame=0x\00"

@str56 = internal alias i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.15, i32 0, i32 0)

@str.16 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str57 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.16, i32 0, i32 0)

@str.17 = private unnamed_addr constant [19 x i8] c" Last key pressed:\00"

@str45 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.17, i32 0, i32 0)

@str.18 = private unnamed_addr constant [10 x i8] c"Headers:\0a\00"

@str11 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.18, i32 0, i32 0)

@str.19 = private unnamed_addr constant [2 x i8] c" \00"

@str1 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.19, i32 0, i32 0)

@str.20 = private unnamed_addr constant [7 x i8] c"header\00"

@str12 = internal alias i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.20, i32 0, i32 0)

@str.21 = private unnamed_addr constant [2 x i8] c"[\00"

@str2 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.21, i32 0, i32 0)

@str.22 = private unnamed_addr constant [4 x i8] c"]: \00"

@str3 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.22, i32 0, i32 0)

@str.23 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str5 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.23, i32 0, i32 0)

@str.24 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str6 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.24, i32 0, i32 0)

@str.25 = private unnamed_addr constant [12 x i8] c"], entry 0x\00"

@str7 = internal alias i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.25, i32 0, i32 0)

@str.26 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str4 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.26, i32 0, i32 0)

@str.27 = private unnamed_addr constant [13 x i8] c"Memory map:\0a\00"

@str13 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.27, i32 0, i32 0)

@str.28 = private unnamed_addr constant [5 x i8] c"mmap\00"

@str14 = internal alias i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str.28, i32 0, i32 0)

@str.29 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str8 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.29, i32 0, i32 0)

@str.30 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str9 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.30, i32 0, i32 0)

@str.31 = private unnamed_addr constant [2 x i8] c"]\00"

@str10 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.31, i32 0, i32 0)

@str.32 = private unnamed_addr constant [10 x i8] c"Strings:\0a\00"

@str15 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.32, i32 0, i32 0)

@str.33 = private unnamed_addr constant [2 x i8] c" \00"

@str18 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.33, i32 0, i32 0)

@str.34 = private unnamed_addr constant [8 x i8] c"cmdline\00"

@str16 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.34, i32 0, i32 0)

@str.35 = private unnamed_addr constant [3 x i8] c": \00"

@str19 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.35, i32 0, i32 0)

@str.36 = private unnamed_addr constant [3 x i8] c" [\00"

@str20 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.36, i32 0, i32 0)

@str.37 = private unnamed_addr constant [3 x i8] c"]\0a\00"

@str21 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.37, i32 0, i32 0)

@str.38 = private unnamed_addr constant [8 x i8] c"imgline\00"

@str17 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.38, i32 0, i32 0)

@str.39 = private unnamed_addr constant [33 x i8] c"Did not find first user program\0a\00"

@str52 = internal alias i8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.39, i32 0, i32 0)

@str.40 = private unnamed_addr constant [40 x i8] c"\0aHalting kernel, returning to mimgload\0a\00"

@str46 = internal alias i8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.40, i32 0, i32 0)

@str.41 = private unnamed_addr constant [38 x i8] c"Found header for first user program:\0a\00"

@str47 = internal alias i8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.41, i32 0, i32 0)

@str.42 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str48 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.42, i32 0, i32 0)

@str.43 = private unnamed_addr constant [39 x i8] c"Found header for second user program:\0a\00"

@str49 = internal alias i8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.43, i32 0, i32 0)

@str.44 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str50 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.44, i32 0, i32 0)

@str.45 = private unnamed_addr constant [19 x i8] c"user code is at 0x\00"

@str53 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.45, i32 0, i32 0)

@str.46 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str54 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.46, i32 0, i32 0)

@str.47 = private unnamed_addr constant [34 x i8] c"Did not find second user program\0a\00"

@str51 = internal alias i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.47, i32 0, i32 0)

declare void @returnTo(i32)

define void @yield() {
  br label %yield

yield:
  br label %b1116

b1116:
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

define internal void @func_b1309(i32 %r0, i32 %r1, i32 %r2) {
  br label %b1309

b1309:
  %r4 = phi i32 [%r0, %0], [%r7, %b258]
  %r5 = phi i32 [%r1, %0], [0, %b258]
  %r6 = phi i32 [%r2, %0], [%r6, %b258]
  %r3 = icmp eq i32 %r4, %r5
  br i1 %r3, label %b258, label %b2873

b258:
  %r8 = call i32 @inb(i32 1021)
  %r7 = and i32 %r8, 96
  br label %b1309

b2873:
  tail call void @outb(i32 1016, i32 %r6)
  ret void
}

define internal void @func_b1317(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1317

b1317:
  %r7 = phi i32 [%r0, %0], [%r5, %b1317]
  %r6 = phi i32 [%r1, %0], [%r6, %b1317]
  %r18 = phi i32 [%r2, %0], [%r18, %b1317]
  %r21 = phi i32 [%r3, %0], [%r21, %b1317]
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
  br i1 %r4, label %b1317, label %b303

b303:
  ret void
}

define internal void @func_b1580(i32 %r0) {
  br label %b1580

b1580:
  %r5 = add i32 ptrtoint(i8* @console to i32), 4
  %r3 = inttoptr i32 %r5 to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r0, 13
  br i1 %r1, label %b1582, label %b1585

b1582:
  %r9 = phi i32 [%r2, %b1580], [%r2, %b1585], [%r2, %b1587]
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
  br i1 %r6, label %b4345, label %b1584

b1585:
  %r20 = icmp eq i32 %r0, 10
  br i1 %r20, label %b1582, label %b1587

b4345:
  %r23 = add i32 ptrtoint(i8* @console to i32), 4
  %r21 = inttoptr i32 %r23 to i8*
  %r22 = trunc i32 %r7 to i8
  store i8 %r22, i8* %r21
  ret void

b1584:
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
  br i1 %r24, label %b4336, label %b1315

b1587:
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
  br i1 %r45, label %b4349, label %b1582

b4336:
  %r71 = phi i32 [%r25, %b1584], [%r69, %b4336]
  %r74 = phi i32 [%r27, %b1584], [%r71, %b4336]
  %r70 = phi i32 [%r26, %b1584], [%r70, %b4336]
  %r73 = phi i32 [%r32, %b1584], [%r73, %b4336]
  %r72 = phi i32 [%r39, %b1584], [%r72, %b4336]
  %r75 = phi i32 [%r28, %b1584], [%r75, %b4336]
  call void @func_b1317(i32 %r72, i32 %r73, i32 %r74, i32 %r71)
  %r69 = add i32 %r71, 1
  %r68 = icmp ule i32 %r69, %r70
  br i1 %r68, label %b4336, label %b1315

b1315:
  %r79 = phi i32 [%r39, %b1584], [%r72, %b4336], [%r77, %b1315]
  %r78 = phi i32 [%r32, %b1584], [%r73, %b4336], [%r78, %b1315]
  %r85 = phi i32 [%r28, %b1584], [%r75, %b4336], [%r85, %b1315]
  %r89 = phi i32 [%r26, %b1584], [%r70, %b4336], [%r89, %b1315]
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
  br i1 %r76, label %b1315, label %b303

b4349:
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
  call void @func_b1309(i32 %r2, i32 0, i32 %r1)
  %r0 = icmp eq i32 %r1, 10
  br i1 %r0, label %b1967, label %b1968

b1967:
  %r12 = call i32 @inb(i32 1021)
  %r11 = and i32 %r12, 96
  call void @func_b1309(i32 %r11, i32 0, i32 13)
  call void @func_b1580(i32 %r1)
  tail call void @returnTo(i32 %r6)
  ret void

b1968:
  call void @func_b1580(i32 %r1)
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
  br i1 %r0, label %b960, label %b959

b960:
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
  br i1 %r7, label %b957, label %b1116

b959:
  %r25 = lshr i32 %r2, 7
  %r24 = icmp eq i32 %r25, 1
  br i1 %r24, label %b957, label %b1116

b957:
  %r38 = phi i32 [%r2, %b960], [%r2, %b959]
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

b1116:
  %r43 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r42 = load i1, i1* %r43
  %r41 = zext i1 %r42 to i32
  %r40 = mul i32 %r41, 72
  %r39 = add i32 ptrtoint(i8* @users to i32), %r40
  tail call void @returnTo(i32 %r39)
  ret void
}

define internal i32 @func_b1345(i32 %r0, i32 %r1) {
  br label %b1345

b1345:
  %r2 = icmp ule i32 %r0, %r1
  br i1 %r2, label %b988, label %b989

b988:
  %r4 = add i32 %r0, 48
  %r3 = and i32 %r4, 255
  ret i32 %r3

b989:
  %r6 = add i32 %r0, 87
  %r5 = and i32 %r6, 255
  ret i32 %r5
}

define internal void @func_b1376(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1376

b1376:
  %r7 = phi i32 [%r0, %0], [%r5, %b1376]
  %r6 = phi i32 [%r1, %0], [%r6, %b1376]
  %r13 = phi i32 [%r2, %0], [%r13, %b1376]
  %r17 = phi i32 [%r3, %0], [%r17, %b1376]
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
  br i1 %r4, label %b1376, label %b303

b303:
  ret void
}

define internal void @func_b1074() {
  br label %b1074

b1074:
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
  br label %b1378

b1378:
  %r28 = phi i32 [%r17, %b1074], [%r26, %b1378]
  %r27 = phi i32 [%r8, %b1074], [%r27, %b1378]
  %r31 = phi i32 [%r0, %b1074], [%r31, %b1378]
  %r30 = phi i32 [%r4, %b1074], [%r30, %b1378]
  %r29 = phi i32 [%r13, %b1074], [%r29, %b1378]
  call void @func_b1376(i32 %r29, i32 %r30, i32 %r31, i32 %r28)
  %r26 = add i32 %r28, 1
  %r25 = icmp ule i32 %r26, %r27
  br i1 %r25, label %b1378, label %b303

b303:
  ret void
}

define internal i32 @func_b3274() {
  br label %b3274

b3274:
  %r2 = inttoptr i32 ptrtoint(i8* @str0 to i32) to i8*
  %r3 = load i8, i8* %r2
  %r1 = zext i8 %r3 to i32
  %r0 = icmp eq i32 %r1, 0
  br i1 %r0, label %b1484, label %b3276

b1484:
  ret i32 0

b3276:
  %r4 = add i32 ptrtoint(i8* @str0 to i32), 1
  br label %b3265

b3265:
  %r6 = phi i32 [%r1, %b3276], [%r11, %b3263]
  %r10 = phi i32 [%r4, %b3276], [%r9, %b3263]
  %r8 = call i32 @inb(i32 1021)
  %r7 = and i32 %r8, 96
  call void @func_b1309(i32 %r7, i32 0, i32 %r6)
  %r5 = icmp eq i32 %r6, 10
  br i1 %r5, label %b3268, label %b3270

b3268:
  %r17 = call i32 @inb(i32 1021)
  %r16 = and i32 %r17, 96
  call void @func_b1309(i32 %r16, i32 0, i32 13)
  call void @func_b1580(i32 %r6)
  %r14 = inttoptr i32 %r10 to i8*
  %r15 = load i8, i8* %r14
  %r13 = zext i8 %r15 to i32
  %r12 = icmp eq i32 %r13, 0
  br i1 %r12, label %b1484, label %b3263

b3270:
  call void @func_b1580(i32 %r6)
  %r20 = inttoptr i32 %r10 to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1484, label %b3263

b3263:
  %r11 = phi i32 [%r13, %b3268], [%r19, %b3270]
  %r22 = phi i32 [%r10, %b3268], [%r10, %b3270]
  %r9 = add i32 %r22, 1
  br label %b3265
}

define internal void @func_b1383(i32 %r0, i32 %r1, i32 %r2) {
  br label %b1383

b1383:
  %r6 = phi i32 [%r0, %0], [%r4, %b1383]
  %r5 = phi i32 [%r1, %0], [%r5, %b1383]
  %r13 = phi i32 [%r2, %0], [%r13, %b1383]
  %r11 = mul i32 %r13, 160
  %r12 = mul i32 %r6, 2
  %r10 = add i32 %r11, %r12
  %r9 = add i32 %r10, 753664
  %r7 = inttoptr i32 %r9 to i16*
  %r8 = trunc i32 28704 to i16
  store i16 %r8, i16* %r7
  %r4 = add i32 %r6, 1
  %r3 = icmp ule i32 %r4, %r5
  br i1 %r3, label %b1383, label %b303

b303:
  ret void
}

define internal void @func_b4212(i32 %r0, i32 %r1) {
  br label %b4212

b4212:
  %r2 = icmp ule i32 %r0, %r1
  br i1 %r2, label %b4404, label %b303

b4404:
  %r14 = add i32 ptrtoint(i8* @ball to i32), 12
  %r13 = inttoptr i32 %r14 to i32*
  %r12 = load i32, i32* %r13
  %r10 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r11 = load i8, i8* %r10
  %r6 = zext i8 %r11 to i32
  %r9 = add i32 ptrtoint(i8* @console to i32), 2
  %r7 = inttoptr i32 %r9 to i8*
  %r8 = load i8, i8* %r7
  %r5 = zext i8 %r8 to i32
  %r4 = sub i32 %r5, %r6
  %r3 = icmp ule i32 %r4, 24
  br i1 %r3, label %b4457, label %b4458

b303:
  ret void

b4457:
  %r15 = icmp ule i32 %r12, %r4
  br i1 %r15, label %b4465, label %b303

b4458:
  %r16 = icmp ule i32 %r12, 0
  br i1 %r16, label %b4464, label %b303

b4465:
  %r24 = inttoptr i32 ptrtoint(i8* @ball to i32) to i32*
  %r20 = load i32, i32* %r24
  %r23 = add i32 ptrtoint(i8* @ball to i32), 4
  %r22 = inttoptr i32 %r23 to i32*
  %r21 = load i32, i32* %r22
  %r19 = add i32 %r0, %r20
  %r18 = add i32 %r19, -1
  %r17 = icmp ule i32 %r18, %r1
  br i1 %r17, label %b4455, label %b4456

b4464:
  %r32 = inttoptr i32 ptrtoint(i8* @ball to i32) to i32*
  %r28 = load i32, i32* %r32
  %r31 = add i32 ptrtoint(i8* @ball to i32), 4
  %r30 = inttoptr i32 %r31 to i32*
  %r29 = load i32, i32* %r30
  %r27 = add i32 %r0, %r28
  %r26 = add i32 %r27, -1
  %r25 = icmp ule i32 %r26, %r1
  br i1 %r25, label %b4453, label %b4454

b4455:
  %r35 = add i32 %r12, %r21
  %r34 = add i32 %r35, -1
  %r33 = icmp ule i32 %r34, %r4
  br i1 %r33, label %b1385, label %g66

b4456:
  %r38 = add i32 %r12, %r21
  %r37 = add i32 %r38, -1
  %r36 = icmp ule i32 %r37, %r4
  br i1 %r36, label %b1385, label %g67

b4453:
  %r41 = add i32 %r12, %r29
  %r40 = add i32 %r41, -1
  %r39 = icmp ule i32 %r40, 0
  br i1 %r39, label %b1385, label %b1634

b4454:
  %r44 = add i32 %r12, %r29
  %r43 = add i32 %r44, -1
  %r42 = icmp ule i32 %r43, 0
  br i1 %r42, label %b1385, label %b1634

b1385:
  %r48 = phi i32 [%r12, %b4455], [%r12, %g66], [%r12, %b4456], [%r12, %g67], [%r12, %b4453], [%r12, %b4454], [%r46, %b1385]
  %r47 = phi i32 [%r34, %b4455], [%r4, %g66], [%r37, %b4456], [%r4, %g67], [%r40, %b4453], [%r43, %b4454], [%r47, %b1385]
  %r50 = phi i32 [%r18, %b4455], [%r18, %g66], [%r1, %b4456], [%r1, %g67], [%r26, %b4453], [%r1, %b4454], [%r50, %b1385]
  %r49 = phi i32 [%r0, %b4455], [%r0, %g66], [%r0, %b4456], [%r0, %g67], [%r0, %b4453], [%r0, %b4454], [%r49, %b1385]
  call void @func_b1383(i32 %r49, i32 %r50, i32 %r48)
  %r46 = add i32 %r48, 1
  %r45 = icmp ule i32 %r46, %r47
  br i1 %r45, label %b1385, label %b303

g66:
  br label %b1385

g67:
  br label %b1385

b1634:
  %r53 = phi i32 [%r12, %b4453], [%r12, %b4454], [%r52, %b1634]
  %r55 = phi i32 [%r26, %b4453], [%r1, %b4454], [%r55, %b1634]
  %r54 = phi i32 [%r0, %b4453], [%r0, %b4454], [%r54, %b1634]
  call void @func_b1383(i32 %r54, i32 %r55, i32 %r53)
  %r52 = add i32 %r53, 1
  %r51 = icmp ule i32 %r52, 0
  br i1 %r51, label %b1634, label %b303
}

define internal void @func_b4207(i32 %r0, i32 %r1) {
  br label %b4207

b4207:
  %r2 = icmp ule i32 %r0, %r1
  br i1 %r2, label %b4407, label %b303

b4407:
  %r14 = add i32 ptrtoint(i8* @paddle to i32), 12
  %r13 = inttoptr i32 %r14 to i32*
  %r12 = load i32, i32* %r13
  %r10 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r11 = load i8, i8* %r10
  %r6 = zext i8 %r11 to i32
  %r9 = add i32 ptrtoint(i8* @console to i32), 2
  %r7 = inttoptr i32 %r9 to i8*
  %r8 = load i8, i8* %r7
  %r5 = zext i8 %r8 to i32
  %r4 = sub i32 %r5, %r6
  %r3 = icmp ule i32 %r4, 24
  br i1 %r3, label %b4459, label %b4460

b303:
  ret void

b4459:
  %r15 = icmp ule i32 %r12, %r4
  br i1 %r15, label %b4467, label %b303

b4460:
  %r16 = icmp ule i32 %r12, 0
  br i1 %r16, label %b4466, label %b303

b4467:
  %r24 = inttoptr i32 ptrtoint(i8* @paddle to i32) to i32*
  %r20 = load i32, i32* %r24
  %r23 = add i32 ptrtoint(i8* @paddle to i32), 4
  %r22 = inttoptr i32 %r23 to i32*
  %r21 = load i32, i32* %r22
  %r19 = add i32 %r0, %r20
  %r18 = add i32 %r19, -1
  %r17 = icmp ule i32 %r18, %r1
  br i1 %r17, label %b4455, label %b4456

b4466:
  %r32 = inttoptr i32 ptrtoint(i8* @paddle to i32) to i32*
  %r28 = load i32, i32* %r32
  %r31 = add i32 ptrtoint(i8* @paddle to i32), 4
  %r30 = inttoptr i32 %r31 to i32*
  %r29 = load i32, i32* %r30
  %r27 = add i32 %r0, %r28
  %r26 = add i32 %r27, -1
  %r25 = icmp ule i32 %r26, %r1
  br i1 %r25, label %b4453, label %b4454

b4455:
  %r35 = add i32 %r12, %r21
  %r34 = add i32 %r35, -1
  %r33 = icmp ule i32 %r34, %r4
  br i1 %r33, label %b1385, label %g82

b4456:
  %r38 = add i32 %r12, %r21
  %r37 = add i32 %r38, -1
  %r36 = icmp ule i32 %r37, %r4
  br i1 %r36, label %b1385, label %g83

b4453:
  %r41 = add i32 %r12, %r29
  %r40 = add i32 %r41, -1
  %r39 = icmp ule i32 %r40, 0
  br i1 %r39, label %b1385, label %b1634

b4454:
  %r44 = add i32 %r12, %r29
  %r43 = add i32 %r44, -1
  %r42 = icmp ule i32 %r43, 0
  br i1 %r42, label %b1385, label %b1634

b1385:
  %r48 = phi i32 [%r12, %b4455], [%r12, %g82], [%r12, %b4456], [%r12, %g83], [%r12, %b4453], [%r12, %b4454], [%r46, %b1385]
  %r47 = phi i32 [%r34, %b4455], [%r4, %g82], [%r37, %b4456], [%r4, %g83], [%r40, %b4453], [%r43, %b4454], [%r47, %b1385]
  %r50 = phi i32 [%r18, %b4455], [%r18, %g82], [%r1, %b4456], [%r1, %g83], [%r26, %b4453], [%r1, %b4454], [%r50, %b1385]
  %r49 = phi i32 [%r0, %b4455], [%r0, %g82], [%r0, %b4456], [%r0, %g83], [%r0, %b4453], [%r0, %b4454], [%r49, %b1385]
  call void @func_b1383(i32 %r49, i32 %r50, i32 %r48)
  %r46 = add i32 %r48, 1
  %r45 = icmp ule i32 %r46, %r47
  br i1 %r45, label %b1385, label %b303

g82:
  br label %b1385

g83:
  br label %b1385

b1634:
  %r53 = phi i32 [%r12, %b4453], [%r12, %b4454], [%r52, %b1634]
  %r55 = phi i32 [%r26, %b4453], [%r1, %b4454], [%r55, %b1634]
  %r54 = phi i32 [%r0, %b4453], [%r0, %b4454], [%r54, %b1634]
  call void @func_b1383(i32 %r54, i32 %r55, i32 %r53)
  %r52 = add i32 %r53, 1
  %r51 = icmp ule i32 %r52, 0
  br i1 %r51, label %b1634, label %b303
}

define internal void @func_b851(i32 %r0, i32 %r1) {
  br label %b851

b851:
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

define void @timerInterrupt() {
  br label %timerInterrupt

timerInterrupt:
  %r26 = call i32 @inb(i32 33)
  %r25 = or i32 %r26, 1
  call void @outb(i32 33, i32 %r25)
  call void @outb(i32 32, i32 96)
  %r24 = call i32 @inb(i32 33)
  %r23 = and i32 %r24, -2
  call void @outb(i32 33, i32 %r23)
  %r22 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  %r10 = load i32, i32* %r22
  %r21 = add i32 %r10, 1
  %r20 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  store i32 %r21, i32* %r20
  %r18 = inttoptr i32 753818 to i16*
  %r19 = load i16, i16* %r18
  %r16 = zext i16 %r19 to i32
  %r17 = and i32 %r10, 15
  %r15 = call i32 @func_b1345(i32 %r17, i32 9)
  %r14 = and i32 %r16, 65280
  %r12 = or i32 %r14, %r15
  %r11 = inttoptr i32 753818 to i16*
  %r13 = trunc i32 %r12 to i16
  store i16 %r13, i16* %r11
  %r7 = lshr i32 %r10, 4
  %r8 = inttoptr i32 753816 to i16*
  %r9 = load i16, i16* %r8
  %r5 = zext i16 %r9 to i32
  %r6 = and i32 %r7, 15
  %r4 = call i32 @func_b1345(i32 %r6, i32 9)
  %r3 = and i32 %r5, 65280
  %r1 = or i32 %r3, %r4
  %r0 = inttoptr i32 753816 to i16*
  %r2 = trunc i32 %r1 to i16
  store i16 %r2, i16* %r0
  br label %b4424

b4424:
  %r29 = phi i32 [75, %timerInterrupt], [%r28, %b4424]
  %r42 = phi i32 [%r7, %timerInterrupt], [%r38, %b4424]
  %r43 = phi i32 [%r10, %timerInterrupt], [%r43, %b4424]
  %r38 = lshr i32 %r42, 4
  %r41 = mul i32 %r29, 2
  %r33 = add i32 %r41, 753664
  %r39 = inttoptr i32 %r33 to i16*
  %r40 = load i16, i16* %r39
  %r36 = zext i16 %r40 to i32
  %r37 = and i32 %r38, 15
  %r35 = call i32 @func_b1345(i32 %r37, i32 9)
  %r34 = and i32 %r36, 65280
  %r31 = or i32 %r34, %r35
  %r30 = inttoptr i32 %r33 to i16*
  %r32 = trunc i32 %r31 to i16
  store i16 %r32, i16* %r30
  %r28 = add i32 %r29, -1
  %r27 = icmp sle i32 70, %r28
  br i1 %r27, label %b4424, label %b1817

b1817:
  call void @func_b1074()
  %r56 = add i32 ptrtoint(i8* @ball to i32), 8
  %r55 = inttoptr i32 %r56 to i32*
  %r54 = load i32, i32* %r55
  %r53 = add i32 ptrtoint(i8* @console to i32), 1
  %r51 = inttoptr i32 %r53 to i8*
  %r52 = load i8, i8* %r51
  %r47 = zext i8 %r52 to i32
  %r50 = add i32 ptrtoint(i8* @console to i32), 3
  %r48 = inttoptr i32 %r50 to i8*
  %r49 = load i8, i8* %r48
  %r46 = zext i8 %r49 to i32
  %r45 = sub i32 %r46, %r47
  %r44 = icmp ule i32 %r45, 79
  br i1 %r44, label %b4222, label %b1959

b4222:
  call void @func_b4212(i32 %r54, i32 %r45)
  %r69 = add i32 ptrtoint(i8* @paddle to i32), 8
  %r68 = inttoptr i32 %r69 to i32*
  %r67 = load i32, i32* %r68
  %r66 = add i32 ptrtoint(i8* @console to i32), 1
  %r64 = inttoptr i32 %r66 to i8*
  %r65 = load i8, i8* %r64
  %r60 = zext i8 %r65 to i32
  %r63 = add i32 ptrtoint(i8* @console to i32), 3
  %r61 = inttoptr i32 %r63 to i8*
  %r62 = load i8, i8* %r61
  %r59 = zext i8 %r62 to i32
  %r58 = sub i32 %r59, %r60
  %r57 = icmp ule i32 %r58, 79
  br i1 %r57, label %b4215, label %b1949

b1959:
  %r83 = call i32 @func_b3274()
  call void @func_b4212(i32 %r54, i32 %r83)
  %r82 = add i32 ptrtoint(i8* @paddle to i32), 8
  %r81 = inttoptr i32 %r82 to i32*
  %r80 = load i32, i32* %r81
  %r79 = add i32 ptrtoint(i8* @console to i32), 1
  %r77 = inttoptr i32 %r79 to i8*
  %r78 = load i8, i8* %r77
  %r73 = zext i8 %r78 to i32
  %r76 = add i32 ptrtoint(i8* @console to i32), 3
  %r74 = inttoptr i32 %r76 to i8*
  %r75 = load i8, i8* %r74
  %r72 = zext i8 %r75 to i32
  %r71 = sub i32 %r72, %r73
  %r70 = icmp ule i32 %r71, 79
  br i1 %r70, label %b4215, label %b1949

b4215:
  %r92 = phi i32 [%r58, %b4222], [%r71, %b1959]
  %r91 = phi i32 [%r67, %b4222], [%r80, %b1959]
  %r93 = phi i32 [%r43, %b4222], [%r43, %b1959]
  call void @func_b4207(i32 %r91, i32 %r92)
  %r89 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r90 = load i8, i8* %r89
  %r85 = zext i8 %r90 to i32
  %r87 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r88 = load i8, i8* %r87
  %r86 = zext i8 %r88 to i32
  %r84 = icmp eq i32 54, %r85
  br i1 %r84, label %b1658, label %b1663

b1949:
  %r101 = phi i32 [%r67, %b4222], [%r80, %b1959]
  %r103 = phi i32 [%r43, %b4222], [%r43, %b1959]
  %r102 = call i32 @func_b3274()
  call void @func_b4207(i32 %r101, i32 %r102)
  %r99 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r100 = load i8, i8* %r99
  %r95 = zext i8 %r100 to i32
  %r97 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r98 = load i8, i8* %r97
  %r96 = zext i8 %r98 to i32
  %r94 = icmp eq i32 54, %r95
  br i1 %r94, label %b1658, label %b1663

b1658:
  %r107 = phi i32 [%r85, %b4215], [%r95, %b1949]
  %r105 = phi i32 [%r86, %b4215], [%r96, %b1949]
  %r106 = phi i32 [%r93, %b4215], [%r103, %b1949]
  %r104 = icmp ne i32 54, %r105
  br i1 %r104, label %b1659, label %b1663

b1663:
  %r111 = phi i32 [%r86, %b4215], [%r96, %b1949], [%r105, %b1658]
  %r109 = phi i32 [%r85, %b4215], [%r95, %b1949], [%r107, %b1658]
  %r110 = phi i32 [%r93, %b4215], [%r103, %b1949], [%r106, %b1658]
  %r108 = icmp eq i32 52, %r109
  br i1 %r108, label %b1660, label %b1502

b1659:
  %r115 = add i32 ptrtoint(i8* @paddle to i32), 8
  %r117 = inttoptr i32 %r115 to i32*
  %r116 = load i32, i32* %r117
  %r114 = add i32 %r116, 1
  %r113 = inttoptr i32 %r115 to i32*
  store i32 %r114, i32* %r113
  %r112 = icmp eq i32 52, %r107
  br i1 %r112, label %b1660, label %b1502

b1660:
  %r119 = phi i32 [%r111, %b1663], [%r105, %b1659]
  %r120 = phi i32 [%r110, %b1663], [%r106, %b1659]
  %r118 = icmp ne i32 52, %r119
  br i1 %r118, label %b1661, label %b1502

b1502:
  %r123 = phi i32 [%r110, %b1663], [%r106, %b1659], [%r120, %b1660]
  %r122 = and i32 %r123, 3
  %r121 = icmp eq i32 %r122, 0
  br i1 %r121, label %b1369, label %b951

b1661:
  %r128 = add i32 ptrtoint(i8* @paddle to i32), 8
  %r130 = inttoptr i32 %r128 to i32*
  %r129 = load i32, i32* %r130
  %r127 = add i32 %r129, -1
  %r126 = inttoptr i32 %r128 to i32*
  store i32 %r127, i32* %r126
  %r125 = and i32 %r120, 3
  %r124 = icmp eq i32 %r125, 0
  br i1 %r124, label %b1369, label %b951

b1369:
  %r136 = phi i32 [%r123, %b1502], [%r120, %b1661]
  %r134 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r135 = load i8, i8* %r134
  %r133 = zext i8 %r135 to i32
  call void @func_b851(i32 %r133, i32 32)
  %r132 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  %r131 = load i1, i1* %r132
  br i1 %r131, label %b4421, label %b4416

b951:
  %r139 = phi i32 [%r123, %b1502], [%r120, %b1661]
  %r138 = and i32 %r139, 15
  %r137 = icmp eq i32 %r138, 0
  br i1 %r137, label %b949, label %b1116

b4421:
  %r141 = add i32 %r133, 1
  %r140 = icmp ule i32 %r141, 68
  br i1 %r140, label %b4419, label %b1372

b4416:
  %r143 = sub i32 %r133, 1
  %r142 = icmp sle i32 46, %r143
  br i1 %r142, label %b4414, label %b1375

b949:
  %r148 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r147 = load i1, i1* %r148
  %r146 = zext i1 %r147 to i32
  %r145 = add i32 %r146, 1
  %r144 = icmp ule i32 %r145, 1
  br i1 %r144, label %b4409, label %b2572

b1116:
  %r153 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r152 = load i1, i1* %r153
  %r151 = zext i1 %r152 to i32
  %r150 = mul i32 %r151, 72
  %r149 = add i32 ptrtoint(i8* @users to i32), %r150
  tail call void @returnTo(i32 %r149)
  ret void

b4419:
  call void @func_b851(i32 %r141, i32 62)
  %r156 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r157 = trunc i32 %r141 to i8
  store i8 %r157, i8* %r156
  %r155 = and i32 %r136, 15
  %r154 = icmp eq i32 %r155, 0
  br i1 %r154, label %b949, label %b1116

b1372:
  call void @func_b851(i32 %r133, i32 124)
  %r160 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 false, i1* %r160
  %r159 = and i32 %r136, 15
  %r158 = icmp eq i32 %r159, 0
  br i1 %r158, label %b949, label %b1116

b4414:
  call void @func_b851(i32 %r143, i32 60)
  %r163 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r164 = trunc i32 %r143 to i8
  store i8 %r164, i8* %r163
  %r162 = and i32 %r136, 15
  %r161 = icmp eq i32 %r162, 0
  br i1 %r161, label %b949, label %b1116

b1375:
  call void @func_b851(i32 %r133, i32 124)
  %r167 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r167
  %r166 = and i32 %r136, 15
  %r165 = icmp eq i32 %r166, 0
  br i1 %r165, label %b949, label %b1116

b4409:
  %r169 = trunc i32 %r145 to i1
  %r168 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 %r169, i1* %r168
  br label %b1804

b2572:
  %r170 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r170
  br label %b1804

b1804:
  %r192 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r193 = load i8, i8* %r192
  %r188 = zext i8 %r193 to i32
  %r191 = add i32 ptrtoint(i8* @spinner to i32), %r188
  %r189 = inttoptr i32 %r191 to i8*
  %r190 = load i8, i8* %r189
  %r180 = zext i8 %r190 to i32
  %r187 = add i32 %r188, 1
  %r185 = and i32 %r187, 3
  %r184 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r186 = trunc i32 %r185 to i8
  store i8 %r186, i8* %r184
  %r182 = inttoptr i32 753822 to i16*
  %r183 = load i16, i16* %r182
  %r181 = zext i16 %r183 to i32
  %r179 = and i32 %r181, 65280
  %r177 = or i32 %r179, %r180
  %r176 = inttoptr i32 753822 to i16*
  %r178 = trunc i32 %r177 to i16
  store i16 %r178, i16* %r176
  %r175 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r174 = load i1, i1* %r175
  %r173 = zext i1 %r174 to i32
  %r172 = mul i32 %r173, 72
  %r171 = add i32 ptrtoint(i8* @users to i32), %r172
  tail call void @returnTo(i32 %r171)
  ret void
}

define internal void @func_b1589(i32 %r0) {
  br label %b1589

b1589:
  %r3 = call i32 @inb(i32 1021)
  %r2 = and i32 %r3, 96
  call void @func_b1309(i32 %r2, i32 0, i32 %r0)
  %r1 = icmp eq i32 %r0, 10
  br i1 %r1, label %b1577, label %c117

b1577:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1309(i32 %r9, i32 0, i32 13)
  %r8 = add i32 ptrtoint(i8* @console to i32), 4
  %r6 = inttoptr i32 %r8 to i8*
  %r7 = load i8, i8* %r6
  %r5 = zext i8 %r7 to i32
  %r4 = icmp eq i32 %r0, 13
  br i1 %r4, label %b1582, label %b1585

c117:
  tail call void @func_b1580(i32 %r0)
  ret void

b1582:
  %r14 = phi i32 [%r5, %b1577], [%r5, %b1585], [%r5, %b1587]
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
  br i1 %r11, label %b4345, label %b1584

b1585:
  %r25 = icmp eq i32 %r0, 10
  br i1 %r25, label %b1582, label %b1587

b4345:
  %r28 = add i32 ptrtoint(i8* @console to i32), 4
  %r26 = inttoptr i32 %r28 to i8*
  %r27 = trunc i32 %r12 to i8
  store i8 %r27, i8* %r26
  ret void

b1584:
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
  br i1 %r29, label %b4336, label %b1315

b1587:
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
  br i1 %r50, label %b4349, label %b1582

b4336:
  %r76 = phi i32 [%r30, %b1584], [%r74, %b4336]
  %r79 = phi i32 [%r32, %b1584], [%r76, %b4336]
  %r75 = phi i32 [%r31, %b1584], [%r75, %b4336]
  %r78 = phi i32 [%r37, %b1584], [%r78, %b4336]
  %r77 = phi i32 [%r44, %b1584], [%r77, %b4336]
  %r80 = phi i32 [%r33, %b1584], [%r80, %b4336]
  call void @func_b1317(i32 %r77, i32 %r78, i32 %r79, i32 %r76)
  %r74 = add i32 %r76, 1
  %r73 = icmp ule i32 %r74, %r75
  br i1 %r73, label %b4336, label %b1315

b1315:
  %r84 = phi i32 [%r44, %b1584], [%r77, %b4336], [%r82, %b1315]
  %r83 = phi i32 [%r37, %b1584], [%r78, %b4336], [%r83, %b1315]
  %r90 = phi i32 [%r33, %b1584], [%r80, %b4336], [%r90, %b1315]
  %r94 = phi i32 [%r31, %b1584], [%r75, %b4336], [%r94, %b1315]
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
  br i1 %r81, label %b1315, label %b303

b4349:
  %r97 = add i32 ptrtoint(i8* @console to i32), 5
  %r95 = inttoptr i32 %r97 to i8*
  %r96 = trunc i32 %r51 to i8
  store i8 %r96, i8* %r95
  ret void

b303:
  ret void
}

define internal void @func_b4358(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b4358

b4358:
  %r8 = phi i32 [%r0, %0], [1, %b4360]
  %r7 = phi i32 [%r1, %0], [%r5, %b4360]
  %r6 = phi i32 [%r2, %0], [0, %b4360]
  %r9 = phi i32 [%r3, %0], [%r9, %b4360]
  %r5 = add i32 %r7, %r8
  %r4 = icmp ule i32 %r5, %r6
  br i1 %r4, label %b4360, label %b303

b4360:
  call void @func_b1589(i32 %r9)
  br label %b4358

b303:
  ret void
}

define internal void @func_b4374(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b4374

b4374:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b4376, label %b4365

b4376:
  %r8 = lshr i32 %r3, 4
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b4365, label %b2241

b4365:
  %r12 = phi i32 [1, %b4374], [1, %b4376]
  %r11 = phi i32 [0, %b4374], [0, %b4376]
  %r13 = phi i32 [%r4, %b4374], [%r4, %b4376]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b4367, label %b2309

b2241:
  %r22 = phi i32 [%r8, %b4376], [%r24, %b4371]
  %r16 = phi i32 [%r6, %b4376], [%r15, %b4371]
  %r23 = phi i32 [%r4, %b4376], [%r23, %b4371]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = and i32 %r22, 15
  %r18 = call i32 @func_b1345(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b4371, label %b2242

b4367:
  call void @func_b1589(i32 %r13)
  call void @func_b4358(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1589(i32 %r25)
  ret void

b2309:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1589(i32 %r28)
  ret void

b4371:
  %r24 = lshr i32 %r22, 4
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b2242, label %b2241

b2242:
  %r33 = phi i32 [%r23, %b2241], [%r23, %b4371]
  %r32 = phi i32 [%r16, %b2241], [%r16, %b4371]
  call void @func_b4358(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b2239

b2239:
  %r36 = phi i32 [%r32, %b2242], [%r35, %b2239]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1589(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b2239, label %b303

b303:
  ret void
}

define internal void @func_b3228(i32 %r0, i32 %r1) {
  br label %b3228

b3228:
  %r3 = phi i32 [%r0, %0], [%r8, %b3221]
  %r7 = phi i32 [%r1, %0], [%r6, %b3221]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1309(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b4135, label %b4136

b4135:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1309(i32 %r9, i32 0, i32 13)
  call void @func_b1580(i32 %r3)
  br label %b3219

b4136:
  call void @func_b1580(i32 %r3)
  br label %b3219

b3219:
  %r14 = phi i32 [%r7, %b4135], [%r7, %b4136]
  %r12 = inttoptr i32 %r14 to i8*
  %r13 = load i8, i8* %r12
  %r8 = zext i8 %r13 to i32
  %r11 = icmp eq i32 %r8, 0
  br i1 %r11, label %b303, label %b3221

b303:
  ret void

b3221:
  %r6 = add i32 %r14, 1
  br label %b3228
}

define void @unhandled(i32 %r0, i32 %r1) {
  br label %unhandled

unhandled:
  %r4 = inttoptr i32 ptrtoint(i8* @str55 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1477, label %b3257

b1477:
  %r10 = phi i32 [%r0, %unhandled], [%r17, %b3245]
  %r16 = phi i32 [%r1, %unhandled], [%r15, %b3245]
  %r14 = and i32 %r10, 15
  %r12 = call i32 @func_b1345(i32 %r14, i32 9)
  %r11 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r13 = trunc i32 %r12 to i8
  store i8 %r13, i8* %r11
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r10, i32 32)
  %r8 = inttoptr i32 ptrtoint(i8* @str56 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1473, label %b3244

b3257:
  %r18 = add i32 ptrtoint(i8* @str55 to i32), 1
  br label %b3249

b1473:
  %r23 = phi i32 [%r16, %b1477], [%r28, %b3232]
  %r27 = and i32 %r23, 15
  %r25 = call i32 @func_b1345(i32 %r27, i32 9)
  %r24 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r26 = trunc i32 %r25 to i8
  store i8 %r26, i8* %r24
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r23, i32 32)
  %r21 = inttoptr i32 ptrtoint(i8* @str57 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b303, label %b3231

b3244:
  %r29 = add i32 ptrtoint(i8* @str56 to i32), 1
  br label %b3236

b3249:
  %r31 = phi i32 [%r3, %b3257], [%r38, %b3247]
  %r37 = phi i32 [%r18, %b3257], [%r36, %b3247]
  %r35 = phi i32 [%r0, %b3257], [%r17, %b3247]
  %r34 = phi i32 [%r1, %b3257], [%r15, %b3247]
  %r33 = call i32 @inb(i32 1021)
  %r32 = and i32 %r33, 96
  call void @func_b1309(i32 %r32, i32 0, i32 %r31)
  %r30 = icmp eq i32 %r31, 10
  br i1 %r30, label %b3252, label %b3254

b303:
  ret void

b3231:
  %r39 = add i32 ptrtoint(i8* @str57 to i32), 1
  br label %c161

b3236:
  %r41 = phi i32 [%r7, %b3244], [%r47, %b3234]
  %r46 = phi i32 [%r29, %b3244], [%r45, %b3234]
  %r44 = phi i32 [%r16, %b3244], [%r28, %b3234]
  %r43 = call i32 @inb(i32 1021)
  %r42 = and i32 %r43, 96
  call void @func_b1309(i32 %r42, i32 0, i32 %r41)
  %r40 = icmp eq i32 %r41, 10
  br i1 %r40, label %b3239, label %b3241

b3252:
  %r49 = call i32 @inb(i32 1021)
  %r48 = and i32 %r49, 96
  call void @func_b1309(i32 %r48, i32 0, i32 13)
  call void @func_b1580(i32 %r31)
  br label %b3245

b3254:
  call void @func_b1580(i32 %r31)
  br label %b3245

c161:
  tail call void @func_b3228(i32 %r20, i32 %r39)
  ret void

b3239:
  %r51 = call i32 @inb(i32 1021)
  %r50 = and i32 %r51, 96
  call void @func_b1309(i32 %r50, i32 0, i32 13)
  call void @func_b1580(i32 %r41)
  br label %b3232

b3241:
  call void @func_b1580(i32 %r41)
  br label %b3232

b3245:
  %r55 = phi i32 [%r37, %b3252], [%r37, %b3254]
  %r15 = phi i32 [%r34, %b3252], [%r34, %b3254]
  %r17 = phi i32 [%r35, %b3252], [%r35, %b3254]
  %r53 = inttoptr i32 %r55 to i8*
  %r54 = load i8, i8* %r53
  %r38 = zext i8 %r54 to i32
  %r52 = icmp eq i32 %r38, 0
  br i1 %r52, label %b1477, label %b3247

b3232:
  %r59 = phi i32 [%r46, %b3239], [%r46, %b3241]
  %r28 = phi i32 [%r44, %b3239], [%r44, %b3241]
  %r57 = inttoptr i32 %r59 to i8*
  %r58 = load i8, i8* %r57
  %r47 = zext i8 %r58 to i32
  %r56 = icmp eq i32 %r47, 0
  br i1 %r56, label %b1473, label %b3234

b3247:
  %r36 = add i32 %r55, 1
  br label %b3249

b3234:
  %r45 = add i32 %r59, 1
  br label %b3236
}

define internal void @func_b2857(i32 %r0, i32 %r1) {
  br label %b2857

b2857:
  %r6 = phi i32 [%r0, %0], [%r5, %b2858]
  %r3 = phi i32 [%r1, %0], [%r4, %b2858]
  %r2 = icmp ult i32 %r3, 32
  br i1 %r2, label %b2858, label %b2479

b2858:
  %r7 = inttoptr i32 %r6 to i8*
  %r8 = trunc i32 0 to i8
  store i8 %r8, i8* %r7
  %r4 = add i32 %r3, 1
  %r5 = add i32 %r6, 1
  br label %b2857

b2479:
  ret void
}

define internal void @func_b4441(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b4441

b4441:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b4443, label %b4365

b4443:
  %r8 = udiv i32 %r3, 10
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b4365, label %b2258

b4365:
  %r12 = phi i32 [1, %b4441], [1, %b4443]
  %r11 = phi i32 [0, %b4441], [0, %b4443]
  %r13 = phi i32 [%r4, %b4441], [%r4, %b4443]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b4367, label %b2309

b2258:
  %r22 = phi i32 [%r8, %b4443], [%r24, %b4435]
  %r16 = phi i32 [%r6, %b4443], [%r15, %b4435]
  %r23 = phi i32 [%r4, %b4443], [%r23, %b4435]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = urem i32 %r22, 10
  %r18 = call i32 @func_b1345(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b4435, label %b2242

b4367:
  call void @func_b1589(i32 %r13)
  call void @func_b4358(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1589(i32 %r25)
  ret void

b2309:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1589(i32 %r28)
  ret void

b4435:
  %r24 = udiv i32 %r22, 10
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b2242, label %b2258

b2242:
  %r33 = phi i32 [%r23, %b2258], [%r23, %b4435]
  %r32 = phi i32 [%r16, %b2258], [%r16, %b4435]
  call void @func_b4358(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b2239

b2239:
  %r36 = phi i32 [%r32, %b2242], [%r35, %b2239]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1589(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b2239, label %b303

b303:
  ret void
}

define internal void @func_b3324(i32 %r0) {
  br label %b3324

b3324:
  %r3 = inttoptr i32 ptrtoint(i8* @str5 to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b1514, label %b3326

b1514:
  %r15 = phi i32 [%r0, %b3324], [%r16, %b3304]
  %r14 = inttoptr i32 %r15 to i32*
  %r9 = load i32, i32* %r14
  %r13 = and i32 %r9, 15
  %r11 = call i32 @func_b1345(i32 %r13, i32 9)
  %r10 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r12 = trunc i32 %r11 to i8
  store i8 %r12, i8* %r10
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r9, i32 32)
  %r7 = inttoptr i32 ptrtoint(i8* @str6 to i32) to i8*
  %r8 = load i8, i8* %r7
  %r6 = zext i8 %r8 to i32
  %r5 = icmp eq i32 %r6, 0
  br i1 %r5, label %b1512, label %b3303

b3326:
  %r17 = add i32 ptrtoint(i8* @str5 to i32), 1
  br label %b3308

b1512:
  %r29 = phi i32 [%r15, %b1514], [%r30, %b3291]
  %r28 = add i32 %r29, 4
  %r27 = inttoptr i32 %r28 to i32*
  %r22 = load i32, i32* %r27
  %r26 = and i32 %r22, 15
  %r24 = call i32 @func_b1345(i32 %r26, i32 9)
  %r23 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r25 = trunc i32 %r24 to i8
  store i8 %r25, i8* %r23
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r22, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str7 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1510, label %b3290

b3303:
  %r31 = add i32 ptrtoint(i8* @str6 to i32), 1
  br label %b3295

b3308:
  %r33 = phi i32 [%r2, %b3326], [%r39, %b3306]
  %r38 = phi i32 [%r17, %b3326], [%r37, %b3306]
  %r36 = phi i32 [%r0, %b3326], [%r16, %b3306]
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1309(i32 %r34, i32 0, i32 %r33)
  %r32 = icmp eq i32 %r33, 10
  br i1 %r32, label %b3311, label %b3313

b1510:
  %r49 = phi i32 [%r29, %b1512], [%r50, %b3278]
  %r48 = add i32 %r49, 8
  %r47 = inttoptr i32 %r48 to i32*
  %r42 = load i32, i32* %r47
  %r46 = and i32 %r42, 15
  %r44 = call i32 @func_b1345(i32 %r46, i32 9)
  %r43 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r45 = trunc i32 %r44 to i8
  store i8 %r45, i8* %r43
  %r41 = lshr i32 %r42, 4
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b4365, label %b2241

b3290:
  %r51 = add i32 ptrtoint(i8* @str7 to i32), 1
  br label %b3282

b3295:
  %r53 = phi i32 [%r6, %b3303], [%r59, %b3293]
  %r58 = phi i32 [%r31, %b3303], [%r57, %b3293]
  %r56 = phi i32 [%r15, %b3303], [%r30, %b3293]
  %r55 = call i32 @inb(i32 1021)
  %r54 = and i32 %r55, 96
  call void @func_b1309(i32 %r54, i32 0, i32 %r53)
  %r52 = icmp eq i32 %r53, 10
  br i1 %r52, label %b3298, label %b3300

b3311:
  %r61 = call i32 @inb(i32 1021)
  %r60 = and i32 %r61, 96
  call void @func_b1309(i32 %r60, i32 0, i32 13)
  call void @func_b1580(i32 %r33)
  br label %b3304

b3313:
  call void @func_b1580(i32 %r33)
  br label %b3304

b4365:
  %r63 = add i32 0, 1
  %r62 = icmp ule i32 %r63, 0
  br i1 %r62, label %b4367, label %b2309

b2241:
  %r72 = phi i32 [%r41, %b1510], [%r74, %b4371]
  %r66 = phi i32 [1, %b1510], [%r65, %b4371]
  %r73 = phi i32 [32, %b1510], [%r73, %b4371]
  %r70 = add i32 ptrtoint(i8* @itoaBuf to i32), %r66
  %r71 = and i32 %r72, 15
  %r68 = call i32 @func_b1345(i32 %r71, i32 9)
  %r67 = inttoptr i32 %r70 to i8*
  %r69 = trunc i32 %r68 to i8
  store i8 %r69, i8* %r67
  %r65 = add i32 %r66, 1
  %r64 = icmp ule i32 %r65, 31
  br i1 %r64, label %b4371, label %b2242

b3282:
  %r76 = phi i32 [%r19, %b3290], [%r82, %b3280]
  %r81 = phi i32 [%r51, %b3290], [%r80, %b3280]
  %r79 = phi i32 [%r29, %b3290], [%r50, %b3280]
  %r78 = call i32 @inb(i32 1021)
  %r77 = and i32 %r78, 96
  call void @func_b1309(i32 %r77, i32 0, i32 %r76)
  %r75 = icmp eq i32 %r76, 10
  br i1 %r75, label %b3285, label %b3287

b3298:
  %r84 = call i32 @inb(i32 1021)
  %r83 = and i32 %r84, 96
  call void @func_b1309(i32 %r83, i32 0, i32 13)
  call void @func_b1580(i32 %r53)
  br label %b3291

b3300:
  call void @func_b1580(i32 %r53)
  br label %b3291

b3304:
  %r88 = phi i32 [%r38, %b3311], [%r38, %b3313]
  %r16 = phi i32 [%r36, %b3311], [%r36, %b3313]
  %r86 = inttoptr i32 %r88 to i8*
  %r87 = load i8, i8* %r86
  %r39 = zext i8 %r87 to i32
  %r85 = icmp eq i32 %r39, 0
  br i1 %r85, label %b1514, label %b3306

b4367:
  call void @func_b1589(i32 32)
  call void @func_b4358(i32 1, i32 %r63, i32 0, i32 32)
  %r90 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r91 = load i8, i8* %r90
  %r89 = zext i8 %r91 to i32
  call void @func_b1589(i32 %r89)
  ret void

b2309:
  %r93 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r94 = load i8, i8* %r93
  %r92 = zext i8 %r94 to i32
  call void @func_b1589(i32 %r92)
  ret void

b4371:
  %r74 = lshr i32 %r72, 4
  %r95 = icmp eq i32 %r74, 0
  br i1 %r95, label %b2242, label %b2241

b2242:
  %r97 = phi i32 [%r73, %b2241], [%r73, %b4371]
  %r96 = phi i32 [%r66, %b2241], [%r66, %b4371]
  call void @func_b4358(i32 1, i32 %r96, i32 0, i32 %r97)
  br label %b2239

b3285:
  %r99 = call i32 @inb(i32 1021)
  %r98 = and i32 %r99, 96
  call void @func_b1309(i32 %r98, i32 0, i32 13)
  call void @func_b1580(i32 %r76)
  br label %b3278

b3287:
  call void @func_b1580(i32 %r76)
  br label %b3278

b3291:
  %r103 = phi i32 [%r58, %b3298], [%r58, %b3300]
  %r30 = phi i32 [%r56, %b3298], [%r56, %b3300]
  %r101 = inttoptr i32 %r103 to i8*
  %r102 = load i8, i8* %r101
  %r59 = zext i8 %r102 to i32
  %r100 = icmp eq i32 %r59, 0
  br i1 %r100, label %b1512, label %b3293

b3306:
  %r37 = add i32 %r88, 1
  br label %b3308

b2239:
  %r106 = phi i32 [%r96, %b2242], [%r105, %b2239]
  %r110 = add i32 ptrtoint(i8* @itoaBuf to i32), %r106
  %r108 = inttoptr i32 %r110 to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  call void @func_b1589(i32 %r107)
  %r105 = add i32 %r106, -1
  %r104 = icmp sle i32 0, %r105
  br i1 %r104, label %b2239, label %b303

b3278:
  %r114 = phi i32 [%r81, %b3285], [%r81, %b3287]
  %r50 = phi i32 [%r79, %b3285], [%r79, %b3287]
  %r112 = inttoptr i32 %r114 to i8*
  %r113 = load i8, i8* %r112
  %r82 = zext i8 %r113 to i32
  %r111 = icmp eq i32 %r82, 0
  br i1 %r111, label %b1510, label %b3280

b3293:
  %r57 = add i32 %r103, 1
  br label %b3295

b303:
  ret void

b3280:
  %r80 = add i32 %r114, 1
  br label %b3282
}

define internal i32 @func_b3361(i32 %r0, i32 %r1) {
  br label %b3361

b3361:
  %r4 = inttoptr i32 ptrtoint(i8* @str12 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3353, label %b3363

b3353:
  %r13 = phi i32 [%r1, %b3361], [%r12, %b3360]
  %r11 = phi i32 [%r0, %b3361], [%r10, %b3360]
  %r8 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b2070, label %b3355

b3363:
  %r14 = add i32 ptrtoint(i8* @str12 to i32), 1
  br label %b3360

b2070:
  %r19 = phi i32 [%r11, %b3353], [%r26, %b3343]
  %r25 = phi i32 [%r13, %b3353], [%r24, %b3343]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1345(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b4441(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b2071, label %b3342

b3355:
  %r27 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b3347

b3360:
  %r33 = phi i32 [%r3, %b3363], [%r29, %b3358]
  %r32 = phi i32 [%r14, %b3363], [%r34, %b3358]
  %r12 = phi i32 [%r1, %b3363], [%r12, %b3358]
  %r10 = phi i32 [%r0, %b3363], [%r10, %b3358]
  call void @func_b1589(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b3353, label %b3358

b2071:
  %r39 = phi i32 [%r25, %b2070], [%r42, %b3330]
  %r41 = phi i32 [%r19, %b2070], [%r40, %b3330]
  call void @func_b3324(i32 %r39)
  %r37 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b1516, label %b3329

b3342:
  %r43 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b3334

b3347:
  %r45 = phi i32 [%r7, %b3355], [%r52, %b3345]
  %r51 = phi i32 [%r27, %b3355], [%r50, %b3345]
  %r49 = phi i32 [%r11, %b3355], [%r26, %b3345]
  %r48 = phi i32 [%r13, %b3355], [%r24, %b3345]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1309(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3350, label %b3352

b3358:
  %r34 = add i32 %r32, 1
  br label %b3360

b1516:
  %r54 = phi i32 [%r41, %b2071], [%r55, %b3314]
  %r53 = add i32 %r54, 1
  ret i32 %r53

b3329:
  %r56 = add i32 ptrtoint(i8* @str4 to i32), 1
  br label %b3318

b3334:
  %r58 = phi i32 [%r16, %b3342], [%r65, %b3332]
  %r64 = phi i32 [%r43, %b3342], [%r63, %b3332]
  %r62 = phi i32 [%r25, %b3342], [%r42, %b3332]
  %r61 = phi i32 [%r19, %b3342], [%r40, %b3332]
  %r60 = call i32 @inb(i32 1021)
  %r59 = and i32 %r60, 96
  call void @func_b1309(i32 %r59, i32 0, i32 %r58)
  %r57 = icmp eq i32 %r58, 10
  br i1 %r57, label %b3337, label %b3339

b3350:
  %r67 = call i32 @inb(i32 1021)
  %r66 = and i32 %r67, 96
  call void @func_b1309(i32 %r66, i32 0, i32 13)
  call void @func_b1580(i32 %r45)
  br label %b3343

b3352:
  call void @func_b1580(i32 %r45)
  br label %b3343

b3318:
  %r69 = phi i32 [%r36, %b3329], [%r75, %b3316]
  %r74 = phi i32 [%r56, %b3329], [%r73, %b3316]
  %r72 = phi i32 [%r41, %b3329], [%r55, %b3316]
  %r71 = call i32 @inb(i32 1021)
  %r70 = and i32 %r71, 96
  call void @func_b1309(i32 %r70, i32 0, i32 %r69)
  %r68 = icmp eq i32 %r69, 10
  br i1 %r68, label %b3321, label %b3323

b3337:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1309(i32 %r76, i32 0, i32 13)
  call void @func_b1580(i32 %r58)
  br label %b3330

b3339:
  call void @func_b1580(i32 %r58)
  br label %b3330

b3343:
  %r81 = phi i32 [%r51, %b3350], [%r51, %b3352]
  %r24 = phi i32 [%r48, %b3350], [%r48, %b3352]
  %r26 = phi i32 [%r49, %b3350], [%r49, %b3352]
  %r79 = inttoptr i32 %r81 to i8*
  %r80 = load i8, i8* %r79
  %r52 = zext i8 %r80 to i32
  %r78 = icmp eq i32 %r52, 0
  br i1 %r78, label %b2070, label %b3345

b3321:
  %r83 = call i32 @inb(i32 1021)
  %r82 = and i32 %r83, 96
  call void @func_b1309(i32 %r82, i32 0, i32 13)
  call void @func_b1580(i32 %r69)
  br label %b3314

b3323:
  call void @func_b1580(i32 %r69)
  br label %b3314

b3330:
  %r87 = phi i32 [%r64, %b3337], [%r64, %b3339]
  %r40 = phi i32 [%r61, %b3337], [%r61, %b3339]
  %r42 = phi i32 [%r62, %b3337], [%r62, %b3339]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r65 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r65, 0
  br i1 %r84, label %b2071, label %b3332

b3345:
  %r50 = add i32 %r81, 1
  br label %b3347

b3314:
  %r91 = phi i32 [%r74, %b3321], [%r74, %b3323]
  %r55 = phi i32 [%r72, %b3321], [%r72, %b3323]
  %r89 = inttoptr i32 %r91 to i8*
  %r90 = load i8, i8* %r89
  %r75 = zext i8 %r90 to i32
  %r88 = icmp eq i32 %r75, 0
  br i1 %r88, label %b1516, label %b3316

b3332:
  %r63 = add i32 %r87, 1
  br label %b3334

b3316:
  %r73 = add i32 %r91, 1
  br label %b3318
}

define internal i32 @func_b3373(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3373

b3373:
  %r5 = phi i32 [%r0, %0], [%r14, %b3366]
  %r13 = phi i32 [%r1, %0], [%r12, %b3366]
  %r11 = phi i32 [%r2, %0], [%r10, %b3366]
  %r9 = phi i32 [%r3, %0], [%r8, %b3366]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1309(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b4224, label %b4225

b4224:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1309(i32 %r15, i32 0, i32 13)
  call void @func_b1580(i32 %r5)
  br label %b3364

b4225:
  call void @func_b1580(i32 %r5)
  br label %b3364

b3364:
  %r20 = phi i32 [%r13, %b4224], [%r13, %b4225]
  %r10 = phi i32 [%r11, %b4224], [%r11, %b4225]
  %r8 = phi i32 [%r9, %b4224], [%r9, %b4225]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c246, label %b3366

c246:
  %r21 = tail call i32 @func_b3361(i32 %r10, i32 %r8)
  ret i32 %r21

b3366:
  %r12 = add i32 %r20, 1
  br label %b3373
}

define internal i32 @func_b3379(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3379

b3379:
  %r5 = phi i32 [%r0, %0], [%r12, %b4228], [%r12, %b4229]
  %r11 = phi i32 [%r1, %0], [%r10, %b4228], [%r10, %b4229]
  %r9 = phi i32 [%r2, %0], [12, %b4228], [12, %b4229]
  %r8 = phi i32 [%r3, %0], [%r7, %b4228], [%r6, %b4229]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b444, label %b3381

b444:
  ret i32 %r8

b3381:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b4228, label %b4229

b4228:
  %r7 = call i32 @func_b3361(i32 %r8, i32 %r11)
  br label %b3379

b4229:
  %r17 = add i32 ptrtoint(i8* @str1 to i32), 1
  %r6 = call i32 @func_b3373(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b3379
}

define internal void @func_b3415(i32 %r0, i32 %r1) {
  br label %b3415

b3415:
  %r6 = phi i32 [%r0, %0], [%r8, %b3422], [%r8, %b3424]
  %r7 = phi i32 [%r1, %0], [%r7, %b3422], [%r7, %b3424]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1524, label %b3417

b1524:
  %r19 = add i32 %r7, 4
  %r18 = inttoptr i32 %r19 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1345(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b303, label %b3414

b3417:
  %r8 = add i32 %r6, 1
  br label %b3419

b303:
  ret void

b3414:
  %r20 = add i32 ptrtoint(i8* @str10 to i32), 1
  br label %c261

b3419:
  %r23 = call i32 @inb(i32 1021)
  %r22 = and i32 %r23, 96
  call void @func_b1309(i32 %r22, i32 0, i32 %r3)
  %r21 = icmp eq i32 %r3, 10
  br i1 %r21, label %b3422, label %b3424

c261:
  tail call void @func_b3228(i32 %r10, i32 %r20)
  ret void

b3422:
  %r25 = call i32 @inb(i32 1021)
  %r24 = and i32 %r25, 96
  call void @func_b1309(i32 %r24, i32 0, i32 13)
  call void @func_b1580(i32 %r3)
  br label %b3415

b3424:
  call void @func_b1580(i32 %r3)
  br label %b3415
}

define internal void @func_b3443(i32 %r0, i32 %r1) {
  br label %b3443

b3443:
  %r6 = phi i32 [%r0, %0], [%r8, %b3450], [%r8, %b3452]
  %r7 = phi i32 [%r1, %0], [%r7, %b3450], [%r7, %b3452]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1526, label %b3445

b1526:
  %r18 = inttoptr i32 %r7 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1345(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1524, label %b3442

b3445:
  %r8 = add i32 %r6, 1
  %r21 = call i32 @inb(i32 1021)
  %r20 = and i32 %r21, 96
  call void @func_b1309(i32 %r20, i32 0, i32 %r3)
  %r19 = icmp eq i32 %r3, 10
  br i1 %r19, label %b3450, label %b3452

b1524:
  %r33 = phi i32 [%r7, %b1526], [%r34, %b3415]
  %r32 = add i32 %r33, 4
  %r31 = inttoptr i32 %r32 to i32*
  %r26 = load i32, i32* %r31
  %r30 = and i32 %r26, 15
  %r28 = call i32 @func_b1345(i32 %r30, i32 9)
  %r27 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r29 = trunc i32 %r28 to i8
  store i8 %r29, i8* %r27
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r26, i32 32)
  %r24 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b303, label %b3414

b3442:
  %r35 = add i32 ptrtoint(i8* @str9 to i32), 1
  br label %b3419

b3450:
  %r37 = call i32 @inb(i32 1021)
  %r36 = and i32 %r37, 96
  call void @func_b1309(i32 %r36, i32 0, i32 13)
  call void @func_b1580(i32 %r3)
  br label %b3443

b3452:
  call void @func_b1580(i32 %r3)
  br label %b3443

b303:
  ret void

b3414:
  %r38 = add i32 ptrtoint(i8* @str10 to i32), 1
  br label %c275

b3419:
  %r40 = phi i32 [%r10, %b3442], [%r46, %b3417]
  %r45 = phi i32 [%r35, %b3442], [%r44, %b3417]
  %r43 = phi i32 [%r7, %b3442], [%r34, %b3417]
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1309(i32 %r41, i32 0, i32 %r40)
  %r39 = icmp eq i32 %r40, 10
  br i1 %r39, label %b3422, label %b3424

c275:
  tail call void @func_b3228(i32 %r23, i32 %r38)
  ret void

b3422:
  %r48 = call i32 @inb(i32 1021)
  %r47 = and i32 %r48, 96
  call void @func_b1309(i32 %r47, i32 0, i32 13)
  call void @func_b1580(i32 %r40)
  br label %b3415

b3424:
  call void @func_b1580(i32 %r40)
  br label %b3415

b3415:
  %r52 = phi i32 [%r45, %b3422], [%r45, %b3424]
  %r34 = phi i32 [%r43, %b3422], [%r43, %b3424]
  %r50 = inttoptr i32 %r52 to i8*
  %r51 = load i8, i8* %r50
  %r46 = zext i8 %r51 to i32
  %r49 = icmp eq i32 %r46, 0
  br i1 %r49, label %b1524, label %b3417

b3417:
  %r44 = add i32 %r52, 1
  br label %b3419
}

define internal i32 @func_b3499(i32 %r0, i32 %r1) {
  br label %b3499

b3499:
  %r4 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3491, label %b3501

b3491:
  %r13 = phi i32 [%r1, %b3499], [%r12, %b3498]
  %r11 = phi i32 [%r0, %b3499], [%r10, %b3498]
  %r8 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b2134, label %b3493

b3501:
  %r14 = add i32 ptrtoint(i8* @str14 to i32), 1
  br label %b3498

b2134:
  %r19 = phi i32 [%r11, %b3491], [%r26, %b3481]
  %r25 = phi i32 [%r13, %b3491], [%r24, %b3481]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1345(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b4441(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b3459, label %b3480

b3493:
  %r27 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b3485

b3498:
  %r33 = phi i32 [%r3, %b3501], [%r29, %b3496]
  %r32 = phi i32 [%r14, %b3501], [%r34, %b3496]
  %r12 = phi i32 [%r1, %b3501], [%r12, %b3496]
  %r10 = phi i32 [%r0, %b3501], [%r10, %b3496]
  call void @func_b1589(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b3491, label %b3496

b3459:
  %r42 = phi i32 [%r19, %b2134], [%r41, %b3468]
  %r40 = phi i32 [%r25, %b2134], [%r39, %b3468]
  %r37 = inttoptr i32 ptrtoint(i8* @str8 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b2362, label %b3461

b3480:
  %r43 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b3472

b3485:
  %r45 = phi i32 [%r7, %b3493], [%r52, %b3483]
  %r51 = phi i32 [%r27, %b3493], [%r50, %b3483]
  %r49 = phi i32 [%r11, %b3493], [%r26, %b3483]
  %r48 = phi i32 [%r13, %b3493], [%r24, %b3483]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1309(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3488, label %b3490

b3496:
  %r34 = add i32 %r32, 1
  br label %b3498

b2362:
  %r62 = inttoptr i32 %r40 to i32*
  %r57 = load i32, i32* %r62
  %r61 = and i32 %r57, 15
  %r59 = call i32 @func_b1345(i32 %r61, i32 9)
  %r58 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r60 = trunc i32 %r59 to i8
  store i8 %r60, i8* %r58
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r57, i32 32)
  %r55 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r56 = load i8, i8* %r55
  %r54 = zext i8 %r56 to i32
  %r53 = icmp eq i32 %r54, 0
  br i1 %r53, label %b2363, label %b3433

b3461:
  %r66 = add i32 ptrtoint(i8* @str8 to i32), 1
  %r65 = call i32 @inb(i32 1021)
  %r64 = and i32 %r65, 96
  call void @func_b1309(i32 %r64, i32 0, i32 %r36)
  %r63 = icmp eq i32 %r36, 10
  br i1 %r63, label %b3465, label %b3467

b3472:
  %r68 = phi i32 [%r16, %b3480], [%r75, %b3470]
  %r74 = phi i32 [%r43, %b3480], [%r73, %b3470]
  %r72 = phi i32 [%r25, %b3480], [%r39, %b3470]
  %r71 = phi i32 [%r19, %b3480], [%r41, %b3470]
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1309(i32 %r69, i32 0, i32 %r68)
  %r67 = icmp eq i32 %r68, 10
  br i1 %r67, label %b3475, label %b3477

b3488:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1309(i32 %r76, i32 0, i32 13)
  call void @func_b1580(i32 %r45)
  br label %b3481

b3490:
  call void @func_b1580(i32 %r45)
  br label %b3481

b2363:
  %r88 = add i32 %r40, 4
  %r87 = inttoptr i32 %r88 to i32*
  %r82 = load i32, i32* %r87
  %r86 = and i32 %r82, 15
  %r84 = call i32 @func_b1345(i32 %r86, i32 9)
  %r83 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r85 = trunc i32 %r84 to i8
  store i8 %r85, i8* %r83
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r82, i32 32)
  %r80 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3401, label %b3409

b3433:
  %r92 = add i32 ptrtoint(i8* @str9 to i32), 1
  %r91 = call i32 @inb(i32 1021)
  %r90 = and i32 %r91, 96
  call void @func_b1309(i32 %r90, i32 0, i32 %r54)
  %r89 = icmp eq i32 %r54, 10
  br i1 %r89, label %b3437, label %b3439

b3465:
  %r98 = call i32 @inb(i32 1021)
  %r97 = and i32 %r98, 96
  call void @func_b1309(i32 %r97, i32 0, i32 13)
  call void @func_b1580(i32 %r36)
  call void @func_b3443(i32 %r66, i32 %r40)
  %r95 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b1516, label %b3455

b3467:
  call void @func_b1580(i32 %r36)
  call void @func_b3443(i32 %r66, i32 %r40)
  %r101 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r102 = load i8, i8* %r101
  %r100 = zext i8 %r102 to i32
  %r99 = icmp eq i32 %r100, 0
  br i1 %r99, label %b1516, label %b3455

b3475:
  %r104 = call i32 @inb(i32 1021)
  %r103 = and i32 %r104, 96
  call void @func_b1309(i32 %r103, i32 0, i32 13)
  call void @func_b1580(i32 %r68)
  br label %b3468

b3477:
  call void @func_b1580(i32 %r68)
  br label %b3468

b3481:
  %r108 = phi i32 [%r51, %b3488], [%r51, %b3490]
  %r24 = phi i32 [%r48, %b3488], [%r48, %b3490]
  %r26 = phi i32 [%r49, %b3488], [%r49, %b3490]
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r52 = zext i8 %r107 to i32
  %r105 = icmp eq i32 %r52, 0
  br i1 %r105, label %b2134, label %b3483

b3401:
  %r111 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r112 = load i8, i8* %r111
  %r110 = zext i8 %r112 to i32
  %r109 = icmp eq i32 %r110, 0
  br i1 %r109, label %b1516, label %b3455

b3409:
  %r117 = add i32 ptrtoint(i8* @str10 to i32), 1
  call void @func_b3228(i32 %r79, i32 %r117)
  %r115 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r116 = load i8, i8* %r115
  %r114 = zext i8 %r116 to i32
  %r113 = icmp eq i32 %r114, 0
  br i1 %r113, label %b1516, label %b3455

b3437:
  %r123 = call i32 @inb(i32 1021)
  %r122 = and i32 %r123, 96
  call void @func_b1309(i32 %r122, i32 0, i32 13)
  call void @func_b1580(i32 %r54)
  call void @func_b3415(i32 %r92, i32 %r40)
  %r120 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r119 = zext i8 %r121 to i32
  %r118 = icmp eq i32 %r119, 0
  br i1 %r118, label %b1516, label %b3455

b3439:
  call void @func_b1580(i32 %r54)
  call void @func_b3415(i32 %r92, i32 %r40)
  %r126 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r127 = load i8, i8* %r126
  %r125 = zext i8 %r127 to i32
  %r124 = icmp eq i32 %r125, 0
  br i1 %r124, label %b1516, label %b3455

b1516:
  %r129 = phi i32 [%r42, %b3465], [%r42, %b3467], [%r42, %b3401], [%r42, %b3409], [%r42, %b3437], [%r42, %b3439], [%r130, %b3391]
  %r128 = add i32 %r129, 1
  ret i32 %r128

b3455:
  %r133 = phi i32 [%r94, %b3465], [%r100, %b3467], [%r110, %b3401], [%r114, %b3409], [%r119, %b3437], [%r125, %b3439]
  %r132 = phi i32 [%r42, %b3465], [%r42, %b3467], [%r42, %b3401], [%r42, %b3409], [%r42, %b3437], [%r42, %b3439]
  %r131 = add i32 ptrtoint(i8* @str4 to i32), 1
  br label %b3395

b3468:
  %r137 = phi i32 [%r74, %b3475], [%r74, %b3477]
  %r41 = phi i32 [%r71, %b3475], [%r71, %b3477]
  %r39 = phi i32 [%r72, %b3475], [%r72, %b3477]
  %r135 = inttoptr i32 %r137 to i8*
  %r136 = load i8, i8* %r135
  %r75 = zext i8 %r136 to i32
  %r134 = icmp eq i32 %r75, 0
  br i1 %r134, label %b3459, label %b3470

b3483:
  %r50 = add i32 %r108, 1
  br label %b3485

b3395:
  %r139 = phi i32 [%r133, %b3455], [%r145, %b3393]
  %r144 = phi i32 [%r131, %b3455], [%r143, %b3393]
  %r142 = phi i32 [%r132, %b3455], [%r130, %b3393]
  %r141 = call i32 @inb(i32 1021)
  %r140 = and i32 %r141, 96
  call void @func_b1309(i32 %r140, i32 0, i32 %r139)
  %r138 = icmp eq i32 %r139, 10
  br i1 %r138, label %b3398, label %b3400

b3470:
  %r73 = add i32 %r137, 1
  br label %b3472

b3398:
  %r147 = call i32 @inb(i32 1021)
  %r146 = and i32 %r147, 96
  call void @func_b1309(i32 %r146, i32 0, i32 13)
  call void @func_b1580(i32 %r139)
  br label %b3391

b3400:
  call void @func_b1580(i32 %r139)
  br label %b3391

b3391:
  %r151 = phi i32 [%r144, %b3398], [%r144, %b3400]
  %r130 = phi i32 [%r142, %b3398], [%r142, %b3400]
  %r149 = inttoptr i32 %r151 to i8*
  %r150 = load i8, i8* %r149
  %r145 = zext i8 %r150 to i32
  %r148 = icmp eq i32 %r145, 0
  br i1 %r148, label %b1516, label %b3393

b3393:
  %r143 = add i32 %r151, 1
  br label %b3395
}

define internal i32 @func_b3511(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3511

b3511:
  %r5 = phi i32 [%r0, %0], [%r14, %b3504]
  %r13 = phi i32 [%r1, %0], [%r12, %b3504]
  %r11 = phi i32 [%r2, %0], [%r10, %b3504]
  %r9 = phi i32 [%r3, %0], [%r8, %b3504]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1309(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b4230, label %b4231

b4230:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1309(i32 %r15, i32 0, i32 13)
  call void @func_b1580(i32 %r5)
  br label %b3502

b4231:
  call void @func_b1580(i32 %r5)
  br label %b3502

b3502:
  %r20 = phi i32 [%r13, %b4230], [%r13, %b4231]
  %r10 = phi i32 [%r11, %b4230], [%r11, %b4231]
  %r8 = phi i32 [%r9, %b4230], [%r9, %b4231]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c322, label %b3504

c322:
  %r21 = tail call i32 @func_b3499(i32 %r10, i32 %r8)
  ret i32 %r21

b3504:
  %r12 = add i32 %r20, 1
  br label %b3511
}

define internal i32 @func_b3517(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3517

b3517:
  %r5 = phi i32 [%r0, %0], [%r12, %b4234], [%r12, %b4235]
  %r11 = phi i32 [%r1, %0], [%r10, %b4234], [%r10, %b4235]
  %r9 = phi i32 [%r2, %0], [8, %b4234], [8, %b4235]
  %r8 = phi i32 [%r3, %0], [%r7, %b4234], [%r6, %b4235]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b444, label %b3519

b444:
  ret i32 %r8

b3519:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b4234, label %b4235

b4234:
  %r7 = call i32 @func_b3499(i32 %r8, i32 %r11)
  br label %b3517

b4235:
  %r17 = add i32 ptrtoint(i8* @str1 to i32), 1
  %r6 = call i32 @func_b3511(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b3517
}

define internal void @func_b3766(i32 %r0, i32 %r1) {
  br label %b3766

b3766:
  %r6 = phi i32 [%r0, %0], [%r8, %b3773], [%r8, %b3775]
  %r7 = phi i32 [%r1, %0], [%r7, %b3773], [%r7, %b3775]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1532, label %b3768

b1532:
  %r16 = and i32 %r7, 15
  %r14 = call i32 @func_b1345(i32 %r16, i32 9)
  %r13 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r15 = trunc i32 %r14 to i8
  store i8 %r15, i8* %r13
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b303, label %b3765

b3768:
  %r8 = add i32 %r6, 1
  br label %b3770

b303:
  ret void

b3765:
  %r17 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c337

b3770:
  %r20 = call i32 @inb(i32 1021)
  %r19 = and i32 %r20, 96
  call void @func_b1309(i32 %r19, i32 0, i32 %r3)
  %r18 = icmp eq i32 %r3, 10
  br i1 %r18, label %b3773, label %b3775

c337:
  tail call void @func_b3228(i32 %r10, i32 %r17)
  ret void

b3773:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1309(i32 %r21, i32 0, i32 13)
  call void @func_b1580(i32 %r3)
  br label %b3766

b3775:
  call void @func_b1580(i32 %r3)
  br label %b3766
}

define internal void @func_b3806(i32 %r0, i32 %r1) {
  br label %b3806

b3806:
  %r6 = phi i32 [%r0, %0], [%r8, %b3813], [%r8, %b3815]
  %r7 = phi i32 [%r1, %0], [%r7, %b3813], [%r7, %b3815]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3805, label %b3808

b3805:
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b3794, label %b4236

b3808:
  %r8 = add i32 %r6, 1
  br label %b3810

b3794:
  %r18 = phi i32 [%r7, %b3805], [%r17, %b3801]
  %r15 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b1532, label %b3796

b4236:
  %r19 = add i32 %r7, 1
  br label %b3801

b3810:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1309(i32 %r21, i32 0, i32 %r3)
  %r20 = icmp eq i32 %r3, 10
  br i1 %r20, label %b3813, label %b3815

b1532:
  %r27 = phi i32 [%r18, %b3794], [%r32, %b3766]
  %r31 = and i32 %r27, 15
  %r29 = call i32 @func_b1345(i32 %r31, i32 9)
  %r28 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = trunc i32 %r29 to i8
  store i8 %r30, i8* %r28
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r27, i32 32)
  %r25 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r26 = load i8, i8* %r25
  %r24 = zext i8 %r26 to i32
  %r23 = icmp eq i32 %r24, 0
  br i1 %r23, label %b303, label %b3765

b3796:
  %r33 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b3770

b3801:
  %r39 = phi i32 [%r10, %b4236], [%r35, %b3799]
  %r38 = phi i32 [%r19, %b4236], [%r40, %b3799]
  %r17 = phi i32 [%r7, %b4236], [%r17, %b3799]
  call void @func_b1589(i32 %r39)
  %r36 = inttoptr i32 %r38 to i8*
  %r37 = load i8, i8* %r36
  %r35 = zext i8 %r37 to i32
  %r34 = icmp eq i32 %r35, 0
  br i1 %r34, label %b3794, label %b3799

b3813:
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1309(i32 %r41, i32 0, i32 13)
  call void @func_b1580(i32 %r3)
  br label %b3806

b3815:
  call void @func_b1580(i32 %r3)
  br label %b3806

b303:
  ret void

b3765:
  %r43 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c356

b3770:
  %r45 = phi i32 [%r14, %b3796], [%r51, %b3768]
  %r50 = phi i32 [%r33, %b3796], [%r49, %b3768]
  %r48 = phi i32 [%r18, %b3796], [%r32, %b3768]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1309(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3773, label %b3775

b3799:
  %r40 = add i32 %r38, 1
  br label %b3801

c356:
  tail call void @func_b3228(i32 %r24, i32 %r43)
  ret void

b3773:
  %r53 = call i32 @inb(i32 1021)
  %r52 = and i32 %r53, 96
  call void @func_b1309(i32 %r52, i32 0, i32 13)
  call void @func_b1580(i32 %r45)
  br label %b3766

b3775:
  call void @func_b1580(i32 %r45)
  br label %b3766

b3766:
  %r57 = phi i32 [%r50, %b3773], [%r50, %b3775]
  %r32 = phi i32 [%r48, %b3773], [%r48, %b3775]
  %r55 = inttoptr i32 %r57 to i8*
  %r56 = load i8, i8* %r55
  %r51 = zext i8 %r56 to i32
  %r54 = icmp eq i32 %r51, 0
  br i1 %r54, label %b1532, label %b3768

b3768:
  %r49 = add i32 %r57, 1
  br label %b3770
}

define internal void @func_b3930(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3930

b3930:
  %r4 = phi i32 [%r0, %0], [%r11, %b3923]
  %r10 = phi i32 [%r1, %0], [%r9, %b3923]
  %r8 = phi i32 [%r2, %0], [%r7, %b3923]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1309(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b4237, label %b4238

b4237:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1309(i32 %r12, i32 0, i32 13)
  call void @func_b1580(i32 %r4)
  br label %b3921

b4238:
  call void @func_b1580(i32 %r4)
  br label %b3921

b3921:
  %r17 = phi i32 [%r10, %b4237], [%r10, %b4238]
  %r7 = phi i32 [%r8, %b4237], [%r8, %b4238]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b3918, label %b3923

b3918:
  %r20 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b3833, label %b3920

b3923:
  %r9 = add i32 %r17, 1
  br label %b3930

b3833:
  %r24 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b3805, label %b3838

b3920:
  %r30 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b3228(i32 %r19, i32 %r30)
  %r28 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b3805, label %b3838

b3805:
  %r35 = phi i32 [%r7, %b3833], [%r7, %b3920], [%r36, %b3806]
  %r33 = inttoptr i32 %r35 to i8*
  %r34 = load i8, i8* %r33
  %r32 = zext i8 %r34 to i32
  %r31 = icmp eq i32 %r32, 0
  br i1 %r31, label %b3794, label %b4236

b3838:
  %r39 = phi i32 [%r23, %b3833], [%r27, %b3920]
  %r38 = phi i32 [%r7, %b3833], [%r7, %b3920]
  %r37 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3810

b3794:
  %r45 = phi i32 [%r35, %b3805], [%r44, %b3801]
  %r42 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r43 = load i8, i8* %r42
  %r41 = zext i8 %r43 to i32
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b1532, label %b3796

b4236:
  %r46 = add i32 %r35, 1
  br label %b3801

b3810:
  %r48 = phi i32 [%r39, %b3838], [%r54, %b3808]
  %r53 = phi i32 [%r37, %b3838], [%r52, %b3808]
  %r51 = phi i32 [%r38, %b3838], [%r36, %b3808]
  %r50 = call i32 @inb(i32 1021)
  %r49 = and i32 %r50, 96
  call void @func_b1309(i32 %r49, i32 0, i32 %r48)
  %r47 = icmp eq i32 %r48, 10
  br i1 %r47, label %b3813, label %b3815

b1532:
  %r59 = phi i32 [%r45, %b3794], [%r64, %b3766]
  %r63 = and i32 %r59, 15
  %r61 = call i32 @func_b1345(i32 %r63, i32 9)
  %r60 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r62 = trunc i32 %r61 to i8
  store i8 %r62, i8* %r60
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r59, i32 32)
  %r57 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r58 = load i8, i8* %r57
  %r56 = zext i8 %r58 to i32
  %r55 = icmp eq i32 %r56, 0
  br i1 %r55, label %b303, label %b3765

b3796:
  %r65 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b3770

b3801:
  %r71 = phi i32 [%r32, %b4236], [%r67, %b3799]
  %r70 = phi i32 [%r46, %b4236], [%r72, %b3799]
  %r44 = phi i32 [%r35, %b4236], [%r44, %b3799]
  call void @func_b1589(i32 %r71)
  %r68 = inttoptr i32 %r70 to i8*
  %r69 = load i8, i8* %r68
  %r67 = zext i8 %r69 to i32
  %r66 = icmp eq i32 %r67, 0
  br i1 %r66, label %b3794, label %b3799

b3813:
  %r74 = call i32 @inb(i32 1021)
  %r73 = and i32 %r74, 96
  call void @func_b1309(i32 %r73, i32 0, i32 13)
  call void @func_b1580(i32 %r48)
  br label %b3806

b3815:
  call void @func_b1580(i32 %r48)
  br label %b3806

b303:
  ret void

b3765:
  %r75 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c385

b3770:
  %r77 = phi i32 [%r41, %b3796], [%r83, %b3768]
  %r82 = phi i32 [%r65, %b3796], [%r81, %b3768]
  %r80 = phi i32 [%r45, %b3796], [%r64, %b3768]
  %r79 = call i32 @inb(i32 1021)
  %r78 = and i32 %r79, 96
  call void @func_b1309(i32 %r78, i32 0, i32 %r77)
  %r76 = icmp eq i32 %r77, 10
  br i1 %r76, label %b3773, label %b3775

b3799:
  %r72 = add i32 %r70, 1
  br label %b3801

b3806:
  %r87 = phi i32 [%r53, %b3813], [%r53, %b3815]
  %r36 = phi i32 [%r51, %b3813], [%r51, %b3815]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r54 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r54, 0
  br i1 %r84, label %b3805, label %b3808

c385:
  tail call void @func_b3228(i32 %r56, i32 %r75)
  ret void

b3773:
  %r89 = call i32 @inb(i32 1021)
  %r88 = and i32 %r89, 96
  call void @func_b1309(i32 %r88, i32 0, i32 13)
  call void @func_b1580(i32 %r77)
  br label %b3766

b3775:
  call void @func_b1580(i32 %r77)
  br label %b3766

b3808:
  %r52 = add i32 %r87, 1
  br label %b3810

b3766:
  %r93 = phi i32 [%r82, %b3773], [%r82, %b3775]
  %r64 = phi i32 [%r80, %b3773], [%r80, %b3775]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r83 = zext i8 %r92 to i32
  %r90 = icmp eq i32 %r83, 0
  br i1 %r90, label %b1532, label %b3768

b3768:
  %r81 = add i32 %r93, 1
  br label %b3770
}

define internal void @func_b3844(i32 %r0, i32 %r1) {
  br label %b3844

b3844:
  %r6 = phi i32 [%r0, %0], [%r8, %b3851], [%r8, %b3853]
  %r7 = phi i32 [%r1, %0], [%r7, %b3851], [%r7, %b3853]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3839, label %b3846

b3839:
  %r11 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b3833, label %b3841

b3846:
  %r8 = add i32 %r6, 1
  br label %b3848

b3833:
  %r15 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3805, label %b3838

b3841:
  %r21 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3228(i32 %r10, i32 %r21)
  %r19 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r20 = load i8, i8* %r19
  %r18 = zext i8 %r20 to i32
  %r17 = icmp eq i32 %r18, 0
  br i1 %r17, label %b3805, label %b3838

b3848:
  %r24 = call i32 @inb(i32 1021)
  %r23 = and i32 %r24, 96
  call void @func_b1309(i32 %r23, i32 0, i32 %r3)
  %r22 = icmp eq i32 %r3, 10
  br i1 %r22, label %b3851, label %b3853

b3805:
  %r29 = phi i32 [%r7, %b3833], [%r7, %b3841], [%r30, %b3806]
  %r27 = inttoptr i32 %r29 to i8*
  %r28 = load i8, i8* %r27
  %r26 = zext i8 %r28 to i32
  %r25 = icmp eq i32 %r26, 0
  br i1 %r25, label %b3794, label %b4236

b3838:
  %r33 = phi i32 [%r14, %b3833], [%r18, %b3841]
  %r32 = phi i32 [%r7, %b3833], [%r7, %b3841]
  %r31 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3810

b3851:
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1309(i32 %r34, i32 0, i32 13)
  call void @func_b1580(i32 %r3)
  br label %b3844

b3853:
  call void @func_b1580(i32 %r3)
  br label %b3844

b3794:
  %r41 = phi i32 [%r29, %b3805], [%r40, %b3801]
  %r38 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  %r36 = icmp eq i32 %r37, 0
  br i1 %r36, label %b1532, label %b3796

b4236:
  %r42 = add i32 %r29, 1
  br label %b3801

b3810:
  %r44 = phi i32 [%r33, %b3838], [%r50, %b3808]
  %r49 = phi i32 [%r31, %b3838], [%r48, %b3808]
  %r47 = phi i32 [%r32, %b3838], [%r30, %b3808]
  %r46 = call i32 @inb(i32 1021)
  %r45 = and i32 %r46, 96
  call void @func_b1309(i32 %r45, i32 0, i32 %r44)
  %r43 = icmp eq i32 %r44, 10
  br i1 %r43, label %b3813, label %b3815

b1532:
  %r55 = phi i32 [%r41, %b3794], [%r60, %b3766]
  %r59 = and i32 %r55, 15
  %r57 = call i32 @func_b1345(i32 %r59, i32 9)
  %r56 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r58 = trunc i32 %r57 to i8
  store i8 %r58, i8* %r56
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r55, i32 32)
  %r53 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r54 = load i8, i8* %r53
  %r52 = zext i8 %r54 to i32
  %r51 = icmp eq i32 %r52, 0
  br i1 %r51, label %b303, label %b3765

b3796:
  %r61 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b3770

b3801:
  %r67 = phi i32 [%r26, %b4236], [%r63, %b3799]
  %r66 = phi i32 [%r42, %b4236], [%r68, %b3799]
  %r40 = phi i32 [%r29, %b4236], [%r40, %b3799]
  call void @func_b1589(i32 %r67)
  %r64 = inttoptr i32 %r66 to i8*
  %r65 = load i8, i8* %r64
  %r63 = zext i8 %r65 to i32
  %r62 = icmp eq i32 %r63, 0
  br i1 %r62, label %b3794, label %b3799

b3813:
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1309(i32 %r69, i32 0, i32 13)
  call void @func_b1580(i32 %r44)
  br label %b3806

b3815:
  call void @func_b1580(i32 %r44)
  br label %b3806

b303:
  ret void

b3765:
  %r71 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c415

b3770:
  %r73 = phi i32 [%r37, %b3796], [%r79, %b3768]
  %r78 = phi i32 [%r61, %b3796], [%r77, %b3768]
  %r76 = phi i32 [%r41, %b3796], [%r60, %b3768]
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1309(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b3773, label %b3775

b3799:
  %r68 = add i32 %r66, 1
  br label %b3801

b3806:
  %r83 = phi i32 [%r49, %b3813], [%r49, %b3815]
  %r30 = phi i32 [%r47, %b3813], [%r47, %b3815]
  %r81 = inttoptr i32 %r83 to i8*
  %r82 = load i8, i8* %r81
  %r50 = zext i8 %r82 to i32
  %r80 = icmp eq i32 %r50, 0
  br i1 %r80, label %b3805, label %b3808

c415:
  tail call void @func_b3228(i32 %r52, i32 %r71)
  ret void

b3773:
  %r85 = call i32 @inb(i32 1021)
  %r84 = and i32 %r85, 96
  call void @func_b1309(i32 %r84, i32 0, i32 13)
  call void @func_b1580(i32 %r73)
  br label %b3766

b3775:
  call void @func_b1580(i32 %r73)
  br label %b3766

b3808:
  %r48 = add i32 %r83, 1
  br label %b3810

b3766:
  %r89 = phi i32 [%r78, %b3773], [%r78, %b3775]
  %r60 = phi i32 [%r76, %b3773], [%r76, %b3775]
  %r87 = inttoptr i32 %r89 to i8*
  %r88 = load i8, i8* %r87
  %r79 = zext i8 %r88 to i32
  %r86 = icmp eq i32 %r79, 0
  br i1 %r86, label %b1532, label %b3768

b3768:
  %r77 = add i32 %r89, 1
  br label %b3770
}

define internal void @func_b4014(i32 %r0, i32 %r1) {
  br label %b4014

b4014:
  %r3 = phi i32 [%r0, %0], [%r8, %b4007]
  %r7 = phi i32 [%r1, %0], [%r6, %b4007]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1309(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b4240, label %b4241

b4240:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1309(i32 %r13, i32 0, i32 13)
  call void @func_b1580(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1538, label %b4007

b4241:
  call void @func_b1580(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1538, label %b4007

b1538:
  %r24 = inttoptr i32 4104 to i32*
  %r23 = load i32, i32* %r24
  %r21 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b3992, label %b4002

b4007:
  %r8 = phi i32 [%r10, %b4240], [%r16, %b4241]
  %r25 = phi i32 [%r7, %b4240], [%r7, %b4241]
  %r6 = add i32 %r25, 1
  br label %b4014

b3992:
  %r28 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b3980, label %b3994

b4002:
  %r36 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b3930(i32 %r20, i32 %r36, i32 %r23)
  %r35 = inttoptr i32 4108 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b3839, label %b3999

b3980:
  %r39 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b3973, label %b3991

b3994:
  %r45 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b3228(i32 %r27, i32 %r45)
  %r43 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3973, label %b3991

b3839:
  %r57 = phi i32 [%r34, %b4002], [%r56, %b3986], [%r55, %b3988], [%r54, %b3844], [%r53, %b2215], [%r52, %b3947], [%r51, %b3962], [%r50, %b3964]
  %r48 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r49 = load i8, i8* %r48
  %r47 = zext i8 %r49 to i32
  %r46 = icmp eq i32 %r47, 0
  br i1 %r46, label %b3833, label %b3841

b3999:
  %r66 = phi i32 [%r31, %b4002], [%r65, %b3986], [%r64, %b3988], [%r63, %b2215], [%r62, %b3947], [%r61, %b3962], [%r60, %b3964]
  %r59 = phi i32 [%r34, %b4002], [%r56, %b3986], [%r55, %b3988], [%r53, %b2215], [%r52, %b3947], [%r51, %b3962], [%r50, %b3964]
  %r58 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3848

b3973:
  %r71 = phi i32 [%r23, %b3980], [%r23, %b3994]
  %r69 = inttoptr i32 %r71 to i8*
  %r70 = load i8, i8* %r69
  %r68 = zext i8 %r70 to i32
  %r67 = icmp eq i32 %r68, 0
  br i1 %r67, label %b3956, label %b4239

b3991:
  %r73 = phi i32 [%r38, %b3980], [%r42, %b3994]
  %r77 = phi i32 [%r23, %b3980], [%r23, %b3994]
  %r76 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1309(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b3986, label %b3988

b3833:
  %r80 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3805, label %b3838

b3841:
  %r86 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3228(i32 %r47, i32 %r86)
  %r84 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r85 = load i8, i8* %r84
  %r83 = zext i8 %r85 to i32
  %r82 = icmp eq i32 %r83, 0
  br i1 %r82, label %b3805, label %b3838

b3848:
  %r88 = phi i32 [%r66, %b3999], [%r94, %b3846]
  %r93 = phi i32 [%r58, %b3999], [%r92, %b3846]
  %r91 = phi i32 [%r59, %b3999], [%r54, %b3846]
  %r90 = call i32 @inb(i32 1021)
  %r89 = and i32 %r90, 96
  call void @func_b1309(i32 %r89, i32 0, i32 %r88)
  %r87 = icmp eq i32 %r88, 10
  br i1 %r87, label %b3851, label %b3853

b3956:
  %r100 = phi i32 [%r71, %b3973], [%r99, %b3969]
  %r97 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r98 = load i8, i8* %r97
  %r96 = zext i8 %r98 to i32
  %r95 = icmp eq i32 %r96, 0
  br i1 %r95, label %b2290, label %b3958

b4239:
  %r101 = add i32 %r71, 1
  br label %b3969

b3986:
  %r107 = call i32 @inb(i32 1021)
  %r106 = and i32 %r107, 96
  call void @func_b1309(i32 %r106, i32 0, i32 13)
  call void @func_b1580(i32 %r73)
  call void @func_b3806(i32 %r76, i32 %r77)
  %r105 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r105
  %r103 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r104 = load i8, i8* %r103
  %r65 = zext i8 %r104 to i32
  %r102 = icmp eq i32 %r65, 0
  br i1 %r102, label %b3839, label %b3999

b3988:
  call void @func_b1580(i32 %r73)
  call void @func_b3806(i32 %r76, i32 %r77)
  %r111 = inttoptr i32 4108 to i32*
  %r55 = load i32, i32* %r111
  %r109 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r110 = load i8, i8* %r109
  %r64 = zext i8 %r110 to i32
  %r108 = icmp eq i32 %r64, 0
  br i1 %r108, label %b3839, label %b3999

b3805:
  %r116 = phi i32 [%r57, %b3833], [%r57, %b3841], [%r117, %b3806]
  %r114 = inttoptr i32 %r116 to i8*
  %r115 = load i8, i8* %r114
  %r113 = zext i8 %r115 to i32
  %r112 = icmp eq i32 %r113, 0
  br i1 %r112, label %b3794, label %b4236

b3838:
  %r120 = phi i32 [%r79, %b3833], [%r83, %b3841]
  %r119 = phi i32 [%r57, %b3833], [%r57, %b3841]
  %r118 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3810

b3851:
  %r122 = call i32 @inb(i32 1021)
  %r121 = and i32 %r122, 96
  call void @func_b1309(i32 %r121, i32 0, i32 13)
  call void @func_b1580(i32 %r88)
  br label %b3844

b3853:
  call void @func_b1580(i32 %r88)
  br label %b3844

b2290:
  %r130 = and i32 %r100, 15
  %r128 = call i32 @func_b1345(i32 %r130, i32 9)
  %r127 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r129 = trunc i32 %r128 to i8
  store i8 %r129, i8* %r127
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r100, i32 32)
  %r125 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b2215, label %b3947

b3958:
  %r134 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1309(i32 %r132, i32 0, i32 %r96)
  %r131 = icmp eq i32 %r96, 10
  br i1 %r131, label %b3962, label %b3964

b3969:
  %r140 = phi i32 [%r68, %b4239], [%r136, %b3967]
  %r139 = phi i32 [%r101, %b4239], [%r141, %b3967]
  %r99 = phi i32 [%r71, %b4239], [%r99, %b3967]
  call void @func_b1589(i32 %r140)
  %r137 = inttoptr i32 %r139 to i8*
  %r138 = load i8, i8* %r137
  %r136 = zext i8 %r138 to i32
  %r135 = icmp eq i32 %r136, 0
  br i1 %r135, label %b3956, label %b3967

b3794:
  %r147 = phi i32 [%r116, %b3805], [%r146, %b3801]
  %r144 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r145 = load i8, i8* %r144
  %r143 = zext i8 %r145 to i32
  %r142 = icmp eq i32 %r143, 0
  br i1 %r142, label %b1532, label %b3796

b4236:
  %r148 = add i32 %r116, 1
  br label %b3801

b3810:
  %r150 = phi i32 [%r120, %b3838], [%r156, %b3808]
  %r155 = phi i32 [%r118, %b3838], [%r154, %b3808]
  %r153 = phi i32 [%r119, %b3838], [%r117, %b3808]
  %r152 = call i32 @inb(i32 1021)
  %r151 = and i32 %r152, 96
  call void @func_b1309(i32 %r151, i32 0, i32 %r150)
  %r149 = icmp eq i32 %r150, 10
  br i1 %r149, label %b3813, label %b3815

b3844:
  %r160 = phi i32 [%r93, %b3851], [%r93, %b3853]
  %r54 = phi i32 [%r91, %b3851], [%r91, %b3853]
  %r158 = inttoptr i32 %r160 to i8*
  %r159 = load i8, i8* %r158
  %r94 = zext i8 %r159 to i32
  %r157 = icmp eq i32 %r94, 0
  br i1 %r157, label %b3839, label %b3846

b2215:
  %r164 = inttoptr i32 4108 to i32*
  %r53 = load i32, i32* %r164
  %r162 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r163 = load i8, i8* %r162
  %r63 = zext i8 %r163 to i32
  %r161 = icmp eq i32 %r63, 0
  br i1 %r161, label %b3839, label %b3999

b3947:
  %r169 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b3228(i32 %r124, i32 %r169)
  %r168 = inttoptr i32 4108 to i32*
  %r52 = load i32, i32* %r168
  %r166 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r62 = zext i8 %r167 to i32
  %r165 = icmp eq i32 %r62, 0
  br i1 %r165, label %b3839, label %b3999

b3962:
  %r175 = call i32 @inb(i32 1021)
  %r174 = and i32 %r175, 96
  call void @func_b1309(i32 %r174, i32 0, i32 13)
  call void @func_b1580(i32 %r96)
  call void @func_b3766(i32 %r134, i32 %r100)
  %r173 = inttoptr i32 4108 to i32*
  %r51 = load i32, i32* %r173
  %r171 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r172 = load i8, i8* %r171
  %r61 = zext i8 %r172 to i32
  %r170 = icmp eq i32 %r61, 0
  br i1 %r170, label %b3839, label %b3999

b3964:
  call void @func_b1580(i32 %r96)
  call void @func_b3766(i32 %r134, i32 %r100)
  %r179 = inttoptr i32 4108 to i32*
  %r50 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r60 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r60, 0
  br i1 %r176, label %b3839, label %b3999

b3967:
  %r141 = add i32 %r139, 1
  br label %b3969

b1532:
  %r184 = phi i32 [%r147, %b3794], [%r189, %b3766]
  %r188 = and i32 %r184, 15
  %r186 = call i32 @func_b1345(i32 %r188, i32 9)
  %r185 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r187 = trunc i32 %r186 to i8
  store i8 %r187, i8* %r185
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r184, i32 32)
  %r182 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r181 = zext i8 %r183 to i32
  %r180 = icmp eq i32 %r181, 0
  br i1 %r180, label %b303, label %b3765

b3796:
  %r190 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b3770

b3801:
  %r196 = phi i32 [%r113, %b4236], [%r192, %b3799]
  %r195 = phi i32 [%r148, %b4236], [%r197, %b3799]
  %r146 = phi i32 [%r116, %b4236], [%r146, %b3799]
  call void @func_b1589(i32 %r196)
  %r193 = inttoptr i32 %r195 to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b3794, label %b3799

b3813:
  %r199 = call i32 @inb(i32 1021)
  %r198 = and i32 %r199, 96
  call void @func_b1309(i32 %r198, i32 0, i32 13)
  call void @func_b1580(i32 %r150)
  br label %b3806

b3815:
  call void @func_b1580(i32 %r150)
  br label %b3806

b3846:
  %r92 = add i32 %r160, 1
  br label %b3848

b303:
  ret void

b3765:
  %r200 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c469

b3770:
  %r202 = phi i32 [%r143, %b3796], [%r208, %b3768]
  %r207 = phi i32 [%r190, %b3796], [%r206, %b3768]
  %r205 = phi i32 [%r147, %b3796], [%r189, %b3768]
  %r204 = call i32 @inb(i32 1021)
  %r203 = and i32 %r204, 96
  call void @func_b1309(i32 %r203, i32 0, i32 %r202)
  %r201 = icmp eq i32 %r202, 10
  br i1 %r201, label %b3773, label %b3775

b3799:
  %r197 = add i32 %r195, 1
  br label %b3801

b3806:
  %r212 = phi i32 [%r155, %b3813], [%r155, %b3815]
  %r117 = phi i32 [%r153, %b3813], [%r153, %b3815]
  %r210 = inttoptr i32 %r212 to i8*
  %r211 = load i8, i8* %r210
  %r156 = zext i8 %r211 to i32
  %r209 = icmp eq i32 %r156, 0
  br i1 %r209, label %b3805, label %b3808

c469:
  tail call void @func_b3228(i32 %r181, i32 %r200)
  ret void

b3773:
  %r214 = call i32 @inb(i32 1021)
  %r213 = and i32 %r214, 96
  call void @func_b1309(i32 %r213, i32 0, i32 13)
  call void @func_b1580(i32 %r202)
  br label %b3766

b3775:
  call void @func_b1580(i32 %r202)
  br label %b3766

b3808:
  %r154 = add i32 %r212, 1
  br label %b3810

b3766:
  %r218 = phi i32 [%r207, %b3773], [%r207, %b3775]
  %r189 = phi i32 [%r205, %b3773], [%r205, %b3775]
  %r216 = inttoptr i32 %r218 to i8*
  %r217 = load i8, i8* %r216
  %r208 = zext i8 %r217 to i32
  %r215 = icmp eq i32 %r208, 0
  br i1 %r215, label %b1532, label %b3768

b3768:
  %r206 = add i32 %r218, 1
  br label %b3770
}

define internal void @func_b4032(i32 %r0, i32 %r1) {
  br label %b4032

b4032:
  %r3 = phi i32 [%r0, %0], [%r8, %b4025]
  %r7 = phi i32 [%r1, %0], [%r6, %b4025]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1309(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b4242, label %b4243

b4242:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1309(i32 %r13, i32 0, i32 13)
  call void @func_b1580(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1540, label %b4025

b4243:
  call void @func_b1580(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1540, label %b4025

b1540:
  %r28 = inttoptr i32 4100 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b3517(i32 %r24, i32 %r25, i32 8, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1538, label %b4022

b4025:
  %r8 = phi i32 [%r10, %b4242], [%r16, %b4243]
  %r29 = phi i32 [%r7, %b4242], [%r7, %b4243]
  %r6 = add i32 %r29, 1
  br label %b4032

b1538:
  %r35 = inttoptr i32 4104 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b3992, label %b4002

b4022:
  %r36 = add i32 ptrtoint(i8* @str15 to i32), 1
  br label %c485

b3992:
  %r39 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b3980, label %b3994

b4002:
  %r47 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b3930(i32 %r31, i32 %r47, i32 %r34)
  %r46 = inttoptr i32 4108 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3839, label %b3999

c485:
  tail call void @func_b4014(i32 %r20, i32 %r36)
  ret void

b3980:
  %r50 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b3973, label %b3991

b3994:
  %r56 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b3228(i32 %r38, i32 %r56)
  %r54 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b3973, label %b3991

b3839:
  %r68 = phi i32 [%r45, %b4002], [%r67, %b3986], [%r66, %b3988], [%r65, %b3844], [%r64, %b2215], [%r63, %b3947], [%r62, %b3962], [%r61, %b3964]
  %r59 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r60 = load i8, i8* %r59
  %r58 = zext i8 %r60 to i32
  %r57 = icmp eq i32 %r58, 0
  br i1 %r57, label %b3833, label %b3841

b3999:
  %r77 = phi i32 [%r42, %b4002], [%r76, %b3986], [%r75, %b3988], [%r74, %b2215], [%r73, %b3947], [%r72, %b3962], [%r71, %b3964]
  %r70 = phi i32 [%r45, %b4002], [%r67, %b3986], [%r66, %b3988], [%r64, %b2215], [%r63, %b3947], [%r62, %b3962], [%r61, %b3964]
  %r69 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3848

b3973:
  %r82 = phi i32 [%r34, %b3980], [%r34, %b3994]
  %r80 = inttoptr i32 %r82 to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3956, label %b4239

b3991:
  %r84 = phi i32 [%r49, %b3980], [%r53, %b3994]
  %r88 = phi i32 [%r34, %b3980], [%r34, %b3994]
  %r87 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r86 = call i32 @inb(i32 1021)
  %r85 = and i32 %r86, 96
  call void @func_b1309(i32 %r85, i32 0, i32 %r84)
  %r83 = icmp eq i32 %r84, 10
  br i1 %r83, label %b3986, label %b3988

b3833:
  %r91 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b3805, label %b3838

b3841:
  %r97 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3228(i32 %r58, i32 %r97)
  %r95 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b3805, label %b3838

b3848:
  %r99 = phi i32 [%r77, %b3999], [%r105, %b3846]
  %r104 = phi i32 [%r69, %b3999], [%r103, %b3846]
  %r102 = phi i32 [%r70, %b3999], [%r65, %b3846]
  %r101 = call i32 @inb(i32 1021)
  %r100 = and i32 %r101, 96
  call void @func_b1309(i32 %r100, i32 0, i32 %r99)
  %r98 = icmp eq i32 %r99, 10
  br i1 %r98, label %b3851, label %b3853

b3956:
  %r111 = phi i32 [%r82, %b3973], [%r110, %b3969]
  %r108 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  %r106 = icmp eq i32 %r107, 0
  br i1 %r106, label %b2290, label %b3958

b4239:
  %r112 = add i32 %r82, 1
  br label %b3969

b3986:
  %r118 = call i32 @inb(i32 1021)
  %r117 = and i32 %r118, 96
  call void @func_b1309(i32 %r117, i32 0, i32 13)
  call void @func_b1580(i32 %r84)
  call void @func_b3806(i32 %r87, i32 %r88)
  %r116 = inttoptr i32 4108 to i32*
  %r67 = load i32, i32* %r116
  %r114 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r115 = load i8, i8* %r114
  %r76 = zext i8 %r115 to i32
  %r113 = icmp eq i32 %r76, 0
  br i1 %r113, label %b3839, label %b3999

b3988:
  call void @func_b1580(i32 %r84)
  call void @func_b3806(i32 %r87, i32 %r88)
  %r122 = inttoptr i32 4108 to i32*
  %r66 = load i32, i32* %r122
  %r120 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r75 = zext i8 %r121 to i32
  %r119 = icmp eq i32 %r75, 0
  br i1 %r119, label %b3839, label %b3999

b3805:
  %r127 = phi i32 [%r68, %b3833], [%r68, %b3841], [%r128, %b3806]
  %r125 = inttoptr i32 %r127 to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b3794, label %b4236

b3838:
  %r131 = phi i32 [%r90, %b3833], [%r94, %b3841]
  %r130 = phi i32 [%r68, %b3833], [%r68, %b3841]
  %r129 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3810

b3851:
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1309(i32 %r132, i32 0, i32 13)
  call void @func_b1580(i32 %r99)
  br label %b3844

b3853:
  call void @func_b1580(i32 %r99)
  br label %b3844

b2290:
  %r141 = and i32 %r111, 15
  %r139 = call i32 @func_b1345(i32 %r141, i32 9)
  %r138 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r140 = trunc i32 %r139 to i8
  store i8 %r140, i8* %r138
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r111, i32 32)
  %r136 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b2215, label %b3947

b3958:
  %r145 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1309(i32 %r143, i32 0, i32 %r107)
  %r142 = icmp eq i32 %r107, 10
  br i1 %r142, label %b3962, label %b3964

b3969:
  %r151 = phi i32 [%r79, %b4239], [%r147, %b3967]
  %r150 = phi i32 [%r112, %b4239], [%r152, %b3967]
  %r110 = phi i32 [%r82, %b4239], [%r110, %b3967]
  call void @func_b1589(i32 %r151)
  %r148 = inttoptr i32 %r150 to i8*
  %r149 = load i8, i8* %r148
  %r147 = zext i8 %r149 to i32
  %r146 = icmp eq i32 %r147, 0
  br i1 %r146, label %b3956, label %b3967

b3794:
  %r158 = phi i32 [%r127, %b3805], [%r157, %b3801]
  %r155 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r156 = load i8, i8* %r155
  %r154 = zext i8 %r156 to i32
  %r153 = icmp eq i32 %r154, 0
  br i1 %r153, label %b1532, label %b3796

b4236:
  %r159 = add i32 %r127, 1
  br label %b3801

b3810:
  %r161 = phi i32 [%r131, %b3838], [%r167, %b3808]
  %r166 = phi i32 [%r129, %b3838], [%r165, %b3808]
  %r164 = phi i32 [%r130, %b3838], [%r128, %b3808]
  %r163 = call i32 @inb(i32 1021)
  %r162 = and i32 %r163, 96
  call void @func_b1309(i32 %r162, i32 0, i32 %r161)
  %r160 = icmp eq i32 %r161, 10
  br i1 %r160, label %b3813, label %b3815

b3844:
  %r171 = phi i32 [%r104, %b3851], [%r104, %b3853]
  %r65 = phi i32 [%r102, %b3851], [%r102, %b3853]
  %r169 = inttoptr i32 %r171 to i8*
  %r170 = load i8, i8* %r169
  %r105 = zext i8 %r170 to i32
  %r168 = icmp eq i32 %r105, 0
  br i1 %r168, label %b3839, label %b3846

b2215:
  %r175 = inttoptr i32 4108 to i32*
  %r64 = load i32, i32* %r175
  %r173 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r174 = load i8, i8* %r173
  %r74 = zext i8 %r174 to i32
  %r172 = icmp eq i32 %r74, 0
  br i1 %r172, label %b3839, label %b3999

b3947:
  %r180 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b3228(i32 %r135, i32 %r180)
  %r179 = inttoptr i32 4108 to i32*
  %r63 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r73 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r73, 0
  br i1 %r176, label %b3839, label %b3999

b3962:
  %r186 = call i32 @inb(i32 1021)
  %r185 = and i32 %r186, 96
  call void @func_b1309(i32 %r185, i32 0, i32 13)
  call void @func_b1580(i32 %r107)
  call void @func_b3766(i32 %r145, i32 %r111)
  %r184 = inttoptr i32 4108 to i32*
  %r62 = load i32, i32* %r184
  %r182 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r72 = zext i8 %r183 to i32
  %r181 = icmp eq i32 %r72, 0
  br i1 %r181, label %b3839, label %b3999

b3964:
  call void @func_b1580(i32 %r107)
  call void @func_b3766(i32 %r145, i32 %r111)
  %r190 = inttoptr i32 4108 to i32*
  %r61 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r71 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r71, 0
  br i1 %r187, label %b3839, label %b3999

b3967:
  %r152 = add i32 %r150, 1
  br label %b3969

b1532:
  %r195 = phi i32 [%r158, %b3794], [%r200, %b3766]
  %r199 = and i32 %r195, 15
  %r197 = call i32 @func_b1345(i32 %r199, i32 9)
  %r196 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r198 = trunc i32 %r197 to i8
  store i8 %r198, i8* %r196
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r195, i32 32)
  %r193 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b303, label %b3765

b3796:
  %r201 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b3770

b3801:
  %r207 = phi i32 [%r124, %b4236], [%r203, %b3799]
  %r206 = phi i32 [%r159, %b4236], [%r208, %b3799]
  %r157 = phi i32 [%r127, %b4236], [%r157, %b3799]
  call void @func_b1589(i32 %r207)
  %r204 = inttoptr i32 %r206 to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b3794, label %b3799

b3813:
  %r210 = call i32 @inb(i32 1021)
  %r209 = and i32 %r210, 96
  call void @func_b1309(i32 %r209, i32 0, i32 13)
  call void @func_b1580(i32 %r161)
  br label %b3806

b3815:
  call void @func_b1580(i32 %r161)
  br label %b3806

b3846:
  %r103 = add i32 %r171, 1
  br label %b3848

b303:
  ret void

b3765:
  %r211 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c526

b3770:
  %r213 = phi i32 [%r154, %b3796], [%r219, %b3768]
  %r218 = phi i32 [%r201, %b3796], [%r217, %b3768]
  %r216 = phi i32 [%r158, %b3796], [%r200, %b3768]
  %r215 = call i32 @inb(i32 1021)
  %r214 = and i32 %r215, 96
  call void @func_b1309(i32 %r214, i32 0, i32 %r213)
  %r212 = icmp eq i32 %r213, 10
  br i1 %r212, label %b3773, label %b3775

b3799:
  %r208 = add i32 %r206, 1
  br label %b3801

b3806:
  %r223 = phi i32 [%r166, %b3813], [%r166, %b3815]
  %r128 = phi i32 [%r164, %b3813], [%r164, %b3815]
  %r221 = inttoptr i32 %r223 to i8*
  %r222 = load i8, i8* %r221
  %r167 = zext i8 %r222 to i32
  %r220 = icmp eq i32 %r167, 0
  br i1 %r220, label %b3805, label %b3808

c526:
  tail call void @func_b3228(i32 %r192, i32 %r211)
  ret void

b3773:
  %r225 = call i32 @inb(i32 1021)
  %r224 = and i32 %r225, 96
  call void @func_b1309(i32 %r224, i32 0, i32 13)
  call void @func_b1580(i32 %r213)
  br label %b3766

b3775:
  call void @func_b1580(i32 %r213)
  br label %b3766

b3808:
  %r165 = add i32 %r223, 1
  br label %b3810

b3766:
  %r229 = phi i32 [%r218, %b3773], [%r218, %b3775]
  %r200 = phi i32 [%r216, %b3773], [%r216, %b3775]
  %r227 = inttoptr i32 %r229 to i8*
  %r228 = load i8, i8* %r227
  %r219 = zext i8 %r228 to i32
  %r226 = icmp eq i32 %r219, 0
  br i1 %r226, label %b1532, label %b3768

b3768:
  %r217 = add i32 %r229, 1
  br label %b3770
}

define internal void @func_b4050(i32 %r0, i32 %r1) {
  br label %b4050

b4050:
  %r3 = phi i32 [%r0, %0], [%r8, %b4043]
  %r7 = phi i32 [%r1, %0], [%r6, %b4043]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1309(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b4244, label %b4245

b4244:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1309(i32 %r13, i32 0, i32 13)
  call void @func_b1580(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1542, label %b4043

b4245:
  call void @func_b1580(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1542, label %b4043

b1542:
  %r28 = inttoptr i32 4096 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b3379(i32 %r24, i32 %r25, i32 12, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str13 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1540, label %b4040

b4043:
  %r8 = phi i32 [%r10, %b4244], [%r16, %b4245]
  %r29 = phi i32 [%r7, %b4244], [%r7, %b4245]
  %r6 = add i32 %r29, 1
  br label %b4050

b1540:
  %r39 = inttoptr i32 4100 to i32*
  %r37 = load i32, i32* %r39
  %r38 = inttoptr i32 %r37 to i32*
  %r35 = load i32, i32* %r38
  %r36 = add i32 %r37, 4
  %r34 = call i32 @func_b3517(i32 %r35, i32 %r36, i32 8, i32 0)
  %r32 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b1538, label %b4022

b4040:
  %r40 = add i32 ptrtoint(i8* @str13 to i32), 1
  br label %c542

b1538:
  %r46 = inttoptr i32 4104 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3992, label %b4002

b4022:
  %r47 = add i32 ptrtoint(i8* @str15 to i32), 1
  br label %c545

c542:
  tail call void @func_b4032(i32 %r20, i32 %r40)
  ret void

b3992:
  %r50 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b3980, label %b3994

b4002:
  %r58 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b3930(i32 %r42, i32 %r58, i32 %r45)
  %r57 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r57
  %r54 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b3839, label %b3999

c545:
  tail call void @func_b4014(i32 %r31, i32 %r47)
  ret void

b3980:
  %r61 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r62 = load i8, i8* %r61
  %r60 = zext i8 %r62 to i32
  %r59 = icmp eq i32 %r60, 0
  br i1 %r59, label %b3973, label %b3991

b3994:
  %r67 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b3228(i32 %r49, i32 %r67)
  %r65 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r66 = load i8, i8* %r65
  %r64 = zext i8 %r66 to i32
  %r63 = icmp eq i32 %r64, 0
  br i1 %r63, label %b3973, label %b3991

b3839:
  %r79 = phi i32 [%r56, %b4002], [%r78, %b3986], [%r77, %b3988], [%r76, %b3844], [%r75, %b2215], [%r74, %b3947], [%r73, %b3962], [%r72, %b3964]
  %r70 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r71 = load i8, i8* %r70
  %r69 = zext i8 %r71 to i32
  %r68 = icmp eq i32 %r69, 0
  br i1 %r68, label %b3833, label %b3841

b3999:
  %r88 = phi i32 [%r53, %b4002], [%r87, %b3986], [%r86, %b3988], [%r85, %b2215], [%r84, %b3947], [%r83, %b3962], [%r82, %b3964]
  %r81 = phi i32 [%r56, %b4002], [%r78, %b3986], [%r77, %b3988], [%r75, %b2215], [%r74, %b3947], [%r73, %b3962], [%r72, %b3964]
  %r80 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3848

b3973:
  %r93 = phi i32 [%r45, %b3980], [%r45, %b3994]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b3956, label %b4239

b3991:
  %r95 = phi i32 [%r60, %b3980], [%r64, %b3994]
  %r99 = phi i32 [%r45, %b3980], [%r45, %b3994]
  %r98 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r97 = call i32 @inb(i32 1021)
  %r96 = and i32 %r97, 96
  call void @func_b1309(i32 %r96, i32 0, i32 %r95)
  %r94 = icmp eq i32 %r95, 10
  br i1 %r94, label %b3986, label %b3988

b3833:
  %r102 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r103 = load i8, i8* %r102
  %r101 = zext i8 %r103 to i32
  %r100 = icmp eq i32 %r101, 0
  br i1 %r100, label %b3805, label %b3838

b3841:
  %r108 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3228(i32 %r69, i32 %r108)
  %r106 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r107 = load i8, i8* %r106
  %r105 = zext i8 %r107 to i32
  %r104 = icmp eq i32 %r105, 0
  br i1 %r104, label %b3805, label %b3838

b3848:
  %r110 = phi i32 [%r88, %b3999], [%r116, %b3846]
  %r115 = phi i32 [%r80, %b3999], [%r114, %b3846]
  %r113 = phi i32 [%r81, %b3999], [%r76, %b3846]
  %r112 = call i32 @inb(i32 1021)
  %r111 = and i32 %r112, 96
  call void @func_b1309(i32 %r111, i32 0, i32 %r110)
  %r109 = icmp eq i32 %r110, 10
  br i1 %r109, label %b3851, label %b3853

b3956:
  %r122 = phi i32 [%r93, %b3973], [%r121, %b3969]
  %r119 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r120 = load i8, i8* %r119
  %r118 = zext i8 %r120 to i32
  %r117 = icmp eq i32 %r118, 0
  br i1 %r117, label %b2290, label %b3958

b4239:
  %r123 = add i32 %r93, 1
  br label %b3969

b3986:
  %r129 = call i32 @inb(i32 1021)
  %r128 = and i32 %r129, 96
  call void @func_b1309(i32 %r128, i32 0, i32 13)
  call void @func_b1580(i32 %r95)
  call void @func_b3806(i32 %r98, i32 %r99)
  %r127 = inttoptr i32 4108 to i32*
  %r78 = load i32, i32* %r127
  %r125 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r87 = zext i8 %r126 to i32
  %r124 = icmp eq i32 %r87, 0
  br i1 %r124, label %b3839, label %b3999

b3988:
  call void @func_b1580(i32 %r95)
  call void @func_b3806(i32 %r98, i32 %r99)
  %r133 = inttoptr i32 4108 to i32*
  %r77 = load i32, i32* %r133
  %r131 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r132 = load i8, i8* %r131
  %r86 = zext i8 %r132 to i32
  %r130 = icmp eq i32 %r86, 0
  br i1 %r130, label %b3839, label %b3999

b3805:
  %r138 = phi i32 [%r79, %b3833], [%r79, %b3841], [%r139, %b3806]
  %r136 = inttoptr i32 %r138 to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b3794, label %b4236

b3838:
  %r142 = phi i32 [%r101, %b3833], [%r105, %b3841]
  %r141 = phi i32 [%r79, %b3833], [%r79, %b3841]
  %r140 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3810

b3851:
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1309(i32 %r143, i32 0, i32 13)
  call void @func_b1580(i32 %r110)
  br label %b3844

b3853:
  call void @func_b1580(i32 %r110)
  br label %b3844

b2290:
  %r152 = and i32 %r122, 15
  %r150 = call i32 @func_b1345(i32 %r152, i32 9)
  %r149 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r151 = trunc i32 %r150 to i8
  store i8 %r151, i8* %r149
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r122, i32 32)
  %r147 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r148 = load i8, i8* %r147
  %r146 = zext i8 %r148 to i32
  %r145 = icmp eq i32 %r146, 0
  br i1 %r145, label %b2215, label %b3947

b3958:
  %r156 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r155 = call i32 @inb(i32 1021)
  %r154 = and i32 %r155, 96
  call void @func_b1309(i32 %r154, i32 0, i32 %r118)
  %r153 = icmp eq i32 %r118, 10
  br i1 %r153, label %b3962, label %b3964

b3969:
  %r162 = phi i32 [%r90, %b4239], [%r158, %b3967]
  %r161 = phi i32 [%r123, %b4239], [%r163, %b3967]
  %r121 = phi i32 [%r93, %b4239], [%r121, %b3967]
  call void @func_b1589(i32 %r162)
  %r159 = inttoptr i32 %r161 to i8*
  %r160 = load i8, i8* %r159
  %r158 = zext i8 %r160 to i32
  %r157 = icmp eq i32 %r158, 0
  br i1 %r157, label %b3956, label %b3967

b3794:
  %r169 = phi i32 [%r138, %b3805], [%r168, %b3801]
  %r166 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r165 = zext i8 %r167 to i32
  %r164 = icmp eq i32 %r165, 0
  br i1 %r164, label %b1532, label %b3796

b4236:
  %r170 = add i32 %r138, 1
  br label %b3801

b3810:
  %r172 = phi i32 [%r142, %b3838], [%r178, %b3808]
  %r177 = phi i32 [%r140, %b3838], [%r176, %b3808]
  %r175 = phi i32 [%r141, %b3838], [%r139, %b3808]
  %r174 = call i32 @inb(i32 1021)
  %r173 = and i32 %r174, 96
  call void @func_b1309(i32 %r173, i32 0, i32 %r172)
  %r171 = icmp eq i32 %r172, 10
  br i1 %r171, label %b3813, label %b3815

b3844:
  %r182 = phi i32 [%r115, %b3851], [%r115, %b3853]
  %r76 = phi i32 [%r113, %b3851], [%r113, %b3853]
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r116 = zext i8 %r181 to i32
  %r179 = icmp eq i32 %r116, 0
  br i1 %r179, label %b3839, label %b3846

b2215:
  %r186 = inttoptr i32 4108 to i32*
  %r75 = load i32, i32* %r186
  %r184 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r185 = load i8, i8* %r184
  %r85 = zext i8 %r185 to i32
  %r183 = icmp eq i32 %r85, 0
  br i1 %r183, label %b3839, label %b3999

b3947:
  %r191 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b3228(i32 %r146, i32 %r191)
  %r190 = inttoptr i32 4108 to i32*
  %r74 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r84 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r84, 0
  br i1 %r187, label %b3839, label %b3999

b3962:
  %r197 = call i32 @inb(i32 1021)
  %r196 = and i32 %r197, 96
  call void @func_b1309(i32 %r196, i32 0, i32 13)
  call void @func_b1580(i32 %r118)
  call void @func_b3766(i32 %r156, i32 %r122)
  %r195 = inttoptr i32 4108 to i32*
  %r73 = load i32, i32* %r195
  %r193 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r83 = zext i8 %r194 to i32
  %r192 = icmp eq i32 %r83, 0
  br i1 %r192, label %b3839, label %b3999

b3964:
  call void @func_b1580(i32 %r118)
  call void @func_b3766(i32 %r156, i32 %r122)
  %r201 = inttoptr i32 4108 to i32*
  %r72 = load i32, i32* %r201
  %r199 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r200 = load i8, i8* %r199
  %r82 = zext i8 %r200 to i32
  %r198 = icmp eq i32 %r82, 0
  br i1 %r198, label %b3839, label %b3999

b3967:
  %r163 = add i32 %r161, 1
  br label %b3969

b1532:
  %r206 = phi i32 [%r169, %b3794], [%r211, %b3766]
  %r210 = and i32 %r206, 15
  %r208 = call i32 @func_b1345(i32 %r210, i32 9)
  %r207 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r209 = trunc i32 %r208 to i8
  store i8 %r209, i8* %r207
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r206, i32 32)
  %r204 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b303, label %b3765

b3796:
  %r212 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b3770

b3801:
  %r218 = phi i32 [%r135, %b4236], [%r214, %b3799]
  %r217 = phi i32 [%r170, %b4236], [%r219, %b3799]
  %r168 = phi i32 [%r138, %b4236], [%r168, %b3799]
  call void @func_b1589(i32 %r218)
  %r215 = inttoptr i32 %r217 to i8*
  %r216 = load i8, i8* %r215
  %r214 = zext i8 %r216 to i32
  %r213 = icmp eq i32 %r214, 0
  br i1 %r213, label %b3794, label %b3799

b3813:
  %r221 = call i32 @inb(i32 1021)
  %r220 = and i32 %r221, 96
  call void @func_b1309(i32 %r220, i32 0, i32 13)
  call void @func_b1580(i32 %r172)
  br label %b3806

b3815:
  call void @func_b1580(i32 %r172)
  br label %b3806

b3846:
  %r114 = add i32 %r182, 1
  br label %b3848

b303:
  ret void

b3765:
  %r222 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c586

b3770:
  %r224 = phi i32 [%r165, %b3796], [%r230, %b3768]
  %r229 = phi i32 [%r212, %b3796], [%r228, %b3768]
  %r227 = phi i32 [%r169, %b3796], [%r211, %b3768]
  %r226 = call i32 @inb(i32 1021)
  %r225 = and i32 %r226, 96
  call void @func_b1309(i32 %r225, i32 0, i32 %r224)
  %r223 = icmp eq i32 %r224, 10
  br i1 %r223, label %b3773, label %b3775

b3799:
  %r219 = add i32 %r217, 1
  br label %b3801

b3806:
  %r234 = phi i32 [%r177, %b3813], [%r177, %b3815]
  %r139 = phi i32 [%r175, %b3813], [%r175, %b3815]
  %r232 = inttoptr i32 %r234 to i8*
  %r233 = load i8, i8* %r232
  %r178 = zext i8 %r233 to i32
  %r231 = icmp eq i32 %r178, 0
  br i1 %r231, label %b3805, label %b3808

c586:
  tail call void @func_b3228(i32 %r203, i32 %r222)
  ret void

b3773:
  %r236 = call i32 @inb(i32 1021)
  %r235 = and i32 %r236, 96
  call void @func_b1309(i32 %r235, i32 0, i32 13)
  call void @func_b1580(i32 %r224)
  br label %b3766

b3775:
  call void @func_b1580(i32 %r224)
  br label %b3766

b3808:
  %r176 = add i32 %r234, 1
  br label %b3810

b3766:
  %r240 = phi i32 [%r229, %b3773], [%r229, %b3775]
  %r211 = phi i32 [%r227, %b3773], [%r227, %b3775]
  %r238 = inttoptr i32 %r240 to i8*
  %r239 = load i8, i8* %r238
  %r230 = zext i8 %r239 to i32
  %r237 = icmp eq i32 %r230, 0
  br i1 %r237, label %b1532, label %b3768

b3768:
  %r228 = add i32 %r240, 1
  br label %b3770
}

define internal void @func_b3562(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3562

b3562:
  %r4 = phi i32 [%r0, %0], [%r11, %b3560]
  %r10 = phi i32 [%r1, %0], [%r9, %b3560]
  %r8 = phi i32 [%r2, %0], [%r7, %b3560]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1309(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3565, label %b3567

b3565:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1309(i32 %r12, i32 0, i32 13)
  call void @func_b1580(i32 %r4)
  br label %b3558

b3567:
  call void @func_b1580(i32 %r4)
  br label %b3558

b3558:
  %r17 = phi i32 [%r10, %b3565], [%r10, %b3567]
  %r7 = phi i32 [%r8, %b3565], [%r8, %b3567]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1765, label %b3560

b1765:
  %r19 = add i32 ptrtoint(i8* @users to i32), 52
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b3560:
  %r9 = add i32 %r17, 1
  br label %b3562
}

define internal void @func_b3611(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3611

b3611:
  %r4 = phi i32 [%r0, %0], [%r11, %b3604]
  %r10 = phi i32 [%r1, %0], [%r9, %b3604]
  %r8 = phi i32 [%r2, %0], [%r7, %b3604]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1309(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b4246, label %b4247

b4246:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1309(i32 %r12, i32 0, i32 13)
  call void @func_b1580(i32 %r4)
  br label %b3602

b4247:
  call void @func_b1580(i32 %r4)
  br label %b3602

b3602:
  %r17 = phi i32 [%r10, %b4246], [%r10, %b4247]
  %r7 = phi i32 [%r8, %b4246], [%r8, %b4247]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1761, label %b3604

b1761:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1345(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1765, label %b3596

b3604:
  %r9 = add i32 %r17, 1
  br label %b3611

b1765:
  %r27 = add i32 ptrtoint(i8* @users to i32), 52
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b3596:
  %r28 = add i32 ptrtoint(i8* @str54 to i32), 1
  br label %c608

c608:
  tail call void @func_b3562(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define internal void @func_b3572(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3572

b3572:
  %r4 = phi i32 [%r0, %0], [%r11, %b3570]
  %r10 = phi i32 [%r1, %0], [%r9, %b3570]
  %r8 = phi i32 [%r2, %0], [%r7, %b3570]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1309(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3575, label %b3577

b3575:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1309(i32 %r12, i32 0, i32 13)
  call void @func_b1580(i32 %r4)
  br label %b3568

b3577:
  call void @func_b1580(i32 %r4)
  br label %b3568

b3568:
  %r17 = phi i32 [%r10, %b3575], [%r10, %b3577]
  %r7 = phi i32 [%r8, %b3575], [%r8, %b3577]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1776, label %b3570

b1776:
  %r19 = add i32 ptrtoint(i8* @users to i32), 124
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b3570:
  %r9 = add i32 %r17, 1
  br label %b3572
}

define internal void @func_b3593(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3593

b3593:
  %r4 = phi i32 [%r0, %0], [%r11, %b3586]
  %r10 = phi i32 [%r1, %0], [%r9, %b3586]
  %r8 = phi i32 [%r2, %0], [%r7, %b3586]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1309(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b4248, label %b4249

b4248:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1309(i32 %r12, i32 0, i32 13)
  call void @func_b1580(i32 %r4)
  br label %b3584

b4249:
  call void @func_b1580(i32 %r4)
  br label %b3584

b3584:
  %r17 = phi i32 [%r10, %b4248], [%r10, %b4249]
  %r7 = phi i32 [%r8, %b4248], [%r8, %b4249]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1772, label %b3586

b1772:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1345(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1776, label %b3583

b3586:
  %r9 = add i32 %r17, 1
  br label %b3593

b1776:
  %r27 = add i32 ptrtoint(i8* @users to i32), 124
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b3583:
  %r28 = add i32 ptrtoint(i8* @str54 to i32), 1
  br label %c625

c625:
  tail call void @func_b3572(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define void @kernel() {
  %r0 = load i32, i32* @keyb_layout
  br label %initialize

initialize:
  %r136 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r136
  %r135 = inttoptr i32 ptrtoint(i8* @users to i32) to i32*
  store i32 0, i32* %r135
  %r134 = add i32 ptrtoint(i8* @users to i32), 4
  %r133 = inttoptr i32 %r134 to i32*
  store i32 0, i32* %r133
  %r132 = add i32 ptrtoint(i8* @users to i32), 8
  %r131 = inttoptr i32 %r132 to i32*
  store i32 0, i32* %r131
  %r130 = add i32 ptrtoint(i8* @users to i32), 12
  %r129 = inttoptr i32 %r130 to i32*
  store i32 0, i32* %r129
  %r128 = add i32 ptrtoint(i8* @users to i32), 16
  %r127 = inttoptr i32 %r128 to i32*
  store i32 0, i32* %r127
  %r126 = add i32 ptrtoint(i8* @users to i32), 20
  %r125 = inttoptr i32 %r126 to i32*
  store i32 0, i32* %r125
  %r124 = add i32 ptrtoint(i8* @users to i32), 24
  %r123 = inttoptr i32 %r124 to i32*
  store i32 0, i32* %r123
  %r122 = add i32 ptrtoint(i8* @users to i32), 28
  %r121 = inttoptr i32 %r122 to i32*
  store i32 0, i32* %r121
  %r120 = add i32 ptrtoint(i8* @users to i32), 32
  %r119 = inttoptr i32 %r120 to i32*
  store i32 59, i32* %r119
  %r118 = add i32 ptrtoint(i8* @users to i32), 36
  %r117 = inttoptr i32 %r118 to i32*
  store i32 59, i32* %r117
  %r116 = add i32 ptrtoint(i8* @users to i32), 40
  %r115 = inttoptr i32 %r116 to i32*
  store i32 59, i32* %r115
  %r114 = add i32 ptrtoint(i8* @users to i32), 44
  %r113 = inttoptr i32 %r114 to i32*
  store i32 59, i32* %r113
  %r112 = add i32 ptrtoint(i8* @users to i32), 48
  %r111 = inttoptr i32 %r112 to i32*
  store i32 0, i32* %r111
  %r110 = add i32 ptrtoint(i8* @users to i32), 52
  %r109 = inttoptr i32 %r110 to i32*
  store i32 0, i32* %r109
  %r108 = add i32 ptrtoint(i8* @users to i32), 56
  %r107 = inttoptr i32 %r108 to i32*
  store i32 51, i32* %r107
  %r106 = add i32 ptrtoint(i8* @users to i32), 60
  %r105 = inttoptr i32 %r106 to i32*
  store i32 12802, i32* %r105
  %r104 = add i32 ptrtoint(i8* @users to i32), 64
  %r103 = inttoptr i32 %r104 to i32*
  store i32 0, i32* %r103
  %r102 = add i32 ptrtoint(i8* @users to i32), 68
  %r101 = inttoptr i32 %r102 to i32*
  store i32 59, i32* %r101
  %r100 = add i32 ptrtoint(i8* @users to i32), 72
  %r99 = inttoptr i32 %r100 to i32*
  store i32 0, i32* %r99
  %r98 = add i32 ptrtoint(i8* @users to i32), 76
  %r97 = inttoptr i32 %r98 to i32*
  store i32 0, i32* %r97
  %r96 = add i32 ptrtoint(i8* @users to i32), 80
  %r95 = inttoptr i32 %r96 to i32*
  store i32 0, i32* %r95
  %r94 = add i32 ptrtoint(i8* @users to i32), 84
  %r93 = inttoptr i32 %r94 to i32*
  store i32 0, i32* %r93
  %r92 = add i32 ptrtoint(i8* @users to i32), 88
  %r91 = inttoptr i32 %r92 to i32*
  store i32 0, i32* %r91
  %r90 = add i32 ptrtoint(i8* @users to i32), 92
  %r89 = inttoptr i32 %r90 to i32*
  store i32 0, i32* %r89
  %r88 = add i32 ptrtoint(i8* @users to i32), 96
  %r87 = inttoptr i32 %r88 to i32*
  store i32 0, i32* %r87
  %r86 = add i32 ptrtoint(i8* @users to i32), 100
  %r85 = inttoptr i32 %r86 to i32*
  store i32 0, i32* %r85
  %r84 = add i32 ptrtoint(i8* @users to i32), 104
  %r83 = inttoptr i32 %r84 to i32*
  store i32 59, i32* %r83
  %r82 = add i32 ptrtoint(i8* @users to i32), 108
  %r81 = inttoptr i32 %r82 to i32*
  store i32 59, i32* %r81
  %r80 = add i32 ptrtoint(i8* @users to i32), 112
  %r79 = inttoptr i32 %r80 to i32*
  store i32 59, i32* %r79
  %r78 = add i32 ptrtoint(i8* @users to i32), 116
  %r77 = inttoptr i32 %r78 to i32*
  store i32 59, i32* %r77
  %r76 = add i32 ptrtoint(i8* @users to i32), 120
  %r75 = inttoptr i32 %r76 to i32*
  store i32 0, i32* %r75
  %r74 = add i32 ptrtoint(i8* @users to i32), 124
  %r73 = inttoptr i32 %r74 to i32*
  store i32 0, i32* %r73
  %r72 = add i32 ptrtoint(i8* @users to i32), 128
  %r71 = inttoptr i32 %r72 to i32*
  store i32 51, i32* %r71
  %r70 = add i32 ptrtoint(i8* @users to i32), 132
  %r69 = inttoptr i32 %r70 to i32*
  store i32 12802, i32* %r69
  %r68 = add i32 ptrtoint(i8* @users to i32), 136
  %r67 = inttoptr i32 %r68 to i32*
  store i32 0, i32* %r67
  %r66 = add i32 ptrtoint(i8* @users to i32), 140
  %r65 = inttoptr i32 %r66 to i32*
  store i32 59, i32* %r65
  %r63 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r64 = trunc i32 0 to i8
  store i8 %r64, i8* %r63
  %r62 = add i32 ptrtoint(i8* @console to i32), 1
  %r60 = inttoptr i32 %r62 to i8*
  %r61 = trunc i32 0 to i8
  store i8 %r61, i8* %r60
  %r59 = add i32 ptrtoint(i8* @console to i32), 2
  %r57 = inttoptr i32 %r59 to i8*
  %r58 = trunc i32 24 to i8
  store i8 %r58, i8* %r57
  %r56 = add i32 ptrtoint(i8* @console to i32), 3
  %r54 = inttoptr i32 %r56 to i8*
  %r55 = trunc i32 79 to i8
  store i8 %r55, i8* %r54
  %r53 = add i32 ptrtoint(i8* @console to i32), 4
  %r51 = inttoptr i32 %r53 to i8*
  %r52 = trunc i32 0 to i8
  store i8 %r52, i8* %r51
  %r50 = add i32 ptrtoint(i8* @console to i32), 5
  %r48 = inttoptr i32 %r50 to i8*
  %r49 = trunc i32 0 to i8
  store i8 %r49, i8* %r48
  %r7 = add i32 ptrtoint(i8* @console to i32), 6
  %r46 = inttoptr i32 %r7 to i8*
  %r47 = trunc i32 10 to i8
  store i8 %r47, i8* %r46
  %r44 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r45 = trunc i32 0 to i8
  store i8 %r45, i8* %r44
  %r42 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r43 = trunc i32 0 to i8
  store i8 %r43, i8* %r42
  %r41 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  store i32 1, i32* %r41
  %r40 = inttoptr i32 ptrtoint(i8* @ball to i32) to i32*
  store i32 1, i32* %r40
  %r39 = add i32 ptrtoint(i8* @ball to i32), 4
  %r38 = inttoptr i32 %r39 to i32*
  store i32 1, i32* %r38
  %r37 = add i32 ptrtoint(i8* @ball to i32), 8
  %r36 = inttoptr i32 %r37 to i32*
  store i32 10, i32* %r36
  %r35 = add i32 ptrtoint(i8* @ball to i32), 12
  %r34 = inttoptr i32 %r35 to i32*
  store i32 10, i32* %r34
  %r33 = inttoptr i32 ptrtoint(i8* @paddle to i32) to i32*
  store i32 8, i32* %r33
  %r32 = add i32 ptrtoint(i8* @paddle to i32), 4
  %r31 = inttoptr i32 %r32 to i32*
  store i32 1, i32* %r31
  %r30 = add i32 ptrtoint(i8* @paddle to i32), 8
  %r29 = inttoptr i32 %r30 to i32*
  store i32 18, i32* %r29
  %r28 = add i32 ptrtoint(i8* @paddle to i32), 12
  %r27 = inttoptr i32 %r28 to i32*
  store i32 22, i32* %r27
  %r25 = inttoptr i32 ptrtoint(i8* @spinner to i32) to i8*
  %r26 = trunc i32 45 to i8
  store i8 %r26, i8* %r25
  %r24 = add i32 ptrtoint(i8* @spinner to i32), 1
  %r22 = inttoptr i32 %r24 to i8*
  %r23 = trunc i32 92 to i8
  store i8 %r23, i8* %r22
  %r21 = add i32 ptrtoint(i8* @spinner to i32), 2
  %r19 = inttoptr i32 %r21 to i8*
  %r20 = trunc i32 124 to i8
  store i8 %r20, i8* %r19
  %r18 = add i32 ptrtoint(i8* @spinner to i32), 3
  %r16 = inttoptr i32 %r18 to i8*
  %r17 = trunc i32 47 to i8
  store i8 %r17, i8* %r16
  %r14 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r15 = trunc i32 0 to i8
  store i8 %r15, i8* %r14
  %r12 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r13 = trunc i32 55 to i8
  store i8 %r13, i8* %r12
  %r11 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r11
  %r9 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r10 = trunc i32 0 to i8
  store i8 %r10, i8* %r9
  %r8 = add i32 ptrtoint(i8* @itoaBuf to i32), 1
  call void @func_b2857(i32 %r8, i32 1)
  %r5 = inttoptr i32 %r7 to i8*
  %r6 = trunc i32 32 to i8
  store i8 %r6, i8* %r5
  call void @func_b1074()
  %r3 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b1560, label %b4068

b1560:
  %r159 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r160 = trunc i32 1 to i8
  store i8 %r160, i8* %r159
  %r158 = add i32 ptrtoint(i8* @console to i32), 1
  %r156 = inttoptr i32 %r158 to i8*
  %r157 = trunc i32 1 to i8
  store i8 %r157, i8* %r156
  %r155 = add i32 ptrtoint(i8* @console to i32), 2
  %r153 = inttoptr i32 %r155 to i8*
  %r154 = trunc i32 23 to i8
  store i8 %r154, i8* %r153
  %r152 = add i32 ptrtoint(i8* @console to i32), 3
  %r150 = inttoptr i32 %r152 to i8*
  %r151 = trunc i32 45 to i8
  store i8 %r151, i8* %r150
  %r149 = add i32 ptrtoint(i8* @console to i32), 4
  %r147 = inttoptr i32 %r149 to i8*
  %r148 = trunc i32 1 to i8
  store i8 %r148, i8* %r147
  %r146 = add i32 ptrtoint(i8* @console to i32), 5
  %r144 = inttoptr i32 %r146 to i8*
  %r145 = trunc i32 1 to i8
  store i8 %r145, i8* %r144
  %r143 = add i32 ptrtoint(i8* @console to i32), 6
  %r141 = inttoptr i32 %r143 to i8*
  %r142 = trunc i32 15 to i8
  store i8 %r142, i8* %r141
  call void @func_b1074()
  %r139 = inttoptr i32 ptrtoint(i8* @str11 to i32) to i8*
  %r140 = load i8, i8* %r139
  %r138 = zext i8 %r140 to i32
  %r137 = icmp eq i32 %r138, 0
  br i1 %r137, label %b2205, label %b4053

b4068:
  %r161 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %b4060

b2205:
  %r171 = inttoptr i32 4096 to i32*
  %r169 = load i32, i32* %r171
  %r170 = inttoptr i32 %r169 to i32*
  %r167 = load i32, i32* %r170
  %r168 = add i32 %r169, 4
  %r166 = call i32 @func_b3379(i32 %r167, i32 %r168, i32 12, i32 0)
  %r164 = inttoptr i32 ptrtoint(i8* @str13 to i32) to i8*
  %r165 = load i8, i8* %r164
  %r163 = zext i8 %r165 to i32
  %r162 = icmp eq i32 %r163, 0
  br i1 %r162, label %b2206, label %b4035

b4053:
  %r178 = add i32 ptrtoint(i8* @str11 to i32), 1
  call void @func_b4050(i32 %r138, i32 %r178)
  %r177 = inttoptr i32 4096 to i32*
  %r175 = load i32, i32* %r177
  %r176 = inttoptr i32 %r175 to i32*
  %r173 = load i32, i32* %r176
  %r174 = add i32 %r175, 4
  %r172 = icmp eq i32 %r173, 0
  br i1 %r172, label %b3542, label %b3755

b4060:
  %r180 = phi i32 [%r2, %b4068], [%r185, %b4058]
  %r184 = phi i32 [%r161, %b4068], [%r183, %b4058]
  %r182 = call i32 @inb(i32 1021)
  %r181 = and i32 %r182, 96
  call void @func_b1309(i32 %r181, i32 0, i32 %r180)
  %r179 = icmp eq i32 %r180, 10
  br i1 %r179, label %b4063, label %b4065

b2206:
  %r195 = inttoptr i32 4100 to i32*
  %r193 = load i32, i32* %r195
  %r194 = inttoptr i32 %r193 to i32*
  %r191 = load i32, i32* %r194
  %r192 = add i32 %r193, 4
  %r190 = call i32 @func_b3517(i32 %r191, i32 %r192, i32 8, i32 0)
  %r188 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r187 = zext i8 %r189 to i32
  %r186 = icmp eq i32 %r187, 0
  br i1 %r186, label %b2207, label %b4017

b4035:
  %r202 = add i32 ptrtoint(i8* @str13 to i32), 1
  call void @func_b4032(i32 %r163, i32 %r202)
  %r201 = inttoptr i32 4096 to i32*
  %r199 = load i32, i32* %r201
  %r200 = inttoptr i32 %r199 to i32*
  %r197 = load i32, i32* %r200
  %r198 = add i32 %r199, 4
  %r196 = icmp eq i32 %r197, 0
  br i1 %r196, label %b3542, label %b3755

b3542:
  %r205 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r206 = load i8, i8* %r205
  %r204 = zext i8 %r206 to i32
  %r203 = icmp eq i32 %r204, 0
  br i1 %r203, label %b3529, label %b3544

b3755:
  %r211 = phi i32 [%r173, %b4053], [%r197, %b4035], [%r232, %b4017], [%r210, %b3753], [%r231, %b3860], [%r230, %b3862], [%r229, %b3822], [%r228, %b3824], [%r227, %b2323], [%r226, %b3760], [%r225, %b3782], [%r224, %b3784]
  %r213 = phi i32 [%r174, %b4053], [%r198, %b4035], [%r223, %b4017], [%r212, %b3753], [%r222, %b3860], [%r221, %b3862], [%r220, %b3822], [%r219, %b3824], [%r218, %b2323], [%r217, %b3760], [%r216, %b3782], [%r215, %b3784]
  %r214 = phi i32 [12, %b4053], [12, %b4035], [12, %b4017], [12, %b3753], [12, %b3860], [12, %b3862], [12, %b3822], [12, %b3824], [12, %b2323], [12, %b3760], [12, %b3782], [12, %b3784]
  %r209 = phi i32 [2, %b4053], [2, %b4035], [2, %b4017], [%r208, %b3753], [2, %b3860], [2, %b3862], [2, %b3822], [2, %b3824], [2, %b2323], [2, %b3760], [2, %b3782], [2, %b3784]
  %r212 = add i32 %r213, %r214
  %r210 = add i32 %r211, -1
  %r208 = add i32 %r209, -1
  %r207 = icmp eq i32 %r208, 0
  br i1 %r207, label %b3690, label %b3753

b4063:
  %r238 = call i32 @inb(i32 1021)
  %r237 = and i32 %r238, 96
  call void @func_b1309(i32 %r237, i32 0, i32 13)
  call void @func_b1580(i32 %r180)
  %r235 = inttoptr i32 %r184 to i8*
  %r236 = load i8, i8* %r235
  %r234 = zext i8 %r236 to i32
  %r233 = icmp eq i32 %r234, 0
  br i1 %r233, label %b1560, label %b4058

b4065:
  call void @func_b1580(i32 %r180)
  %r241 = inttoptr i32 %r184 to i8*
  %r242 = load i8, i8* %r241
  %r240 = zext i8 %r242 to i32
  %r239 = icmp eq i32 %r240, 0
  br i1 %r239, label %b1560, label %b4058

b2207:
  %r248 = inttoptr i32 4104 to i32*
  %r247 = load i32, i32* %r248
  %r245 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r246 = load i8, i8* %r245
  %r244 = zext i8 %r246 to i32
  %r243 = icmp eq i32 %r244, 0
  br i1 %r243, label %b3913, label %b3936

b4017:
  %r253 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b4014(i32 %r187, i32 %r253)
  %r252 = inttoptr i32 4096 to i32*
  %r250 = load i32, i32* %r252
  %r251 = inttoptr i32 %r250 to i32*
  %r232 = load i32, i32* %r251
  %r223 = add i32 %r250, 4
  %r249 = icmp eq i32 %r232, 0
  br i1 %r249, label %b3542, label %b3755

b3529:
  %r256 = inttoptr i32 ptrtoint(i8* @str46 to i32) to i8*
  %r257 = load i8, i8* %r256
  %r255 = zext i8 %r257 to i32
  %r254 = icmp eq i32 %r255, 0
  br i1 %r254, label %b303, label %b3531

b3544:
  %r258 = add i32 ptrtoint(i8* @str52 to i32), 1
  br label %b3536

b3690:
  %r259 = icmp eq i32 %r210, 0
  br i1 %r259, label %b3542, label %b3692

b3753:
  %r260 = icmp eq i32 %r210, 0
  br i1 %r260, label %b3542, label %b3755

b4058:
  %r185 = phi i32 [%r234, %b4063], [%r240, %b4065]
  %r261 = phi i32 [%r184, %b4063], [%r184, %b4065]
  %r183 = add i32 %r261, 1
  br label %b4060

b3913:
  %r264 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r265 = load i8, i8* %r264
  %r263 = zext i8 %r265 to i32
  %r262 = icmp eq i32 %r263, 0
  br i1 %r262, label %b3901, label %b3915

b3936:
  %r272 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b3930(i32 %r244, i32 %r272, i32 %r247)
  %r271 = inttoptr i32 4108 to i32*
  %r270 = load i32, i32* %r271
  %r268 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r269 = load i8, i8* %r268
  %r267 = zext i8 %r269 to i32
  %r266 = icmp eq i32 %r267, 0
  br i1 %r266, label %b3828, label %b3933

b303:
  ret void

b3531:
  %r275 = phi i32 [%r255, %b3529], [%r274, %b1872]
  %r273 = add i32 ptrtoint(i8* @str46 to i32), 1
  br label %c656

b3536:
  %r277 = phi i32 [%r204, %b3544], [%r282, %b3534]
  %r281 = phi i32 [%r258, %b3544], [%r280, %b3534]
  %r279 = call i32 @inb(i32 1021)
  %r278 = and i32 %r279, 96
  call void @func_b1309(i32 %r278, i32 0, i32 %r277)
  %r276 = icmp eq i32 %r277, 10
  br i1 %r276, label %b3539, label %b3541

b3692:
  %r288 = add i32 %r212, 12
  %r287 = add i32 %r210, -1
  %r285 = inttoptr i32 ptrtoint(i8* @str47 to i32) to i8*
  %r286 = load i8, i8* %r285
  %r284 = zext i8 %r286 to i32
  %r283 = icmp eq i32 %r284, 0
  br i1 %r283, label %b3698, label %b3744

b3901:
  %r291 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r292 = load i8, i8* %r291
  %r290 = zext i8 %r292 to i32
  %r289 = icmp eq i32 %r290, 0
  br i1 %r289, label %b3894, label %b3912

b3915:
  %r297 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b3228(i32 %r263, i32 %r297)
  %r295 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r296 = load i8, i8* %r295
  %r294 = zext i8 %r296 to i32
  %r293 = icmp eq i32 %r294, 0
  br i1 %r293, label %b3894, label %b3912

b3828:
  %r308 = phi i32 [%r270, %b3936], [%r307, %b3907], [%r306, %b3909], [%r305, %b2386], [%r304, %b3868], [%r303, %b3883], [%r302, %b3885]
  %r300 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r301 = load i8, i8* %r300
  %r299 = zext i8 %r301 to i32
  %r298 = icmp eq i32 %r299, 0
  br i1 %r298, label %b3816, label %b3830

b3933:
  %r310 = phi i32 [%r267, %b3936], [%r320, %b3907], [%r319, %b3909], [%r318, %b2386], [%r317, %b3868], [%r316, %b3883], [%r315, %b3885]
  %r314 = phi i32 [%r270, %b3936], [%r307, %b3907], [%r306, %b3909], [%r305, %b2386], [%r304, %b3868], [%r303, %b3883], [%r302, %b3885]
  %r313 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r312 = call i32 @inb(i32 1021)
  %r311 = and i32 %r312, 96
  call void @func_b1309(i32 %r311, i32 0, i32 %r310)
  %r309 = icmp eq i32 %r310, 10
  br i1 %r309, label %b3860, label %b3862

c656:
  tail call void @func_b3228(i32 %r275, i32 %r273)
  ret void

b3539:
  %r326 = call i32 @inb(i32 1021)
  %r325 = and i32 %r326, 96
  call void @func_b1309(i32 %r325, i32 0, i32 13)
  call void @func_b1580(i32 %r277)
  %r323 = inttoptr i32 %r281 to i8*
  %r324 = load i8, i8* %r323
  %r322 = zext i8 %r324 to i32
  %r321 = icmp eq i32 %r322, 0
  br i1 %r321, label %b3529, label %b3534

b3541:
  call void @func_b1580(i32 %r277)
  %r329 = inttoptr i32 %r281 to i8*
  %r330 = load i8, i8* %r329
  %r328 = zext i8 %r330 to i32
  %r327 = icmp eq i32 %r328, 0
  br i1 %r327, label %b3529, label %b3534

b3698:
  %r335 = phi i32 [%r212, %b3692], [%r340, %b3746], [%r340, %b3752]
  %r339 = phi i32 [%r287, %b3692], [%r338, %b3746], [%r338, %b3752]
  %r337 = phi i32 [%r288, %b3692], [%r336, %b3746], [%r336, %b3752]
  call void @func_b3324(i32 %r335)
  %r333 = inttoptr i32 ptrtoint(i8* @str48 to i32) to i8*
  %r334 = load i8, i8* %r333
  %r332 = zext i8 %r334 to i32
  %r331 = icmp eq i32 %r332, 0
  br i1 %r331, label %b3734, label %b3735

b3744:
  %r341 = add i32 ptrtoint(i8* @str47 to i32), 1
  br label %b3745

b3894:
  %r346 = phi i32 [%r247, %b3901], [%r247, %b3915]
  %r344 = inttoptr i32 %r346 to i8*
  %r345 = load i8, i8* %r344
  %r343 = zext i8 %r345 to i32
  %r342 = icmp eq i32 %r343, 0
  br i1 %r342, label %b3877, label %b4260

b3912:
  %r348 = phi i32 [%r290, %b3901], [%r294, %b3915]
  %r352 = phi i32 [%r247, %b3901], [%r247, %b3915]
  %r351 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r350 = call i32 @inb(i32 1021)
  %r349 = and i32 %r350, 96
  call void @func_b1309(i32 %r349, i32 0, i32 %r348)
  %r347 = icmp eq i32 %r348, 10
  br i1 %r347, label %b3907, label %b3909

b3816:
  %r355 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r356 = load i8, i8* %r355
  %r354 = zext i8 %r356 to i32
  %r353 = icmp eq i32 %r354, 0
  br i1 %r353, label %b3793, label %b3827

b3830:
  %r361 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3228(i32 %r299, i32 %r361)
  %r359 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r360 = load i8, i8* %r359
  %r358 = zext i8 %r360 to i32
  %r357 = icmp eq i32 %r358, 0
  br i1 %r357, label %b3793, label %b3827

b3860:
  %r367 = call i32 @inb(i32 1021)
  %r366 = and i32 %r367, 96
  call void @func_b1309(i32 %r366, i32 0, i32 13)
  call void @func_b1580(i32 %r310)
  call void @func_b3844(i32 %r313, i32 %r314)
  %r365 = inttoptr i32 4096 to i32*
  %r363 = load i32, i32* %r365
  %r364 = inttoptr i32 %r363 to i32*
  %r231 = load i32, i32* %r364
  %r222 = add i32 %r363, 4
  %r362 = icmp eq i32 %r231, 0
  br i1 %r362, label %b3542, label %b3755

b3862:
  call void @func_b1580(i32 %r310)
  call void @func_b3844(i32 %r313, i32 %r314)
  %r371 = inttoptr i32 4096 to i32*
  %r369 = load i32, i32* %r371
  %r370 = inttoptr i32 %r369 to i32*
  %r230 = load i32, i32* %r370
  %r221 = add i32 %r369, 4
  %r368 = icmp eq i32 %r230, 0
  br i1 %r368, label %b3542, label %b3755

b3534:
  %r282 = phi i32 [%r322, %b3539], [%r328, %b3541]
  %r372 = phi i32 [%r281, %b3539], [%r281, %b3541]
  %r280 = add i32 %r372, 1
  br label %b3536

b3734:
  %r374 = phi i32 [%r339, %b3698], [%r380, %b3737], [%r380, %b3743]
  %r379 = phi i32 [%r337, %b3698], [%r378, %b3737], [%r378, %b3743]
  %r377 = phi i32 [12, %b3698], [12, %b3737], [12, %b3743]
  %r376 = phi i32 [%r335, %b3698], [%r375, %b3737], [%r375, %b3743]
  %r373 = icmp eq i32 %r374, 0
  br i1 %r373, label %b3555, label %b4258

b3735:
  %r381 = add i32 ptrtoint(i8* @str48 to i32), 1
  br label %b3736

b3745:
  %r383 = phi i32 [%r284, %b3744], [%r391, %b3751]
  %r390 = phi i32 [%r341, %b3744], [%r389, %b3751]
  %r340 = phi i32 [%r212, %b3744], [%r388, %b3751]
  %r338 = phi i32 [%r287, %b3744], [%r387, %b3751]
  %r336 = phi i32 [%r288, %b3744], [%r386, %b3751]
  %r385 = call i32 @inb(i32 1021)
  %r384 = and i32 %r385, 96
  call void @func_b1309(i32 %r384, i32 0, i32 %r383)
  %r382 = icmp eq i32 %r383, 10
  br i1 %r382, label %b3746, label %b3752

b3877:
  %r397 = phi i32 [%r346, %b3894], [%r396, %b3890]
  %r394 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r395 = load i8, i8* %r394
  %r393 = zext i8 %r395 to i32
  %r392 = icmp eq i32 %r393, 0
  br i1 %r392, label %b2385, label %b3879

b4260:
  %r398 = add i32 %r346, 1
  br label %b3890

b3907:
  %r404 = call i32 @inb(i32 1021)
  %r403 = and i32 %r404, 96
  call void @func_b1309(i32 %r403, i32 0, i32 13)
  call void @func_b1580(i32 %r348)
  call void @func_b3806(i32 %r351, i32 %r352)
  %r402 = inttoptr i32 4108 to i32*
  %r307 = load i32, i32* %r402
  %r400 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r401 = load i8, i8* %r400
  %r320 = zext i8 %r401 to i32
  %r399 = icmp eq i32 %r320, 0
  br i1 %r399, label %b3828, label %b3933

b3909:
  call void @func_b1580(i32 %r348)
  call void @func_b3806(i32 %r351, i32 %r352)
  %r408 = inttoptr i32 4108 to i32*
  %r306 = load i32, i32* %r408
  %r406 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r407 = load i8, i8* %r406
  %r319 = zext i8 %r407 to i32
  %r405 = icmp eq i32 %r319, 0
  br i1 %r405, label %b3828, label %b3933

b3793:
  %r413 = phi i32 [%r308, %b3816], [%r308, %b3830]
  %r411 = inttoptr i32 %r413 to i8*
  %r412 = load i8, i8* %r411
  %r410 = zext i8 %r412 to i32
  %r409 = icmp eq i32 %r410, 0
  br i1 %r409, label %b3776, label %b4259

b3827:
  %r415 = phi i32 [%r354, %b3816], [%r358, %b3830]
  %r419 = phi i32 [%r308, %b3816], [%r308, %b3830]
  %r418 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r417 = call i32 @inb(i32 1021)
  %r416 = and i32 %r417, 96
  call void @func_b1309(i32 %r416, i32 0, i32 %r415)
  %r414 = icmp eq i32 %r415, 10
  br i1 %r414, label %b3822, label %b3824

b3555:
  %r422 = inttoptr i32 ptrtoint(i8* @str51 to i32) to i8*
  %r423 = load i8, i8* %r422
  %r421 = zext i8 %r423 to i32
  %r420 = icmp eq i32 %r421, 0
  br i1 %r420, label %b3529, label %b3557

b4258:
  %r429 = add i32 %r379, %r377
  %r428 = add i32 %r374, -1
  %r426 = inttoptr i32 ptrtoint(i8* @str49 to i32) to i8*
  %r427 = load i8, i8* %r426
  %r425 = zext i8 %r427 to i32
  %r424 = icmp eq i32 %r425, 0
  br i1 %r424, label %b4451, label %b4452

b3736:
  %r431 = phi i32 [%r332, %b3735], [%r439, %b3742]
  %r438 = phi i32 [%r381, %b3735], [%r437, %b3742]
  %r375 = phi i32 [%r335, %b3735], [%r436, %b3742]
  %r380 = phi i32 [%r339, %b3735], [%r435, %b3742]
  %r378 = phi i32 [%r337, %b3735], [%r434, %b3742]
  %r433 = call i32 @inb(i32 1021)
  %r432 = and i32 %r433, 96
  call void @func_b1309(i32 %r432, i32 0, i32 %r431)
  %r430 = icmp eq i32 %r431, 10
  br i1 %r430, label %b3737, label %b3743

b3746:
  %r445 = call i32 @inb(i32 1021)
  %r444 = and i32 %r445, 96
  call void @func_b1309(i32 %r444, i32 0, i32 13)
  call void @func_b1580(i32 %r383)
  %r442 = inttoptr i32 %r390 to i8*
  %r443 = load i8, i8* %r442
  %r441 = zext i8 %r443 to i32
  %r440 = icmp eq i32 %r441, 0
  br i1 %r440, label %b3698, label %b3751

b3752:
  call void @func_b1580(i32 %r383)
  %r448 = inttoptr i32 %r390 to i8*
  %r449 = load i8, i8* %r448
  %r447 = zext i8 %r449 to i32
  %r446 = icmp eq i32 %r447, 0
  br i1 %r446, label %b3698, label %b3751

b2385:
  %r457 = and i32 %r397, 15
  %r455 = call i32 @func_b1345(i32 %r457, i32 9)
  %r454 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r456 = trunc i32 %r455 to i8
  store i8 %r456, i8* %r454
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r397, i32 32)
  %r452 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r453 = load i8, i8* %r452
  %r451 = zext i8 %r453 to i32
  %r450 = icmp eq i32 %r451, 0
  br i1 %r450, label %b2386, label %b3868

b3879:
  %r461 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r460 = call i32 @inb(i32 1021)
  %r459 = and i32 %r460, 96
  call void @func_b1309(i32 %r459, i32 0, i32 %r393)
  %r458 = icmp eq i32 %r393, 10
  br i1 %r458, label %b3883, label %b3885

b3890:
  %r467 = phi i32 [%r343, %b4260], [%r463, %b3888]
  %r466 = phi i32 [%r398, %b4260], [%r468, %b3888]
  %r396 = phi i32 [%r346, %b4260], [%r396, %b3888]
  call void @func_b1589(i32 %r467)
  %r464 = inttoptr i32 %r466 to i8*
  %r465 = load i8, i8* %r464
  %r463 = zext i8 %r465 to i32
  %r462 = icmp eq i32 %r463, 0
  br i1 %r462, label %b3877, label %b3888

b3776:
  %r474 = phi i32 [%r413, %b3793], [%r473, %b3789]
  %r471 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r472 = load i8, i8* %r471
  %r470 = zext i8 %r472 to i32
  %r469 = icmp eq i32 %r470, 0
  br i1 %r469, label %b2391, label %b3778

b4259:
  %r475 = add i32 %r413, 1
  br label %b3789

b3822:
  %r481 = call i32 @inb(i32 1021)
  %r480 = and i32 %r481, 96
  call void @func_b1309(i32 %r480, i32 0, i32 13)
  call void @func_b1580(i32 %r415)
  call void @func_b3806(i32 %r418, i32 %r419)
  %r479 = inttoptr i32 4096 to i32*
  %r477 = load i32, i32* %r479
  %r478 = inttoptr i32 %r477 to i32*
  %r229 = load i32, i32* %r478
  %r220 = add i32 %r477, 4
  %r476 = icmp eq i32 %r229, 0
  br i1 %r476, label %b3542, label %b3755

b3824:
  call void @func_b1580(i32 %r415)
  call void @func_b3806(i32 %r418, i32 %r419)
  %r485 = inttoptr i32 4096 to i32*
  %r483 = load i32, i32* %r485
  %r484 = inttoptr i32 %r483 to i32*
  %r228 = load i32, i32* %r484
  %r219 = add i32 %r483, 4
  %r482 = icmp eq i32 %r228, 0
  br i1 %r482, label %b3542, label %b3755

b3557:
  %r486 = add i32 ptrtoint(i8* @str51 to i32), 1
  br label %b3549

b4451:
  %r491 = phi i32 [%r379, %b4258], [%r505, %b4468], [%r504, %b4469]
  %r503 = phi i32 [%r428, %b4258], [%r502, %b4468], [%r501, %b4469]
  %r500 = phi i32 [%r429, %b4258], [%r499, %b4468], [%r498, %b4469]
  %r497 = phi i32 [%r376, %b4258], [%r496, %b4468], [%r495, %b4469]
  %r494 = phi i32 [%r374, %b4258], [%r493, %b4468], [%r492, %b4469]
  call void @func_b3324(i32 %r491)
  %r489 = inttoptr i32 ptrtoint(i8* @str50 to i32) to i8*
  %r490 = load i8, i8* %r489
  %r488 = zext i8 %r490 to i32
  %r487 = icmp eq i32 %r488, 0
  br i1 %r487, label %b4462, label %b4463

b4452:
  %r509 = add i32 ptrtoint(i8* @str49 to i32), 1
  %r508 = call i32 @inb(i32 1021)
  %r507 = and i32 %r508, 96
  call void @func_b1309(i32 %r507, i32 0, i32 %r425)
  %r506 = icmp eq i32 %r425, 10
  br i1 %r506, label %b4468, label %b4469

b3737:
  %r515 = call i32 @inb(i32 1021)
  %r514 = and i32 %r515, 96
  call void @func_b1309(i32 %r514, i32 0, i32 13)
  call void @func_b1580(i32 %r431)
  %r512 = inttoptr i32 %r438 to i8*
  %r513 = load i8, i8* %r512
  %r511 = zext i8 %r513 to i32
  %r510 = icmp eq i32 %r511, 0
  br i1 %r510, label %b3734, label %b3742

b3743:
  call void @func_b1580(i32 %r431)
  %r518 = inttoptr i32 %r438 to i8*
  %r519 = load i8, i8* %r518
  %r517 = zext i8 %r519 to i32
  %r516 = icmp eq i32 %r517, 0
  br i1 %r516, label %b3734, label %b3742

b3751:
  %r391 = phi i32 [%r441, %b3746], [%r447, %b3752]
  %r520 = phi i32 [%r390, %b3746], [%r390, %b3752]
  %r388 = phi i32 [%r340, %b3746], [%r340, %b3752]
  %r387 = phi i32 [%r338, %b3746], [%r338, %b3752]
  %r386 = phi i32 [%r336, %b3746], [%r336, %b3752]
  %r389 = add i32 %r520, 1
  br label %b3745

b2386:
  %r524 = inttoptr i32 4108 to i32*
  %r305 = load i32, i32* %r524
  %r522 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r523 = load i8, i8* %r522
  %r318 = zext i8 %r523 to i32
  %r521 = icmp eq i32 %r318, 0
  br i1 %r521, label %b3828, label %b3933

b3868:
  %r529 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b3228(i32 %r451, i32 %r529)
  %r528 = inttoptr i32 4108 to i32*
  %r304 = load i32, i32* %r528
  %r526 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r527 = load i8, i8* %r526
  %r317 = zext i8 %r527 to i32
  %r525 = icmp eq i32 %r317, 0
  br i1 %r525, label %b3828, label %b3933

b3883:
  %r535 = call i32 @inb(i32 1021)
  %r534 = and i32 %r535, 96
  call void @func_b1309(i32 %r534, i32 0, i32 13)
  call void @func_b1580(i32 %r393)
  call void @func_b3766(i32 %r461, i32 %r397)
  %r533 = inttoptr i32 4108 to i32*
  %r303 = load i32, i32* %r533
  %r531 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r532 = load i8, i8* %r531
  %r316 = zext i8 %r532 to i32
  %r530 = icmp eq i32 %r316, 0
  br i1 %r530, label %b3828, label %b3933

b3885:
  call void @func_b1580(i32 %r393)
  call void @func_b3766(i32 %r461, i32 %r397)
  %r539 = inttoptr i32 4108 to i32*
  %r302 = load i32, i32* %r539
  %r537 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r538 = load i8, i8* %r537
  %r315 = zext i8 %r538 to i32
  %r536 = icmp eq i32 %r315, 0
  br i1 %r536, label %b3828, label %b3933

b3888:
  %r468 = add i32 %r466, 1
  br label %b3890

b2391:
  %r547 = and i32 %r474, 15
  %r545 = call i32 @func_b1345(i32 %r547, i32 9)
  %r544 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r546 = trunc i32 %r545 to i8
  store i8 %r546, i8* %r544
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r474, i32 32)
  %r542 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r543 = load i8, i8* %r542
  %r541 = zext i8 %r543 to i32
  %r540 = icmp eq i32 %r541, 0
  br i1 %r540, label %b2323, label %b3760

b3778:
  %r551 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r550 = call i32 @inb(i32 1021)
  %r549 = and i32 %r550, 96
  call void @func_b1309(i32 %r549, i32 0, i32 %r470)
  %r548 = icmp eq i32 %r470, 10
  br i1 %r548, label %b3782, label %b3784

b3789:
  %r557 = phi i32 [%r410, %b4259], [%r553, %b3787]
  %r556 = phi i32 [%r475, %b4259], [%r558, %b3787]
  %r473 = phi i32 [%r413, %b4259], [%r473, %b3787]
  call void @func_b1589(i32 %r557)
  %r554 = inttoptr i32 %r556 to i8*
  %r555 = load i8, i8* %r554
  %r553 = zext i8 %r555 to i32
  %r552 = icmp eq i32 %r553, 0
  br i1 %r552, label %b3776, label %b3787

b3549:
  %r560 = phi i32 [%r421, %b3557], [%r565, %b3547]
  %r564 = phi i32 [%r486, %b3557], [%r563, %b3547]
  %r562 = call i32 @inb(i32 1021)
  %r561 = and i32 %r562, 96
  call void @func_b1309(i32 %r561, i32 0, i32 %r560)
  %r559 = icmp eq i32 %r560, 10
  br i1 %r559, label %b3552, label %b3554

b4462:
  %r573 = phi i32 [%r497, %b4451], [%r581, %b4472], [%r580, %b4473]
  %r579 = phi i32 [%r494, %b4451], [%r578, %b4472], [%r577, %b4473]
  %r576 = phi i32 [%r491, %b4451], [%r575, %b4472], [%r574, %b4473]
  %r572 = add i32 %r573, 8
  %r571 = inttoptr i32 %r572 to i32*
  %r570 = load i32, i32* %r571
  %r568 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r569 = load i8, i8* %r568
  %r567 = zext i8 %r569 to i32
  %r566 = icmp eq i32 %r567, 0
  br i1 %r566, label %b2013, label %b3617

b4463:
  %r585 = add i32 ptrtoint(i8* @str50 to i32), 1
  %r584 = call i32 @inb(i32 1021)
  %r583 = and i32 %r584, 96
  call void @func_b1309(i32 %r583, i32 0, i32 %r488)
  %r582 = icmp eq i32 %r488, 10
  br i1 %r582, label %b4472, label %b4473

b4468:
  %r591 = phi i32 [%r425, %b4452], [%r600, %b4471]
  %r590 = phi i32 [%r509, %b4452], [%r599, %b4471]
  %r496 = phi i32 [%r376, %b4452], [%r598, %b4471]
  %r493 = phi i32 [%r374, %b4452], [%r597, %b4471]
  %r505 = phi i32 [%r379, %b4452], [%r596, %b4471]
  %r502 = phi i32 [%r428, %b4452], [%r595, %b4471]
  %r499 = phi i32 [%r429, %b4452], [%r594, %b4471]
  %r593 = call i32 @inb(i32 1021)
  %r592 = and i32 %r593, 96
  call void @func_b1309(i32 %r592, i32 0, i32 13)
  call void @func_b1580(i32 %r591)
  %r588 = inttoptr i32 %r590 to i8*
  %r589 = load i8, i8* %r588
  %r587 = zext i8 %r589 to i32
  %r586 = icmp eq i32 %r587, 0
  br i1 %r586, label %b4451, label %b4471

b4469:
  %r606 = phi i32 [%r425, %b4452], [%r600, %b4471]
  %r605 = phi i32 [%r509, %b4452], [%r599, %b4471]
  %r495 = phi i32 [%r376, %b4452], [%r598, %b4471]
  %r492 = phi i32 [%r374, %b4452], [%r597, %b4471]
  %r504 = phi i32 [%r379, %b4452], [%r596, %b4471]
  %r501 = phi i32 [%r428, %b4452], [%r595, %b4471]
  %r498 = phi i32 [%r429, %b4452], [%r594, %b4471]
  call void @func_b1580(i32 %r606)
  %r603 = inttoptr i32 %r605 to i8*
  %r604 = load i8, i8* %r603
  %r602 = zext i8 %r604 to i32
  %r601 = icmp eq i32 %r602, 0
  br i1 %r601, label %b4451, label %b4471

b3742:
  %r439 = phi i32 [%r511, %b3737], [%r517, %b3743]
  %r607 = phi i32 [%r438, %b3737], [%r438, %b3743]
  %r436 = phi i32 [%r375, %b3737], [%r375, %b3743]
  %r435 = phi i32 [%r380, %b3737], [%r380, %b3743]
  %r434 = phi i32 [%r378, %b3737], [%r378, %b3743]
  %r437 = add i32 %r607, 1
  br label %b3736

b2323:
  %r611 = inttoptr i32 4096 to i32*
  %r609 = load i32, i32* %r611
  %r610 = inttoptr i32 %r609 to i32*
  %r227 = load i32, i32* %r610
  %r218 = add i32 %r609, 4
  %r608 = icmp eq i32 %r227, 0
  br i1 %r608, label %b3542, label %b3755

b3760:
  %r616 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b3228(i32 %r541, i32 %r616)
  %r615 = inttoptr i32 4096 to i32*
  %r613 = load i32, i32* %r615
  %r614 = inttoptr i32 %r613 to i32*
  %r226 = load i32, i32* %r614
  %r217 = add i32 %r613, 4
  %r612 = icmp eq i32 %r226, 0
  br i1 %r612, label %b3542, label %b3755

b3782:
  %r622 = call i32 @inb(i32 1021)
  %r621 = and i32 %r622, 96
  call void @func_b1309(i32 %r621, i32 0, i32 13)
  call void @func_b1580(i32 %r470)
  call void @func_b3766(i32 %r551, i32 %r474)
  %r620 = inttoptr i32 4096 to i32*
  %r618 = load i32, i32* %r620
  %r619 = inttoptr i32 %r618 to i32*
  %r225 = load i32, i32* %r619
  %r216 = add i32 %r618, 4
  %r617 = icmp eq i32 %r225, 0
  br i1 %r617, label %b3542, label %b3755

b3784:
  call void @func_b1580(i32 %r470)
  call void @func_b3766(i32 %r551, i32 %r474)
  %r626 = inttoptr i32 4096 to i32*
  %r624 = load i32, i32* %r626
  %r625 = inttoptr i32 %r624 to i32*
  %r224 = load i32, i32* %r625
  %r215 = add i32 %r624, 4
  %r623 = icmp eq i32 %r224, 0
  br i1 %r623, label %b3542, label %b3755

b3787:
  %r558 = add i32 %r556, 1
  br label %b3789

b3552:
  %r632 = call i32 @inb(i32 1021)
  %r631 = and i32 %r632, 96
  call void @func_b1309(i32 %r631, i32 0, i32 13)
  call void @func_b1580(i32 %r560)
  %r629 = inttoptr i32 %r564 to i8*
  %r630 = load i8, i8* %r629
  %r628 = zext i8 %r630 to i32
  %r627 = icmp eq i32 %r628, 0
  br i1 %r627, label %b3529, label %b3547

b3554:
  call void @func_b1580(i32 %r560)
  %r635 = inttoptr i32 %r564 to i8*
  %r636 = load i8, i8* %r635
  %r634 = zext i8 %r636 to i32
  %r633 = icmp eq i32 %r634, 0
  br i1 %r633, label %b3529, label %b3547

b2013:
  %r644 = and i32 %r570, 15
  %r642 = call i32 @func_b1345(i32 %r644, i32 9)
  %r641 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r643 = trunc i32 %r642 to i8
  store i8 %r643, i8* %r641
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r570, i32 32)
  %r639 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r640 = load i8, i8* %r639
  %r638 = zext i8 %r640 to i32
  %r637 = icmp eq i32 %r638, 0
  br i1 %r637, label %b4449, label %b4450

b3617:
  %r652 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b3611(i32 %r567, i32 %r652, i32 %r570)
  %r651 = add i32 %r576, 8
  %r650 = inttoptr i32 %r651 to i32*
  %r649 = load i32, i32* %r650
  %r647 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r648 = load i8, i8* %r647
  %r646 = zext i8 %r648 to i32
  %r645 = icmp eq i32 %r646, 0
  br i1 %r645, label %b2001, label %b3614

b4472:
  %r658 = phi i32 [%r488, %b4463], [%r665, %b4474]
  %r657 = phi i32 [%r585, %b4463], [%r664, %b4474]
  %r575 = phi i32 [%r491, %b4463], [%r663, %b4474]
  %r581 = phi i32 [%r497, %b4463], [%r662, %b4474]
  %r578 = phi i32 [%r494, %b4463], [%r661, %b4474]
  %r660 = call i32 @inb(i32 1021)
  %r659 = and i32 %r660, 96
  call void @func_b1309(i32 %r659, i32 0, i32 13)
  call void @func_b1580(i32 %r658)
  %r655 = inttoptr i32 %r657 to i8*
  %r656 = load i8, i8* %r655
  %r654 = zext i8 %r656 to i32
  %r653 = icmp eq i32 %r654, 0
  br i1 %r653, label %b4462, label %b4474

b4473:
  %r671 = phi i32 [%r488, %b4463], [%r665, %b4474]
  %r670 = phi i32 [%r585, %b4463], [%r664, %b4474]
  %r574 = phi i32 [%r491, %b4463], [%r663, %b4474]
  %r580 = phi i32 [%r497, %b4463], [%r662, %b4474]
  %r577 = phi i32 [%r494, %b4463], [%r661, %b4474]
  call void @func_b1580(i32 %r671)
  %r668 = inttoptr i32 %r670 to i8*
  %r669 = load i8, i8* %r668
  %r667 = zext i8 %r669 to i32
  %r666 = icmp eq i32 %r667, 0
  br i1 %r666, label %b4462, label %b4474

b4471:
  %r600 = phi i32 [%r587, %b4468], [%r602, %b4469]
  %r675 = phi i32 [%r590, %b4468], [%r605, %b4469]
  %r598 = phi i32 [%r496, %b4468], [%r495, %b4469]
  %r597 = phi i32 [%r493, %b4468], [%r492, %b4469]
  %r596 = phi i32 [%r505, %b4468], [%r504, %b4469]
  %r595 = phi i32 [%r502, %b4468], [%r501, %b4469]
  %r594 = phi i32 [%r499, %b4468], [%r498, %b4469]
  %r599 = add i32 %r675, 1
  %r674 = call i32 @inb(i32 1021)
  %r673 = and i32 %r674, 96
  call void @func_b1309(i32 %r673, i32 0, i32 %r600)
  %r672 = icmp eq i32 %r600, 10
  br i1 %r672, label %b4468, label %b4469

b3547:
  %r565 = phi i32 [%r628, %b3552], [%r634, %b3554]
  %r676 = phi i32 [%r564, %b3552], [%r564, %b3554]
  %r563 = add i32 %r676, 1
  br label %b3549

b4449:
  %r685 = add i32 ptrtoint(i8* @users to i32), 52
  %r684 = inttoptr i32 %r685 to i32*
  store i32 %r570, i32* %r684
  %r683 = add i32 %r576, 8
  %r682 = inttoptr i32 %r683 to i32*
  %r681 = load i32, i32* %r682
  %r679 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r680 = load i8, i8* %r679
  %r678 = zext i8 %r680 to i32
  %r677 = icmp eq i32 %r678, 0
  br i1 %r677, label %b2001, label %b3614

b4450:
  %r693 = add i32 ptrtoint(i8* @str54 to i32), 1
  call void @func_b3562(i32 %r638, i32 %r693, i32 %r570)
  %r692 = add i32 %r576, 8
  %r691 = inttoptr i32 %r692 to i32*
  %r690 = load i32, i32* %r691
  %r688 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r689 = load i8, i8* %r688
  %r687 = zext i8 %r689 to i32
  %r686 = icmp eq i32 %r687, 0
  br i1 %r686, label %b2001, label %b3614

b2001:
  %r698 = phi i32 [%r649, %b3617], [%r681, %b4449], [%r690, %b4450]
  %r702 = and i32 %r698, 15
  %r700 = call i32 @func_b1345(i32 %r702, i32 9)
  %r699 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r701 = trunc i32 %r700 to i8
  store i8 %r701, i8* %r699
  call void @func_b4374(i32 1, i32 0, i32 31, i32 %r698, i32 32)
  %r696 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r697 = load i8, i8* %r696
  %r695 = zext i8 %r697 to i32
  %r694 = icmp eq i32 %r695, 0
  br i1 %r694, label %b4446, label %b4447

b3614:
  %r703 = phi i32 [%r646, %b3617], [%r678, %b4449], [%r687, %b4450]
  %r705 = phi i32 [%r649, %b3617], [%r681, %b4449], [%r690, %b4450]
  %r704 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b3593(i32 %r703, i32 %r704, i32 %r705)
  br label %b1872

b4474:
  %r665 = phi i32 [%r654, %b4472], [%r667, %b4473]
  %r709 = phi i32 [%r657, %b4472], [%r670, %b4473]
  %r663 = phi i32 [%r575, %b4472], [%r574, %b4473]
  %r662 = phi i32 [%r581, %b4472], [%r580, %b4473]
  %r661 = phi i32 [%r578, %b4472], [%r577, %b4473]
  %r664 = add i32 %r709, 1
  %r708 = call i32 @inb(i32 1021)
  %r707 = and i32 %r708, 96
  call void @func_b1309(i32 %r707, i32 0, i32 %r665)
  %r706 = icmp eq i32 %r665, 10
  br i1 %r706, label %b4472, label %b4473

b4446:
  %r711 = add i32 ptrtoint(i8* @users to i32), 124
  %r710 = inttoptr i32 %r711 to i32*
  store i32 %r698, i32* %r710
  br label %b1872

b4447:
  %r712 = add i32 ptrtoint(i8* @str54 to i32), 1
  call void @func_b3572(i32 %r695, i32 %r712, i32 %r698)
  br label %b1872

b1872:
  %r725 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r725
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
  %r724 = call i32 @inb(i32 33)
  %r723 = and i32 %r724, -2
  call void @outb(i32 33, i32 %r723)
  %r722 = call i32 @inb(i32 33)
  %r721 = and i32 %r722, -3
  call void @outb(i32 33, i32 %r721)
  %r720 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r719 = load i1, i1* %r720
  %r718 = zext i1 %r719 to i32
  %r717 = mul i32 %r718, 72
  %r716 = add i32 ptrtoint(i8* @users to i32), %r717
  call void @returnTo(i32 %r716)
  %r714 = inttoptr i32 ptrtoint(i8* @str46 to i32) to i8*
  %r715 = load i8, i8* %r714
  %r274 = zext i8 %r715 to i32
  %r713 = icmp eq i32 %r274, 0
  br i1 %r713, label %b303, label %b3531
}

