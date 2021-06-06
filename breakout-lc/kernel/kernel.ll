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

@raw.6 = internal global [480 x i8] zeroinitializer, align 4

@objects = internal alias i8, i8* bitcast([480 x i8]* @raw.6 to i8*)

@ball = internal global i32 0

@str.7 = private unnamed_addr constant [9 x i8] c"nothing\0a\00"

@str0 = internal alias i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @str.7, i32 0, i32 0)

@raw.8 = internal global [4 x i8] zeroinitializer, align 1

@spinner = internal alias i8, i8* bitcast([4 x i8]* @raw.8 to i8*)

@raw.9 = internal global [1 x i8] zeroinitializer, align 1

@spinpos = internal alias i8, i8* bitcast([1 x i8]* @raw.9 to i8*)

@raw.10 = internal global [1 x i8] zeroinitializer, align 1

@pos = internal alias i8, i8* bitcast([1 x i8]* @raw.10 to i8*)

@raw.11 = internal global [1 x i8] zeroinitializer, align 1

@dir = internal alias i8, i8* bitcast([1 x i8]* @raw.11 to i8*)

@raw.12 = internal global [1 x i8] zeroinitializer, align 1

@headingLeft = internal alias i8, i8* bitcast([1 x i8]* @raw.12 to i8*)

@raw.13 = internal global [1 x i8] zeroinitializer, align 1

@headingTop = internal alias i8, i8* bitcast([1 x i8]* @raw.13 to i8*)

@str.14 = private unnamed_addr constant [13 x i8] c"Exception 0x\00"

@str55 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.14, i32 0, i32 0)

@raw.15 = internal global [32 x i8] zeroinitializer, align 1

@itoaBuf = internal alias i8, i8* bitcast([32 x i8]* @raw.15 to i8*)

@str.16 = private unnamed_addr constant [11 x i8] c", frame=0x\00"

@str56 = internal alias i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.16, i32 0, i32 0)

@str.17 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str57 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.17, i32 0, i32 0)

@str.18 = private unnamed_addr constant [19 x i8] c" Last key pressed:\00"

@str45 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.18, i32 0, i32 0)

@str.19 = private unnamed_addr constant [10 x i8] c"Headers:\0a\00"

@str11 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.19, i32 0, i32 0)

@str.20 = private unnamed_addr constant [2 x i8] c" \00"

@str1 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.20, i32 0, i32 0)

@str.21 = private unnamed_addr constant [7 x i8] c"header\00"

@str12 = internal alias i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.21, i32 0, i32 0)

@str.22 = private unnamed_addr constant [2 x i8] c"[\00"

@str2 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.22, i32 0, i32 0)

@str.23 = private unnamed_addr constant [4 x i8] c"]: \00"

@str3 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.23, i32 0, i32 0)

@str.24 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str5 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.24, i32 0, i32 0)

@str.25 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str6 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.25, i32 0, i32 0)

@str.26 = private unnamed_addr constant [12 x i8] c"], entry 0x\00"

@str7 = internal alias i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.26, i32 0, i32 0)

@str.27 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str4 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.27, i32 0, i32 0)

@str.28 = private unnamed_addr constant [13 x i8] c"Memory map:\0a\00"

@str13 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.28, i32 0, i32 0)

@str.29 = private unnamed_addr constant [5 x i8] c"mmap\00"

@str14 = internal alias i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str.29, i32 0, i32 0)

@str.30 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str8 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.30, i32 0, i32 0)

@str.31 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str9 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.31, i32 0, i32 0)

@str.32 = private unnamed_addr constant [2 x i8] c"]\00"

@str10 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.32, i32 0, i32 0)

@str.33 = private unnamed_addr constant [10 x i8] c"Strings:\0a\00"

@str15 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.33, i32 0, i32 0)

@str.34 = private unnamed_addr constant [2 x i8] c" \00"

@str18 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.34, i32 0, i32 0)

@str.35 = private unnamed_addr constant [8 x i8] c"cmdline\00"

@str16 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.35, i32 0, i32 0)

@str.36 = private unnamed_addr constant [3 x i8] c": \00"

@str19 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.36, i32 0, i32 0)

@str.37 = private unnamed_addr constant [3 x i8] c" [\00"

@str20 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.37, i32 0, i32 0)

@str.38 = private unnamed_addr constant [3 x i8] c"]\0a\00"

@str21 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.38, i32 0, i32 0)

@str.39 = private unnamed_addr constant [8 x i8] c"imgline\00"

@str17 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.39, i32 0, i32 0)

@str.40 = private unnamed_addr constant [33 x i8] c"Did not find first user program\0a\00"

@str52 = internal alias i8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.40, i32 0, i32 0)

@str.41 = private unnamed_addr constant [40 x i8] c"\0aHalting kernel, returning to mimgload\0a\00"

@str46 = internal alias i8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.41, i32 0, i32 0)

@str.42 = private unnamed_addr constant [38 x i8] c"Found header for first user program:\0a\00"

@str47 = internal alias i8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.42, i32 0, i32 0)

@str.43 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str48 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.43, i32 0, i32 0)

@str.44 = private unnamed_addr constant [39 x i8] c"Found header for second user program:\0a\00"

@str49 = internal alias i8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.44, i32 0, i32 0)

@str.45 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str50 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.45, i32 0, i32 0)

@str.46 = private unnamed_addr constant [19 x i8] c"user code is at 0x\00"

@str53 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.46, i32 0, i32 0)

@str.47 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str54 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.47, i32 0, i32 0)

@str.48 = private unnamed_addr constant [34 x i8] c"Did not find second user program\0a\00"

@str51 = internal alias i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.48, i32 0, i32 0)

declare void @returnTo(i32)

define void @yield() {
  br label %yield

yield:
  br label %b1354

b1354:
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

define internal void @func_b1572(i32 %r0, i32 %r1, i32 %r2) {
  br label %b1572

b1572:
  %r4 = phi i32 [%r0, %0], [%r7, %b258]
  %r5 = phi i32 [%r1, %0], [0, %b258]
  %r6 = phi i32 [%r2, %0], [%r6, %b258]
  %r3 = icmp eq i32 %r4, %r5
  br i1 %r3, label %b258, label %b4563

b258:
  %r8 = call i32 @inb(i32 1021)
  %r7 = and i32 %r8, 96
  br label %b1572

b4563:
  tail call void @outb(i32 1016, i32 %r6)
  ret void
}

define internal void @func_b1580(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1580

b1580:
  %r7 = phi i32 [%r0, %0], [%r5, %b1580]
  %r6 = phi i32 [%r1, %0], [%r6, %b1580]
  %r18 = phi i32 [%r2, %0], [%r18, %b1580]
  %r21 = phi i32 [%r3, %0], [%r21, %b1580]
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
  br i1 %r4, label %b1580, label %b303

b303:
  ret void
}

define internal void @func_b1950(i32 %r0) {
  br label %b1950

b1950:
  %r5 = add i32 ptrtoint(i8* @console to i32), 4
  %r3 = inttoptr i32 %r5 to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r0, 13
  br i1 %r1, label %b1952, label %b1955

b1952:
  %r9 = phi i32 [%r2, %b1950], [%r2, %b1955], [%r2, %b1957]
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
  br i1 %r6, label %b6366, label %b1954

b1955:
  %r20 = icmp eq i32 %r0, 10
  br i1 %r20, label %b1952, label %b1957

b6366:
  %r23 = add i32 ptrtoint(i8* @console to i32), 4
  %r21 = inttoptr i32 %r23 to i8*
  %r22 = trunc i32 %r7 to i8
  store i8 %r22, i8* %r21
  ret void

b1954:
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
  br i1 %r24, label %b6357, label %b1578

b1957:
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
  br i1 %r45, label %b6370, label %b1952

b6357:
  %r71 = phi i32 [%r25, %b1954], [%r69, %b6357]
  %r74 = phi i32 [%r27, %b1954], [%r71, %b6357]
  %r70 = phi i32 [%r26, %b1954], [%r70, %b6357]
  %r73 = phi i32 [%r32, %b1954], [%r73, %b6357]
  %r72 = phi i32 [%r39, %b1954], [%r72, %b6357]
  %r75 = phi i32 [%r28, %b1954], [%r75, %b6357]
  call void @func_b1580(i32 %r72, i32 %r73, i32 %r74, i32 %r71)
  %r69 = add i32 %r71, 1
  %r68 = icmp ule i32 %r69, %r70
  br i1 %r68, label %b6357, label %b1578

b1578:
  %r79 = phi i32 [%r39, %b1954], [%r72, %b6357], [%r77, %b1578]
  %r78 = phi i32 [%r32, %b1954], [%r73, %b6357], [%r78, %b1578]
  %r85 = phi i32 [%r28, %b1954], [%r75, %b6357], [%r85, %b1578]
  %r89 = phi i32 [%r26, %b1954], [%r70, %b6357], [%r89, %b1578]
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
  br i1 %r76, label %b1578, label %b303

b6370:
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
  call void @func_b1572(i32 %r2, i32 0, i32 %r1)
  %r0 = icmp eq i32 %r1, 10
  br i1 %r0, label %b2749, label %b2750

b2749:
  %r12 = call i32 @inb(i32 1021)
  %r11 = and i32 %r12, 96
  call void @func_b1572(i32 %r11, i32 0, i32 13)
  call void @func_b1950(i32 %r1)
  tail call void @returnTo(i32 %r6)
  ret void

b2750:
  call void @func_b1950(i32 %r1)
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
  br i1 %r0, label %b1116, label %b1115

b1116:
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
  br i1 %r7, label %b1113, label %b1354

b1115:
  %r25 = lshr i32 %r2, 7
  %r24 = icmp eq i32 %r25, 1
  br i1 %r24, label %b1113, label %b1354

b1113:
  %r38 = phi i32 [%r2, %b1116], [%r2, %b1115]
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

b1354:
  %r43 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r42 = load i1, i1* %r43
  %r41 = zext i1 %r42 to i32
  %r40 = mul i32 %r41, 72
  %r39 = add i32 ptrtoint(i8* @users to i32), %r40
  tail call void @returnTo(i32 %r39)
  ret void
}

define internal void @func_b1697(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1697

b1697:
  %r7 = phi i32 [%r0, %0], [%r5, %b1697]
  %r6 = phi i32 [%r1, %0], [%r6, %b1697]
  %r13 = phi i32 [%r2, %0], [%r13, %b1697]
  %r17 = phi i32 [%r3, %0], [%r17, %b1697]
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
  br i1 %r4, label %b1697, label %b303

b303:
  ret void
}

define internal void @func_b1223() {
  br label %b1223

b1223:
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
  br label %b1699

b1699:
  %r28 = phi i32 [%r17, %b1223], [%r26, %b1699]
  %r27 = phi i32 [%r8, %b1223], [%r27, %b1699]
  %r31 = phi i32 [%r0, %b1223], [%r31, %b1699]
  %r30 = phi i32 [%r4, %b1223], [%r30, %b1699]
  %r29 = phi i32 [%r13, %b1223], [%r29, %b1699]
  call void @func_b1697(i32 %r29, i32 %r30, i32 %r31, i32 %r28)
  %r26 = add i32 %r28, 1
  %r25 = icmp ule i32 %r26, %r27
  br i1 %r25, label %b1699, label %b303

b303:
  ret void
}

define internal void @func_b4592() {
  %r8 = load i32, i32* @ball
  br label %b4592

b4592:
  %r4 = add i32 ptrtoint(i8* @objects to i32), 20
  %r3 = inttoptr i32 %r4 to i32*
  %r2 = load i32, i32* %r3
  %r1 = and i32 %r2, 16
  %r0 = icmp ne i32 %r1, 0
  br i1 %r0, label %b4593, label %b303

b4593:
  %r6 = and i32 %r2, 1
  %r5 = icmp ne i32 %r6, 0
  br i1 %r5, label %b4594, label %b303

b303:
  ret void

b4594:
  %r7 = icmp eq i32 ptrtoint(i8* @objects to i32), %r8
  br i1 %r7, label %b303, label %b4595

b4595:
  %r32 = add i32 ptrtoint(i8* @objects to i32), 8
  %r31 = inttoptr i32 %r32 to i32*
  %r10 = load i32, i32* %r31
  %r30 = add i32 %r8, 8
  %r29 = inttoptr i32 %r30 to i32*
  %r12 = load i32, i32* %r29
  %r28 = add i32 ptrtoint(i8* @objects to i32), 12
  %r27 = inttoptr i32 %r28 to i32*
  %r26 = load i32, i32* %r27
  %r25 = add i32 %r8, 12
  %r24 = inttoptr i32 %r25 to i32*
  %r23 = load i32, i32* %r24
  %r22 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r21 = load i32, i32* %r22
  %r20 = add i32 ptrtoint(i8* @objects to i32), 4
  %r19 = inttoptr i32 %r20 to i32*
  %r18 = load i32, i32* %r19
  %r17 = inttoptr i32 %r8 to i32*
  %r13 = load i32, i32* %r17
  %r16 = add i32 %r8, 4
  %r15 = inttoptr i32 %r16 to i32*
  %r14 = load i32, i32* %r15
  %r11 = add i32 %r12, %r13
  %r9 = icmp ult i32 %r10, %r11
  br i1 %r9, label %b4596, label %b303

b4596:
  %r34 = add i32 %r10, %r21
  %r33 = icmp ugt i32 %r34, %r12
  br i1 %r33, label %b4597, label %b303

b4597:
  %r36 = add i32 %r23, %r14
  %r35 = icmp ult i32 %r26, %r36
  br i1 %r35, label %b4598, label %b303

b4598:
  %r38 = add i32 %r26, %r18
  %r37 = icmp ugt i32 %r38, %r23
  br i1 %r37, label %b4599, label %b303

b4599:
  %r41 = add i32 ptrtoint(i8* @objects to i32), 20
  %r43 = inttoptr i32 %r41 to i32*
  %r42 = load i32, i32* %r43
  %r40 = and i32 %r42, -17
  %r39 = inttoptr i32 %r41 to i32*
  store i32 %r40, i32* %r39
  ret void
}

define internal void @func_b2660(i32 %r0) {
  %r9 = load i32, i32* @ball
  br label %b2660

b2660:
  %r5 = add i32 %r0, 20
  %r4 = inttoptr i32 %r5 to i32*
  %r3 = load i32, i32* %r4
  %r2 = and i32 %r3, 16
  %r1 = icmp ne i32 %r2, 0
  br i1 %r1, label %b2658, label %b303

b2658:
  %r7 = and i32 %r3, 1
  %r6 = icmp ne i32 %r7, 0
  br i1 %r6, label %b2427, label %b303

b303:
  ret void

b2427:
  %r8 = icmp eq i32 %r0, %r9
  br i1 %r8, label %b303, label %b1644

b1644:
  %r33 = add i32 %r0, 8
  %r32 = inttoptr i32 %r33 to i32*
  %r11 = load i32, i32* %r32
  %r31 = add i32 %r9, 8
  %r30 = inttoptr i32 %r31 to i32*
  %r13 = load i32, i32* %r30
  %r29 = add i32 %r0, 12
  %r28 = inttoptr i32 %r29 to i32*
  %r27 = load i32, i32* %r28
  %r26 = add i32 %r9, 12
  %r25 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r25
  %r23 = inttoptr i32 %r0 to i32*
  %r22 = load i32, i32* %r23
  %r21 = add i32 %r0, 4
  %r20 = inttoptr i32 %r21 to i32*
  %r19 = load i32, i32* %r20
  %r18 = inttoptr i32 %r9 to i32*
  %r14 = load i32, i32* %r18
  %r17 = add i32 %r9, 4
  %r16 = inttoptr i32 %r17 to i32*
  %r15 = load i32, i32* %r16
  %r12 = add i32 %r13, %r14
  %r10 = icmp ult i32 %r11, %r12
  br i1 %r10, label %b2034, label %b303

b2034:
  %r35 = add i32 %r11, %r22
  %r34 = icmp ugt i32 %r35, %r13
  br i1 %r34, label %b2035, label %b303

b2035:
  %r37 = add i32 %r24, %r15
  %r36 = icmp ult i32 %r27, %r37
  br i1 %r36, label %b2036, label %b303

b2036:
  %r39 = add i32 %r27, %r19
  %r38 = icmp ugt i32 %r39, %r24
  br i1 %r38, label %b1017, label %b303

b1017:
  %r42 = add i32 %r0, 20
  %r44 = inttoptr i32 %r42 to i32*
  %r43 = load i32, i32* %r44
  %r41 = and i32 %r43, -17
  %r40 = inttoptr i32 %r42 to i32*
  store i32 %r41, i32* %r40
  ret void
}

define internal i32 @func_b5082() {
  br label %b5082

b5082:
  %r2 = inttoptr i32 ptrtoint(i8* @str0 to i32) to i8*
  %r3 = load i8, i8* %r2
  %r1 = zext i8 %r3 to i32
  %r0 = icmp eq i32 %r1, 0
  br i1 %r0, label %b1818, label %b5084

b1818:
  ret i32 0

b5084:
  %r4 = add i32 ptrtoint(i8* @str0 to i32), 1
  br label %b5071

b5071:
  %r6 = phi i32 [%r1, %b5084], [%r11, %b5069]
  %r10 = phi i32 [%r4, %b5084], [%r9, %b5069]
  %r8 = call i32 @inb(i32 1021)
  %r7 = and i32 %r8, 96
  call void @func_b1572(i32 %r7, i32 0, i32 %r6)
  %r5 = icmp eq i32 %r6, 10
  br i1 %r5, label %b5074, label %b5076

b5074:
  %r17 = call i32 @inb(i32 1021)
  %r16 = and i32 %r17, 96
  call void @func_b1572(i32 %r16, i32 0, i32 13)
  call void @func_b1950(i32 %r6)
  %r14 = inttoptr i32 %r10 to i8*
  %r15 = load i8, i8* %r14
  %r13 = zext i8 %r15 to i32
  %r12 = icmp eq i32 %r13, 0
  br i1 %r12, label %b1818, label %b5069

b5076:
  call void @func_b1950(i32 %r6)
  %r20 = inttoptr i32 %r10 to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1818, label %b5069

b5069:
  %r11 = phi i32 [%r13, %b5074], [%r19, %b5076]
  %r22 = phi i32 [%r10, %b5074], [%r10, %b5076]
  %r9 = add i32 %r22, 1
  br label %b5071
}

define internal void @func_b6448(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5, i32 %r6) {
  br label %b6448

b6448:
  %r11 = phi i32 [%r0, %0], [%r22, %b6443], [%r11, %b6436]
  %r10 = phi i32 [%r1, %0], [%r21, %b6443], [%r20, %b6436]
  %r9 = phi i32 [%r2, %0], [79, %b6443], [79, %b6436]
  %r18 = phi i32 [%r3, %0], [%r19, %b6443], [%r18, %b6436]
  %r16 = phi i32 [%r4, %0], [%r17, %b6443], [%r16, %b6436]
  %r14 = phi i32 [%r5, %0], [%r15, %b6443], [%r14, %b6436]
  %r12 = phi i32 [%r6, %0], [%r13, %b6443], [%r12, %b6436]
  %r8 = add i32 %r10, %r11
  %r7 = icmp ule i32 %r8, %r9
  br i1 %r7, label %b6438, label %b6443

b6438:
  %r24 = add i32 %r14, %r12
  %r23 = icmp ule i32 %r24, 24
  br i1 %r23, label %b6436, label %b6443

b6443:
  %r27 = phi i32 [1, %b6448], [1, %b6438]
  %r26 = phi i32 [%r10, %b6448], [%r10, %b6438]
  %r19 = phi i32 [%r18, %b6448], [%r18, %b6438]
  %r22 = phi i32 [%r11, %b6448], [%r11, %b6438]
  %r13 = phi i32 [%r12, %b6448], [%r12, %b6438]
  %r15 = phi i32 [%r14, %b6448], [%r14, %b6438]
  %r17 = phi i32 [%r16, %b6448], [%r16, %b6438]
  %r21 = add i32 %r26, %r27
  %r25 = icmp ule i32 %r21, %r19
  br i1 %r25, label %b6448, label %b303

b6436:
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
  br i1 %r28, label %b6448, label %b303

b303:
  ret void
}

define internal void @func_b6449(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5, i32 %r6, i32 %r7) {
  br label %b6449

b6449:
  %r12 = phi i32 [%r0, %0], [1, %b2182]
  %r11 = phi i32 [%r1, %0], [%r9, %b2182]
  %r10 = phi i32 [%r2, %0], [0, %b2182]
  %r17 = phi i32 [%r3, %0], [%r17, %b2182]
  %r16 = phi i32 [%r4, %0], [%r16, %b2182]
  %r15 = phi i32 [%r5, %0], [%r15, %b2182]
  %r14 = phi i32 [%r6, %0], [%r14, %b2182]
  %r13 = phi i32 [%r7, %0], [%r13, %b2182]
  %r9 = add i32 %r11, %r12
  %r8 = icmp ule i32 %r9, %r10
  br i1 %r8, label %b2182, label %b303

b2182:
  call void @func_b6448(i32 %r13, i32 %r17, i32 79, i32 %r16, i32 %r15, i32 %r9, i32 %r14)
  br label %b6449

b303:
  ret void
}

define internal void @func_b6457(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5, i32 %r6, i32 %r7) {
  br label %b6457

b6457:
  %r12 = phi i32 [%r0, %0], [1, %b2191]
  %r11 = phi i32 [%r1, %0], [%r9, %b2191]
  %r10 = phi i32 [%r2, %0], [%r10, %b2191]
  %r17 = phi i32 [%r3, %0], [%r17, %b2191]
  %r16 = phi i32 [%r4, %0], [%r16, %b2191]
  %r15 = phi i32 [%r5, %0], [%r15, %b2191]
  %r14 = phi i32 [%r6, %0], [%r14, %b2191]
  %r13 = phi i32 [%r7, %0], [%r13, %b2191]
  %r9 = add i32 %r11, %r12
  %r8 = icmp ule i32 %r9, %r10
  br i1 %r8, label %b2191, label %b303

b2191:
  call void @func_b6448(i32 %r13, i32 %r17, i32 79, i32 %r16, i32 %r15, i32 %r9, i32 %r14)
  br label %b6457

b303:
  ret void
}

define internal void @func_b2162() {
  br label %b2162

b2162:
  %r4 = add i32 ptrtoint(i8* @objects to i32), 20
  %r3 = inttoptr i32 %r4 to i32*
  %r2 = load i32, i32* %r3
  %r1 = and i32 %r2, 16
  %r0 = icmp ne i32 %r1, 0
  br i1 %r0, label %b4576, label %b303

b4576:
  %r17 = add i32 ptrtoint(i8* @objects to i32), 8
  %r16 = inttoptr i32 %r17 to i32*
  %r15 = load i32, i32* %r16
  %r14 = add i32 ptrtoint(i8* @console to i32), 1
  %r12 = inttoptr i32 %r14 to i8*
  %r13 = load i8, i8* %r12
  %r8 = zext i8 %r13 to i32
  %r11 = add i32 ptrtoint(i8* @console to i32), 3
  %r9 = inttoptr i32 %r11 to i8*
  %r10 = load i8, i8* %r9
  %r7 = zext i8 %r10 to i32
  %r6 = sub i32 %r7, %r8
  %r5 = icmp ule i32 %r6, 79
  br i1 %r5, label %b6047, label %b4577

b303:
  ret void

b6047:
  %r18 = icmp ule i32 %r15, %r6
  br i1 %r18, label %b6474, label %b303

b4577:
  %r20 = call i32 @func_b5082()
  %r19 = icmp ule i32 %r15, %r20
  br i1 %r19, label %b6474, label %b303

b6474:
  %r34 = phi i32 [%r15, %b6047], [%r15, %b4577]
  %r33 = phi i32 [%r6, %b6047], [%r20, %b4577]
  %r32 = add i32 ptrtoint(i8* @objects to i32), 12
  %r31 = inttoptr i32 %r32 to i32*
  %r30 = load i32, i32* %r31
  %r28 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r29 = load i8, i8* %r28
  %r24 = zext i8 %r29 to i32
  %r27 = add i32 ptrtoint(i8* @console to i32), 2
  %r25 = inttoptr i32 %r27 to i8*
  %r26 = load i8, i8* %r25
  %r23 = zext i8 %r26 to i32
  %r22 = sub i32 %r23, %r24
  %r21 = icmp ule i32 %r22, 24
  br i1 %r21, label %b6685, label %b6686

b6685:
  %r35 = icmp ule i32 %r30, %r22
  br i1 %r35, label %b6702, label %b303

b6686:
  %r36 = icmp ule i32 %r30, 0
  br i1 %r36, label %b6701, label %b303

b6702:
  %r47 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r40 = load i32, i32* %r47
  %r46 = add i32 ptrtoint(i8* @objects to i32), 4
  %r45 = inttoptr i32 %r46 to i32*
  %r44 = load i32, i32* %r45
  %r43 = add i32 ptrtoint(i8* @objects to i32), 16
  %r42 = inttoptr i32 %r43 to i32*
  %r41 = load i32, i32* %r42
  %r39 = add i32 %r34, %r40
  %r38 = add i32 %r39, -1
  %r37 = icmp ule i32 %r38, %r33
  br i1 %r37, label %b6683, label %b6684

b6701:
  %r58 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r51 = load i32, i32* %r58
  %r57 = add i32 ptrtoint(i8* @objects to i32), 4
  %r56 = inttoptr i32 %r57 to i32*
  %r55 = load i32, i32* %r56
  %r54 = add i32 ptrtoint(i8* @objects to i32), 16
  %r53 = inttoptr i32 %r54 to i32*
  %r52 = load i32, i32* %r53
  %r50 = add i32 %r34, %r51
  %r49 = add i32 %r50, -1
  %r48 = icmp ule i32 %r49, %r33
  br i1 %r48, label %b6681, label %b6682

b6683:
  %r61 = add i32 %r30, %r44
  %r60 = add i32 %r61, -1
  %r59 = icmp ule i32 %r60, %r22
  br i1 %r59, label %b6002, label %b2190

b6684:
  %r64 = add i32 %r30, %r44
  %r63 = add i32 %r64, -1
  %r62 = icmp ule i32 %r63, %r22
  br i1 %r62, label %b6002, label %b2190

b6681:
  %r67 = add i32 %r30, %r55
  %r66 = add i32 %r67, -1
  %r65 = icmp ule i32 %r66, 0
  br i1 %r65, label %b6002, label %b2181

b6682:
  %r70 = add i32 %r30, %r55
  %r69 = add i32 %r70, -1
  %r68 = icmp ule i32 %r69, 0
  br i1 %r68, label %b6002, label %b2181

b6002:
  %r82 = phi i32 [%r60, %b6683], [%r63, %b6684], [%r66, %b6681], [%r69, %b6682]
  %r81 = phi i32 [%r34, %b6683], [%r34, %b6684], [%r34, %b6681], [%r34, %b6682]
  %r80 = phi i32 [%r38, %b6683], [%r33, %b6684], [%r49, %b6681], [%r33, %b6682]
  %r79 = phi i32 [%r41, %b6683], [%r41, %b6684], [%r52, %b6681], [%r52, %b6682]
  %r78 = phi i32 [%r30, %b6683], [%r30, %b6684], [%r30, %b6681], [%r30, %b6682]
  %r77 = add i32 ptrtoint(i8* @console to i32), 1
  %r75 = inttoptr i32 %r77 to i8*
  %r76 = load i8, i8* %r75
  %r74 = zext i8 %r76 to i32
  %r72 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r73 = load i8, i8* %r72
  %r71 = zext i8 %r73 to i32
  br label %b2191

b2190:
  %r94 = phi i32 [%r34, %b6683], [%r34, %b6684]
  %r93 = phi i32 [%r38, %b6683], [%r33, %b6684]
  %r92 = phi i32 [%r41, %b6683], [%r41, %b6684]
  %r91 = phi i32 [%r22, %b6683], [%r22, %b6684]
  %r90 = phi i32 [%r30, %b6683], [%r30, %b6684]
  %r89 = add i32 ptrtoint(i8* @console to i32), 1
  %r87 = inttoptr i32 %r89 to i8*
  %r88 = load i8, i8* %r87
  %r86 = zext i8 %r88 to i32
  %r84 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r85 = load i8, i8* %r84
  %r83 = zext i8 %r85 to i32
  br label %b2191

b2181:
  %r105 = phi i32 [%r34, %b6681], [%r34, %b6682]
  %r104 = phi i32 [%r49, %b6681], [%r33, %b6682]
  %r103 = phi i32 [%r52, %b6681], [%r52, %b6682]
  %r102 = phi i32 [%r30, %b6681], [%r30, %b6682]
  %r101 = add i32 ptrtoint(i8* @console to i32), 1
  %r99 = inttoptr i32 %r101 to i8*
  %r100 = load i8, i8* %r99
  %r98 = zext i8 %r100 to i32
  %r96 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r97 = load i8, i8* %r96
  %r95 = zext i8 %r97 to i32
  br label %b2182

b2191:
  %r110 = phi i32 [%r78, %b6002], [%r90, %b2190], [%r113, %b6457]
  %r112 = phi i32 [%r82, %b6002], [%r91, %b2190], [%r112, %b6457]
  %r106 = phi i32 [%r74, %b6002], [%r86, %b2190], [%r106, %b6457]
  %r111 = phi i32 [%r71, %b6002], [%r83, %b2190], [%r111, %b6457]
  %r109 = phi i32 [%r79, %b6002], [%r92, %b2190], [%r109, %b6457]
  %r108 = phi i32 [%r80, %b6002], [%r93, %b2190], [%r108, %b6457]
  %r107 = phi i32 [%r81, %b6002], [%r94, %b2190], [%r107, %b6457]
  call void @func_b6448(i32 %r106, i32 %r107, i32 79, i32 %r108, i32 %r109, i32 %r110, i32 %r111)
  br label %b6457

b2182:
  %r118 = phi i32 [%r102, %b2181], [%r120, %b6449]
  %r114 = phi i32 [%r98, %b2181], [%r114, %b6449]
  %r119 = phi i32 [%r95, %b2181], [%r119, %b6449]
  %r117 = phi i32 [%r103, %b2181], [%r117, %b6449]
  %r116 = phi i32 [%r104, %b2181], [%r116, %b6449]
  %r115 = phi i32 [%r105, %b2181], [%r115, %b6449]
  call void @func_b6448(i32 %r114, i32 %r115, i32 79, i32 %r116, i32 %r117, i32 %r118, i32 %r119)
  br label %b6449

b6457:
  %r113 = add i32 %r110, 1
  %r121 = icmp ule i32 %r113, %r112
  br i1 %r121, label %b2191, label %b303

b6449:
  %r120 = add i32 %r118, 1
  %r122 = icmp ule i32 %r120, 0
  br i1 %r122, label %b2182, label %b303
}

define internal i32 @func_b1608(i32 %r0, i32 %r1) {
  br label %b1608

b1608:
  %r2 = icmp ule i32 %r0, %r1
  br i1 %r2, label %b1144, label %b1145

b1144:
  %r4 = add i32 %r0, 48
  %r3 = and i32 %r4, 255
  ret i32 %r3

b1145:
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

define internal void @func_b6000(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5) {
  br label %b6000

b6000:
  %r6 = icmp ule i32 %r0, %r1
  br i1 %r6, label %b6002, label %b2181

b6002:
  %r13 = add i32 ptrtoint(i8* @console to i32), 1
  %r11 = inttoptr i32 %r13 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r8 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  br label %b2191

b2181:
  %r20 = add i32 ptrtoint(i8* @console to i32), 1
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r17 = zext i8 %r19 to i32
  %r15 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  br label %b2182

b2191:
  %r25 = phi i32 [%r2, %b6002], [%r28, %b6457]
  %r27 = phi i32 [%r0, %b6002], [%r27, %b6457]
  %r21 = phi i32 [%r10, %b6002], [%r21, %b6457]
  %r26 = phi i32 [%r7, %b6002], [%r26, %b6457]
  %r24 = phi i32 [%r3, %b6002], [%r24, %b6457]
  %r23 = phi i32 [%r4, %b6002], [%r23, %b6457]
  %r22 = phi i32 [%r5, %b6002], [%r22, %b6457]
  call void @func_b6448(i32 %r21, i32 %r22, i32 79, i32 %r23, i32 %r24, i32 %r25, i32 %r26)
  br label %b6457

b2182:
  %r33 = phi i32 [%r2, %b2181], [%r35, %b6449]
  %r29 = phi i32 [%r17, %b2181], [%r29, %b6449]
  %r34 = phi i32 [%r14, %b2181], [%r34, %b6449]
  %r32 = phi i32 [%r3, %b2181], [%r32, %b6449]
  %r31 = phi i32 [%r4, %b2181], [%r31, %b6449]
  %r30 = phi i32 [%r5, %b2181], [%r30, %b6449]
  call void @func_b6448(i32 %r29, i32 %r30, i32 79, i32 %r31, i32 %r32, i32 %r33, i32 %r34)
  br label %b6449

b6457:
  %r28 = add i32 %r25, 1
  %r36 = icmp ule i32 %r28, %r27
  br i1 %r36, label %b2191, label %b303

b6449:
  %r35 = add i32 %r33, 1
  %r37 = icmp ule i32 %r35, 0
  br i1 %r37, label %b2182, label %b303

b303:
  ret void
}

define internal void @func_b6020(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5) {
  br label %b6020

b6020:
  %r6 = icmp ule i32 %r0, %r1
  br i1 %r6, label %b6002, label %b2190

b6002:
  %r13 = add i32 ptrtoint(i8* @console to i32), 1
  %r11 = inttoptr i32 %r13 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r8 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  br label %b2191

b2190:
  %r20 = add i32 ptrtoint(i8* @console to i32), 1
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r17 = zext i8 %r19 to i32
  %r15 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  br label %b2191

b2191:
  %r25 = phi i32 [%r2, %b6002], [%r2, %b2190], [%r28, %b6457]
  %r27 = phi i32 [%r0, %b6002], [%r1, %b2190], [%r27, %b6457]
  %r21 = phi i32 [%r10, %b6002], [%r17, %b2190], [%r21, %b6457]
  %r26 = phi i32 [%r7, %b6002], [%r14, %b2190], [%r26, %b6457]
  %r24 = phi i32 [%r3, %b6002], [%r3, %b2190], [%r24, %b6457]
  %r23 = phi i32 [%r4, %b6002], [%r4, %b2190], [%r23, %b6457]
  %r22 = phi i32 [%r5, %b6002], [%r5, %b2190], [%r22, %b6457]
  call void @func_b6448(i32 %r21, i32 %r22, i32 79, i32 %r23, i32 %r24, i32 %r25, i32 %r26)
  br label %b6457

b6457:
  %r28 = add i32 %r25, 1
  %r29 = icmp ule i32 %r28, %r27
  br i1 %r29, label %b2191, label %b303

b303:
  ret void
}

define internal void @func_b6461(i32 %r0, i32 %r1, i32 %r2) {
  br label %b6461

b6461:
  %r7 = phi i32 [%r0, %0], [1, %b6463], [1, %b6100], [1, %b2652], [1, %b6707], [1, %b6708], [1, %b6705], [1, %b6703], [1, %b6059], [1, %b3149], [1, %b3143]
  %r6 = phi i32 [%r1, %0], [%r4, %b6463], [%r4, %b6100], [%r4, %b2652], [%r8, %b6707], [%r8, %b6708], [%r8, %b6705], [%r8, %b6703], [%r9, %b6059], [%r8, %b3149], [%r8, %b3143]
  %r5 = phi i32 [%r2, %0], [19, %b6463], [19, %b6100], [19, %b2652], [19, %b6707], [19, %b6708], [19, %b6705], [19, %b6703], [19, %b6059], [19, %b3149], [19, %b3143]
  %r4 = add i32 %r6, %r7
  %r3 = icmp ule i32 %r4, %r5
  br i1 %r3, label %b6463, label %b303

b6463:
  %r16 = mul i32 %r4, 24
  %r15 = add i32 ptrtoint(i8* @objects to i32), %r16
  %r14 = add i32 %r15, 20
  %r13 = inttoptr i32 %r14 to i32*
  %r12 = load i32, i32* %r13
  %r11 = and i32 %r12, 16
  %r10 = icmp ne i32 %r11, 0
  br i1 %r10, label %b2651, label %b6461

b303:
  ret void

b2651:
  %r29 = add i32 %r15, 8
  %r28 = inttoptr i32 %r29 to i32*
  %r27 = load i32, i32* %r28
  %r26 = add i32 ptrtoint(i8* @console to i32), 1
  %r24 = inttoptr i32 %r26 to i8*
  %r25 = load i8, i8* %r24
  %r20 = zext i8 %r25 to i32
  %r23 = add i32 ptrtoint(i8* @console to i32), 3
  %r21 = inttoptr i32 %r23 to i8*
  %r22 = load i8, i8* %r21
  %r19 = zext i8 %r22 to i32
  %r18 = sub i32 %r19, %r20
  %r17 = icmp ule i32 %r18, 79
  br i1 %r17, label %b6100, label %b2652

b6100:
  %r30 = icmp ule i32 %r27, %r18
  br i1 %r30, label %b6460, label %b6461

b2652:
  %r32 = call i32 @func_b5082()
  %r31 = icmp ule i32 %r27, %r32
  br i1 %r31, label %b6460, label %b6461

b6460:
  %r47 = phi i32 [%r27, %b6100], [%r27, %b2652]
  %r45 = phi i32 [%r15, %b6100], [%r15, %b2652]
  %r46 = phi i32 [%r18, %b6100], [%r32, %b2652]
  %r8 = phi i32 [%r4, %b6100], [%r4, %b2652]
  %r44 = add i32 %r45, 12
  %r43 = inttoptr i32 %r44 to i32*
  %r42 = load i32, i32* %r43
  %r40 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r41 = load i8, i8* %r40
  %r36 = zext i8 %r41 to i32
  %r39 = add i32 ptrtoint(i8* @console to i32), 2
  %r37 = inttoptr i32 %r39 to i8*
  %r38 = load i8, i8* %r37
  %r35 = zext i8 %r38 to i32
  %r34 = sub i32 %r35, %r36
  %r33 = icmp ule i32 %r34, 24
  br i1 %r33, label %b6707, label %b6708

b6707:
  %r48 = icmp ule i32 %r42, %r34
  br i1 %r48, label %b6716, label %b6461

b6708:
  %r49 = icmp ule i32 %r42, 0
  br i1 %r49, label %b6715, label %b6461

b6716:
  %r60 = inttoptr i32 %r45 to i32*
  %r53 = load i32, i32* %r60
  %r59 = add i32 %r45, 4
  %r58 = inttoptr i32 %r59 to i32*
  %r57 = load i32, i32* %r58
  %r56 = add i32 %r45, 16
  %r55 = inttoptr i32 %r56 to i32*
  %r54 = load i32, i32* %r55
  %r52 = add i32 %r47, %r53
  %r51 = add i32 %r52, -1
  %r50 = icmp ule i32 %r51, %r46
  br i1 %r50, label %b6705, label %b6706

b6715:
  %r71 = inttoptr i32 %r45 to i32*
  %r64 = load i32, i32* %r71
  %r70 = add i32 %r45, 4
  %r69 = inttoptr i32 %r70 to i32*
  %r68 = load i32, i32* %r69
  %r67 = add i32 %r45, 16
  %r66 = inttoptr i32 %r67 to i32*
  %r65 = load i32, i32* %r66
  %r63 = add i32 %r47, %r64
  %r62 = add i32 %r63, -1
  %r61 = icmp ule i32 %r62, %r46
  br i1 %r61, label %b6703, label %b6704

b6705:
  %r73 = add i32 %r42, %r57
  %r72 = add i32 %r73, -1
  call void @func_b6020(i32 %r72, i32 %r34, i32 %r42, i32 %r54, i32 %r51, i32 %r47)
  br label %b6461

b6706:
  %r76 = add i32 %r42, %r57
  %r75 = add i32 %r76, -1
  %r74 = icmp ule i32 %r75, %r34
  br i1 %r74, label %b6059, label %b3149

b6703:
  %r78 = add i32 %r42, %r68
  %r77 = add i32 %r78, -1
  call void @func_b6000(i32 %r77, i32 0, i32 %r42, i32 %r65, i32 %r62, i32 %r47)
  br label %b6461

b6704:
  %r81 = add i32 %r42, %r68
  %r80 = add i32 %r81, -1
  %r79 = icmp ule i32 %r80, 0
  br i1 %r79, label %b6059, label %b3143

b6059:
  %r83 = phi i32 [%r75, %b6706], [%r80, %b6704]
  %r84 = phi i32 [%r47, %b6706], [%r47, %b6704]
  %r85 = phi i32 [%r46, %b6706], [%r46, %b6704]
  %r86 = phi i32 [%r54, %b6706], [%r65, %b6704]
  %r82 = phi i32 [%r42, %b6706], [%r42, %b6704]
  %r9 = phi i32 [%r8, %b6706], [%r8, %b6704]
  %r93 = add i32 ptrtoint(i8* @console to i32), 1
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r88 = zext i8 %r92 to i32
  %r89 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r90 = load i8, i8* %r89
  %r87 = zext i8 %r90 to i32
  call void @func_b6448(i32 %r88, i32 %r84, i32 79, i32 %r85, i32 %r86, i32 %r82, i32 %r87)
  call void @func_b6457(i32 1, i32 %r82, i32 %r83, i32 %r84, i32 %r85, i32 %r86, i32 %r87, i32 %r88)
  br label %b6461

b3149:
  %r100 = add i32 ptrtoint(i8* @console to i32), 1
  %r98 = inttoptr i32 %r100 to i8*
  %r99 = load i8, i8* %r98
  %r95 = zext i8 %r99 to i32
  %r96 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r97 = load i8, i8* %r96
  %r94 = zext i8 %r97 to i32
  call void @func_b6448(i32 %r95, i32 %r47, i32 79, i32 %r46, i32 %r54, i32 %r42, i32 %r94)
  call void @func_b6457(i32 1, i32 %r42, i32 %r34, i32 %r47, i32 %r46, i32 %r54, i32 %r94, i32 %r95)
  br label %b6461

b3143:
  %r107 = add i32 ptrtoint(i8* @console to i32), 1
  %r105 = inttoptr i32 %r107 to i8*
  %r106 = load i8, i8* %r105
  %r102 = zext i8 %r106 to i32
  %r103 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r104 = load i8, i8* %r103
  %r101 = zext i8 %r104 to i32
  call void @func_b6448(i32 %r102, i32 %r47, i32 79, i32 %r46, i32 %r65, i32 %r42, i32 %r101)
  call void @func_b6449(i32 1, i32 %r42, i32 0, i32 %r47, i32 %r46, i32 %r65, i32 %r101, i32 %r102)
  br label %b6461
}

define internal void @func_b3239(i32 %r0, i32 %r1) {
  %r4 = load i32, i32* @ball
  br label %b3239

b3239:
  %r10 = phi i32 [%r0, %0], [%r12, %b6502], [%r11, %b3525], [%r10, %b3527]
  %r6 = phi i32 [%r1, %0], [%r9, %b6502], [%r8, %b3525], [%r7, %b3527]
  %r5 = mul i32 %r6, 24
  %r3 = add i32 ptrtoint(i8* @objects to i32), %r5
  %r2 = icmp eq i32 %r3, %r4
  br i1 %r2, label %b6502, label %b3529

b6502:
  %r16 = phi i32 [1, %b3239], [1, %b3529], [1, %b3709], [1, %b3757], [1, %b3772], [1, %b3785], [1, %b3793]
  %r15 = phi i32 [%r6, %b3239], [%r6, %b3529], [%r6, %b3709], [%r6, %b3757], [%r6, %b3772], [%r6, %b3785], [%r6, %b3793]
  %r14 = phi i32 [19, %b3239], [19, %b3529], [19, %b3709], [19, %b3757], [19, %b3772], [19, %b3785], [19, %b3793]
  %r12 = phi i32 [%r10, %b3239], [%r10, %b3529], [%r10, %b3709], [%r10, %b3757], [%r10, %b3772], [%r10, %b3785], [%r10, %b3793]
  %r9 = add i32 %r15, %r16
  %r13 = icmp ule i32 %r9, %r14
  br i1 %r13, label %b3239, label %b2159

b3529:
  %r21 = add i32 %r3, 20
  %r20 = inttoptr i32 %r21 to i32*
  %r19 = load i32, i32* %r20
  %r18 = and i32 %r19, 16
  %r17 = icmp ne i32 %r18, 0
  br i1 %r17, label %b3709, label %b6502

b2159:
  call void @func_b4592()
  br label %b6497

b3709:
  %r23 = and i32 %r19, 2
  %r22 = icmp ne i32 %r23, 0
  br i1 %r22, label %b3757, label %b6502

b6497:
  %r26 = phi i32 [1, %b2159], [%r25, %b6497]
  %r28 = mul i32 %r26, 24
  %r27 = add i32 ptrtoint(i8* @objects to i32), %r28
  call void @func_b2660(i32 %r27)
  %r25 = add i32 %r26, 1
  %r24 = icmp ule i32 %r25, 19
  br i1 %r24, label %b6497, label %b2161

b3757:
  %r52 = add i32 %r3, 8
  %r51 = inttoptr i32 %r52 to i32*
  %r30 = load i32, i32* %r51
  %r50 = add i32 %r4, 8
  %r49 = inttoptr i32 %r50 to i32*
  %r32 = load i32, i32* %r49
  %r48 = add i32 %r3, 12
  %r47 = inttoptr i32 %r48 to i32*
  %r46 = load i32, i32* %r47
  %r45 = add i32 %r4, 12
  %r44 = inttoptr i32 %r45 to i32*
  %r43 = load i32, i32* %r44
  %r42 = inttoptr i32 %r3 to i32*
  %r41 = load i32, i32* %r42
  %r40 = add i32 %r3, 4
  %r39 = inttoptr i32 %r40 to i32*
  %r38 = load i32, i32* %r39
  %r37 = inttoptr i32 %r4 to i32*
  %r33 = load i32, i32* %r37
  %r36 = add i32 %r4, 4
  %r35 = inttoptr i32 %r36 to i32*
  %r34 = load i32, i32* %r35
  %r31 = add i32 %r32, %r33
  %r29 = icmp ult i32 %r30, %r31
  br i1 %r29, label %b3772, label %b6502

b2161:
  call void @func_b2162()
  br label %b6463

b3772:
  %r54 = add i32 %r30, %r41
  %r53 = icmp ugt i32 %r54, %r32
  br i1 %r53, label %b3785, label %b6502

b6463:
  %r62 = phi i32 [1, %b2161], [%r63, %b6461]
  %r61 = mul i32 %r62, 24
  %r60 = add i32 ptrtoint(i8* @objects to i32), %r61
  %r59 = add i32 %r60, 20
  %r58 = inttoptr i32 %r59 to i32*
  %r57 = load i32, i32* %r58
  %r56 = and i32 %r57, 16
  %r55 = icmp ne i32 %r56, 0
  br i1 %r55, label %b2651, label %b6461

b3785:
  %r65 = add i32 %r43, %r34
  %r64 = icmp ult i32 %r46, %r65
  br i1 %r64, label %b3793, label %b6502

b2651:
  %r78 = add i32 %r60, 8
  %r77 = inttoptr i32 %r78 to i32*
  %r76 = load i32, i32* %r77
  %r75 = add i32 ptrtoint(i8* @console to i32), 1
  %r73 = inttoptr i32 %r75 to i8*
  %r74 = load i8, i8* %r73
  %r69 = zext i8 %r74 to i32
  %r72 = add i32 ptrtoint(i8* @console to i32), 3
  %r70 = inttoptr i32 %r72 to i8*
  %r71 = load i8, i8* %r70
  %r68 = zext i8 %r71 to i32
  %r67 = sub i32 %r68, %r69
  %r66 = icmp ule i32 %r67, 79
  br i1 %r66, label %b6100, label %b2652

b6461:
  %r82 = phi i32 [1, %b6463], [1, %b6100], [1, %b2652], [1, %b6707], [1, %b6708], [1, %b6705], [1, %b6703], [1, %b6059], [1, %b3149], [1, %b3143]
  %r81 = phi i32 [%r62, %b6463], [%r62, %b6100], [%r62, %b2652], [%r83, %b6707], [%r83, %b6708], [%r83, %b6705], [%r83, %b6703], [%r84, %b6059], [%r83, %b3149], [%r83, %b3143]
  %r80 = phi i32 [19, %b6463], [19, %b6100], [19, %b2652], [19, %b6707], [19, %b6708], [19, %b6705], [19, %b6703], [19, %b6059], [19, %b3149], [19, %b3143]
  %r63 = add i32 %r81, %r82
  %r79 = icmp ule i32 %r63, %r80
  br i1 %r79, label %b6463, label %b303

b3793:
  %r86 = add i32 %r46, %r38
  %r85 = icmp ugt i32 %r86, %r43
  br i1 %r85, label %b3798, label %b6502

b6100:
  %r87 = icmp ule i32 %r76, %r67
  br i1 %r87, label %b6460, label %b6461

b2652:
  %r89 = call i32 @func_b5082()
  %r88 = icmp ule i32 %r76, %r89
  br i1 %r88, label %b6460, label %b6461

b303:
  ret void

b3798:
  %r101 = add i32 %r4, 4
  %r100 = inttoptr i32 %r101 to i32*
  %r95 = load i32, i32* %r100
  %r99 = add i32 %r3, 4
  %r98 = inttoptr i32 %r99 to i32*
  %r93 = load i32, i32* %r98
  %r97 = add i32 %r3, 12
  %r96 = inttoptr i32 %r97 to i32*
  %r91 = load i32, i32* %r96
  %r94 = add i32 %r10, %r95
  %r92 = add i32 %r91, %r93
  %r90 = icmp ule i32 %r10, %r91
  br i1 %r90, label %b3525, label %b3526

b6460:
  %r116 = phi i32 [%r76, %b6100], [%r76, %b2652]
  %r114 = phi i32 [%r60, %b6100], [%r60, %b2652]
  %r115 = phi i32 [%r67, %b6100], [%r89, %b2652]
  %r83 = phi i32 [%r62, %b6100], [%r62, %b2652]
  %r113 = add i32 %r114, 12
  %r112 = inttoptr i32 %r113 to i32*
  %r111 = load i32, i32* %r112
  %r109 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r110 = load i8, i8* %r109
  %r105 = zext i8 %r110 to i32
  %r108 = add i32 ptrtoint(i8* @console to i32), 2
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r104 = zext i8 %r107 to i32
  %r103 = sub i32 %r104, %r105
  %r102 = icmp ule i32 %r103, 24
  br i1 %r102, label %b6707, label %b6708

b3525:
  %r11 = phi i32 [%r10, %b3798], [%r10, %b3526]
  %r118 = phi i32 [%r6, %b3798], [%r6, %b3526]
  %r119 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r119
  %r8 = add i32 %r118, 1
  %r117 = icmp ule i32 %r8, 19
  br i1 %r117, label %b3239, label %b2159

b3526:
  %r120 = icmp uge i32 %r94, %r92
  br i1 %r120, label %b3525, label %b3527

b6707:
  %r121 = icmp ule i32 %r111, %r103
  br i1 %r121, label %b6716, label %b6461

b6708:
  %r122 = icmp ule i32 %r111, 0
  br i1 %r122, label %b6715, label %b6461

b3527:
  %r124 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r124
  %r7 = add i32 %r6, 1
  %r123 = icmp ule i32 %r7, 19
  br i1 %r123, label %b3239, label %b2159

b6716:
  %r135 = inttoptr i32 %r114 to i32*
  %r128 = load i32, i32* %r135
  %r134 = add i32 %r114, 4
  %r133 = inttoptr i32 %r134 to i32*
  %r132 = load i32, i32* %r133
  %r131 = add i32 %r114, 16
  %r130 = inttoptr i32 %r131 to i32*
  %r129 = load i32, i32* %r130
  %r127 = add i32 %r116, %r128
  %r126 = add i32 %r127, -1
  %r125 = icmp ule i32 %r126, %r115
  br i1 %r125, label %b6705, label %b6706

b6715:
  %r146 = inttoptr i32 %r114 to i32*
  %r139 = load i32, i32* %r146
  %r145 = add i32 %r114, 4
  %r144 = inttoptr i32 %r145 to i32*
  %r143 = load i32, i32* %r144
  %r142 = add i32 %r114, 16
  %r141 = inttoptr i32 %r142 to i32*
  %r140 = load i32, i32* %r141
  %r138 = add i32 %r116, %r139
  %r137 = add i32 %r138, -1
  %r136 = icmp ule i32 %r137, %r115
  br i1 %r136, label %b6703, label %b6704

b6705:
  %r148 = add i32 %r111, %r132
  %r147 = add i32 %r148, -1
  call void @func_b6020(i32 %r147, i32 %r103, i32 %r111, i32 %r129, i32 %r126, i32 %r116)
  br label %b6461

b6706:
  %r151 = add i32 %r111, %r132
  %r150 = add i32 %r151, -1
  %r149 = icmp ule i32 %r150, %r103
  br i1 %r149, label %b6059, label %b3149

b6703:
  %r153 = add i32 %r111, %r143
  %r152 = add i32 %r153, -1
  call void @func_b6000(i32 %r152, i32 0, i32 %r111, i32 %r140, i32 %r137, i32 %r116)
  br label %b6461

b6704:
  %r156 = add i32 %r111, %r143
  %r155 = add i32 %r156, -1
  %r154 = icmp ule i32 %r155, 0
  br i1 %r154, label %b6059, label %b3143

b6059:
  %r158 = phi i32 [%r150, %b6706], [%r155, %b6704]
  %r159 = phi i32 [%r116, %b6706], [%r116, %b6704]
  %r160 = phi i32 [%r115, %b6706], [%r115, %b6704]
  %r161 = phi i32 [%r129, %b6706], [%r140, %b6704]
  %r157 = phi i32 [%r111, %b6706], [%r111, %b6704]
  %r84 = phi i32 [%r83, %b6706], [%r83, %b6704]
  %r168 = add i32 ptrtoint(i8* @console to i32), 1
  %r166 = inttoptr i32 %r168 to i8*
  %r167 = load i8, i8* %r166
  %r163 = zext i8 %r167 to i32
  %r164 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r165 = load i8, i8* %r164
  %r162 = zext i8 %r165 to i32
  call void @func_b6448(i32 %r163, i32 %r159, i32 79, i32 %r160, i32 %r161, i32 %r157, i32 %r162)
  call void @func_b6457(i32 1, i32 %r157, i32 %r158, i32 %r159, i32 %r160, i32 %r161, i32 %r162, i32 %r163)
  br label %b6461

b3149:
  %r175 = add i32 ptrtoint(i8* @console to i32), 1
  %r173 = inttoptr i32 %r175 to i8*
  %r174 = load i8, i8* %r173
  %r170 = zext i8 %r174 to i32
  %r171 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r172 = load i8, i8* %r171
  %r169 = zext i8 %r172 to i32
  call void @func_b6448(i32 %r170, i32 %r116, i32 79, i32 %r115, i32 %r129, i32 %r111, i32 %r169)
  call void @func_b6457(i32 1, i32 %r111, i32 %r103, i32 %r116, i32 %r115, i32 %r129, i32 %r169, i32 %r170)
  br label %b6461

b3143:
  %r182 = add i32 ptrtoint(i8* @console to i32), 1
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r177 = zext i8 %r181 to i32
  %r178 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r179 = load i8, i8* %r178
  %r176 = zext i8 %r179 to i32
  call void @func_b6448(i32 %r177, i32 %r116, i32 79, i32 %r115, i32 %r140, i32 %r111, i32 %r176)
  call void @func_b6449(i32 1, i32 %r111, i32 0, i32 %r116, i32 %r115, i32 %r140, i32 %r176, i32 %r177)
  br label %b6461
}

define internal void @func_b3220(i32 %r0, i32 %r1) {
  %r4 = load i32, i32* @ball
  br label %b3220

b3220:
  %r10 = phi i32 [%r0, %0], [%r12, %b6533], [%r11, %b3516], [%r10, %b3518]
  %r6 = phi i32 [%r1, %0], [%r9, %b6533], [%r8, %b3516], [%r7, %b3518]
  %r5 = mul i32 %r6, 24
  %r3 = add i32 ptrtoint(i8* @objects to i32), %r5
  %r2 = icmp eq i32 %r3, %r4
  br i1 %r2, label %b6533, label %b3520

b6533:
  %r16 = phi i32 [1, %b3220], [1, %b3520], [1, %b3707], [1, %b3755], [1, %b3770], [1, %b3783], [1, %b3791]
  %r15 = phi i32 [%r6, %b3220], [%r6, %b3520], [%r6, %b3707], [%r6, %b3755], [%r6, %b3770], [%r6, %b3783], [%r6, %b3791]
  %r14 = phi i32 [19, %b3220], [19, %b3520], [19, %b3707], [19, %b3755], [19, %b3770], [19, %b3783], [19, %b3791]
  %r12 = phi i32 [%r10, %b3220], [%r10, %b3520], [%r10, %b3707], [%r10, %b3755], [%r10, %b3770], [%r10, %b3783], [%r10, %b3791]
  %r9 = add i32 %r15, %r16
  %r13 = icmp ule i32 %r9, %r14
  br i1 %r13, label %b3220, label %b2159

b3520:
  %r21 = add i32 %r3, 20
  %r20 = inttoptr i32 %r21 to i32*
  %r19 = load i32, i32* %r20
  %r18 = and i32 %r19, 16
  %r17 = icmp ne i32 %r18, 0
  br i1 %r17, label %b3707, label %b6533

b2159:
  call void @func_b4592()
  br label %b6497

b3707:
  %r23 = and i32 %r19, 2
  %r22 = icmp ne i32 %r23, 0
  br i1 %r22, label %b3755, label %b6533

b6497:
  %r26 = phi i32 [1, %b2159], [%r25, %b6497]
  %r28 = mul i32 %r26, 24
  %r27 = add i32 ptrtoint(i8* @objects to i32), %r28
  call void @func_b2660(i32 %r27)
  %r25 = add i32 %r26, 1
  %r24 = icmp ule i32 %r25, 19
  br i1 %r24, label %b6497, label %b2161

b3755:
  %r52 = add i32 %r3, 8
  %r51 = inttoptr i32 %r52 to i32*
  %r30 = load i32, i32* %r51
  %r50 = add i32 %r4, 8
  %r49 = inttoptr i32 %r50 to i32*
  %r32 = load i32, i32* %r49
  %r48 = add i32 %r3, 12
  %r47 = inttoptr i32 %r48 to i32*
  %r46 = load i32, i32* %r47
  %r45 = add i32 %r4, 12
  %r44 = inttoptr i32 %r45 to i32*
  %r43 = load i32, i32* %r44
  %r42 = inttoptr i32 %r3 to i32*
  %r41 = load i32, i32* %r42
  %r40 = add i32 %r3, 4
  %r39 = inttoptr i32 %r40 to i32*
  %r38 = load i32, i32* %r39
  %r37 = inttoptr i32 %r4 to i32*
  %r33 = load i32, i32* %r37
  %r36 = add i32 %r4, 4
  %r35 = inttoptr i32 %r36 to i32*
  %r34 = load i32, i32* %r35
  %r31 = add i32 %r32, %r33
  %r29 = icmp ult i32 %r30, %r31
  br i1 %r29, label %b3770, label %b6533

b2161:
  call void @func_b2162()
  br label %b6463

b3770:
  %r54 = add i32 %r30, %r41
  %r53 = icmp ugt i32 %r54, %r32
  br i1 %r53, label %b3783, label %b6533

b6463:
  %r62 = phi i32 [1, %b2161], [%r63, %b6461]
  %r61 = mul i32 %r62, 24
  %r60 = add i32 ptrtoint(i8* @objects to i32), %r61
  %r59 = add i32 %r60, 20
  %r58 = inttoptr i32 %r59 to i32*
  %r57 = load i32, i32* %r58
  %r56 = and i32 %r57, 16
  %r55 = icmp ne i32 %r56, 0
  br i1 %r55, label %b2651, label %b6461

b3783:
  %r65 = add i32 %r43, %r34
  %r64 = icmp ult i32 %r46, %r65
  br i1 %r64, label %b3791, label %b6533

b2651:
  %r78 = add i32 %r60, 8
  %r77 = inttoptr i32 %r78 to i32*
  %r76 = load i32, i32* %r77
  %r75 = add i32 ptrtoint(i8* @console to i32), 1
  %r73 = inttoptr i32 %r75 to i8*
  %r74 = load i8, i8* %r73
  %r69 = zext i8 %r74 to i32
  %r72 = add i32 ptrtoint(i8* @console to i32), 3
  %r70 = inttoptr i32 %r72 to i8*
  %r71 = load i8, i8* %r70
  %r68 = zext i8 %r71 to i32
  %r67 = sub i32 %r68, %r69
  %r66 = icmp ule i32 %r67, 79
  br i1 %r66, label %b6100, label %b2652

b6461:
  %r82 = phi i32 [1, %b6463], [1, %b6100], [1, %b2652], [1, %b6707], [1, %b6708], [1, %b6705], [1, %b6703], [1, %b6059], [1, %b3149], [1, %b3143]
  %r81 = phi i32 [%r62, %b6463], [%r62, %b6100], [%r62, %b2652], [%r83, %b6707], [%r83, %b6708], [%r83, %b6705], [%r83, %b6703], [%r84, %b6059], [%r83, %b3149], [%r83, %b3143]
  %r80 = phi i32 [19, %b6463], [19, %b6100], [19, %b2652], [19, %b6707], [19, %b6708], [19, %b6705], [19, %b6703], [19, %b6059], [19, %b3149], [19, %b3143]
  %r63 = add i32 %r81, %r82
  %r79 = icmp ule i32 %r63, %r80
  br i1 %r79, label %b6463, label %b303

b3791:
  %r86 = add i32 %r46, %r38
  %r85 = icmp ugt i32 %r86, %r43
  br i1 %r85, label %b3797, label %b6533

b6100:
  %r87 = icmp ule i32 %r76, %r67
  br i1 %r87, label %b6460, label %b6461

b2652:
  %r89 = call i32 @func_b5082()
  %r88 = icmp ule i32 %r76, %r89
  br i1 %r88, label %b6460, label %b6461

b303:
  ret void

b3797:
  %r101 = add i32 %r4, 4
  %r100 = inttoptr i32 %r101 to i32*
  %r95 = load i32, i32* %r100
  %r99 = add i32 %r3, 4
  %r98 = inttoptr i32 %r99 to i32*
  %r93 = load i32, i32* %r98
  %r97 = add i32 %r3, 12
  %r96 = inttoptr i32 %r97 to i32*
  %r91 = load i32, i32* %r96
  %r94 = add i32 %r10, %r95
  %r92 = add i32 %r91, %r93
  %r90 = icmp ule i32 %r10, %r91
  br i1 %r90, label %b3516, label %b3517

b6460:
  %r116 = phi i32 [%r76, %b6100], [%r76, %b2652]
  %r114 = phi i32 [%r60, %b6100], [%r60, %b2652]
  %r115 = phi i32 [%r67, %b6100], [%r89, %b2652]
  %r83 = phi i32 [%r62, %b6100], [%r62, %b2652]
  %r113 = add i32 %r114, 12
  %r112 = inttoptr i32 %r113 to i32*
  %r111 = load i32, i32* %r112
  %r109 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r110 = load i8, i8* %r109
  %r105 = zext i8 %r110 to i32
  %r108 = add i32 ptrtoint(i8* @console to i32), 2
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r104 = zext i8 %r107 to i32
  %r103 = sub i32 %r104, %r105
  %r102 = icmp ule i32 %r103, 24
  br i1 %r102, label %b6707, label %b6708

b3516:
  %r11 = phi i32 [%r10, %b3797], [%r10, %b3517]
  %r118 = phi i32 [%r6, %b3797], [%r6, %b3517]
  %r119 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 false, i1* %r119
  %r8 = add i32 %r118, 1
  %r117 = icmp ule i32 %r8, 19
  br i1 %r117, label %b3220, label %b2159

b3517:
  %r120 = icmp uge i32 %r94, %r92
  br i1 %r120, label %b3516, label %b3518

b6707:
  %r121 = icmp ule i32 %r111, %r103
  br i1 %r121, label %b6716, label %b6461

b6708:
  %r122 = icmp ule i32 %r111, 0
  br i1 %r122, label %b6715, label %b6461

b3518:
  %r124 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r124
  %r7 = add i32 %r6, 1
  %r123 = icmp ule i32 %r7, 19
  br i1 %r123, label %b3220, label %b2159

b6716:
  %r135 = inttoptr i32 %r114 to i32*
  %r128 = load i32, i32* %r135
  %r134 = add i32 %r114, 4
  %r133 = inttoptr i32 %r134 to i32*
  %r132 = load i32, i32* %r133
  %r131 = add i32 %r114, 16
  %r130 = inttoptr i32 %r131 to i32*
  %r129 = load i32, i32* %r130
  %r127 = add i32 %r116, %r128
  %r126 = add i32 %r127, -1
  %r125 = icmp ule i32 %r126, %r115
  br i1 %r125, label %b6705, label %b6706

b6715:
  %r146 = inttoptr i32 %r114 to i32*
  %r139 = load i32, i32* %r146
  %r145 = add i32 %r114, 4
  %r144 = inttoptr i32 %r145 to i32*
  %r143 = load i32, i32* %r144
  %r142 = add i32 %r114, 16
  %r141 = inttoptr i32 %r142 to i32*
  %r140 = load i32, i32* %r141
  %r138 = add i32 %r116, %r139
  %r137 = add i32 %r138, -1
  %r136 = icmp ule i32 %r137, %r115
  br i1 %r136, label %b6703, label %b6704

b6705:
  %r148 = add i32 %r111, %r132
  %r147 = add i32 %r148, -1
  call void @func_b6020(i32 %r147, i32 %r103, i32 %r111, i32 %r129, i32 %r126, i32 %r116)
  br label %b6461

b6706:
  %r151 = add i32 %r111, %r132
  %r150 = add i32 %r151, -1
  %r149 = icmp ule i32 %r150, %r103
  br i1 %r149, label %b6059, label %b3149

b6703:
  %r153 = add i32 %r111, %r143
  %r152 = add i32 %r153, -1
  call void @func_b6000(i32 %r152, i32 0, i32 %r111, i32 %r140, i32 %r137, i32 %r116)
  br label %b6461

b6704:
  %r156 = add i32 %r111, %r143
  %r155 = add i32 %r156, -1
  %r154 = icmp ule i32 %r155, 0
  br i1 %r154, label %b6059, label %b3143

b6059:
  %r158 = phi i32 [%r150, %b6706], [%r155, %b6704]
  %r159 = phi i32 [%r116, %b6706], [%r116, %b6704]
  %r160 = phi i32 [%r115, %b6706], [%r115, %b6704]
  %r161 = phi i32 [%r129, %b6706], [%r140, %b6704]
  %r157 = phi i32 [%r111, %b6706], [%r111, %b6704]
  %r84 = phi i32 [%r83, %b6706], [%r83, %b6704]
  %r168 = add i32 ptrtoint(i8* @console to i32), 1
  %r166 = inttoptr i32 %r168 to i8*
  %r167 = load i8, i8* %r166
  %r163 = zext i8 %r167 to i32
  %r164 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r165 = load i8, i8* %r164
  %r162 = zext i8 %r165 to i32
  call void @func_b6448(i32 %r163, i32 %r159, i32 79, i32 %r160, i32 %r161, i32 %r157, i32 %r162)
  call void @func_b6457(i32 1, i32 %r157, i32 %r158, i32 %r159, i32 %r160, i32 %r161, i32 %r162, i32 %r163)
  br label %b6461

b3149:
  %r175 = add i32 ptrtoint(i8* @console to i32), 1
  %r173 = inttoptr i32 %r175 to i8*
  %r174 = load i8, i8* %r173
  %r170 = zext i8 %r174 to i32
  %r171 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r172 = load i8, i8* %r171
  %r169 = zext i8 %r172 to i32
  call void @func_b6448(i32 %r170, i32 %r116, i32 79, i32 %r115, i32 %r129, i32 %r111, i32 %r169)
  call void @func_b6457(i32 1, i32 %r111, i32 %r103, i32 %r116, i32 %r115, i32 %r129, i32 %r169, i32 %r170)
  br label %b6461

b3143:
  %r182 = add i32 ptrtoint(i8* @console to i32), 1
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r177 = zext i8 %r181 to i32
  %r178 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r179 = load i8, i8* %r178
  %r176 = zext i8 %r179 to i32
  call void @func_b6448(i32 %r177, i32 %r116, i32 79, i32 %r115, i32 %r140, i32 %r111, i32 %r176)
  call void @func_b6449(i32 1, i32 %r111, i32 0, i32 %r116, i32 %r115, i32 %r140, i32 %r176, i32 %r177)
  br label %b6461
}

define internal void @func_b3201(i32 %r0, i32 %r1) {
  %r4 = load i32, i32* @ball
  br label %b3201

b3201:
  %r10 = phi i32 [%r0, %0], [%r12, %b6564], [%r11, %b3507], [%r10, %b3509]
  %r6 = phi i32 [%r1, %0], [%r9, %b6564], [%r8, %b3507], [%r7, %b3509]
  %r5 = mul i32 %r6, 24
  %r3 = add i32 ptrtoint(i8* @objects to i32), %r5
  %r2 = icmp eq i32 %r3, %r4
  br i1 %r2, label %b6564, label %b3511

b6564:
  %r16 = phi i32 [1, %b3201], [1, %b3511], [1, %b3705], [1, %b3753], [1, %b3768], [1, %b3781], [1, %b3789]
  %r15 = phi i32 [%r6, %b3201], [%r6, %b3511], [%r6, %b3705], [%r6, %b3753], [%r6, %b3768], [%r6, %b3781], [%r6, %b3789]
  %r14 = phi i32 [19, %b3201], [19, %b3511], [19, %b3705], [19, %b3753], [19, %b3768], [19, %b3781], [19, %b3789]
  %r12 = phi i32 [%r10, %b3201], [%r10, %b3511], [%r10, %b3705], [%r10, %b3753], [%r10, %b3768], [%r10, %b3781], [%r10, %b3789]
  %r9 = add i32 %r15, %r16
  %r13 = icmp ule i32 %r9, %r14
  br i1 %r13, label %b3201, label %b2159

b3511:
  %r21 = add i32 %r3, 20
  %r20 = inttoptr i32 %r21 to i32*
  %r19 = load i32, i32* %r20
  %r18 = and i32 %r19, 16
  %r17 = icmp ne i32 %r18, 0
  br i1 %r17, label %b3705, label %b6564

b2159:
  call void @func_b4592()
  br label %b6497

b3705:
  %r23 = and i32 %r19, 2
  %r22 = icmp ne i32 %r23, 0
  br i1 %r22, label %b3753, label %b6564

b6497:
  %r26 = phi i32 [1, %b2159], [%r25, %b6497]
  %r28 = mul i32 %r26, 24
  %r27 = add i32 ptrtoint(i8* @objects to i32), %r28
  call void @func_b2660(i32 %r27)
  %r25 = add i32 %r26, 1
  %r24 = icmp ule i32 %r25, 19
  br i1 %r24, label %b6497, label %b2161

b3753:
  %r52 = add i32 %r3, 8
  %r51 = inttoptr i32 %r52 to i32*
  %r30 = load i32, i32* %r51
  %r50 = add i32 %r4, 8
  %r49 = inttoptr i32 %r50 to i32*
  %r32 = load i32, i32* %r49
  %r48 = add i32 %r3, 12
  %r47 = inttoptr i32 %r48 to i32*
  %r46 = load i32, i32* %r47
  %r45 = add i32 %r4, 12
  %r44 = inttoptr i32 %r45 to i32*
  %r43 = load i32, i32* %r44
  %r42 = inttoptr i32 %r3 to i32*
  %r41 = load i32, i32* %r42
  %r40 = add i32 %r3, 4
  %r39 = inttoptr i32 %r40 to i32*
  %r38 = load i32, i32* %r39
  %r37 = inttoptr i32 %r4 to i32*
  %r33 = load i32, i32* %r37
  %r36 = add i32 %r4, 4
  %r35 = inttoptr i32 %r36 to i32*
  %r34 = load i32, i32* %r35
  %r31 = add i32 %r32, %r33
  %r29 = icmp ult i32 %r30, %r31
  br i1 %r29, label %b3768, label %b6564

b2161:
  call void @func_b2162()
  br label %b6463

b3768:
  %r54 = add i32 %r30, %r41
  %r53 = icmp ugt i32 %r54, %r32
  br i1 %r53, label %b3781, label %b6564

b6463:
  %r62 = phi i32 [1, %b2161], [%r63, %b6461]
  %r61 = mul i32 %r62, 24
  %r60 = add i32 ptrtoint(i8* @objects to i32), %r61
  %r59 = add i32 %r60, 20
  %r58 = inttoptr i32 %r59 to i32*
  %r57 = load i32, i32* %r58
  %r56 = and i32 %r57, 16
  %r55 = icmp ne i32 %r56, 0
  br i1 %r55, label %b2651, label %b6461

b3781:
  %r65 = add i32 %r43, %r34
  %r64 = icmp ult i32 %r46, %r65
  br i1 %r64, label %b3789, label %b6564

b2651:
  %r78 = add i32 %r60, 8
  %r77 = inttoptr i32 %r78 to i32*
  %r76 = load i32, i32* %r77
  %r75 = add i32 ptrtoint(i8* @console to i32), 1
  %r73 = inttoptr i32 %r75 to i8*
  %r74 = load i8, i8* %r73
  %r69 = zext i8 %r74 to i32
  %r72 = add i32 ptrtoint(i8* @console to i32), 3
  %r70 = inttoptr i32 %r72 to i8*
  %r71 = load i8, i8* %r70
  %r68 = zext i8 %r71 to i32
  %r67 = sub i32 %r68, %r69
  %r66 = icmp ule i32 %r67, 79
  br i1 %r66, label %b6100, label %b2652

b6461:
  %r82 = phi i32 [1, %b6463], [1, %b6100], [1, %b2652], [1, %b6707], [1, %b6708], [1, %b6705], [1, %b6703], [1, %b6059], [1, %b3149], [1, %b3143]
  %r81 = phi i32 [%r62, %b6463], [%r62, %b6100], [%r62, %b2652], [%r83, %b6707], [%r83, %b6708], [%r83, %b6705], [%r83, %b6703], [%r84, %b6059], [%r83, %b3149], [%r83, %b3143]
  %r80 = phi i32 [19, %b6463], [19, %b6100], [19, %b2652], [19, %b6707], [19, %b6708], [19, %b6705], [19, %b6703], [19, %b6059], [19, %b3149], [19, %b3143]
  %r63 = add i32 %r81, %r82
  %r79 = icmp ule i32 %r63, %r80
  br i1 %r79, label %b6463, label %b303

b3789:
  %r86 = add i32 %r46, %r38
  %r85 = icmp ugt i32 %r86, %r43
  br i1 %r85, label %b3796, label %b6564

b6100:
  %r87 = icmp ule i32 %r76, %r67
  br i1 %r87, label %b6460, label %b6461

b2652:
  %r89 = call i32 @func_b5082()
  %r88 = icmp ule i32 %r76, %r89
  br i1 %r88, label %b6460, label %b6461

b303:
  ret void

b3796:
  %r101 = add i32 %r4, 4
  %r100 = inttoptr i32 %r101 to i32*
  %r95 = load i32, i32* %r100
  %r99 = add i32 %r3, 4
  %r98 = inttoptr i32 %r99 to i32*
  %r93 = load i32, i32* %r98
  %r97 = add i32 %r3, 12
  %r96 = inttoptr i32 %r97 to i32*
  %r91 = load i32, i32* %r96
  %r94 = add i32 %r10, %r95
  %r92 = add i32 %r91, %r93
  %r90 = icmp ule i32 %r10, %r91
  br i1 %r90, label %b3507, label %b3508

b6460:
  %r116 = phi i32 [%r76, %b6100], [%r76, %b2652]
  %r114 = phi i32 [%r60, %b6100], [%r60, %b2652]
  %r115 = phi i32 [%r67, %b6100], [%r89, %b2652]
  %r83 = phi i32 [%r62, %b6100], [%r62, %b2652]
  %r113 = add i32 %r114, 12
  %r112 = inttoptr i32 %r113 to i32*
  %r111 = load i32, i32* %r112
  %r109 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r110 = load i8, i8* %r109
  %r105 = zext i8 %r110 to i32
  %r108 = add i32 ptrtoint(i8* @console to i32), 2
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r104 = zext i8 %r107 to i32
  %r103 = sub i32 %r104, %r105
  %r102 = icmp ule i32 %r103, 24
  br i1 %r102, label %b6707, label %b6708

b3507:
  %r11 = phi i32 [%r10, %b3796], [%r10, %b3508]
  %r118 = phi i32 [%r6, %b3796], [%r6, %b3508]
  %r119 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r119
  %r8 = add i32 %r118, 1
  %r117 = icmp ule i32 %r8, 19
  br i1 %r117, label %b3201, label %b2159

b3508:
  %r120 = icmp uge i32 %r94, %r92
  br i1 %r120, label %b3507, label %b3509

b6707:
  %r121 = icmp ule i32 %r111, %r103
  br i1 %r121, label %b6716, label %b6461

b6708:
  %r122 = icmp ule i32 %r111, 0
  br i1 %r122, label %b6715, label %b6461

b3509:
  %r124 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 false, i1* %r124
  %r7 = add i32 %r6, 1
  %r123 = icmp ule i32 %r7, 19
  br i1 %r123, label %b3201, label %b2159

b6716:
  %r135 = inttoptr i32 %r114 to i32*
  %r128 = load i32, i32* %r135
  %r134 = add i32 %r114, 4
  %r133 = inttoptr i32 %r134 to i32*
  %r132 = load i32, i32* %r133
  %r131 = add i32 %r114, 16
  %r130 = inttoptr i32 %r131 to i32*
  %r129 = load i32, i32* %r130
  %r127 = add i32 %r116, %r128
  %r126 = add i32 %r127, -1
  %r125 = icmp ule i32 %r126, %r115
  br i1 %r125, label %b6705, label %b6706

b6715:
  %r146 = inttoptr i32 %r114 to i32*
  %r139 = load i32, i32* %r146
  %r145 = add i32 %r114, 4
  %r144 = inttoptr i32 %r145 to i32*
  %r143 = load i32, i32* %r144
  %r142 = add i32 %r114, 16
  %r141 = inttoptr i32 %r142 to i32*
  %r140 = load i32, i32* %r141
  %r138 = add i32 %r116, %r139
  %r137 = add i32 %r138, -1
  %r136 = icmp ule i32 %r137, %r115
  br i1 %r136, label %b6703, label %b6704

b6705:
  %r148 = add i32 %r111, %r132
  %r147 = add i32 %r148, -1
  call void @func_b6020(i32 %r147, i32 %r103, i32 %r111, i32 %r129, i32 %r126, i32 %r116)
  br label %b6461

b6706:
  %r151 = add i32 %r111, %r132
  %r150 = add i32 %r151, -1
  %r149 = icmp ule i32 %r150, %r103
  br i1 %r149, label %b6059, label %b3149

b6703:
  %r153 = add i32 %r111, %r143
  %r152 = add i32 %r153, -1
  call void @func_b6000(i32 %r152, i32 0, i32 %r111, i32 %r140, i32 %r137, i32 %r116)
  br label %b6461

b6704:
  %r156 = add i32 %r111, %r143
  %r155 = add i32 %r156, -1
  %r154 = icmp ule i32 %r155, 0
  br i1 %r154, label %b6059, label %b3143

b6059:
  %r158 = phi i32 [%r150, %b6706], [%r155, %b6704]
  %r159 = phi i32 [%r116, %b6706], [%r116, %b6704]
  %r160 = phi i32 [%r115, %b6706], [%r115, %b6704]
  %r161 = phi i32 [%r129, %b6706], [%r140, %b6704]
  %r157 = phi i32 [%r111, %b6706], [%r111, %b6704]
  %r84 = phi i32 [%r83, %b6706], [%r83, %b6704]
  %r168 = add i32 ptrtoint(i8* @console to i32), 1
  %r166 = inttoptr i32 %r168 to i8*
  %r167 = load i8, i8* %r166
  %r163 = zext i8 %r167 to i32
  %r164 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r165 = load i8, i8* %r164
  %r162 = zext i8 %r165 to i32
  call void @func_b6448(i32 %r163, i32 %r159, i32 79, i32 %r160, i32 %r161, i32 %r157, i32 %r162)
  call void @func_b6457(i32 1, i32 %r157, i32 %r158, i32 %r159, i32 %r160, i32 %r161, i32 %r162, i32 %r163)
  br label %b6461

b3149:
  %r175 = add i32 ptrtoint(i8* @console to i32), 1
  %r173 = inttoptr i32 %r175 to i8*
  %r174 = load i8, i8* %r173
  %r170 = zext i8 %r174 to i32
  %r171 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r172 = load i8, i8* %r171
  %r169 = zext i8 %r172 to i32
  call void @func_b6448(i32 %r170, i32 %r116, i32 79, i32 %r115, i32 %r129, i32 %r111, i32 %r169)
  call void @func_b6457(i32 1, i32 %r111, i32 %r103, i32 %r116, i32 %r115, i32 %r129, i32 %r169, i32 %r170)
  br label %b6461

b3143:
  %r182 = add i32 ptrtoint(i8* @console to i32), 1
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r177 = zext i8 %r181 to i32
  %r178 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r179 = load i8, i8* %r178
  %r176 = zext i8 %r179 to i32
  call void @func_b6448(i32 %r177, i32 %r116, i32 79, i32 %r115, i32 %r140, i32 %r111, i32 %r176)
  call void @func_b6449(i32 1, i32 %r111, i32 0, i32 %r116, i32 %r115, i32 %r140, i32 %r176, i32 %r177)
  br label %b6461
}

define internal void @func_b3181(i32 %r0, i32 %r1) {
  %r4 = load i32, i32* @ball
  br label %b3181

b3181:
  %r10 = phi i32 [%r0, %0], [%r12, %b6595], [%r11, %b3498], [%r10, %b3500]
  %r6 = phi i32 [%r1, %0], [%r9, %b6595], [%r8, %b3498], [%r7, %b3500]
  %r5 = mul i32 %r6, 24
  %r3 = add i32 ptrtoint(i8* @objects to i32), %r5
  %r2 = icmp eq i32 %r3, %r4
  br i1 %r2, label %b6595, label %b3502

b6595:
  %r16 = phi i32 [1, %b3181], [1, %b3502], [1, %b3703], [1, %b3751], [1, %b3766], [1, %b3779], [1, %b3787]
  %r15 = phi i32 [%r6, %b3181], [%r6, %b3502], [%r6, %b3703], [%r6, %b3751], [%r6, %b3766], [%r6, %b3779], [%r6, %b3787]
  %r14 = phi i32 [19, %b3181], [19, %b3502], [19, %b3703], [19, %b3751], [19, %b3766], [19, %b3779], [19, %b3787]
  %r12 = phi i32 [%r10, %b3181], [%r10, %b3502], [%r10, %b3703], [%r10, %b3751], [%r10, %b3766], [%r10, %b3779], [%r10, %b3787]
  %r9 = add i32 %r15, %r16
  %r13 = icmp ule i32 %r9, %r14
  br i1 %r13, label %b3181, label %b2159

b3502:
  %r21 = add i32 %r3, 20
  %r20 = inttoptr i32 %r21 to i32*
  %r19 = load i32, i32* %r20
  %r18 = and i32 %r19, 16
  %r17 = icmp ne i32 %r18, 0
  br i1 %r17, label %b3703, label %b6595

b2159:
  call void @func_b4592()
  br label %b6497

b3703:
  %r23 = and i32 %r19, 2
  %r22 = icmp ne i32 %r23, 0
  br i1 %r22, label %b3751, label %b6595

b6497:
  %r26 = phi i32 [1, %b2159], [%r25, %b6497]
  %r28 = mul i32 %r26, 24
  %r27 = add i32 ptrtoint(i8* @objects to i32), %r28
  call void @func_b2660(i32 %r27)
  %r25 = add i32 %r26, 1
  %r24 = icmp ule i32 %r25, 19
  br i1 %r24, label %b6497, label %b2161

b3751:
  %r52 = add i32 %r3, 8
  %r51 = inttoptr i32 %r52 to i32*
  %r30 = load i32, i32* %r51
  %r50 = add i32 %r4, 8
  %r49 = inttoptr i32 %r50 to i32*
  %r32 = load i32, i32* %r49
  %r48 = add i32 %r3, 12
  %r47 = inttoptr i32 %r48 to i32*
  %r46 = load i32, i32* %r47
  %r45 = add i32 %r4, 12
  %r44 = inttoptr i32 %r45 to i32*
  %r43 = load i32, i32* %r44
  %r42 = inttoptr i32 %r3 to i32*
  %r41 = load i32, i32* %r42
  %r40 = add i32 %r3, 4
  %r39 = inttoptr i32 %r40 to i32*
  %r38 = load i32, i32* %r39
  %r37 = inttoptr i32 %r4 to i32*
  %r33 = load i32, i32* %r37
  %r36 = add i32 %r4, 4
  %r35 = inttoptr i32 %r36 to i32*
  %r34 = load i32, i32* %r35
  %r31 = add i32 %r32, %r33
  %r29 = icmp ult i32 %r30, %r31
  br i1 %r29, label %b3766, label %b6595

b2161:
  call void @func_b2162()
  br label %b6463

b3766:
  %r54 = add i32 %r30, %r41
  %r53 = icmp ugt i32 %r54, %r32
  br i1 %r53, label %b3779, label %b6595

b6463:
  %r62 = phi i32 [1, %b2161], [%r63, %b6461]
  %r61 = mul i32 %r62, 24
  %r60 = add i32 ptrtoint(i8* @objects to i32), %r61
  %r59 = add i32 %r60, 20
  %r58 = inttoptr i32 %r59 to i32*
  %r57 = load i32, i32* %r58
  %r56 = and i32 %r57, 16
  %r55 = icmp ne i32 %r56, 0
  br i1 %r55, label %b2651, label %b6461

b3779:
  %r65 = add i32 %r43, %r34
  %r64 = icmp ult i32 %r46, %r65
  br i1 %r64, label %b3787, label %b6595

b2651:
  %r78 = add i32 %r60, 8
  %r77 = inttoptr i32 %r78 to i32*
  %r76 = load i32, i32* %r77
  %r75 = add i32 ptrtoint(i8* @console to i32), 1
  %r73 = inttoptr i32 %r75 to i8*
  %r74 = load i8, i8* %r73
  %r69 = zext i8 %r74 to i32
  %r72 = add i32 ptrtoint(i8* @console to i32), 3
  %r70 = inttoptr i32 %r72 to i8*
  %r71 = load i8, i8* %r70
  %r68 = zext i8 %r71 to i32
  %r67 = sub i32 %r68, %r69
  %r66 = icmp ule i32 %r67, 79
  br i1 %r66, label %b6100, label %b2652

b6461:
  %r82 = phi i32 [1, %b6463], [1, %b6100], [1, %b2652], [1, %b6707], [1, %b6708], [1, %b6705], [1, %b6703], [1, %b6059], [1, %b3149], [1, %b3143]
  %r81 = phi i32 [%r62, %b6463], [%r62, %b6100], [%r62, %b2652], [%r83, %b6707], [%r83, %b6708], [%r83, %b6705], [%r83, %b6703], [%r84, %b6059], [%r83, %b3149], [%r83, %b3143]
  %r80 = phi i32 [19, %b6463], [19, %b6100], [19, %b2652], [19, %b6707], [19, %b6708], [19, %b6705], [19, %b6703], [19, %b6059], [19, %b3149], [19, %b3143]
  %r63 = add i32 %r81, %r82
  %r79 = icmp ule i32 %r63, %r80
  br i1 %r79, label %b6463, label %b303

b3787:
  %r86 = add i32 %r46, %r38
  %r85 = icmp ugt i32 %r86, %r43
  br i1 %r85, label %b3795, label %b6595

b6100:
  %r87 = icmp ule i32 %r76, %r67
  br i1 %r87, label %b6460, label %b6461

b2652:
  %r89 = call i32 @func_b5082()
  %r88 = icmp ule i32 %r76, %r89
  br i1 %r88, label %b6460, label %b6461

b303:
  ret void

b3795:
  %r101 = add i32 %r4, 4
  %r100 = inttoptr i32 %r101 to i32*
  %r95 = load i32, i32* %r100
  %r99 = add i32 %r3, 4
  %r98 = inttoptr i32 %r99 to i32*
  %r93 = load i32, i32* %r98
  %r97 = add i32 %r3, 12
  %r96 = inttoptr i32 %r97 to i32*
  %r91 = load i32, i32* %r96
  %r94 = add i32 %r10, %r95
  %r92 = add i32 %r91, %r93
  %r90 = icmp ule i32 %r10, %r91
  br i1 %r90, label %b3498, label %b3499

b6460:
  %r116 = phi i32 [%r76, %b6100], [%r76, %b2652]
  %r114 = phi i32 [%r60, %b6100], [%r60, %b2652]
  %r115 = phi i32 [%r67, %b6100], [%r89, %b2652]
  %r83 = phi i32 [%r62, %b6100], [%r62, %b2652]
  %r113 = add i32 %r114, 12
  %r112 = inttoptr i32 %r113 to i32*
  %r111 = load i32, i32* %r112
  %r109 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r110 = load i8, i8* %r109
  %r105 = zext i8 %r110 to i32
  %r108 = add i32 ptrtoint(i8* @console to i32), 2
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r104 = zext i8 %r107 to i32
  %r103 = sub i32 %r104, %r105
  %r102 = icmp ule i32 %r103, 24
  br i1 %r102, label %b6707, label %b6708

b3498:
  %r11 = phi i32 [%r10, %b3795], [%r10, %b3499]
  %r118 = phi i32 [%r6, %b3795], [%r6, %b3499]
  %r119 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 false, i1* %r119
  %r8 = add i32 %r118, 1
  %r117 = icmp ule i32 %r8, 19
  br i1 %r117, label %b3181, label %b2159

b3499:
  %r120 = icmp uge i32 %r94, %r92
  br i1 %r120, label %b3498, label %b3500

b6707:
  %r121 = icmp ule i32 %r111, %r103
  br i1 %r121, label %b6716, label %b6461

b6708:
  %r122 = icmp ule i32 %r111, 0
  br i1 %r122, label %b6715, label %b6461

b3500:
  %r124 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 false, i1* %r124
  %r7 = add i32 %r6, 1
  %r123 = icmp ule i32 %r7, 19
  br i1 %r123, label %b3181, label %b2159

b6716:
  %r135 = inttoptr i32 %r114 to i32*
  %r128 = load i32, i32* %r135
  %r134 = add i32 %r114, 4
  %r133 = inttoptr i32 %r134 to i32*
  %r132 = load i32, i32* %r133
  %r131 = add i32 %r114, 16
  %r130 = inttoptr i32 %r131 to i32*
  %r129 = load i32, i32* %r130
  %r127 = add i32 %r116, %r128
  %r126 = add i32 %r127, -1
  %r125 = icmp ule i32 %r126, %r115
  br i1 %r125, label %b6705, label %b6706

b6715:
  %r146 = inttoptr i32 %r114 to i32*
  %r139 = load i32, i32* %r146
  %r145 = add i32 %r114, 4
  %r144 = inttoptr i32 %r145 to i32*
  %r143 = load i32, i32* %r144
  %r142 = add i32 %r114, 16
  %r141 = inttoptr i32 %r142 to i32*
  %r140 = load i32, i32* %r141
  %r138 = add i32 %r116, %r139
  %r137 = add i32 %r138, -1
  %r136 = icmp ule i32 %r137, %r115
  br i1 %r136, label %b6703, label %b6704

b6705:
  %r148 = add i32 %r111, %r132
  %r147 = add i32 %r148, -1
  call void @func_b6020(i32 %r147, i32 %r103, i32 %r111, i32 %r129, i32 %r126, i32 %r116)
  br label %b6461

b6706:
  %r151 = add i32 %r111, %r132
  %r150 = add i32 %r151, -1
  %r149 = icmp ule i32 %r150, %r103
  br i1 %r149, label %b6059, label %b3149

b6703:
  %r153 = add i32 %r111, %r143
  %r152 = add i32 %r153, -1
  call void @func_b6000(i32 %r152, i32 0, i32 %r111, i32 %r140, i32 %r137, i32 %r116)
  br label %b6461

b6704:
  %r156 = add i32 %r111, %r143
  %r155 = add i32 %r156, -1
  %r154 = icmp ule i32 %r155, 0
  br i1 %r154, label %b6059, label %b3143

b6059:
  %r158 = phi i32 [%r150, %b6706], [%r155, %b6704]
  %r159 = phi i32 [%r116, %b6706], [%r116, %b6704]
  %r160 = phi i32 [%r115, %b6706], [%r115, %b6704]
  %r161 = phi i32 [%r129, %b6706], [%r140, %b6704]
  %r157 = phi i32 [%r111, %b6706], [%r111, %b6704]
  %r84 = phi i32 [%r83, %b6706], [%r83, %b6704]
  %r168 = add i32 ptrtoint(i8* @console to i32), 1
  %r166 = inttoptr i32 %r168 to i8*
  %r167 = load i8, i8* %r166
  %r163 = zext i8 %r167 to i32
  %r164 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r165 = load i8, i8* %r164
  %r162 = zext i8 %r165 to i32
  call void @func_b6448(i32 %r163, i32 %r159, i32 79, i32 %r160, i32 %r161, i32 %r157, i32 %r162)
  call void @func_b6457(i32 1, i32 %r157, i32 %r158, i32 %r159, i32 %r160, i32 %r161, i32 %r162, i32 %r163)
  br label %b6461

b3149:
  %r175 = add i32 ptrtoint(i8* @console to i32), 1
  %r173 = inttoptr i32 %r175 to i8*
  %r174 = load i8, i8* %r173
  %r170 = zext i8 %r174 to i32
  %r171 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r172 = load i8, i8* %r171
  %r169 = zext i8 %r172 to i32
  call void @func_b6448(i32 %r170, i32 %r116, i32 79, i32 %r115, i32 %r129, i32 %r111, i32 %r169)
  call void @func_b6457(i32 1, i32 %r111, i32 %r103, i32 %r116, i32 %r115, i32 %r129, i32 %r169, i32 %r170)
  br label %b6461

b3143:
  %r182 = add i32 ptrtoint(i8* @console to i32), 1
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r177 = zext i8 %r181 to i32
  %r178 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r179 = load i8, i8* %r178
  %r176 = zext i8 %r179 to i32
  call void @func_b6448(i32 %r177, i32 %r116, i32 79, i32 %r115, i32 %r140, i32 %r111, i32 %r176)
  call void @func_b6449(i32 1, i32 %r111, i32 0, i32 %r116, i32 %r115, i32 %r140, i32 %r176, i32 %r177)
  br label %b6461
}

define internal void @func_b2729(i32 %r0, i32 %r1) {
  br label %b2729

b2729:
  %r2 = icmp ne i32 %r0, %r1
  br i1 %r2, label %b979, label %b303

b979:
  %r5 = add i32 ptrtoint(i8* @objects to i32), 8
  %r7 = inttoptr i32 %r5 to i32*
  %r6 = load i32, i32* %r7
  %r4 = add i32 %r6, -1
  %r3 = inttoptr i32 %r5 to i32*
  store i32 %r4, i32* %r3
  ret void

b303:
  ret void
}

define void @timerInterrupt() {
  %r56 = load i32, i32* @ball
  br label %timerInterrupt

timerInterrupt:
  %r14 = call i32 @inb(i32 33)
  %r13 = or i32 %r14, 1
  call void @outb(i32 33, i32 %r13)
  call void @outb(i32 32, i32 96)
  %r12 = call i32 @inb(i32 33)
  %r11 = and i32 %r12, -2
  call void @outb(i32 33, i32 %r11)
  %r10 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  %r9 = load i32, i32* %r10
  %r8 = add i32 %r9, 1
  %r7 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  store i32 %r8, i32* %r7
  call void @func_b1223()
  %r5 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r6 = load i8, i8* %r5
  %r1 = zext i8 %r6 to i32
  %r3 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r0 = icmp eq i32 54, %r1
  br i1 %r0, label %b3632, label %b3633

b3632:
  %r15 = icmp ne i32 54, %r2
  br i1 %r15, label %b3734, label %b3735

b3633:
  %r21 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r22 = load i8, i8* %r21
  %r17 = zext i8 %r22 to i32
  %r19 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r20 = load i8, i8* %r19
  %r18 = zext i8 %r20 to i32
  %r16 = icmp eq i32 52, %r17
  br i1 %r16, label %b3711, label %b3712

b3734:
  %r32 = add i32 ptrtoint(i8* @objects to i32), 8
  %r34 = inttoptr i32 %r32 to i32*
  %r33 = load i32, i32* %r34
  %r31 = add i32 %r33, 1
  %r30 = inttoptr i32 %r32 to i32*
  store i32 %r31, i32* %r30
  %r28 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r29 = load i8, i8* %r28
  %r24 = zext i8 %r29 to i32
  %r26 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  %r23 = icmp eq i32 52, %r24
  br i1 %r23, label %b3765, label %b3764

b3735:
  %r40 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r41 = load i8, i8* %r40
  %r36 = zext i8 %r41 to i32
  %r38 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  %r35 = icmp eq i32 52, %r36
  br i1 %r35, label %b3763, label %b3764

b3711:
  call void @func_b2729(i32 52, i32 %r18)
  %r43 = and i32 %r9, 15
  %r42 = icmp eq i32 %r43, 0
  br i1 %r42, label %b3263, label %b3333

b3712:
  %r45 = and i32 %r9, 15
  %r44 = icmp eq i32 %r45, 0
  br i1 %r44, label %b3263, label %b3333

b3765:
  %r46 = icmp ne i32 52, %r25
  br i1 %r46, label %b3778, label %b3764

b3764:
  %r49 = phi i32 [%r9, %b3734], [%r9, %b3735], [%r9, %b3765]
  %r48 = and i32 %r49, 15
  %r47 = icmp eq i32 %r48, 0
  br i1 %r47, label %b3558, label %b3626

b3763:
  call void @func_b2729(i32 52, i32 %r37)
  %r51 = and i32 %r9, 15
  %r50 = icmp eq i32 %r51, 0
  br i1 %r50, label %b3558, label %b3626

b3263:
  %r63 = phi i32 [%r9, %b3711], [%r9, %b3712]
  %r62 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  %r52 = load i1, i1* %r62
  %r61 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  %r60 = load i1, i1* %r61
  %r59 = add i32 %r56, 8
  %r58 = inttoptr i32 %r59 to i32*
  %r57 = load i32, i32* %r58
  %r55 = add i32 %r56, 12
  %r54 = inttoptr i32 %r55 to i32*
  %r53 = load i32, i32* %r54
  br i1 %r52, label %b3264, label %b3312

b3333:
  %r64 = phi i32 [%r9, %b3711], [%r9, %b3712]
  call void @func_b4592()
  br label %b6480

b3778:
  %r69 = add i32 ptrtoint(i8* @objects to i32), 8
  %r71 = inttoptr i32 %r69 to i32*
  %r70 = load i32, i32* %r71
  %r68 = add i32 %r70, -1
  %r67 = inttoptr i32 %r69 to i32*
  store i32 %r68, i32* %r67
  %r66 = and i32 %r9, 15
  %r65 = icmp eq i32 %r66, 0
  br i1 %r65, label %b3558, label %b3626

b3558:
  %r82 = phi i32 [%r49, %b3764], [%r9, %b3763], [%r9, %b3778]
  %r81 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  %r72 = load i1, i1* %r81
  %r80 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  %r79 = load i1, i1* %r80
  %r78 = add i32 %r56, 8
  %r77 = inttoptr i32 %r78 to i32*
  %r76 = load i32, i32* %r77
  %r75 = add i32 %r56, 12
  %r74 = inttoptr i32 %r75 to i32*
  %r73 = load i32, i32* %r74
  br i1 %r72, label %b3559, label %b3605

b3626:
  %r83 = phi i32 [%r49, %b3764], [%r9, %b3763], [%r9, %b3778]
  call void @func_b4592()
  br label %b6635

b3264:
  %r84 = add i32 %r57, -1
  br i1 %r60, label %b3265, label %b3302

b3312:
  %r85 = add i32 %r57, 1
  br i1 %r60, label %b3313, label %b3323

b6480:
  %r88 = phi i32 [1, %b3333], [%r87, %b6480]
  %r91 = phi i32 [%r64, %b3333], [%r91, %b6480]
  %r90 = mul i32 %r88, 24
  %r89 = add i32 ptrtoint(i8* @objects to i32), %r90
  call void @func_b2660(i32 %r89)
  %r87 = add i32 %r88, 1
  %r86 = icmp ule i32 %r87, 19
  br i1 %r86, label %b6480, label %b3334

b3559:
  %r92 = add i32 %r76, -1
  br i1 %r79, label %b3560, label %b3595

b3605:
  %r93 = add i32 %r76, 1
  br i1 %r79, label %b3606, label %b3616

b6635:
  %r96 = phi i32 [1, %b3626], [%r95, %b6635]
  %r99 = phi i32 [%r83, %b3626], [%r99, %b6635]
  %r98 = mul i32 %r96, 24
  %r97 = add i32 ptrtoint(i8* @objects to i32), %r98
  call void @func_b2660(i32 %r97)
  %r95 = add i32 %r96, 1
  %r94 = icmp ule i32 %r95, 19
  br i1 %r94, label %b6635, label %b3627

b3265:
  %r102 = add i32 %r53, -1
  %r105 = add i32 %r56, 8
  %r104 = inttoptr i32 %r105 to i32*
  store i32 %r84, i32* %r104
  %r103 = add i32 %r56, 12
  %r101 = inttoptr i32 %r103 to i32*
  store i32 %r102, i32* %r101
  %r100 = icmp eq i32 ptrtoint(i8* @objects to i32), %r56
  br i1 %r100, label %b6599, label %b4621

b3302:
  %r108 = add i32 %r53, 1
  %r111 = add i32 %r56, 8
  %r110 = inttoptr i32 %r111 to i32*
  store i32 %r84, i32* %r110
  %r109 = add i32 %r56, 12
  %r107 = inttoptr i32 %r109 to i32*
  store i32 %r108, i32* %r107
  %r106 = icmp eq i32 ptrtoint(i8* @objects to i32), %r56
  br i1 %r106, label %b6568, label %b4614

b3313:
  %r114 = add i32 %r53, -1
  %r117 = add i32 %r56, 8
  %r116 = inttoptr i32 %r117 to i32*
  store i32 %r85, i32* %r116
  %r115 = add i32 %r56, 12
  %r113 = inttoptr i32 %r115 to i32*
  store i32 %r114, i32* %r113
  %r112 = icmp eq i32 ptrtoint(i8* @objects to i32), %r56
  br i1 %r112, label %b6537, label %b4607

b3323:
  %r120 = add i32 %r53, 1
  %r123 = add i32 %r56, 8
  %r122 = inttoptr i32 %r123 to i32*
  store i32 %r85, i32* %r122
  %r121 = add i32 %r56, 12
  %r119 = inttoptr i32 %r121 to i32*
  store i32 %r120, i32* %r119
  %r118 = icmp eq i32 ptrtoint(i8* @objects to i32), %r56
  br i1 %r118, label %b6506, label %b4600

b3334:
  %r125 = phi i32 [%r91, %b6480], [%r124, %b6487]
  call void @func_b2162()
  br label %b6470

b3560:
  %r128 = add i32 %r73, -1
  %r131 = add i32 %r56, 8
  %r130 = inttoptr i32 %r131 to i32*
  store i32 %r92, i32* %r130
  %r129 = add i32 %r56, 12
  %r127 = inttoptr i32 %r129 to i32*
  store i32 %r128, i32* %r127
  %r126 = icmp eq i32 ptrtoint(i8* @objects to i32), %r56
  br i1 %r126, label %b6656, label %b4643

b3595:
  %r134 = add i32 %r73, 1
  %r137 = add i32 %r56, 8
  %r136 = inttoptr i32 %r137 to i32*
  store i32 %r92, i32* %r136
  %r135 = add i32 %r56, 12
  %r133 = inttoptr i32 %r135 to i32*
  store i32 %r134, i32* %r133
  %r132 = icmp eq i32 ptrtoint(i8* @objects to i32), %r56
  br i1 %r132, label %b6653, label %b4638

b3606:
  %r140 = add i32 %r73, -1
  %r143 = add i32 %r56, 8
  %r142 = inttoptr i32 %r143 to i32*
  store i32 %r93, i32* %r142
  %r141 = add i32 %r56, 12
  %r139 = inttoptr i32 %r141 to i32*
  store i32 %r140, i32* %r139
  %r138 = icmp eq i32 ptrtoint(i8* @objects to i32), %r56
  br i1 %r138, label %b6650, label %b4633

b3616:
  %r146 = add i32 %r73, 1
  %r149 = add i32 %r56, 8
  %r148 = inttoptr i32 %r149 to i32*
  store i32 %r93, i32* %r148
  %r147 = add i32 %r56, 12
  %r145 = inttoptr i32 %r147 to i32*
  store i32 %r146, i32* %r145
  %r144 = icmp eq i32 ptrtoint(i8* @objects to i32), %r56
  br i1 %r144, label %b6647, label %b4628

b3627:
  %r151 = phi i32 [%r99, %b6635], [%r150, %b6642]
  call void @func_b2162()
  br label %b6628

b6599:
  %r156 = phi i32 [1, %b3265], [1, %b4621], [1, %b4622], [1, %b4623], [1, %b4624], [1, %b4625]
  %r155 = phi i32 [0, %b3265], [0, %b4621], [0, %b4622], [0, %b4623], [0, %b4624], [0, %b4625]
  %r154 = phi i32 [19, %b3265], [19, %b4621], [19, %b4622], [19, %b4623], [19, %b4624], [19, %b4625]
  %r158 = phi i32 [%r53, %b3265], [%r53, %b4621], [%r53, %b4622], [%r53, %b4623], [%r53, %b4624], [%r53, %b4625]
  %r157 = phi i32 [%r63, %b3265], [%r63, %b4621], [%r63, %b4622], [%r63, %b4623], [%r63, %b4624], [%r63, %b4625]
  %r153 = add i32 %r155, %r156
  %r152 = icmp ule i32 %r153, %r154
  br i1 %r152, label %b6601, label %b3267

b4621:
  %r163 = add i32 ptrtoint(i8* @objects to i32), 20
  %r162 = inttoptr i32 %r163 to i32*
  %r161 = load i32, i32* %r162
  %r160 = and i32 %r161, 16
  %r159 = icmp ne i32 %r160, 0
  br i1 %r159, label %b4622, label %b6599

b6568:
  %r168 = phi i32 [1, %b3302], [1, %b4614], [1, %b4615], [1, %b4616], [1, %b4617], [1, %b4618]
  %r167 = phi i32 [0, %b3302], [0, %b4614], [0, %b4615], [0, %b4616], [0, %b4617], [0, %b4618]
  %r166 = phi i32 [19, %b3302], [19, %b4614], [19, %b4615], [19, %b4616], [19, %b4617], [19, %b4618]
  %r170 = phi i32 [%r53, %b3302], [%r53, %b4614], [%r53, %b4615], [%r53, %b4616], [%r53, %b4617], [%r53, %b4618]
  %r169 = phi i32 [%r63, %b3302], [%r63, %b4614], [%r63, %b4615], [%r63, %b4616], [%r63, %b4617], [%r63, %b4618]
  %r165 = add i32 %r167, %r168
  %r164 = icmp ule i32 %r165, %r166
  br i1 %r164, label %b6570, label %b3267

b4614:
  %r175 = add i32 ptrtoint(i8* @objects to i32), 20
  %r174 = inttoptr i32 %r175 to i32*
  %r173 = load i32, i32* %r174
  %r172 = and i32 %r173, 16
  %r171 = icmp ne i32 %r172, 0
  br i1 %r171, label %b4615, label %b6568

b6537:
  %r180 = phi i32 [1, %b3313], [1, %b4607], [1, %b4608], [1, %b4609], [1, %b4610], [1, %b4611]
  %r179 = phi i32 [0, %b3313], [0, %b4607], [0, %b4608], [0, %b4609], [0, %b4610], [0, %b4611]
  %r178 = phi i32 [19, %b3313], [19, %b4607], [19, %b4608], [19, %b4609], [19, %b4610], [19, %b4611]
  %r182 = phi i32 [%r53, %b3313], [%r53, %b4607], [%r53, %b4608], [%r53, %b4609], [%r53, %b4610], [%r53, %b4611]
  %r181 = phi i32 [%r63, %b3313], [%r63, %b4607], [%r63, %b4608], [%r63, %b4609], [%r63, %b4610], [%r63, %b4611]
  %r177 = add i32 %r179, %r180
  %r176 = icmp ule i32 %r177, %r178
  br i1 %r176, label %b6539, label %b3267

b4607:
  %r187 = add i32 ptrtoint(i8* @objects to i32), 20
  %r186 = inttoptr i32 %r187 to i32*
  %r185 = load i32, i32* %r186
  %r184 = and i32 %r185, 16
  %r183 = icmp ne i32 %r184, 0
  br i1 %r183, label %b4608, label %b6537

b6506:
  %r192 = phi i32 [1, %b3323], [1, %b4600], [1, %b4601], [1, %b4602], [1, %b4603], [1, %b4604]
  %r191 = phi i32 [0, %b3323], [0, %b4600], [0, %b4601], [0, %b4602], [0, %b4603], [0, %b4604]
  %r190 = phi i32 [19, %b3323], [19, %b4600], [19, %b4601], [19, %b4602], [19, %b4603], [19, %b4604]
  %r194 = phi i32 [%r53, %b3323], [%r53, %b4600], [%r53, %b4601], [%r53, %b4602], [%r53, %b4603], [%r53, %b4604]
  %r193 = phi i32 [%r63, %b3323], [%r63, %b4600], [%r63, %b4601], [%r63, %b4602], [%r63, %b4603], [%r63, %b4604]
  %r189 = add i32 %r191, %r192
  %r188 = icmp ule i32 %r189, %r190
  br i1 %r188, label %b6508, label %b3267

b4600:
  %r199 = add i32 ptrtoint(i8* @objects to i32), 20
  %r198 = inttoptr i32 %r199 to i32*
  %r197 = load i32, i32* %r198
  %r196 = and i32 %r197, 16
  %r195 = icmp ne i32 %r196, 0
  br i1 %r195, label %b4601, label %b6506

b6470:
  %r207 = phi i32 [1, %b3334], [%r210, %b6468]
  %r209 = phi i32 [%r125, %b3334], [%r208, %b6468]
  %r206 = mul i32 %r207, 24
  %r205 = add i32 ptrtoint(i8* @objects to i32), %r206
  %r204 = add i32 %r205, 20
  %r203 = inttoptr i32 %r204 to i32*
  %r202 = load i32, i32* %r203
  %r201 = and i32 %r202, 16
  %r200 = icmp ne i32 %r201, 0
  br i1 %r200, label %b3271, label %b6468

b6656:
  %r215 = phi i32 [1, %b3560], [1, %b4643], [1, %b4644], [1, %b4645], [1, %b4646], [1, %b4647]
  %r214 = phi i32 [0, %b3560], [0, %b4643], [0, %b4644], [0, %b4645], [0, %b4646], [0, %b4647]
  %r213 = phi i32 [19, %b3560], [19, %b4643], [19, %b4644], [19, %b4645], [19, %b4646], [19, %b4647]
  %r217 = phi i32 [%r73, %b3560], [%r73, %b4643], [%r73, %b4644], [%r73, %b4645], [%r73, %b4646], [%r73, %b4647]
  %r216 = phi i32 [%r82, %b3560], [%r82, %b4643], [%r82, %b4644], [%r82, %b4645], [%r82, %b4646], [%r82, %b4647]
  %r212 = add i32 %r214, %r215
  %r211 = icmp ule i32 %r212, %r213
  br i1 %r211, label %b6601, label %b3562

b4643:
  %r222 = add i32 ptrtoint(i8* @objects to i32), 20
  %r221 = inttoptr i32 %r222 to i32*
  %r220 = load i32, i32* %r221
  %r219 = and i32 %r220, 16
  %r218 = icmp ne i32 %r219, 0
  br i1 %r218, label %b4644, label %b6656

b6653:
  %r227 = phi i32 [1, %b3595], [1, %b4638], [1, %b4639], [1, %b4640], [1, %b4641], [1, %b4642]
  %r226 = phi i32 [0, %b3595], [0, %b4638], [0, %b4639], [0, %b4640], [0, %b4641], [0, %b4642]
  %r225 = phi i32 [19, %b3595], [19, %b4638], [19, %b4639], [19, %b4640], [19, %b4641], [19, %b4642]
  %r229 = phi i32 [%r73, %b3595], [%r73, %b4638], [%r73, %b4639], [%r73, %b4640], [%r73, %b4641], [%r73, %b4642]
  %r228 = phi i32 [%r82, %b3595], [%r82, %b4638], [%r82, %b4639], [%r82, %b4640], [%r82, %b4641], [%r82, %b4642]
  %r224 = add i32 %r226, %r227
  %r223 = icmp ule i32 %r224, %r225
  br i1 %r223, label %b6570, label %b3562

b4638:
  %r234 = add i32 ptrtoint(i8* @objects to i32), 20
  %r233 = inttoptr i32 %r234 to i32*
  %r232 = load i32, i32* %r233
  %r231 = and i32 %r232, 16
  %r230 = icmp ne i32 %r231, 0
  br i1 %r230, label %b4639, label %b6653

b6650:
  %r239 = phi i32 [1, %b3606], [1, %b4633], [1, %b4634], [1, %b4635], [1, %b4636], [1, %b4637]
  %r238 = phi i32 [0, %b3606], [0, %b4633], [0, %b4634], [0, %b4635], [0, %b4636], [0, %b4637]
  %r237 = phi i32 [19, %b3606], [19, %b4633], [19, %b4634], [19, %b4635], [19, %b4636], [19, %b4637]
  %r241 = phi i32 [%r73, %b3606], [%r73, %b4633], [%r73, %b4634], [%r73, %b4635], [%r73, %b4636], [%r73, %b4637]
  %r240 = phi i32 [%r82, %b3606], [%r82, %b4633], [%r82, %b4634], [%r82, %b4635], [%r82, %b4636], [%r82, %b4637]
  %r236 = add i32 %r238, %r239
  %r235 = icmp ule i32 %r236, %r237
  br i1 %r235, label %b6539, label %b3562

b4633:
  %r246 = add i32 ptrtoint(i8* @objects to i32), 20
  %r245 = inttoptr i32 %r246 to i32*
  %r244 = load i32, i32* %r245
  %r243 = and i32 %r244, 16
  %r242 = icmp ne i32 %r243, 0
  br i1 %r242, label %b4634, label %b6650

b6647:
  %r251 = phi i32 [1, %b3616], [1, %b4628], [1, %b4629], [1, %b4630], [1, %b4631], [1, %b4632]
  %r250 = phi i32 [0, %b3616], [0, %b4628], [0, %b4629], [0, %b4630], [0, %b4631], [0, %b4632]
  %r249 = phi i32 [19, %b3616], [19, %b4628], [19, %b4629], [19, %b4630], [19, %b4631], [19, %b4632]
  %r253 = phi i32 [%r73, %b3616], [%r73, %b4628], [%r73, %b4629], [%r73, %b4630], [%r73, %b4631], [%r73, %b4632]
  %r252 = phi i32 [%r82, %b3616], [%r82, %b4628], [%r82, %b4629], [%r82, %b4630], [%r82, %b4631], [%r82, %b4632]
  %r248 = add i32 %r250, %r251
  %r247 = icmp ule i32 %r248, %r249
  br i1 %r247, label %b6508, label %b3562

b4628:
  %r258 = add i32 ptrtoint(i8* @objects to i32), 20
  %r257 = inttoptr i32 %r258 to i32*
  %r256 = load i32, i32* %r257
  %r255 = and i32 %r256, 16
  %r254 = icmp ne i32 %r255, 0
  br i1 %r254, label %b4629, label %b6647

b6628:
  %r266 = phi i32 [1, %b3627], [%r269, %b6626]
  %r268 = phi i32 [%r151, %b3627], [%r267, %b6626]
  %r265 = mul i32 %r266, 24
  %r264 = add i32 ptrtoint(i8* @objects to i32), %r265
  %r263 = add i32 %r264, 20
  %r262 = inttoptr i32 %r263 to i32*
  %r261 = load i32, i32* %r262
  %r260 = and i32 %r261, 16
  %r259 = icmp ne i32 %r260, 0
  br i1 %r259, label %b3566, label %b6626

b6601:
  %r271 = phi i32 [%r153, %b6599], [%r212, %b6656], [%r275, %b6617]
  %r270 = phi i32 [%r158, %b6599], [%r217, %b6656], [%r274, %b6617]
  %r273 = phi i32 [%r157, %b6599], [%r216, %b6656], [%r272, %b6617]
  call void @func_b3181(i32 %r270, i32 %r271)
  br label %b3031

b3267:
  %r276 = phi i32 [%r157, %b6599], [%r169, %b6568], [%r181, %b6537], [%r193, %b6506]
  call void @func_b4592()
  br label %b6487

b4622:
  %r278 = and i32 %r161, 2
  %r277 = icmp ne i32 %r278, 0
  br i1 %r277, label %b4623, label %b6599

b6570:
  %r280 = phi i32 [%r165, %b6568], [%r224, %b6653], [%r284, %b6586]
  %r279 = phi i32 [%r170, %b6568], [%r229, %b6653], [%r283, %b6586]
  %r282 = phi i32 [%r169, %b6568], [%r228, %b6653], [%r281, %b6586]
  call void @func_b3201(i32 %r279, i32 %r280)
  br label %b3031

b4615:
  %r286 = and i32 %r173, 2
  %r285 = icmp ne i32 %r286, 0
  br i1 %r285, label %b4616, label %b6568

b6539:
  %r288 = phi i32 [%r177, %b6537], [%r236, %b6650], [%r292, %b6555]
  %r287 = phi i32 [%r182, %b6537], [%r241, %b6650], [%r291, %b6555]
  %r290 = phi i32 [%r181, %b6537], [%r240, %b6650], [%r289, %b6555]
  call void @func_b3220(i32 %r287, i32 %r288)
  br label %b3031

b4608:
  %r294 = and i32 %r185, 2
  %r293 = icmp ne i32 %r294, 0
  br i1 %r293, label %b4609, label %b6537

b6508:
  %r296 = phi i32 [%r189, %b6506], [%r248, %b6647], [%r300, %b6524]
  %r295 = phi i32 [%r194, %b6506], [%r253, %b6647], [%r299, %b6524]
  %r298 = phi i32 [%r193, %b6506], [%r252, %b6647], [%r297, %b6524]
  call void @func_b3239(i32 %r295, i32 %r296)
  br label %b3031

b4601:
  %r302 = and i32 %r197, 2
  %r301 = icmp ne i32 %r302, 0
  br i1 %r301, label %b4602, label %b6506

b3271:
  %r315 = add i32 %r205, 8
  %r314 = inttoptr i32 %r315 to i32*
  %r313 = load i32, i32* %r314
  %r312 = add i32 ptrtoint(i8* @console to i32), 1
  %r310 = inttoptr i32 %r312 to i8*
  %r311 = load i8, i8* %r310
  %r306 = zext i8 %r311 to i32
  %r309 = add i32 ptrtoint(i8* @console to i32), 3
  %r307 = inttoptr i32 %r309 to i8*
  %r308 = load i8, i8* %r307
  %r305 = zext i8 %r308 to i32
  %r304 = sub i32 %r305, %r306
  %r303 = icmp ule i32 %r304, 79
  br i1 %r303, label %b6138, label %b3272

b6468:
  %r319 = phi i32 [1, %b6470], [1, %b3272]
  %r318 = phi i32 [%r207, %b6470], [%r207, %b3272]
  %r317 = phi i32 [19, %b6470], [19, %b3272]
  %r208 = phi i32 [%r209, %b6470], [%r209, %b3272]
  %r210 = add i32 %r318, %r319
  %r316 = icmp ule i32 %r210, %r317
  br i1 %r316, label %b6470, label %b3031

b3562:
  %r320 = phi i32 [%r216, %b6656], [%r228, %b6653], [%r240, %b6650], [%r252, %b6647]
  call void @func_b4592()
  br label %b6642

b4644:
  %r322 = and i32 %r220, 2
  %r321 = icmp ne i32 %r322, 0
  br i1 %r321, label %b4645, label %b6656

b4639:
  %r324 = and i32 %r232, 2
  %r323 = icmp ne i32 %r324, 0
  br i1 %r323, label %b4640, label %b6653

b4634:
  %r326 = and i32 %r244, 2
  %r325 = icmp ne i32 %r326, 0
  br i1 %r325, label %b4635, label %b6650

b4629:
  %r328 = and i32 %r256, 2
  %r327 = icmp ne i32 %r328, 0
  br i1 %r327, label %b4630, label %b6647

b3566:
  %r341 = add i32 %r264, 8
  %r340 = inttoptr i32 %r341 to i32*
  %r339 = load i32, i32* %r340
  %r338 = add i32 ptrtoint(i8* @console to i32), 1
  %r336 = inttoptr i32 %r338 to i8*
  %r337 = load i8, i8* %r336
  %r332 = zext i8 %r337 to i32
  %r335 = add i32 ptrtoint(i8* @console to i32), 3
  %r333 = inttoptr i32 %r335 to i8*
  %r334 = load i8, i8* %r333
  %r331 = zext i8 %r334 to i32
  %r330 = sub i32 %r331, %r332
  %r329 = icmp ule i32 %r330, 79
  br i1 %r329, label %b6138, label %b3567

b6626:
  %r345 = phi i32 [1, %b6628], [1, %b3567]
  %r344 = phi i32 [%r266, %b6628], [%r266, %b3567]
  %r343 = phi i32 [19, %b6628], [19, %b3567]
  %r267 = phi i32 [%r268, %b6628], [%r268, %b3567]
  %r269 = add i32 %r344, %r345
  %r342 = icmp ule i32 %r269, %r343
  br i1 %r342, label %b6628, label %b3031

b3031:
  %r356 = phi i32 [%r273, %b6601], [%r282, %b6570], [%r290, %b6539], [%r298, %b6508], [%r208, %b6468], [%r267, %b6626], [%r376, %b3276], [%r370, %b6692], [%r370, %b6690], [%r375, %b3833], [%r374, %b3865], [%r373, %b3897], [%r372, %b3929], [%r371, %b6104], [%r370, %b3477], [%r370, %b3467], [%r272, %b3861], [%r281, %b3893], [%r289, %b3925], [%r297, %b3957], [%r369, %b6603], [%r368, %b6572], [%r367, %b6541], [%r366, %b6510]
  %r364 = inttoptr i32 753818 to i16*
  %r365 = load i16, i16* %r364
  %r362 = zext i16 %r365 to i32
  %r363 = and i32 %r356, 15
  %r361 = call i32 @func_b1608(i32 %r363, i32 9)
  %r360 = and i32 %r362, 65280
  %r358 = or i32 %r360, %r361
  %r357 = inttoptr i32 753818 to i16*
  %r359 = trunc i32 %r358 to i16
  store i16 %r359, i16* %r357
  %r353 = lshr i32 %r356, 4
  %r354 = inttoptr i32 753816 to i16*
  %r355 = load i16, i16* %r354
  %r351 = zext i16 %r355 to i32
  %r352 = and i32 %r353, 15
  %r350 = call i32 @func_b1608(i32 %r352, i32 9)
  %r349 = and i32 %r351, 65280
  %r347 = or i32 %r349, %r350
  %r346 = inttoptr i32 753816 to i16*
  %r348 = trunc i32 %r347 to i16
  store i16 %r348, i16* %r346
  br label %b6425

b6487:
  %r379 = phi i32 [1, %b3267], [%r378, %b6487]
  %r124 = phi i32 [%r276, %b3267], [%r124, %b6487]
  %r381 = mul i32 %r379, 24
  %r380 = add i32 ptrtoint(i8* @objects to i32), %r381
  call void @func_b2660(i32 %r380)
  %r378 = add i32 %r379, 1
  %r377 = icmp ule i32 %r378, 19
  br i1 %r377, label %b6487, label %b3334

b4623:
  %r405 = add i32 ptrtoint(i8* @objects to i32), 8
  %r404 = inttoptr i32 %r405 to i32*
  %r383 = load i32, i32* %r404
  %r403 = add i32 %r56, 8
  %r402 = inttoptr i32 %r403 to i32*
  %r385 = load i32, i32* %r402
  %r401 = add i32 ptrtoint(i8* @objects to i32), 12
  %r400 = inttoptr i32 %r401 to i32*
  %r399 = load i32, i32* %r400
  %r398 = add i32 %r56, 12
  %r397 = inttoptr i32 %r398 to i32*
  %r396 = load i32, i32* %r397
  %r395 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r394 = load i32, i32* %r395
  %r393 = add i32 ptrtoint(i8* @objects to i32), 4
  %r392 = inttoptr i32 %r393 to i32*
  %r391 = load i32, i32* %r392
  %r390 = inttoptr i32 %r56 to i32*
  %r386 = load i32, i32* %r390
  %r389 = add i32 %r56, 4
  %r388 = inttoptr i32 %r389 to i32*
  %r387 = load i32, i32* %r388
  %r384 = add i32 %r385, %r386
  %r382 = icmp ult i32 %r383, %r384
  br i1 %r382, label %b4624, label %b6599

b4616:
  %r429 = add i32 ptrtoint(i8* @objects to i32), 8
  %r428 = inttoptr i32 %r429 to i32*
  %r407 = load i32, i32* %r428
  %r427 = add i32 %r56, 8
  %r426 = inttoptr i32 %r427 to i32*
  %r409 = load i32, i32* %r426
  %r425 = add i32 ptrtoint(i8* @objects to i32), 12
  %r424 = inttoptr i32 %r425 to i32*
  %r423 = load i32, i32* %r424
  %r422 = add i32 %r56, 12
  %r421 = inttoptr i32 %r422 to i32*
  %r420 = load i32, i32* %r421
  %r419 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r418 = load i32, i32* %r419
  %r417 = add i32 ptrtoint(i8* @objects to i32), 4
  %r416 = inttoptr i32 %r417 to i32*
  %r415 = load i32, i32* %r416
  %r414 = inttoptr i32 %r56 to i32*
  %r410 = load i32, i32* %r414
  %r413 = add i32 %r56, 4
  %r412 = inttoptr i32 %r413 to i32*
  %r411 = load i32, i32* %r412
  %r408 = add i32 %r409, %r410
  %r406 = icmp ult i32 %r407, %r408
  br i1 %r406, label %b4617, label %b6568

b4609:
  %r453 = add i32 ptrtoint(i8* @objects to i32), 8
  %r452 = inttoptr i32 %r453 to i32*
  %r431 = load i32, i32* %r452
  %r451 = add i32 %r56, 8
  %r450 = inttoptr i32 %r451 to i32*
  %r433 = load i32, i32* %r450
  %r449 = add i32 ptrtoint(i8* @objects to i32), 12
  %r448 = inttoptr i32 %r449 to i32*
  %r447 = load i32, i32* %r448
  %r446 = add i32 %r56, 12
  %r445 = inttoptr i32 %r446 to i32*
  %r444 = load i32, i32* %r445
  %r443 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r442 = load i32, i32* %r443
  %r441 = add i32 ptrtoint(i8* @objects to i32), 4
  %r440 = inttoptr i32 %r441 to i32*
  %r439 = load i32, i32* %r440
  %r438 = inttoptr i32 %r56 to i32*
  %r434 = load i32, i32* %r438
  %r437 = add i32 %r56, 4
  %r436 = inttoptr i32 %r437 to i32*
  %r435 = load i32, i32* %r436
  %r432 = add i32 %r433, %r434
  %r430 = icmp ult i32 %r431, %r432
  br i1 %r430, label %b4610, label %b6537

b4602:
  %r477 = add i32 ptrtoint(i8* @objects to i32), 8
  %r476 = inttoptr i32 %r477 to i32*
  %r455 = load i32, i32* %r476
  %r475 = add i32 %r56, 8
  %r474 = inttoptr i32 %r475 to i32*
  %r457 = load i32, i32* %r474
  %r473 = add i32 ptrtoint(i8* @objects to i32), 12
  %r472 = inttoptr i32 %r473 to i32*
  %r471 = load i32, i32* %r472
  %r470 = add i32 %r56, 12
  %r469 = inttoptr i32 %r470 to i32*
  %r468 = load i32, i32* %r469
  %r467 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r466 = load i32, i32* %r467
  %r465 = add i32 ptrtoint(i8* @objects to i32), 4
  %r464 = inttoptr i32 %r465 to i32*
  %r463 = load i32, i32* %r464
  %r462 = inttoptr i32 %r56 to i32*
  %r458 = load i32, i32* %r462
  %r461 = add i32 %r56, 4
  %r460 = inttoptr i32 %r461 to i32*
  %r459 = load i32, i32* %r460
  %r456 = add i32 %r457, %r458
  %r454 = icmp ult i32 %r455, %r456
  br i1 %r454, label %b4603, label %b6506

b6138:
  %r479 = phi i32 [%r313, %b3271], [%r339, %b3566], [%r503, %b3838], [%r502, %b3870], [%r501, %b3902], [%r500, %b3934]
  %r480 = phi i32 [%r304, %b3271], [%r330, %b3566], [%r499, %b3838], [%r498, %b3870], [%r497, %b3902], [%r496, %b3934]
  %r495 = phi i32 [%r205, %b3271], [%r264, %b3566], [%r494, %b3838], [%r493, %b3870], [%r492, %b3902], [%r491, %b3934]
  %r490 = phi i32 [%r209, %b3271], [%r268, %b3566], [%r489, %b3838], [%r488, %b3870], [%r487, %b3902], [%r486, %b3934]
  %r485 = phi i32 [%r207, %b3271], [%r266, %b3566], [%r484, %b3838], [%r483, %b3870], [%r482, %b3902], [%r481, %b3934]
  %r478 = icmp ule i32 %r479, %r480
  br i1 %r478, label %b6467, label %b3276

b3272:
  %r505 = call i32 @func_b5082()
  %r504 = icmp ule i32 %r313, %r505
  br i1 %r504, label %b6467, label %b6468

b6642:
  %r508 = phi i32 [1, %b3562], [%r507, %b6642]
  %r150 = phi i32 [%r320, %b3562], [%r150, %b6642]
  %r510 = mul i32 %r508, 24
  %r509 = add i32 ptrtoint(i8* @objects to i32), %r510
  call void @func_b2660(i32 %r509)
  %r507 = add i32 %r508, 1
  %r506 = icmp ule i32 %r507, 19
  br i1 %r506, label %b6642, label %b3627

b4645:
  %r534 = add i32 ptrtoint(i8* @objects to i32), 8
  %r533 = inttoptr i32 %r534 to i32*
  %r512 = load i32, i32* %r533
  %r532 = add i32 %r56, 8
  %r531 = inttoptr i32 %r532 to i32*
  %r514 = load i32, i32* %r531
  %r530 = add i32 ptrtoint(i8* @objects to i32), 12
  %r529 = inttoptr i32 %r530 to i32*
  %r528 = load i32, i32* %r529
  %r527 = add i32 %r56, 12
  %r526 = inttoptr i32 %r527 to i32*
  %r525 = load i32, i32* %r526
  %r524 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r523 = load i32, i32* %r524
  %r522 = add i32 ptrtoint(i8* @objects to i32), 4
  %r521 = inttoptr i32 %r522 to i32*
  %r520 = load i32, i32* %r521
  %r519 = inttoptr i32 %r56 to i32*
  %r515 = load i32, i32* %r519
  %r518 = add i32 %r56, 4
  %r517 = inttoptr i32 %r518 to i32*
  %r516 = load i32, i32* %r517
  %r513 = add i32 %r514, %r515
  %r511 = icmp ult i32 %r512, %r513
  br i1 %r511, label %b4646, label %b6656

b4640:
  %r558 = add i32 ptrtoint(i8* @objects to i32), 8
  %r557 = inttoptr i32 %r558 to i32*
  %r536 = load i32, i32* %r557
  %r556 = add i32 %r56, 8
  %r555 = inttoptr i32 %r556 to i32*
  %r538 = load i32, i32* %r555
  %r554 = add i32 ptrtoint(i8* @objects to i32), 12
  %r553 = inttoptr i32 %r554 to i32*
  %r552 = load i32, i32* %r553
  %r551 = add i32 %r56, 12
  %r550 = inttoptr i32 %r551 to i32*
  %r549 = load i32, i32* %r550
  %r548 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r547 = load i32, i32* %r548
  %r546 = add i32 ptrtoint(i8* @objects to i32), 4
  %r545 = inttoptr i32 %r546 to i32*
  %r544 = load i32, i32* %r545
  %r543 = inttoptr i32 %r56 to i32*
  %r539 = load i32, i32* %r543
  %r542 = add i32 %r56, 4
  %r541 = inttoptr i32 %r542 to i32*
  %r540 = load i32, i32* %r541
  %r537 = add i32 %r538, %r539
  %r535 = icmp ult i32 %r536, %r537
  br i1 %r535, label %b4641, label %b6653

b4635:
  %r582 = add i32 ptrtoint(i8* @objects to i32), 8
  %r581 = inttoptr i32 %r582 to i32*
  %r560 = load i32, i32* %r581
  %r580 = add i32 %r56, 8
  %r579 = inttoptr i32 %r580 to i32*
  %r562 = load i32, i32* %r579
  %r578 = add i32 ptrtoint(i8* @objects to i32), 12
  %r577 = inttoptr i32 %r578 to i32*
  %r576 = load i32, i32* %r577
  %r575 = add i32 %r56, 12
  %r574 = inttoptr i32 %r575 to i32*
  %r573 = load i32, i32* %r574
  %r572 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r571 = load i32, i32* %r572
  %r570 = add i32 ptrtoint(i8* @objects to i32), 4
  %r569 = inttoptr i32 %r570 to i32*
  %r568 = load i32, i32* %r569
  %r567 = inttoptr i32 %r56 to i32*
  %r563 = load i32, i32* %r567
  %r566 = add i32 %r56, 4
  %r565 = inttoptr i32 %r566 to i32*
  %r564 = load i32, i32* %r565
  %r561 = add i32 %r562, %r563
  %r559 = icmp ult i32 %r560, %r561
  br i1 %r559, label %b4636, label %b6650

b4630:
  %r606 = add i32 ptrtoint(i8* @objects to i32), 8
  %r605 = inttoptr i32 %r606 to i32*
  %r584 = load i32, i32* %r605
  %r604 = add i32 %r56, 8
  %r603 = inttoptr i32 %r604 to i32*
  %r586 = load i32, i32* %r603
  %r602 = add i32 ptrtoint(i8* @objects to i32), 12
  %r601 = inttoptr i32 %r602 to i32*
  %r600 = load i32, i32* %r601
  %r599 = add i32 %r56, 12
  %r598 = inttoptr i32 %r599 to i32*
  %r597 = load i32, i32* %r598
  %r596 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  %r595 = load i32, i32* %r596
  %r594 = add i32 ptrtoint(i8* @objects to i32), 4
  %r593 = inttoptr i32 %r594 to i32*
  %r592 = load i32, i32* %r593
  %r591 = inttoptr i32 %r56 to i32*
  %r587 = load i32, i32* %r591
  %r590 = add i32 %r56, 4
  %r589 = inttoptr i32 %r590 to i32*
  %r588 = load i32, i32* %r589
  %r585 = add i32 %r586, %r587
  %r583 = icmp ult i32 %r584, %r585
  br i1 %r583, label %b4631, label %b6647

b3567:
  %r608 = call i32 @func_b5082()
  %r607 = icmp ule i32 %r339, %r608
  br i1 %r607, label %b6467, label %b6626

b6425:
  %r611 = phi i32 [75, %b3031], [%r610, %b6425]
  %r624 = phi i32 [%r353, %b3031], [%r620, %b6425]
  %r625 = phi i32 [%r356, %b3031], [%r625, %b6425]
  %r620 = lshr i32 %r624, 4
  %r623 = mul i32 %r611, 2
  %r615 = add i32 %r623, 753664
  %r621 = inttoptr i32 %r615 to i16*
  %r622 = load i16, i16* %r621
  %r618 = zext i16 %r622 to i32
  %r619 = and i32 %r620, 15
  %r617 = call i32 @func_b1608(i32 %r619, i32 9)
  %r616 = and i32 %r618, 65280
  %r613 = or i32 %r616, %r617
  %r612 = inttoptr i32 %r615 to i16*
  %r614 = trunc i32 %r613 to i16
  store i16 %r614, i16* %r612
  %r610 = add i32 %r611, -1
  %r609 = icmp sle i32 70, %r610
  br i1 %r609, label %b6425, label %b2505

b4624:
  %r627 = add i32 %r383, %r394
  %r626 = icmp ugt i32 %r627, %r385
  br i1 %r626, label %b4625, label %b6599

b4617:
  %r629 = add i32 %r407, %r418
  %r628 = icmp ugt i32 %r629, %r409
  br i1 %r628, label %b4618, label %b6568

b4610:
  %r631 = add i32 %r431, %r442
  %r630 = icmp ugt i32 %r631, %r433
  br i1 %r630, label %b4611, label %b6537

b4603:
  %r633 = add i32 %r455, %r466
  %r632 = icmp ugt i32 %r633, %r457
  br i1 %r632, label %b4604, label %b6506

b6467:
  %r653 = phi i32 [%r479, %b6138], [%r313, %b3272], [%r339, %b3567], [%r503, %b3839], [%r502, %b3871], [%r501, %b3903], [%r500, %b3935]
  %r646 = phi i32 [%r495, %b6138], [%r205, %b3272], [%r264, %b3567], [%r494, %b3839], [%r493, %b3871], [%r492, %b3903], [%r491, %b3935]
  %r652 = phi i32 [%r480, %b6138], [%r505, %b3272], [%r608, %b3567], [%r651, %b3839], [%r650, %b3871], [%r649, %b3903], [%r648, %b3935]
  %r647 = phi i32 [%r485, %b6138], [%r207, %b3272], [%r266, %b3567], [%r484, %b3839], [%r483, %b3871], [%r482, %b3903], [%r481, %b3935]
  %r370 = phi i32 [%r490, %b6138], [%r209, %b3272], [%r268, %b3567], [%r489, %b3839], [%r488, %b3871], [%r487, %b3903], [%r486, %b3935]
  %r645 = add i32 %r646, 12
  %r644 = inttoptr i32 %r645 to i32*
  %r643 = load i32, i32* %r644
  %r641 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r642 = load i8, i8* %r641
  %r637 = zext i8 %r642 to i32
  %r640 = add i32 ptrtoint(i8* @console to i32), 2
  %r638 = inttoptr i32 %r640 to i8*
  %r639 = load i8, i8* %r638
  %r636 = zext i8 %r639 to i32
  %r635 = sub i32 %r636, %r637
  %r634 = icmp ule i32 %r635, 24
  br i1 %r634, label %b6694, label %b6695

b3276:
  %r654 = phi i32 [%r485, %b6138], [%r647, %b6694], [%r647, %b6695]
  %r376 = phi i32 [%r490, %b6138], [%r370, %b6694], [%r370, %b6695]
  call void @func_b6461(i32 1, i32 %r654, i32 19)
  br label %b3031

b4646:
  %r656 = add i32 %r512, %r523
  %r655 = icmp ugt i32 %r656, %r514
  br i1 %r655, label %b4647, label %b6656

b4641:
  %r658 = add i32 %r536, %r547
  %r657 = icmp ugt i32 %r658, %r538
  br i1 %r657, label %b4642, label %b6653

b4636:
  %r660 = add i32 %r560, %r571
  %r659 = icmp ugt i32 %r660, %r562
  br i1 %r659, label %b4637, label %b6650

b4631:
  %r662 = add i32 %r584, %r595
  %r661 = icmp ugt i32 %r662, %r586
  br i1 %r661, label %b4632, label %b6647

b2505:
  %r664 = and i32 %r625, 3
  %r663 = icmp eq i32 %r664, 0
  br i1 %r663, label %b1726, label %b1107

b4625:
  %r666 = add i32 %r396, %r387
  %r665 = icmp ult i32 %r399, %r666
  br i1 %r665, label %b4626, label %b6599

b4618:
  %r668 = add i32 %r420, %r411
  %r667 = icmp ult i32 %r423, %r668
  br i1 %r667, label %b4619, label %b6568

b4611:
  %r670 = add i32 %r444, %r435
  %r669 = icmp ult i32 %r447, %r670
  br i1 %r669, label %b4612, label %b6537

b4604:
  %r672 = add i32 %r468, %r459
  %r671 = icmp ult i32 %r471, %r672
  br i1 %r671, label %b4605, label %b6506

b6694:
  %r673 = icmp ule i32 %r643, %r635
  br i1 %r673, label %b6710, label %b3276

b6695:
  %r674 = icmp ule i32 %r643, 0
  br i1 %r674, label %b6709, label %b3276

b4647:
  %r676 = add i32 %r525, %r516
  %r675 = icmp ult i32 %r528, %r676
  br i1 %r675, label %b4626, label %b6656

b4642:
  %r678 = add i32 %r549, %r540
  %r677 = icmp ult i32 %r552, %r678
  br i1 %r677, label %b4619, label %b6653

b4637:
  %r680 = add i32 %r573, %r564
  %r679 = icmp ult i32 %r576, %r680
  br i1 %r679, label %b4612, label %b6650

b4632:
  %r682 = add i32 %r597, %r588
  %r681 = icmp ult i32 %r600, %r682
  br i1 %r681, label %b4605, label %b6647

b1726:
  %r686 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r687 = load i8, i8* %r686
  %r685 = zext i8 %r687 to i32
  call void @func_b865(i32 %r685, i32 32)
  %r684 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  %r683 = load i1, i1* %r684
  br i1 %r683, label %b6422, label %b6417

b1107:
  %r689 = and i32 %r625, 15
  %r688 = icmp eq i32 %r689, 0
  br i1 %r688, label %b1105, label %b1354

b4626:
  %r693 = phi i32 [%r399, %b4625], [%r528, %b4647]
  %r694 = phi i32 [%r391, %b4625], [%r520, %b4647]
  %r692 = phi i32 [%r396, %b4625], [%r525, %b4647]
  %r274 = phi i32 [%r53, %b4625], [%r73, %b4647]
  %r272 = phi i32 [%r63, %b4625], [%r82, %b4647]
  %r691 = add i32 %r693, %r694
  %r690 = icmp ugt i32 %r691, %r692
  br i1 %r690, label %b4627, label %b6617

b4619:
  %r698 = phi i32 [%r423, %b4618], [%r552, %b4642]
  %r699 = phi i32 [%r415, %b4618], [%r544, %b4642]
  %r697 = phi i32 [%r420, %b4618], [%r549, %b4642]
  %r283 = phi i32 [%r53, %b4618], [%r73, %b4642]
  %r281 = phi i32 [%r63, %b4618], [%r82, %b4642]
  %r696 = add i32 %r698, %r699
  %r695 = icmp ugt i32 %r696, %r697
  br i1 %r695, label %b4620, label %b6586

b4612:
  %r703 = phi i32 [%r447, %b4611], [%r576, %b4637]
  %r704 = phi i32 [%r439, %b4611], [%r568, %b4637]
  %r702 = phi i32 [%r444, %b4611], [%r573, %b4637]
  %r291 = phi i32 [%r53, %b4611], [%r73, %b4637]
  %r289 = phi i32 [%r63, %b4611], [%r82, %b4637]
  %r701 = add i32 %r703, %r704
  %r700 = icmp ugt i32 %r701, %r702
  br i1 %r700, label %b4613, label %b6555

b4605:
  %r708 = phi i32 [%r471, %b4604], [%r600, %b4632]
  %r709 = phi i32 [%r463, %b4604], [%r592, %b4632]
  %r707 = phi i32 [%r468, %b4604], [%r597, %b4632]
  %r299 = phi i32 [%r53, %b4604], [%r73, %b4632]
  %r297 = phi i32 [%r63, %b4604], [%r82, %b4632]
  %r706 = add i32 %r708, %r709
  %r705 = icmp ugt i32 %r706, %r707
  br i1 %r705, label %b4606, label %b6524

b6710:
  %r720 = inttoptr i32 %r646 to i32*
  %r713 = load i32, i32* %r720
  %r719 = add i32 %r646, 4
  %r718 = inttoptr i32 %r719 to i32*
  %r717 = load i32, i32* %r718
  %r716 = add i32 %r646, 16
  %r715 = inttoptr i32 %r716 to i32*
  %r714 = load i32, i32* %r715
  %r712 = add i32 %r653, %r713
  %r711 = add i32 %r712, -1
  %r710 = icmp ule i32 %r711, %r652
  br i1 %r710, label %b6692, label %b6693

b6709:
  %r731 = inttoptr i32 %r646 to i32*
  %r724 = load i32, i32* %r731
  %r730 = add i32 %r646, 4
  %r729 = inttoptr i32 %r730 to i32*
  %r728 = load i32, i32* %r729
  %r727 = add i32 %r646, 16
  %r726 = inttoptr i32 %r727 to i32*
  %r725 = load i32, i32* %r726
  %r723 = add i32 %r653, %r724
  %r722 = add i32 %r723, -1
  %r721 = icmp ule i32 %r722, %r652
  br i1 %r721, label %b6690, label %b6691

b6422:
  %r733 = add i32 %r685, 1
  %r732 = icmp ule i32 %r733, 68
  br i1 %r732, label %b6420, label %b1729

b6417:
  %r735 = sub i32 %r685, 1
  %r734 = icmp sle i32 46, %r735
  br i1 %r734, label %b6415, label %b1732

b1105:
  %r740 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r739 = load i1, i1* %r740
  %r738 = zext i1 %r739 to i32
  %r737 = add i32 %r738, 1
  %r736 = icmp ule i32 %r737, 1
  br i1 %r736, label %b6410, label %b4197

b1354:
  %r745 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r744 = load i1, i1* %r745
  %r743 = zext i1 %r744 to i32
  %r742 = mul i32 %r743, 72
  %r741 = add i32 ptrtoint(i8* @users to i32), %r742
  tail call void @returnTo(i32 %r741)
  ret void

b4627:
  %r757 = add i32 %r56, 4
  %r756 = inttoptr i32 %r757 to i32*
  %r751 = load i32, i32* %r756
  %r755 = add i32 ptrtoint(i8* @objects to i32), 4
  %r754 = inttoptr i32 %r755 to i32*
  %r749 = load i32, i32* %r754
  %r753 = add i32 ptrtoint(i8* @objects to i32), 12
  %r752 = inttoptr i32 %r753 to i32*
  %r747 = load i32, i32* %r752
  %r750 = add i32 %r274, %r751
  %r748 = add i32 %r747, %r749
  %r746 = icmp ule i32 %r274, %r747
  br i1 %r746, label %b3833, label %b3860

b6617:
  %r275 = add i32 0, 1
  %r758 = icmp ule i32 %r275, 19
  br i1 %r758, label %b6601, label %b3834

b4620:
  %r770 = add i32 %r56, 4
  %r769 = inttoptr i32 %r770 to i32*
  %r764 = load i32, i32* %r769
  %r768 = add i32 ptrtoint(i8* @objects to i32), 4
  %r767 = inttoptr i32 %r768 to i32*
  %r762 = load i32, i32* %r767
  %r766 = add i32 ptrtoint(i8* @objects to i32), 12
  %r765 = inttoptr i32 %r766 to i32*
  %r760 = load i32, i32* %r765
  %r763 = add i32 %r283, %r764
  %r761 = add i32 %r760, %r762
  %r759 = icmp ule i32 %r283, %r760
  br i1 %r759, label %b3865, label %b3892

b6586:
  %r284 = add i32 0, 1
  %r771 = icmp ule i32 %r284, 19
  br i1 %r771, label %b6570, label %b3866

b4613:
  %r783 = add i32 %r56, 4
  %r782 = inttoptr i32 %r783 to i32*
  %r777 = load i32, i32* %r782
  %r781 = add i32 ptrtoint(i8* @objects to i32), 4
  %r780 = inttoptr i32 %r781 to i32*
  %r775 = load i32, i32* %r780
  %r779 = add i32 ptrtoint(i8* @objects to i32), 12
  %r778 = inttoptr i32 %r779 to i32*
  %r773 = load i32, i32* %r778
  %r776 = add i32 %r291, %r777
  %r774 = add i32 %r773, %r775
  %r772 = icmp ule i32 %r291, %r773
  br i1 %r772, label %b3897, label %b3924

b6555:
  %r292 = add i32 0, 1
  %r784 = icmp ule i32 %r292, 19
  br i1 %r784, label %b6539, label %b3898

b4606:
  %r796 = add i32 %r56, 4
  %r795 = inttoptr i32 %r796 to i32*
  %r790 = load i32, i32* %r795
  %r794 = add i32 ptrtoint(i8* @objects to i32), 4
  %r793 = inttoptr i32 %r794 to i32*
  %r788 = load i32, i32* %r793
  %r792 = add i32 ptrtoint(i8* @objects to i32), 12
  %r791 = inttoptr i32 %r792 to i32*
  %r786 = load i32, i32* %r791
  %r789 = add i32 %r299, %r790
  %r787 = add i32 %r786, %r788
  %r785 = icmp ule i32 %r299, %r786
  br i1 %r785, label %b3929, label %b3956

b6524:
  %r300 = add i32 0, 1
  %r797 = icmp ule i32 %r300, 19
  br i1 %r797, label %b6508, label %b3930

b6692:
  %r799 = add i32 %r643, %r717
  %r798 = add i32 %r799, -1
  call void @func_b6020(i32 %r798, i32 %r635, i32 %r643, i32 %r714, i32 %r711, i32 %r653)
  call void @func_b6461(i32 1, i32 %r647, i32 19)
  br label %b3031

b6693:
  %r802 = add i32 %r643, %r717
  %r801 = add i32 %r802, -1
  %r800 = icmp ule i32 %r801, %r635
  br i1 %r800, label %b6104, label %b3477

b6690:
  %r804 = add i32 %r643, %r728
  %r803 = add i32 %r804, -1
  call void @func_b6000(i32 %r803, i32 0, i32 %r643, i32 %r725, i32 %r722, i32 %r653)
  call void @func_b6461(i32 1, i32 %r647, i32 19)
  br label %b3031

b6691:
  %r807 = add i32 %r643, %r728
  %r806 = add i32 %r807, -1
  %r805 = icmp ule i32 %r806, 0
  br i1 %r805, label %b6104, label %b3467

b6420:
  call void @func_b865(i32 %r733, i32 62)
  %r810 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r811 = trunc i32 %r733 to i8
  store i8 %r811, i8* %r810
  %r809 = and i32 %r625, 15
  %r808 = icmp eq i32 %r809, 0
  br i1 %r808, label %b1105, label %b1354

b1729:
  call void @func_b865(i32 %r685, i32 124)
  %r814 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 false, i1* %r814
  %r813 = and i32 %r625, 15
  %r812 = icmp eq i32 %r813, 0
  br i1 %r812, label %b1105, label %b1354

b6415:
  call void @func_b865(i32 %r735, i32 60)
  %r817 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r818 = trunc i32 %r735 to i8
  store i8 %r818, i8* %r817
  %r816 = and i32 %r625, 15
  %r815 = icmp eq i32 %r816, 0
  br i1 %r815, label %b1105, label %b1354

b1732:
  call void @func_b865(i32 %r685, i32 124)
  %r821 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r821
  %r820 = and i32 %r625, 15
  %r819 = icmp eq i32 %r820, 0
  br i1 %r819, label %b1105, label %b1354

b6410:
  %r823 = trunc i32 %r737 to i1
  %r822 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 %r823, i1* %r822
  br label %b2501

b4197:
  %r824 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r824
  br label %b2501

b3833:
  %r825 = phi i32 [%r274, %b4627], [%r274, %b3860]
  %r375 = phi i32 [%r272, %b4627], [%r272, %b3860]
  %r826 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 false, i1* %r826
  call void @func_b3181(i32 %r825, i32 1)
  br label %b3031

b3860:
  %r827 = icmp uge i32 %r750, %r748
  br i1 %r827, label %b3833, label %b3861

b3834:
  call void @func_b4592()
  br label %b6612

b3865:
  %r828 = phi i32 [%r283, %b4620], [%r283, %b3892]
  %r374 = phi i32 [%r281, %b4620], [%r281, %b3892]
  %r829 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r829
  call void @func_b3201(i32 %r828, i32 1)
  br label %b3031

b3892:
  %r830 = icmp uge i32 %r763, %r761
  br i1 %r830, label %b3865, label %b3893

b3866:
  call void @func_b4592()
  br label %b6581

b3897:
  %r831 = phi i32 [%r291, %b4613], [%r291, %b3924]
  %r373 = phi i32 [%r289, %b4613], [%r289, %b3924]
  %r832 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 false, i1* %r832
  call void @func_b3220(i32 %r831, i32 1)
  br label %b3031

b3924:
  %r833 = icmp uge i32 %r776, %r774
  br i1 %r833, label %b3897, label %b3925

b3898:
  call void @func_b4592()
  br label %b6550

b3929:
  %r834 = phi i32 [%r299, %b4606], [%r299, %b3956]
  %r372 = phi i32 [%r297, %b4606], [%r297, %b3956]
  %r835 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r835
  call void @func_b3239(i32 %r834, i32 1)
  br label %b3031

b3956:
  %r836 = icmp uge i32 %r789, %r787
  br i1 %r836, label %b3929, label %b3957

b3930:
  call void @func_b4592()
  br label %b6519

b6104:
  %r839 = phi i32 [%r801, %b6693], [%r806, %b6691]
  %r840 = phi i32 [%r653, %b6693], [%r653, %b6691]
  %r841 = phi i32 [%r652, %b6693], [%r652, %b6691]
  %r842 = phi i32 [%r714, %b6693], [%r725, %b6691]
  %r838 = phi i32 [%r643, %b6693], [%r643, %b6691]
  %r837 = phi i32 [%r647, %b6693], [%r647, %b6691]
  %r371 = phi i32 [%r370, %b6693], [%r370, %b6691]
  %r849 = add i32 ptrtoint(i8* @console to i32), 1
  %r847 = inttoptr i32 %r849 to i8*
  %r848 = load i8, i8* %r847
  %r844 = zext i8 %r848 to i32
  %r845 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r846 = load i8, i8* %r845
  %r843 = zext i8 %r846 to i32
  call void @func_b6448(i32 %r844, i32 %r840, i32 79, i32 %r841, i32 %r842, i32 %r838, i32 %r843)
  call void @func_b6457(i32 1, i32 %r838, i32 %r839, i32 %r840, i32 %r841, i32 %r842, i32 %r843, i32 %r844)
  call void @func_b6461(i32 1, i32 %r837, i32 19)
  br label %b3031

b3477:
  %r856 = add i32 ptrtoint(i8* @console to i32), 1
  %r854 = inttoptr i32 %r856 to i8*
  %r855 = load i8, i8* %r854
  %r851 = zext i8 %r855 to i32
  %r852 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r853 = load i8, i8* %r852
  %r850 = zext i8 %r853 to i32
  call void @func_b6448(i32 %r851, i32 %r653, i32 79, i32 %r652, i32 %r714, i32 %r643, i32 %r850)
  call void @func_b6457(i32 1, i32 %r643, i32 %r635, i32 %r653, i32 %r652, i32 %r714, i32 %r850, i32 %r851)
  call void @func_b6461(i32 1, i32 %r647, i32 19)
  br label %b3031

b3467:
  %r863 = add i32 ptrtoint(i8* @console to i32), 1
  %r861 = inttoptr i32 %r863 to i8*
  %r862 = load i8, i8* %r861
  %r858 = zext i8 %r862 to i32
  %r859 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r860 = load i8, i8* %r859
  %r857 = zext i8 %r860 to i32
  call void @func_b6448(i32 %r858, i32 %r653, i32 79, i32 %r652, i32 %r725, i32 %r643, i32 %r857)
  call void @func_b6449(i32 1, i32 %r643, i32 0, i32 %r653, i32 %r652, i32 %r725, i32 %r857, i32 %r858)
  call void @func_b6461(i32 1, i32 %r647, i32 19)
  br label %b3031

b2501:
  %r885 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r886 = load i8, i8* %r885
  %r881 = zext i8 %r886 to i32
  %r884 = add i32 ptrtoint(i8* @spinner to i32), %r881
  %r882 = inttoptr i32 %r884 to i8*
  %r883 = load i8, i8* %r882
  %r873 = zext i8 %r883 to i32
  %r880 = add i32 %r881, 1
  %r878 = and i32 %r880, 3
  %r877 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r879 = trunc i32 %r878 to i8
  store i8 %r879, i8* %r877
  %r875 = inttoptr i32 753822 to i16*
  %r876 = load i16, i16* %r875
  %r874 = zext i16 %r876 to i32
  %r872 = and i32 %r874, 65280
  %r870 = or i32 %r872, %r873
  %r869 = inttoptr i32 753822 to i16*
  %r871 = trunc i32 %r870 to i16
  store i16 %r871, i16* %r869
  %r868 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r867 = load i1, i1* %r868
  %r866 = zext i1 %r867 to i32
  %r865 = mul i32 %r866, 72
  %r864 = add i32 ptrtoint(i8* @users to i32), %r865
  tail call void @returnTo(i32 %r864)
  ret void

b3861:
  %r887 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 false, i1* %r887
  call void @func_b3181(i32 %r274, i32 1)
  br label %b3031

b6612:
  %r890 = phi i32 [1, %b3834], [%r889, %b6612]
  %r893 = phi i32 [%r272, %b3834], [%r893, %b6612]
  %r892 = mul i32 %r890, 24
  %r891 = add i32 ptrtoint(i8* @objects to i32), %r892
  call void @func_b2660(i32 %r891)
  %r889 = add i32 %r890, 1
  %r888 = icmp ule i32 %r889, 19
  br i1 %r888, label %b6612, label %b3835

b3893:
  %r894 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 false, i1* %r894
  call void @func_b3201(i32 %r283, i32 1)
  br label %b3031

b6581:
  %r897 = phi i32 [1, %b3866], [%r896, %b6581]
  %r900 = phi i32 [%r281, %b3866], [%r900, %b6581]
  %r899 = mul i32 %r897, 24
  %r898 = add i32 ptrtoint(i8* @objects to i32), %r899
  call void @func_b2660(i32 %r898)
  %r896 = add i32 %r897, 1
  %r895 = icmp ule i32 %r896, 19
  br i1 %r895, label %b6581, label %b3867

b3925:
  %r901 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r901
  call void @func_b3220(i32 %r291, i32 1)
  br label %b3031

b6550:
  %r904 = phi i32 [1, %b3898], [%r903, %b6550]
  %r907 = phi i32 [%r289, %b3898], [%r907, %b6550]
  %r906 = mul i32 %r904, 24
  %r905 = add i32 ptrtoint(i8* @objects to i32), %r906
  call void @func_b2660(i32 %r905)
  %r903 = add i32 %r904, 1
  %r902 = icmp ule i32 %r903, 19
  br i1 %r902, label %b6550, label %b3899

b3957:
  %r908 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r908
  call void @func_b3239(i32 %r299, i32 1)
  br label %b3031

b6519:
  %r911 = phi i32 [1, %b3930], [%r910, %b6519]
  %r914 = phi i32 [%r297, %b3930], [%r914, %b6519]
  %r913 = mul i32 %r911, 24
  %r912 = add i32 ptrtoint(i8* @objects to i32), %r913
  call void @func_b2660(i32 %r912)
  %r910 = add i32 %r911, 1
  %r909 = icmp ule i32 %r910, 19
  br i1 %r909, label %b6519, label %b3931

b3835:
  call void @func_b2162()
  br label %b6605

b3867:
  call void @func_b2162()
  br label %b6574

b3899:
  call void @func_b2162()
  br label %b6543

b3931:
  call void @func_b2162()
  br label %b6512

b6605:
  %r484 = phi i32 [1, %b3835], [%r921, %b6603]
  %r489 = phi i32 [%r893, %b3835], [%r369, %b6603]
  %r920 = mul i32 %r484, 24
  %r494 = add i32 ptrtoint(i8* @objects to i32), %r920
  %r919 = add i32 %r494, 20
  %r918 = inttoptr i32 %r919 to i32*
  %r917 = load i32, i32* %r918
  %r916 = and i32 %r917, 16
  %r915 = icmp ne i32 %r916, 0
  br i1 %r915, label %b3838, label %b6603

b6574:
  %r483 = phi i32 [1, %b3867], [%r928, %b6572]
  %r488 = phi i32 [%r900, %b3867], [%r368, %b6572]
  %r927 = mul i32 %r483, 24
  %r493 = add i32 ptrtoint(i8* @objects to i32), %r927
  %r926 = add i32 %r493, 20
  %r925 = inttoptr i32 %r926 to i32*
  %r924 = load i32, i32* %r925
  %r923 = and i32 %r924, 16
  %r922 = icmp ne i32 %r923, 0
  br i1 %r922, label %b3870, label %b6572

b6543:
  %r482 = phi i32 [1, %b3899], [%r935, %b6541]
  %r487 = phi i32 [%r907, %b3899], [%r367, %b6541]
  %r934 = mul i32 %r482, 24
  %r492 = add i32 ptrtoint(i8* @objects to i32), %r934
  %r933 = add i32 %r492, 20
  %r932 = inttoptr i32 %r933 to i32*
  %r931 = load i32, i32* %r932
  %r930 = and i32 %r931, 16
  %r929 = icmp ne i32 %r930, 0
  br i1 %r929, label %b3902, label %b6541

b6512:
  %r481 = phi i32 [1, %b3931], [%r942, %b6510]
  %r486 = phi i32 [%r914, %b3931], [%r366, %b6510]
  %r941 = mul i32 %r481, 24
  %r491 = add i32 ptrtoint(i8* @objects to i32), %r941
  %r940 = add i32 %r491, 20
  %r939 = inttoptr i32 %r940 to i32*
  %r938 = load i32, i32* %r939
  %r937 = and i32 %r938, 16
  %r936 = icmp ne i32 %r937, 0
  br i1 %r936, label %b3934, label %b6510

b3838:
  %r953 = add i32 %r494, 8
  %r952 = inttoptr i32 %r953 to i32*
  %r503 = load i32, i32* %r952
  %r951 = add i32 ptrtoint(i8* @console to i32), 1
  %r949 = inttoptr i32 %r951 to i8*
  %r950 = load i8, i8* %r949
  %r945 = zext i8 %r950 to i32
  %r948 = add i32 ptrtoint(i8* @console to i32), 3
  %r946 = inttoptr i32 %r948 to i8*
  %r947 = load i8, i8* %r946
  %r944 = zext i8 %r947 to i32
  %r499 = sub i32 %r944, %r945
  %r943 = icmp ule i32 %r499, 79
  br i1 %r943, label %b6138, label %b3839

b6603:
  %r957 = phi i32 [1, %b6605], [1, %b3839]
  %r956 = phi i32 [%r484, %b6605], [%r484, %b3839]
  %r955 = phi i32 [19, %b6605], [19, %b3839]
  %r369 = phi i32 [%r489, %b6605], [%r489, %b3839]
  %r921 = add i32 %r956, %r957
  %r954 = icmp ule i32 %r921, %r955
  br i1 %r954, label %b6605, label %b3031

b3870:
  %r968 = add i32 %r493, 8
  %r967 = inttoptr i32 %r968 to i32*
  %r502 = load i32, i32* %r967
  %r966 = add i32 ptrtoint(i8* @console to i32), 1
  %r964 = inttoptr i32 %r966 to i8*
  %r965 = load i8, i8* %r964
  %r960 = zext i8 %r965 to i32
  %r963 = add i32 ptrtoint(i8* @console to i32), 3
  %r961 = inttoptr i32 %r963 to i8*
  %r962 = load i8, i8* %r961
  %r959 = zext i8 %r962 to i32
  %r498 = sub i32 %r959, %r960
  %r958 = icmp ule i32 %r498, 79
  br i1 %r958, label %b6138, label %b3871

b6572:
  %r972 = phi i32 [1, %b6574], [1, %b3871]
  %r971 = phi i32 [%r483, %b6574], [%r483, %b3871]
  %r970 = phi i32 [19, %b6574], [19, %b3871]
  %r368 = phi i32 [%r488, %b6574], [%r488, %b3871]
  %r928 = add i32 %r971, %r972
  %r969 = icmp ule i32 %r928, %r970
  br i1 %r969, label %b6574, label %b3031

b3902:
  %r983 = add i32 %r492, 8
  %r982 = inttoptr i32 %r983 to i32*
  %r501 = load i32, i32* %r982
  %r981 = add i32 ptrtoint(i8* @console to i32), 1
  %r979 = inttoptr i32 %r981 to i8*
  %r980 = load i8, i8* %r979
  %r975 = zext i8 %r980 to i32
  %r978 = add i32 ptrtoint(i8* @console to i32), 3
  %r976 = inttoptr i32 %r978 to i8*
  %r977 = load i8, i8* %r976
  %r974 = zext i8 %r977 to i32
  %r497 = sub i32 %r974, %r975
  %r973 = icmp ule i32 %r497, 79
  br i1 %r973, label %b6138, label %b3903

b6541:
  %r987 = phi i32 [1, %b6543], [1, %b3903]
  %r986 = phi i32 [%r482, %b6543], [%r482, %b3903]
  %r985 = phi i32 [19, %b6543], [19, %b3903]
  %r367 = phi i32 [%r487, %b6543], [%r487, %b3903]
  %r935 = add i32 %r986, %r987
  %r984 = icmp ule i32 %r935, %r985
  br i1 %r984, label %b6543, label %b3031

b3934:
  %r998 = add i32 %r491, 8
  %r997 = inttoptr i32 %r998 to i32*
  %r500 = load i32, i32* %r997
  %r996 = add i32 ptrtoint(i8* @console to i32), 1
  %r994 = inttoptr i32 %r996 to i8*
  %r995 = load i8, i8* %r994
  %r990 = zext i8 %r995 to i32
  %r993 = add i32 ptrtoint(i8* @console to i32), 3
  %r991 = inttoptr i32 %r993 to i8*
  %r992 = load i8, i8* %r991
  %r989 = zext i8 %r992 to i32
  %r496 = sub i32 %r989, %r990
  %r988 = icmp ule i32 %r496, 79
  br i1 %r988, label %b6138, label %b3935

b6510:
  %r1002 = phi i32 [1, %b6512], [1, %b3935]
  %r1001 = phi i32 [%r481, %b6512], [%r481, %b3935]
  %r1000 = phi i32 [19, %b6512], [19, %b3935]
  %r366 = phi i32 [%r486, %b6512], [%r486, %b3935]
  %r942 = add i32 %r1001, %r1002
  %r999 = icmp ule i32 %r942, %r1000
  br i1 %r999, label %b6512, label %b3031

b3839:
  %r651 = call i32 @func_b5082()
  %r1003 = icmp ule i32 %r503, %r651
  br i1 %r1003, label %b6467, label %b6603

b3871:
  %r650 = call i32 @func_b5082()
  %r1004 = icmp ule i32 %r502, %r650
  br i1 %r1004, label %b6467, label %b6572

b3903:
  %r649 = call i32 @func_b5082()
  %r1005 = icmp ule i32 %r501, %r649
  br i1 %r1005, label %b6467, label %b6541

b3935:
  %r648 = call i32 @func_b5082()
  %r1006 = icmp ule i32 %r500, %r648
  br i1 %r1006, label %b6467, label %b6510
}

define internal void @func_b1959(i32 %r0) {
  br label %b1959

b1959:
  %r3 = call i32 @inb(i32 1021)
  %r2 = and i32 %r3, 96
  call void @func_b1572(i32 %r2, i32 0, i32 %r0)
  %r1 = icmp eq i32 %r0, 10
  br i1 %r1, label %b1947, label %c464

b1947:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1572(i32 %r9, i32 0, i32 13)
  %r8 = add i32 ptrtoint(i8* @console to i32), 4
  %r6 = inttoptr i32 %r8 to i8*
  %r7 = load i8, i8* %r6
  %r5 = zext i8 %r7 to i32
  %r4 = icmp eq i32 %r0, 13
  br i1 %r4, label %b1952, label %b1955

c464:
  tail call void @func_b1950(i32 %r0)
  ret void

b1952:
  %r14 = phi i32 [%r5, %b1947], [%r5, %b1955], [%r5, %b1957]
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
  br i1 %r11, label %b6366, label %b1954

b1955:
  %r25 = icmp eq i32 %r0, 10
  br i1 %r25, label %b1952, label %b1957

b6366:
  %r28 = add i32 ptrtoint(i8* @console to i32), 4
  %r26 = inttoptr i32 %r28 to i8*
  %r27 = trunc i32 %r12 to i8
  store i8 %r27, i8* %r26
  ret void

b1954:
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
  br i1 %r29, label %b6357, label %b1578

b1957:
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
  br i1 %r50, label %b6370, label %b1952

b6357:
  %r76 = phi i32 [%r30, %b1954], [%r74, %b6357]
  %r79 = phi i32 [%r32, %b1954], [%r76, %b6357]
  %r75 = phi i32 [%r31, %b1954], [%r75, %b6357]
  %r78 = phi i32 [%r37, %b1954], [%r78, %b6357]
  %r77 = phi i32 [%r44, %b1954], [%r77, %b6357]
  %r80 = phi i32 [%r33, %b1954], [%r80, %b6357]
  call void @func_b1580(i32 %r77, i32 %r78, i32 %r79, i32 %r76)
  %r74 = add i32 %r76, 1
  %r73 = icmp ule i32 %r74, %r75
  br i1 %r73, label %b6357, label %b1578

b1578:
  %r84 = phi i32 [%r44, %b1954], [%r77, %b6357], [%r82, %b1578]
  %r83 = phi i32 [%r37, %b1954], [%r78, %b6357], [%r83, %b1578]
  %r90 = phi i32 [%r33, %b1954], [%r80, %b6357], [%r90, %b1578]
  %r94 = phi i32 [%r31, %b1954], [%r75, %b6357], [%r94, %b1578]
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
  br i1 %r81, label %b1578, label %b303

b6370:
  %r97 = add i32 ptrtoint(i8* @console to i32), 5
  %r95 = inttoptr i32 %r97 to i8*
  %r96 = trunc i32 %r51 to i8
  store i8 %r96, i8* %r95
  ret void

b303:
  ret void
}

define internal void @func_b6379(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b6379

b6379:
  %r8 = phi i32 [%r0, %0], [1, %b6381]
  %r7 = phi i32 [%r1, %0], [%r5, %b6381]
  %r6 = phi i32 [%r2, %0], [0, %b6381]
  %r9 = phi i32 [%r3, %0], [%r9, %b6381]
  %r5 = add i32 %r7, %r8
  %r4 = icmp ule i32 %r5, %r6
  br i1 %r4, label %b6381, label %b303

b6381:
  call void @func_b1959(i32 %r9)
  br label %b6379

b303:
  ret void
}

define internal void @func_b6395(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b6395

b6395:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b6397, label %b6386

b6397:
  %r8 = lshr i32 %r3, 4
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b6386, label %b3128

b6386:
  %r12 = phi i32 [1, %b6395], [1, %b6397]
  %r11 = phi i32 [0, %b6395], [0, %b6397]
  %r13 = phi i32 [%r4, %b6395], [%r4, %b6397]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b6388, label %b3390

b3128:
  %r22 = phi i32 [%r8, %b6397], [%r24, %b6392]
  %r16 = phi i32 [%r6, %b6397], [%r15, %b6392]
  %r23 = phi i32 [%r4, %b6397], [%r23, %b6392]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = and i32 %r22, 15
  %r18 = call i32 @func_b1608(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b6392, label %b3129

b6388:
  call void @func_b1959(i32 %r13)
  call void @func_b6379(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1959(i32 %r25)
  ret void

b3390:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1959(i32 %r28)
  ret void

b6392:
  %r24 = lshr i32 %r22, 4
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b3129, label %b3128

b3129:
  %r33 = phi i32 [%r23, %b3128], [%r23, %b6392]
  %r32 = phi i32 [%r16, %b3128], [%r16, %b6392]
  call void @func_b6379(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b3126

b3126:
  %r36 = phi i32 [%r32, %b3129], [%r35, %b3126]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1959(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b3126, label %b303

b303:
  ret void
}

define internal void @func_b5034(i32 %r0, i32 %r1) {
  br label %b5034

b5034:
  %r3 = phi i32 [%r0, %0], [%r8, %b5027]
  %r7 = phi i32 [%r1, %0], [%r6, %b5027]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1572(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b5996, label %b5997

b5996:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1572(i32 %r9, i32 0, i32 13)
  call void @func_b1950(i32 %r3)
  br label %b5025

b5997:
  call void @func_b1950(i32 %r3)
  br label %b5025

b5025:
  %r14 = phi i32 [%r7, %b5996], [%r7, %b5997]
  %r12 = inttoptr i32 %r14 to i8*
  %r13 = load i8, i8* %r12
  %r8 = zext i8 %r13 to i32
  %r11 = icmp eq i32 %r8, 0
  br i1 %r11, label %b303, label %b5027

b303:
  ret void

b5027:
  %r6 = add i32 %r14, 1
  br label %b5034
}

define void @unhandled(i32 %r0, i32 %r1) {
  br label %unhandled

unhandled:
  %r4 = inttoptr i32 ptrtoint(i8* @str55 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1810, label %b5063

b1810:
  %r10 = phi i32 [%r0, %unhandled], [%r17, %b5051]
  %r16 = phi i32 [%r1, %unhandled], [%r15, %b5051]
  %r14 = and i32 %r10, 15
  %r12 = call i32 @func_b1608(i32 %r14, i32 9)
  %r11 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r13 = trunc i32 %r12 to i8
  store i8 %r13, i8* %r11
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r10, i32 32)
  %r8 = inttoptr i32 ptrtoint(i8* @str56 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1806, label %b5050

b5063:
  %r18 = add i32 ptrtoint(i8* @str55 to i32), 1
  br label %b5055

b1806:
  %r23 = phi i32 [%r16, %b1810], [%r28, %b5038]
  %r27 = and i32 %r23, 15
  %r25 = call i32 @func_b1608(i32 %r27, i32 9)
  %r24 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r26 = trunc i32 %r25 to i8
  store i8 %r26, i8* %r24
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r23, i32 32)
  %r21 = inttoptr i32 ptrtoint(i8* @str57 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b303, label %b5037

b5050:
  %r29 = add i32 ptrtoint(i8* @str56 to i32), 1
  br label %b5042

b5055:
  %r31 = phi i32 [%r3, %b5063], [%r38, %b5053]
  %r37 = phi i32 [%r18, %b5063], [%r36, %b5053]
  %r35 = phi i32 [%r0, %b5063], [%r17, %b5053]
  %r34 = phi i32 [%r1, %b5063], [%r15, %b5053]
  %r33 = call i32 @inb(i32 1021)
  %r32 = and i32 %r33, 96
  call void @func_b1572(i32 %r32, i32 0, i32 %r31)
  %r30 = icmp eq i32 %r31, 10
  br i1 %r30, label %b5058, label %b5060

b303:
  ret void

b5037:
  %r39 = add i32 ptrtoint(i8* @str57 to i32), 1
  br label %c508

b5042:
  %r41 = phi i32 [%r7, %b5050], [%r47, %b5040]
  %r46 = phi i32 [%r29, %b5050], [%r45, %b5040]
  %r44 = phi i32 [%r16, %b5050], [%r28, %b5040]
  %r43 = call i32 @inb(i32 1021)
  %r42 = and i32 %r43, 96
  call void @func_b1572(i32 %r42, i32 0, i32 %r41)
  %r40 = icmp eq i32 %r41, 10
  br i1 %r40, label %b5045, label %b5047

b5058:
  %r49 = call i32 @inb(i32 1021)
  %r48 = and i32 %r49, 96
  call void @func_b1572(i32 %r48, i32 0, i32 13)
  call void @func_b1950(i32 %r31)
  br label %b5051

b5060:
  call void @func_b1950(i32 %r31)
  br label %b5051

c508:
  tail call void @func_b5034(i32 %r20, i32 %r39)
  ret void

b5045:
  %r51 = call i32 @inb(i32 1021)
  %r50 = and i32 %r51, 96
  call void @func_b1572(i32 %r50, i32 0, i32 13)
  call void @func_b1950(i32 %r41)
  br label %b5038

b5047:
  call void @func_b1950(i32 %r41)
  br label %b5038

b5051:
  %r55 = phi i32 [%r37, %b5058], [%r37, %b5060]
  %r15 = phi i32 [%r34, %b5058], [%r34, %b5060]
  %r17 = phi i32 [%r35, %b5058], [%r35, %b5060]
  %r53 = inttoptr i32 %r55 to i8*
  %r54 = load i8, i8* %r53
  %r38 = zext i8 %r54 to i32
  %r52 = icmp eq i32 %r38, 0
  br i1 %r52, label %b1810, label %b5053

b5038:
  %r59 = phi i32 [%r46, %b5045], [%r46, %b5047]
  %r28 = phi i32 [%r44, %b5045], [%r44, %b5047]
  %r57 = inttoptr i32 %r59 to i8*
  %r58 = load i8, i8* %r57
  %r47 = zext i8 %r58 to i32
  %r56 = icmp eq i32 %r47, 0
  br i1 %r56, label %b1806, label %b5040

b5053:
  %r36 = add i32 %r55, 1
  br label %b5055

b5040:
  %r45 = add i32 %r59, 1
  br label %b5042
}

define internal void @func_b4335(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5, i32 %r6, i32 %r7, i32 %r8, i32 %r9, i32 %r10, i32 %r11, i32 %r12) {
  br label %b4335

b4335:
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

define internal void @func_b4523(i32 %r0, i32 %r1) {
  br label %b4523

b4523:
  %r6 = phi i32 [%r0, %0], [%r5, %b4995]
  %r3 = phi i32 [%r1, %0], [%r4, %b4995]
  %r2 = icmp ult i32 %r3, 20
  br i1 %r2, label %b5920, label %b4027

b5920:
  %r7 = icmp eq i32 %r3, 0
  br i1 %r7, label %b6182, label %b6183

b4027:
  ret void

b6182:
  call void @func_b4335(i32 8, i32 0, i32 1, i32 4, i32 18, i32 8, i32 21, i32 12, i32 48, i32 16, i32 22, i32 20, i32 %r6)
  br label %b4995

b6183:
  %r8 = icmp eq i32 %r3, 1
  br i1 %r8, label %b6659, label %b6660

b4995:
  %r10 = phi i32 [%r3, %b6182], [%r3, %b6659], [%r14, %b6696], [%r13, %b6721]
  %r9 = phi i32 [%r6, %b6182], [%r6, %b6659], [%r12, %b6696], [%r11, %b6721]
  %r4 = add i32 %r10, 1
  %r5 = add i32 %r9, 24
  br label %b4523

b6659:
  call void @func_b4335(i32 1, i32 0, i32 1, i32 4, i32 18, i32 8, i32 20, i32 12, i32 224, i32 16, i32 26, i32 20, i32 %r6)
  br label %b4995

b6660:
  %r15 = icmp eq i32 %r3, 2
  br i1 %r15, label %b6696, label %b6697

b6696:
  %r36 = phi i32 [1, %b6660], [1, %b6697], [44, %b6711]
  %r38 = phi i32 [0, %b6660], [0, %b6697], [0, %b6711]
  %r32 = phi i32 [25, %b6660], [25, %b6697], [1, %b6711]
  %r34 = phi i32 [4, %b6660], [4, %b6697], [4, %b6711]
  %r28 = phi i32 [0, %b6660], [44, %b6697], [0, %b6711]
  %r30 = phi i32 [8, %b6660], [8, %b6697], [8, %b6711]
  %r24 = phi i32 [0, %b6660], [0, %b6697], [0, %b6711]
  %r26 = phi i32 [12, %b6660], [12, %b6697], [12, %b6711]
  %r20 = phi i32 [112, %b6660], [112, %b6697], [112, %b6711]
  %r22 = phi i32 [16, %b6660], [16, %b6697], [16, %b6711]
  %r18 = phi i32 [20, %b6660], [20, %b6697], [20, %b6711]
  %r12 = phi i32 [%r6, %b6660], [%r6, %b6697], [%r6, %b6711]
  %r14 = phi i32 [%r3, %b6660], [%r3, %b6697], [%r3, %b6711]
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
  br label %b4995

b6697:
  %r39 = icmp eq i32 %r3, 3
  br i1 %r39, label %b6696, label %b6711

b6711:
  %r40 = icmp eq i32 %r3, 4
  br i1 %r40, label %b6696, label %b6717

b6717:
  %r43 = add i32 %r3, -5
  %r46 = sdiv i32 %r43, 5
  %r49 = urem i32 %r43, 5
  %r48 = shl i32 %r49, 3
  %r47 = add i32 %r48, 3
  %r45 = mul i32 %r46, 3
  %r44 = add i32 %r45, 2
  %r42 = and i32 %r43, 1
  %r41 = icmp eq i32 %r42, 1
  br i1 %r41, label %b6721, label %b6722

b6721:
  %r52 = phi i32 [80, %b6717], [192, %b6722], [208, %g532]
  %r51 = phi i32 [%r44, %b6717], [%r44, %b6722], [%r44, %g532]
  %r50 = phi i32 [%r47, %b6717], [%r47, %b6722], [%r47, %g532]
  %r11 = phi i32 [%r6, %b6717], [%r6, %b6722], [%r6, %g532]
  %r13 = phi i32 [%r3, %b6717], [%r3, %b6722], [%r3, %g532]
  call void @func_b4335(i32 6, i32 0, i32 1, i32 4, i32 %r50, i32 8, i32 %r51, i32 12, i32 %r52, i32 16, i32 19, i32 20, i32 %r11)
  br label %b4995

b6722:
  %r54 = and i32 %r43, 2
  %r53 = icmp eq i32 %r54, 2
  br i1 %r53, label %b6721, label %g532

g532:
  br label %b6721
}

define internal void @func_b4530(i32 %r0, i32 %r1) {
  br label %b4530

b4530:
  %r6 = phi i32 [%r0, %0], [%r5, %b4531]
  %r3 = phi i32 [%r1, %0], [%r4, %b4531]
  %r2 = icmp ult i32 %r3, 32
  br i1 %r2, label %b4531, label %b4027

b4531:
  %r7 = inttoptr i32 %r6 to i8*
  %r8 = trunc i32 0 to i8
  store i8 %r8, i8* %r7
  %r4 = add i32 %r3, 1
  %r5 = add i32 %r6, 1
  br label %b4530

b4027:
  ret void
}

define internal void @func_b6669(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b6669

b6669:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b6671, label %b6386

b6671:
  %r8 = udiv i32 %r3, 10
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b6386, label %b3339

b6386:
  %r12 = phi i32 [1, %b6669], [1, %b6671]
  %r11 = phi i32 [0, %b6669], [0, %b6671]
  %r13 = phi i32 [%r4, %b6669], [%r4, %b6671]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b6388, label %b3390

b3339:
  %r22 = phi i32 [%r8, %b6671], [%r24, %b6663]
  %r16 = phi i32 [%r6, %b6671], [%r15, %b6663]
  %r23 = phi i32 [%r4, %b6671], [%r23, %b6663]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = urem i32 %r22, 10
  %r18 = call i32 @func_b1608(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b6663, label %b3129

b6388:
  call void @func_b1959(i32 %r13)
  call void @func_b6379(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1959(i32 %r25)
  ret void

b3390:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1959(i32 %r28)
  ret void

b6663:
  %r24 = udiv i32 %r22, 10
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b3129, label %b3339

b3129:
  %r33 = phi i32 [%r23, %b3339], [%r23, %b6663]
  %r32 = phi i32 [%r16, %b3339], [%r16, %b6663]
  call void @func_b6379(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b3126

b3126:
  %r36 = phi i32 [%r32, %b3129], [%r35, %b3126]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1959(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b3126, label %b303

b303:
  ret void
}

define internal void @func_b5136(i32 %r0) {
  br label %b5136

b5136:
  %r3 = inttoptr i32 ptrtoint(i8* @str5 to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b1884, label %b5138

b1884:
  %r15 = phi i32 [%r0, %b5136], [%r16, %b5116]
  %r14 = inttoptr i32 %r15 to i32*
  %r9 = load i32, i32* %r14
  %r13 = and i32 %r9, 15
  %r11 = call i32 @func_b1608(i32 %r13, i32 9)
  %r10 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r12 = trunc i32 %r11 to i8
  store i8 %r12, i8* %r10
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r9, i32 32)
  %r7 = inttoptr i32 ptrtoint(i8* @str6 to i32) to i8*
  %r8 = load i8, i8* %r7
  %r6 = zext i8 %r8 to i32
  %r5 = icmp eq i32 %r6, 0
  br i1 %r5, label %b1882, label %b5115

b5138:
  %r17 = add i32 ptrtoint(i8* @str5 to i32), 1
  br label %b5120

b1882:
  %r29 = phi i32 [%r15, %b1884], [%r30, %b5103]
  %r28 = add i32 %r29, 4
  %r27 = inttoptr i32 %r28 to i32*
  %r22 = load i32, i32* %r27
  %r26 = and i32 %r22, 15
  %r24 = call i32 @func_b1608(i32 %r26, i32 9)
  %r23 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r25 = trunc i32 %r24 to i8
  store i8 %r25, i8* %r23
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r22, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str7 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1880, label %b5102

b5115:
  %r31 = add i32 ptrtoint(i8* @str6 to i32), 1
  br label %b5107

b5120:
  %r33 = phi i32 [%r2, %b5138], [%r39, %b5118]
  %r38 = phi i32 [%r17, %b5138], [%r37, %b5118]
  %r36 = phi i32 [%r0, %b5138], [%r16, %b5118]
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1572(i32 %r34, i32 0, i32 %r33)
  %r32 = icmp eq i32 %r33, 10
  br i1 %r32, label %b5123, label %b5125

b1880:
  %r49 = phi i32 [%r29, %b1882], [%r50, %b5090]
  %r48 = add i32 %r49, 8
  %r47 = inttoptr i32 %r48 to i32*
  %r42 = load i32, i32* %r47
  %r46 = and i32 %r42, 15
  %r44 = call i32 @func_b1608(i32 %r46, i32 9)
  %r43 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r45 = trunc i32 %r44 to i8
  store i8 %r45, i8* %r43
  %r41 = lshr i32 %r42, 4
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b6386, label %b3128

b5102:
  %r51 = add i32 ptrtoint(i8* @str7 to i32), 1
  br label %b5094

b5107:
  %r53 = phi i32 [%r6, %b5115], [%r59, %b5105]
  %r58 = phi i32 [%r31, %b5115], [%r57, %b5105]
  %r56 = phi i32 [%r15, %b5115], [%r30, %b5105]
  %r55 = call i32 @inb(i32 1021)
  %r54 = and i32 %r55, 96
  call void @func_b1572(i32 %r54, i32 0, i32 %r53)
  %r52 = icmp eq i32 %r53, 10
  br i1 %r52, label %b5110, label %b5112

b5123:
  %r61 = call i32 @inb(i32 1021)
  %r60 = and i32 %r61, 96
  call void @func_b1572(i32 %r60, i32 0, i32 13)
  call void @func_b1950(i32 %r33)
  br label %b5116

b5125:
  call void @func_b1950(i32 %r33)
  br label %b5116

b6386:
  %r63 = add i32 0, 1
  %r62 = icmp ule i32 %r63, 0
  br i1 %r62, label %b6388, label %b3390

b3128:
  %r72 = phi i32 [%r41, %b1880], [%r74, %b6392]
  %r66 = phi i32 [1, %b1880], [%r65, %b6392]
  %r73 = phi i32 [32, %b1880], [%r73, %b6392]
  %r70 = add i32 ptrtoint(i8* @itoaBuf to i32), %r66
  %r71 = and i32 %r72, 15
  %r68 = call i32 @func_b1608(i32 %r71, i32 9)
  %r67 = inttoptr i32 %r70 to i8*
  %r69 = trunc i32 %r68 to i8
  store i8 %r69, i8* %r67
  %r65 = add i32 %r66, 1
  %r64 = icmp ule i32 %r65, 31
  br i1 %r64, label %b6392, label %b3129

b5094:
  %r76 = phi i32 [%r19, %b5102], [%r82, %b5092]
  %r81 = phi i32 [%r51, %b5102], [%r80, %b5092]
  %r79 = phi i32 [%r29, %b5102], [%r50, %b5092]
  %r78 = call i32 @inb(i32 1021)
  %r77 = and i32 %r78, 96
  call void @func_b1572(i32 %r77, i32 0, i32 %r76)
  %r75 = icmp eq i32 %r76, 10
  br i1 %r75, label %b5097, label %b5099

b5110:
  %r84 = call i32 @inb(i32 1021)
  %r83 = and i32 %r84, 96
  call void @func_b1572(i32 %r83, i32 0, i32 13)
  call void @func_b1950(i32 %r53)
  br label %b5103

b5112:
  call void @func_b1950(i32 %r53)
  br label %b5103

b5116:
  %r88 = phi i32 [%r38, %b5123], [%r38, %b5125]
  %r16 = phi i32 [%r36, %b5123], [%r36, %b5125]
  %r86 = inttoptr i32 %r88 to i8*
  %r87 = load i8, i8* %r86
  %r39 = zext i8 %r87 to i32
  %r85 = icmp eq i32 %r39, 0
  br i1 %r85, label %b1884, label %b5118

b6388:
  call void @func_b1959(i32 32)
  call void @func_b6379(i32 1, i32 %r63, i32 0, i32 32)
  %r90 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r91 = load i8, i8* %r90
  %r89 = zext i8 %r91 to i32
  call void @func_b1959(i32 %r89)
  ret void

b3390:
  %r93 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r94 = load i8, i8* %r93
  %r92 = zext i8 %r94 to i32
  call void @func_b1959(i32 %r92)
  ret void

b6392:
  %r74 = lshr i32 %r72, 4
  %r95 = icmp eq i32 %r74, 0
  br i1 %r95, label %b3129, label %b3128

b3129:
  %r97 = phi i32 [%r73, %b3128], [%r73, %b6392]
  %r96 = phi i32 [%r66, %b3128], [%r66, %b6392]
  call void @func_b6379(i32 1, i32 %r96, i32 0, i32 %r97)
  br label %b3126

b5097:
  %r99 = call i32 @inb(i32 1021)
  %r98 = and i32 %r99, 96
  call void @func_b1572(i32 %r98, i32 0, i32 13)
  call void @func_b1950(i32 %r76)
  br label %b5090

b5099:
  call void @func_b1950(i32 %r76)
  br label %b5090

b5103:
  %r103 = phi i32 [%r58, %b5110], [%r58, %b5112]
  %r30 = phi i32 [%r56, %b5110], [%r56, %b5112]
  %r101 = inttoptr i32 %r103 to i8*
  %r102 = load i8, i8* %r101
  %r59 = zext i8 %r102 to i32
  %r100 = icmp eq i32 %r59, 0
  br i1 %r100, label %b1882, label %b5105

b5118:
  %r37 = add i32 %r88, 1
  br label %b5120

b3126:
  %r106 = phi i32 [%r96, %b3129], [%r105, %b3126]
  %r110 = add i32 ptrtoint(i8* @itoaBuf to i32), %r106
  %r108 = inttoptr i32 %r110 to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  call void @func_b1959(i32 %r107)
  %r105 = add i32 %r106, -1
  %r104 = icmp sle i32 0, %r105
  br i1 %r104, label %b3126, label %b303

b5090:
  %r114 = phi i32 [%r81, %b5097], [%r81, %b5099]
  %r50 = phi i32 [%r79, %b5097], [%r79, %b5099]
  %r112 = inttoptr i32 %r114 to i8*
  %r113 = load i8, i8* %r112
  %r82 = zext i8 %r113 to i32
  %r111 = icmp eq i32 %r82, 0
  br i1 %r111, label %b1880, label %b5092

b5105:
  %r57 = add i32 %r103, 1
  br label %b5107

b303:
  ret void

b5092:
  %r80 = add i32 %r114, 1
  br label %b5094
}

define internal i32 @func_b5173(i32 %r0, i32 %r1) {
  br label %b5173

b5173:
  %r4 = inttoptr i32 ptrtoint(i8* @str12 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b5165, label %b5175

b5165:
  %r13 = phi i32 [%r1, %b5173], [%r12, %b5172]
  %r11 = phi i32 [%r0, %b5173], [%r10, %b5172]
  %r8 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b2852, label %b5167

b5175:
  %r14 = add i32 ptrtoint(i8* @str12 to i32), 1
  br label %b5172

b2852:
  %r19 = phi i32 [%r11, %b5165], [%r26, %b5155]
  %r25 = phi i32 [%r13, %b5165], [%r24, %b5155]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1608(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b6669(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b2853, label %b5154

b5167:
  %r27 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b5159

b5172:
  %r33 = phi i32 [%r3, %b5175], [%r29, %b5170]
  %r32 = phi i32 [%r14, %b5175], [%r34, %b5170]
  %r12 = phi i32 [%r1, %b5175], [%r12, %b5170]
  %r10 = phi i32 [%r0, %b5175], [%r10, %b5170]
  call void @func_b1959(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b5165, label %b5170

b2853:
  %r39 = phi i32 [%r25, %b2852], [%r42, %b5142]
  %r41 = phi i32 [%r19, %b2852], [%r40, %b5142]
  call void @func_b5136(i32 %r39)
  %r37 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b1886, label %b5141

b5154:
  %r43 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b5146

b5159:
  %r45 = phi i32 [%r7, %b5167], [%r52, %b5157]
  %r51 = phi i32 [%r27, %b5167], [%r50, %b5157]
  %r49 = phi i32 [%r11, %b5167], [%r26, %b5157]
  %r48 = phi i32 [%r13, %b5167], [%r24, %b5157]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1572(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b5162, label %b5164

b5170:
  %r34 = add i32 %r32, 1
  br label %b5172

b1886:
  %r54 = phi i32 [%r41, %b2853], [%r55, %b5126]
  %r53 = add i32 %r54, 1
  ret i32 %r53

b5141:
  %r56 = add i32 ptrtoint(i8* @str4 to i32), 1
  br label %b5130

b5146:
  %r58 = phi i32 [%r16, %b5154], [%r65, %b5144]
  %r64 = phi i32 [%r43, %b5154], [%r63, %b5144]
  %r62 = phi i32 [%r25, %b5154], [%r42, %b5144]
  %r61 = phi i32 [%r19, %b5154], [%r40, %b5144]
  %r60 = call i32 @inb(i32 1021)
  %r59 = and i32 %r60, 96
  call void @func_b1572(i32 %r59, i32 0, i32 %r58)
  %r57 = icmp eq i32 %r58, 10
  br i1 %r57, label %b5149, label %b5151

b5162:
  %r67 = call i32 @inb(i32 1021)
  %r66 = and i32 %r67, 96
  call void @func_b1572(i32 %r66, i32 0, i32 13)
  call void @func_b1950(i32 %r45)
  br label %b5155

b5164:
  call void @func_b1950(i32 %r45)
  br label %b5155

b5130:
  %r69 = phi i32 [%r36, %b5141], [%r75, %b5128]
  %r74 = phi i32 [%r56, %b5141], [%r73, %b5128]
  %r72 = phi i32 [%r41, %b5141], [%r55, %b5128]
  %r71 = call i32 @inb(i32 1021)
  %r70 = and i32 %r71, 96
  call void @func_b1572(i32 %r70, i32 0, i32 %r69)
  %r68 = icmp eq i32 %r69, 10
  br i1 %r68, label %b5133, label %b5135

b5149:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1572(i32 %r76, i32 0, i32 13)
  call void @func_b1950(i32 %r58)
  br label %b5142

b5151:
  call void @func_b1950(i32 %r58)
  br label %b5142

b5155:
  %r81 = phi i32 [%r51, %b5162], [%r51, %b5164]
  %r24 = phi i32 [%r48, %b5162], [%r48, %b5164]
  %r26 = phi i32 [%r49, %b5162], [%r49, %b5164]
  %r79 = inttoptr i32 %r81 to i8*
  %r80 = load i8, i8* %r79
  %r52 = zext i8 %r80 to i32
  %r78 = icmp eq i32 %r52, 0
  br i1 %r78, label %b2852, label %b5157

b5133:
  %r83 = call i32 @inb(i32 1021)
  %r82 = and i32 %r83, 96
  call void @func_b1572(i32 %r82, i32 0, i32 13)
  call void @func_b1950(i32 %r69)
  br label %b5126

b5135:
  call void @func_b1950(i32 %r69)
  br label %b5126

b5142:
  %r87 = phi i32 [%r64, %b5149], [%r64, %b5151]
  %r40 = phi i32 [%r61, %b5149], [%r61, %b5151]
  %r42 = phi i32 [%r62, %b5149], [%r62, %b5151]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r65 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r65, 0
  br i1 %r84, label %b2853, label %b5144

b5157:
  %r50 = add i32 %r81, 1
  br label %b5159

b5126:
  %r91 = phi i32 [%r74, %b5133], [%r74, %b5135]
  %r55 = phi i32 [%r72, %b5133], [%r72, %b5135]
  %r89 = inttoptr i32 %r91 to i8*
  %r90 = load i8, i8* %r89
  %r75 = zext i8 %r90 to i32
  %r88 = icmp eq i32 %r75, 0
  br i1 %r88, label %b1886, label %b5128

b5144:
  %r63 = add i32 %r87, 1
  br label %b5146

b5128:
  %r73 = add i32 %r91, 1
  br label %b5130
}

define internal i32 @func_b5185(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b5185

b5185:
  %r5 = phi i32 [%r0, %0], [%r14, %b5178]
  %r13 = phi i32 [%r1, %0], [%r12, %b5178]
  %r11 = phi i32 [%r2, %0], [%r10, %b5178]
  %r9 = phi i32 [%r3, %0], [%r8, %b5178]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1572(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b6184, label %b6185

b6184:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1572(i32 %r15, i32 0, i32 13)
  call void @func_b1950(i32 %r5)
  br label %b5176

b6185:
  call void @func_b1950(i32 %r5)
  br label %b5176

b5176:
  %r20 = phi i32 [%r13, %b6184], [%r13, %b6185]
  %r10 = phi i32 [%r11, %b6184], [%r11, %b6185]
  %r8 = phi i32 [%r9, %b6184], [%r9, %b6185]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c611, label %b5178

c611:
  %r21 = tail call i32 @func_b5173(i32 %r10, i32 %r8)
  ret i32 %r21

b5178:
  %r12 = add i32 %r20, 1
  br label %b5185
}

define internal i32 @func_b5191(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b5191

b5191:
  %r5 = phi i32 [%r0, %0], [%r12, %b6188], [%r12, %b6189]
  %r11 = phi i32 [%r1, %0], [%r10, %b6188], [%r10, %b6189]
  %r9 = phi i32 [%r2, %0], [12, %b6188], [12, %b6189]
  %r8 = phi i32 [%r3, %0], [%r7, %b6188], [%r6, %b6189]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b444, label %b5193

b444:
  ret i32 %r8

b5193:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b6188, label %b6189

b6188:
  %r7 = call i32 @func_b5173(i32 %r8, i32 %r11)
  br label %b5191

b6189:
  %r17 = add i32 ptrtoint(i8* @str1 to i32), 1
  %r6 = call i32 @func_b5185(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b5191
}

define internal void @func_b5227(i32 %r0, i32 %r1) {
  br label %b5227

b5227:
  %r6 = phi i32 [%r0, %0], [%r8, %b5234], [%r8, %b5236]
  %r7 = phi i32 [%r1, %0], [%r7, %b5234], [%r7, %b5236]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1894, label %b5229

b1894:
  %r19 = add i32 %r7, 4
  %r18 = inttoptr i32 %r19 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1608(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b303, label %b5226

b5229:
  %r8 = add i32 %r6, 1
  br label %b5231

b303:
  ret void

b5226:
  %r20 = add i32 ptrtoint(i8* @str10 to i32), 1
  br label %c626

b5231:
  %r23 = call i32 @inb(i32 1021)
  %r22 = and i32 %r23, 96
  call void @func_b1572(i32 %r22, i32 0, i32 %r3)
  %r21 = icmp eq i32 %r3, 10
  br i1 %r21, label %b5234, label %b5236

c626:
  tail call void @func_b5034(i32 %r10, i32 %r20)
  ret void

b5234:
  %r25 = call i32 @inb(i32 1021)
  %r24 = and i32 %r25, 96
  call void @func_b1572(i32 %r24, i32 0, i32 13)
  call void @func_b1950(i32 %r3)
  br label %b5227

b5236:
  call void @func_b1950(i32 %r3)
  br label %b5227
}

define internal void @func_b5255(i32 %r0, i32 %r1) {
  br label %b5255

b5255:
  %r6 = phi i32 [%r0, %0], [%r8, %b5262], [%r8, %b5264]
  %r7 = phi i32 [%r1, %0], [%r7, %b5262], [%r7, %b5264]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1896, label %b5257

b1896:
  %r18 = inttoptr i32 %r7 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1608(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1894, label %b5254

b5257:
  %r8 = add i32 %r6, 1
  %r21 = call i32 @inb(i32 1021)
  %r20 = and i32 %r21, 96
  call void @func_b1572(i32 %r20, i32 0, i32 %r3)
  %r19 = icmp eq i32 %r3, 10
  br i1 %r19, label %b5262, label %b5264

b1894:
  %r33 = phi i32 [%r7, %b1896], [%r34, %b5227]
  %r32 = add i32 %r33, 4
  %r31 = inttoptr i32 %r32 to i32*
  %r26 = load i32, i32* %r31
  %r30 = and i32 %r26, 15
  %r28 = call i32 @func_b1608(i32 %r30, i32 9)
  %r27 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r29 = trunc i32 %r28 to i8
  store i8 %r29, i8* %r27
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r26, i32 32)
  %r24 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b303, label %b5226

b5254:
  %r35 = add i32 ptrtoint(i8* @str9 to i32), 1
  br label %b5231

b5262:
  %r37 = call i32 @inb(i32 1021)
  %r36 = and i32 %r37, 96
  call void @func_b1572(i32 %r36, i32 0, i32 13)
  call void @func_b1950(i32 %r3)
  br label %b5255

b5264:
  call void @func_b1950(i32 %r3)
  br label %b5255

b303:
  ret void

b5226:
  %r38 = add i32 ptrtoint(i8* @str10 to i32), 1
  br label %c640

b5231:
  %r40 = phi i32 [%r10, %b5254], [%r46, %b5229]
  %r45 = phi i32 [%r35, %b5254], [%r44, %b5229]
  %r43 = phi i32 [%r7, %b5254], [%r34, %b5229]
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1572(i32 %r41, i32 0, i32 %r40)
  %r39 = icmp eq i32 %r40, 10
  br i1 %r39, label %b5234, label %b5236

c640:
  tail call void @func_b5034(i32 %r23, i32 %r38)
  ret void

b5234:
  %r48 = call i32 @inb(i32 1021)
  %r47 = and i32 %r48, 96
  call void @func_b1572(i32 %r47, i32 0, i32 13)
  call void @func_b1950(i32 %r40)
  br label %b5227

b5236:
  call void @func_b1950(i32 %r40)
  br label %b5227

b5227:
  %r52 = phi i32 [%r45, %b5234], [%r45, %b5236]
  %r34 = phi i32 [%r43, %b5234], [%r43, %b5236]
  %r50 = inttoptr i32 %r52 to i8*
  %r51 = load i8, i8* %r50
  %r46 = zext i8 %r51 to i32
  %r49 = icmp eq i32 %r46, 0
  br i1 %r49, label %b1894, label %b5229

b5229:
  %r44 = add i32 %r52, 1
  br label %b5231
}

define internal i32 @func_b5311(i32 %r0, i32 %r1) {
  br label %b5311

b5311:
  %r4 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b5303, label %b5313

b5303:
  %r13 = phi i32 [%r1, %b5311], [%r12, %b5310]
  %r11 = phi i32 [%r0, %b5311], [%r10, %b5310]
  %r8 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b2916, label %b5305

b5313:
  %r14 = add i32 ptrtoint(i8* @str14 to i32), 1
  br label %b5310

b2916:
  %r19 = phi i32 [%r11, %b5303], [%r26, %b5293]
  %r25 = phi i32 [%r13, %b5303], [%r24, %b5293]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1608(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b6669(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b5271, label %b5292

b5305:
  %r27 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b5297

b5310:
  %r33 = phi i32 [%r3, %b5313], [%r29, %b5308]
  %r32 = phi i32 [%r14, %b5313], [%r34, %b5308]
  %r12 = phi i32 [%r1, %b5313], [%r12, %b5308]
  %r10 = phi i32 [%r0, %b5313], [%r10, %b5308]
  call void @func_b1959(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b5303, label %b5308

b5271:
  %r42 = phi i32 [%r19, %b2916], [%r41, %b5280]
  %r40 = phi i32 [%r25, %b2916], [%r39, %b5280]
  %r37 = inttoptr i32 ptrtoint(i8* @str8 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b3639, label %b5273

b5292:
  %r43 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b5284

b5297:
  %r45 = phi i32 [%r7, %b5305], [%r52, %b5295]
  %r51 = phi i32 [%r27, %b5305], [%r50, %b5295]
  %r49 = phi i32 [%r11, %b5305], [%r26, %b5295]
  %r48 = phi i32 [%r13, %b5305], [%r24, %b5295]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1572(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b5300, label %b5302

b5308:
  %r34 = add i32 %r32, 1
  br label %b5310

b3639:
  %r62 = inttoptr i32 %r40 to i32*
  %r57 = load i32, i32* %r62
  %r61 = and i32 %r57, 15
  %r59 = call i32 @func_b1608(i32 %r61, i32 9)
  %r58 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r60 = trunc i32 %r59 to i8
  store i8 %r60, i8* %r58
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r57, i32 32)
  %r55 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r56 = load i8, i8* %r55
  %r54 = zext i8 %r56 to i32
  %r53 = icmp eq i32 %r54, 0
  br i1 %r53, label %b3640, label %b5245

b5273:
  %r66 = add i32 ptrtoint(i8* @str8 to i32), 1
  %r65 = call i32 @inb(i32 1021)
  %r64 = and i32 %r65, 96
  call void @func_b1572(i32 %r64, i32 0, i32 %r36)
  %r63 = icmp eq i32 %r36, 10
  br i1 %r63, label %b5277, label %b5279

b5284:
  %r68 = phi i32 [%r16, %b5292], [%r75, %b5282]
  %r74 = phi i32 [%r43, %b5292], [%r73, %b5282]
  %r72 = phi i32 [%r25, %b5292], [%r39, %b5282]
  %r71 = phi i32 [%r19, %b5292], [%r41, %b5282]
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1572(i32 %r69, i32 0, i32 %r68)
  %r67 = icmp eq i32 %r68, 10
  br i1 %r67, label %b5287, label %b5289

b5300:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1572(i32 %r76, i32 0, i32 13)
  call void @func_b1950(i32 %r45)
  br label %b5293

b5302:
  call void @func_b1950(i32 %r45)
  br label %b5293

b3640:
  %r88 = add i32 %r40, 4
  %r87 = inttoptr i32 %r88 to i32*
  %r82 = load i32, i32* %r87
  %r86 = and i32 %r82, 15
  %r84 = call i32 @func_b1608(i32 %r86, i32 9)
  %r83 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r85 = trunc i32 %r84 to i8
  store i8 %r85, i8* %r83
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r82, i32 32)
  %r80 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b5213, label %b5221

b5245:
  %r92 = add i32 ptrtoint(i8* @str9 to i32), 1
  %r91 = call i32 @inb(i32 1021)
  %r90 = and i32 %r91, 96
  call void @func_b1572(i32 %r90, i32 0, i32 %r54)
  %r89 = icmp eq i32 %r54, 10
  br i1 %r89, label %b5249, label %b5251

b5277:
  %r98 = call i32 @inb(i32 1021)
  %r97 = and i32 %r98, 96
  call void @func_b1572(i32 %r97, i32 0, i32 13)
  call void @func_b1950(i32 %r36)
  call void @func_b5255(i32 %r66, i32 %r40)
  %r95 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b1886, label %b5267

b5279:
  call void @func_b1950(i32 %r36)
  call void @func_b5255(i32 %r66, i32 %r40)
  %r101 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r102 = load i8, i8* %r101
  %r100 = zext i8 %r102 to i32
  %r99 = icmp eq i32 %r100, 0
  br i1 %r99, label %b1886, label %b5267

b5287:
  %r104 = call i32 @inb(i32 1021)
  %r103 = and i32 %r104, 96
  call void @func_b1572(i32 %r103, i32 0, i32 13)
  call void @func_b1950(i32 %r68)
  br label %b5280

b5289:
  call void @func_b1950(i32 %r68)
  br label %b5280

b5293:
  %r108 = phi i32 [%r51, %b5300], [%r51, %b5302]
  %r24 = phi i32 [%r48, %b5300], [%r48, %b5302]
  %r26 = phi i32 [%r49, %b5300], [%r49, %b5302]
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r52 = zext i8 %r107 to i32
  %r105 = icmp eq i32 %r52, 0
  br i1 %r105, label %b2916, label %b5295

b5213:
  %r111 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r112 = load i8, i8* %r111
  %r110 = zext i8 %r112 to i32
  %r109 = icmp eq i32 %r110, 0
  br i1 %r109, label %b1886, label %b5267

b5221:
  %r117 = add i32 ptrtoint(i8* @str10 to i32), 1
  call void @func_b5034(i32 %r79, i32 %r117)
  %r115 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r116 = load i8, i8* %r115
  %r114 = zext i8 %r116 to i32
  %r113 = icmp eq i32 %r114, 0
  br i1 %r113, label %b1886, label %b5267

b5249:
  %r123 = call i32 @inb(i32 1021)
  %r122 = and i32 %r123, 96
  call void @func_b1572(i32 %r122, i32 0, i32 13)
  call void @func_b1950(i32 %r54)
  call void @func_b5227(i32 %r92, i32 %r40)
  %r120 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r119 = zext i8 %r121 to i32
  %r118 = icmp eq i32 %r119, 0
  br i1 %r118, label %b1886, label %b5267

b5251:
  call void @func_b1950(i32 %r54)
  call void @func_b5227(i32 %r92, i32 %r40)
  %r126 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r127 = load i8, i8* %r126
  %r125 = zext i8 %r127 to i32
  %r124 = icmp eq i32 %r125, 0
  br i1 %r124, label %b1886, label %b5267

b1886:
  %r129 = phi i32 [%r42, %b5277], [%r42, %b5279], [%r42, %b5213], [%r42, %b5221], [%r42, %b5249], [%r42, %b5251], [%r130, %b5203]
  %r128 = add i32 %r129, 1
  ret i32 %r128

b5267:
  %r133 = phi i32 [%r94, %b5277], [%r100, %b5279], [%r110, %b5213], [%r114, %b5221], [%r119, %b5249], [%r125, %b5251]
  %r132 = phi i32 [%r42, %b5277], [%r42, %b5279], [%r42, %b5213], [%r42, %b5221], [%r42, %b5249], [%r42, %b5251]
  %r131 = add i32 ptrtoint(i8* @str4 to i32), 1
  br label %b5207

b5280:
  %r137 = phi i32 [%r74, %b5287], [%r74, %b5289]
  %r41 = phi i32 [%r71, %b5287], [%r71, %b5289]
  %r39 = phi i32 [%r72, %b5287], [%r72, %b5289]
  %r135 = inttoptr i32 %r137 to i8*
  %r136 = load i8, i8* %r135
  %r75 = zext i8 %r136 to i32
  %r134 = icmp eq i32 %r75, 0
  br i1 %r134, label %b5271, label %b5282

b5295:
  %r50 = add i32 %r108, 1
  br label %b5297

b5207:
  %r139 = phi i32 [%r133, %b5267], [%r145, %b5205]
  %r144 = phi i32 [%r131, %b5267], [%r143, %b5205]
  %r142 = phi i32 [%r132, %b5267], [%r130, %b5205]
  %r141 = call i32 @inb(i32 1021)
  %r140 = and i32 %r141, 96
  call void @func_b1572(i32 %r140, i32 0, i32 %r139)
  %r138 = icmp eq i32 %r139, 10
  br i1 %r138, label %b5210, label %b5212

b5282:
  %r73 = add i32 %r137, 1
  br label %b5284

b5210:
  %r147 = call i32 @inb(i32 1021)
  %r146 = and i32 %r147, 96
  call void @func_b1572(i32 %r146, i32 0, i32 13)
  call void @func_b1950(i32 %r139)
  br label %b5203

b5212:
  call void @func_b1950(i32 %r139)
  br label %b5203

b5203:
  %r151 = phi i32 [%r144, %b5210], [%r144, %b5212]
  %r130 = phi i32 [%r142, %b5210], [%r142, %b5212]
  %r149 = inttoptr i32 %r151 to i8*
  %r150 = load i8, i8* %r149
  %r145 = zext i8 %r150 to i32
  %r148 = icmp eq i32 %r145, 0
  br i1 %r148, label %b1886, label %b5205

b5205:
  %r143 = add i32 %r151, 1
  br label %b5207
}

define internal i32 @func_b5323(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b5323

b5323:
  %r5 = phi i32 [%r0, %0], [%r14, %b5316]
  %r13 = phi i32 [%r1, %0], [%r12, %b5316]
  %r11 = phi i32 [%r2, %0], [%r10, %b5316]
  %r9 = phi i32 [%r3, %0], [%r8, %b5316]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1572(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b6190, label %b6191

b6190:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1572(i32 %r15, i32 0, i32 13)
  call void @func_b1950(i32 %r5)
  br label %b5314

b6191:
  call void @func_b1950(i32 %r5)
  br label %b5314

b5314:
  %r20 = phi i32 [%r13, %b6190], [%r13, %b6191]
  %r10 = phi i32 [%r11, %b6190], [%r11, %b6191]
  %r8 = phi i32 [%r9, %b6190], [%r9, %b6191]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c687, label %b5316

c687:
  %r21 = tail call i32 @func_b5311(i32 %r10, i32 %r8)
  ret i32 %r21

b5316:
  %r12 = add i32 %r20, 1
  br label %b5323
}

define internal i32 @func_b5329(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b5329

b5329:
  %r5 = phi i32 [%r0, %0], [%r12, %b6194], [%r12, %b6195]
  %r11 = phi i32 [%r1, %0], [%r10, %b6194], [%r10, %b6195]
  %r9 = phi i32 [%r2, %0], [8, %b6194], [8, %b6195]
  %r8 = phi i32 [%r3, %0], [%r7, %b6194], [%r6, %b6195]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b444, label %b5331

b444:
  ret i32 %r8

b5331:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b6194, label %b6195

b6194:
  %r7 = call i32 @func_b5311(i32 %r8, i32 %r11)
  br label %b5329

b6195:
  %r17 = add i32 ptrtoint(i8* @str1 to i32), 1
  %r6 = call i32 @func_b5323(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b5329
}

define internal void @func_b5578(i32 %r0, i32 %r1) {
  br label %b5578

b5578:
  %r6 = phi i32 [%r0, %0], [%r8, %b5585], [%r8, %b5587]
  %r7 = phi i32 [%r1, %0], [%r7, %b5585], [%r7, %b5587]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1902, label %b5580

b1902:
  %r16 = and i32 %r7, 15
  %r14 = call i32 @func_b1608(i32 %r16, i32 9)
  %r13 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r15 = trunc i32 %r14 to i8
  store i8 %r15, i8* %r13
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b303, label %b5577

b5580:
  %r8 = add i32 %r6, 1
  br label %b5582

b303:
  ret void

b5577:
  %r17 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c702

b5582:
  %r20 = call i32 @inb(i32 1021)
  %r19 = and i32 %r20, 96
  call void @func_b1572(i32 %r19, i32 0, i32 %r3)
  %r18 = icmp eq i32 %r3, 10
  br i1 %r18, label %b5585, label %b5587

c702:
  tail call void @func_b5034(i32 %r10, i32 %r17)
  ret void

b5585:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1572(i32 %r21, i32 0, i32 13)
  call void @func_b1950(i32 %r3)
  br label %b5578

b5587:
  call void @func_b1950(i32 %r3)
  br label %b5578
}

define internal void @func_b5618(i32 %r0, i32 %r1) {
  br label %b5618

b5618:
  %r6 = phi i32 [%r0, %0], [%r8, %b5625], [%r8, %b5627]
  %r7 = phi i32 [%r1, %0], [%r7, %b5625], [%r7, %b5627]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b5617, label %b5620

b5617:
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b5606, label %b6196

b5620:
  %r8 = add i32 %r6, 1
  br label %b5622

b5606:
  %r18 = phi i32 [%r7, %b5617], [%r17, %b5613]
  %r15 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b1902, label %b5608

b6196:
  %r19 = add i32 %r7, 1
  br label %b5613

b5622:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1572(i32 %r21, i32 0, i32 %r3)
  %r20 = icmp eq i32 %r3, 10
  br i1 %r20, label %b5625, label %b5627

b1902:
  %r27 = phi i32 [%r18, %b5606], [%r32, %b5578]
  %r31 = and i32 %r27, 15
  %r29 = call i32 @func_b1608(i32 %r31, i32 9)
  %r28 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = trunc i32 %r29 to i8
  store i8 %r30, i8* %r28
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r27, i32 32)
  %r25 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r26 = load i8, i8* %r25
  %r24 = zext i8 %r26 to i32
  %r23 = icmp eq i32 %r24, 0
  br i1 %r23, label %b303, label %b5577

b5608:
  %r33 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5582

b5613:
  %r39 = phi i32 [%r10, %b6196], [%r35, %b5611]
  %r38 = phi i32 [%r19, %b6196], [%r40, %b5611]
  %r17 = phi i32 [%r7, %b6196], [%r17, %b5611]
  call void @func_b1959(i32 %r39)
  %r36 = inttoptr i32 %r38 to i8*
  %r37 = load i8, i8* %r36
  %r35 = zext i8 %r37 to i32
  %r34 = icmp eq i32 %r35, 0
  br i1 %r34, label %b5606, label %b5611

b5625:
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1572(i32 %r41, i32 0, i32 13)
  call void @func_b1950(i32 %r3)
  br label %b5618

b5627:
  call void @func_b1950(i32 %r3)
  br label %b5618

b303:
  ret void

b5577:
  %r43 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c721

b5582:
  %r45 = phi i32 [%r14, %b5608], [%r51, %b5580]
  %r50 = phi i32 [%r33, %b5608], [%r49, %b5580]
  %r48 = phi i32 [%r18, %b5608], [%r32, %b5580]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1572(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b5585, label %b5587

b5611:
  %r40 = add i32 %r38, 1
  br label %b5613

c721:
  tail call void @func_b5034(i32 %r24, i32 %r43)
  ret void

b5585:
  %r53 = call i32 @inb(i32 1021)
  %r52 = and i32 %r53, 96
  call void @func_b1572(i32 %r52, i32 0, i32 13)
  call void @func_b1950(i32 %r45)
  br label %b5578

b5587:
  call void @func_b1950(i32 %r45)
  br label %b5578

b5578:
  %r57 = phi i32 [%r50, %b5585], [%r50, %b5587]
  %r32 = phi i32 [%r48, %b5585], [%r48, %b5587]
  %r55 = inttoptr i32 %r57 to i8*
  %r56 = load i8, i8* %r55
  %r51 = zext i8 %r56 to i32
  %r54 = icmp eq i32 %r51, 0
  br i1 %r54, label %b1902, label %b5580

b5580:
  %r49 = add i32 %r57, 1
  br label %b5582
}

define internal void @func_b5742(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5742

b5742:
  %r4 = phi i32 [%r0, %0], [%r11, %b5735]
  %r10 = phi i32 [%r1, %0], [%r9, %b5735]
  %r8 = phi i32 [%r2, %0], [%r7, %b5735]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1572(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b6197, label %b6198

b6197:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1572(i32 %r12, i32 0, i32 13)
  call void @func_b1950(i32 %r4)
  br label %b5733

b6198:
  call void @func_b1950(i32 %r4)
  br label %b5733

b5733:
  %r17 = phi i32 [%r10, %b6197], [%r10, %b6198]
  %r7 = phi i32 [%r8, %b6197], [%r8, %b6198]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b5730, label %b5735

b5730:
  %r20 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b5645, label %b5732

b5735:
  %r9 = add i32 %r17, 1
  br label %b5742

b5645:
  %r24 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b5617, label %b5650

b5732:
  %r30 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5034(i32 %r19, i32 %r30)
  %r28 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b5617, label %b5650

b5617:
  %r35 = phi i32 [%r7, %b5645], [%r7, %b5732], [%r36, %b5618]
  %r33 = inttoptr i32 %r35 to i8*
  %r34 = load i8, i8* %r33
  %r32 = zext i8 %r34 to i32
  %r31 = icmp eq i32 %r32, 0
  br i1 %r31, label %b5606, label %b6196

b5650:
  %r39 = phi i32 [%r23, %b5645], [%r27, %b5732]
  %r38 = phi i32 [%r7, %b5645], [%r7, %b5732]
  %r37 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5622

b5606:
  %r45 = phi i32 [%r35, %b5617], [%r44, %b5613]
  %r42 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r43 = load i8, i8* %r42
  %r41 = zext i8 %r43 to i32
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b1902, label %b5608

b6196:
  %r46 = add i32 %r35, 1
  br label %b5613

b5622:
  %r48 = phi i32 [%r39, %b5650], [%r54, %b5620]
  %r53 = phi i32 [%r37, %b5650], [%r52, %b5620]
  %r51 = phi i32 [%r38, %b5650], [%r36, %b5620]
  %r50 = call i32 @inb(i32 1021)
  %r49 = and i32 %r50, 96
  call void @func_b1572(i32 %r49, i32 0, i32 %r48)
  %r47 = icmp eq i32 %r48, 10
  br i1 %r47, label %b5625, label %b5627

b1902:
  %r59 = phi i32 [%r45, %b5606], [%r64, %b5578]
  %r63 = and i32 %r59, 15
  %r61 = call i32 @func_b1608(i32 %r63, i32 9)
  %r60 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r62 = trunc i32 %r61 to i8
  store i8 %r62, i8* %r60
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r59, i32 32)
  %r57 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r58 = load i8, i8* %r57
  %r56 = zext i8 %r58 to i32
  %r55 = icmp eq i32 %r56, 0
  br i1 %r55, label %b303, label %b5577

b5608:
  %r65 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5582

b5613:
  %r71 = phi i32 [%r32, %b6196], [%r67, %b5611]
  %r70 = phi i32 [%r46, %b6196], [%r72, %b5611]
  %r44 = phi i32 [%r35, %b6196], [%r44, %b5611]
  call void @func_b1959(i32 %r71)
  %r68 = inttoptr i32 %r70 to i8*
  %r69 = load i8, i8* %r68
  %r67 = zext i8 %r69 to i32
  %r66 = icmp eq i32 %r67, 0
  br i1 %r66, label %b5606, label %b5611

b5625:
  %r74 = call i32 @inb(i32 1021)
  %r73 = and i32 %r74, 96
  call void @func_b1572(i32 %r73, i32 0, i32 13)
  call void @func_b1950(i32 %r48)
  br label %b5618

b5627:
  call void @func_b1950(i32 %r48)
  br label %b5618

b303:
  ret void

b5577:
  %r75 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c750

b5582:
  %r77 = phi i32 [%r41, %b5608], [%r83, %b5580]
  %r82 = phi i32 [%r65, %b5608], [%r81, %b5580]
  %r80 = phi i32 [%r45, %b5608], [%r64, %b5580]
  %r79 = call i32 @inb(i32 1021)
  %r78 = and i32 %r79, 96
  call void @func_b1572(i32 %r78, i32 0, i32 %r77)
  %r76 = icmp eq i32 %r77, 10
  br i1 %r76, label %b5585, label %b5587

b5611:
  %r72 = add i32 %r70, 1
  br label %b5613

b5618:
  %r87 = phi i32 [%r53, %b5625], [%r53, %b5627]
  %r36 = phi i32 [%r51, %b5625], [%r51, %b5627]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r54 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r54, 0
  br i1 %r84, label %b5617, label %b5620

c750:
  tail call void @func_b5034(i32 %r56, i32 %r75)
  ret void

b5585:
  %r89 = call i32 @inb(i32 1021)
  %r88 = and i32 %r89, 96
  call void @func_b1572(i32 %r88, i32 0, i32 13)
  call void @func_b1950(i32 %r77)
  br label %b5578

b5587:
  call void @func_b1950(i32 %r77)
  br label %b5578

b5620:
  %r52 = add i32 %r87, 1
  br label %b5622

b5578:
  %r93 = phi i32 [%r82, %b5585], [%r82, %b5587]
  %r64 = phi i32 [%r80, %b5585], [%r80, %b5587]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r83 = zext i8 %r92 to i32
  %r90 = icmp eq i32 %r83, 0
  br i1 %r90, label %b1902, label %b5580

b5580:
  %r81 = add i32 %r93, 1
  br label %b5582
}

define internal void @func_b5656(i32 %r0, i32 %r1) {
  br label %b5656

b5656:
  %r6 = phi i32 [%r0, %0], [%r8, %b5663], [%r8, %b5665]
  %r7 = phi i32 [%r1, %0], [%r7, %b5663], [%r7, %b5665]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b5651, label %b5658

b5651:
  %r11 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b5645, label %b5653

b5658:
  %r8 = add i32 %r6, 1
  br label %b5660

b5645:
  %r15 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b5617, label %b5650

b5653:
  %r21 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5034(i32 %r10, i32 %r21)
  %r19 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r20 = load i8, i8* %r19
  %r18 = zext i8 %r20 to i32
  %r17 = icmp eq i32 %r18, 0
  br i1 %r17, label %b5617, label %b5650

b5660:
  %r24 = call i32 @inb(i32 1021)
  %r23 = and i32 %r24, 96
  call void @func_b1572(i32 %r23, i32 0, i32 %r3)
  %r22 = icmp eq i32 %r3, 10
  br i1 %r22, label %b5663, label %b5665

b5617:
  %r29 = phi i32 [%r7, %b5645], [%r7, %b5653], [%r30, %b5618]
  %r27 = inttoptr i32 %r29 to i8*
  %r28 = load i8, i8* %r27
  %r26 = zext i8 %r28 to i32
  %r25 = icmp eq i32 %r26, 0
  br i1 %r25, label %b5606, label %b6196

b5650:
  %r33 = phi i32 [%r14, %b5645], [%r18, %b5653]
  %r32 = phi i32 [%r7, %b5645], [%r7, %b5653]
  %r31 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5622

b5663:
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1572(i32 %r34, i32 0, i32 13)
  call void @func_b1950(i32 %r3)
  br label %b5656

b5665:
  call void @func_b1950(i32 %r3)
  br label %b5656

b5606:
  %r41 = phi i32 [%r29, %b5617], [%r40, %b5613]
  %r38 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  %r36 = icmp eq i32 %r37, 0
  br i1 %r36, label %b1902, label %b5608

b6196:
  %r42 = add i32 %r29, 1
  br label %b5613

b5622:
  %r44 = phi i32 [%r33, %b5650], [%r50, %b5620]
  %r49 = phi i32 [%r31, %b5650], [%r48, %b5620]
  %r47 = phi i32 [%r32, %b5650], [%r30, %b5620]
  %r46 = call i32 @inb(i32 1021)
  %r45 = and i32 %r46, 96
  call void @func_b1572(i32 %r45, i32 0, i32 %r44)
  %r43 = icmp eq i32 %r44, 10
  br i1 %r43, label %b5625, label %b5627

b1902:
  %r55 = phi i32 [%r41, %b5606], [%r60, %b5578]
  %r59 = and i32 %r55, 15
  %r57 = call i32 @func_b1608(i32 %r59, i32 9)
  %r56 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r58 = trunc i32 %r57 to i8
  store i8 %r58, i8* %r56
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r55, i32 32)
  %r53 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r54 = load i8, i8* %r53
  %r52 = zext i8 %r54 to i32
  %r51 = icmp eq i32 %r52, 0
  br i1 %r51, label %b303, label %b5577

b5608:
  %r61 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5582

b5613:
  %r67 = phi i32 [%r26, %b6196], [%r63, %b5611]
  %r66 = phi i32 [%r42, %b6196], [%r68, %b5611]
  %r40 = phi i32 [%r29, %b6196], [%r40, %b5611]
  call void @func_b1959(i32 %r67)
  %r64 = inttoptr i32 %r66 to i8*
  %r65 = load i8, i8* %r64
  %r63 = zext i8 %r65 to i32
  %r62 = icmp eq i32 %r63, 0
  br i1 %r62, label %b5606, label %b5611

b5625:
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1572(i32 %r69, i32 0, i32 13)
  call void @func_b1950(i32 %r44)
  br label %b5618

b5627:
  call void @func_b1950(i32 %r44)
  br label %b5618

b303:
  ret void

b5577:
  %r71 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c780

b5582:
  %r73 = phi i32 [%r37, %b5608], [%r79, %b5580]
  %r78 = phi i32 [%r61, %b5608], [%r77, %b5580]
  %r76 = phi i32 [%r41, %b5608], [%r60, %b5580]
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1572(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b5585, label %b5587

b5611:
  %r68 = add i32 %r66, 1
  br label %b5613

b5618:
  %r83 = phi i32 [%r49, %b5625], [%r49, %b5627]
  %r30 = phi i32 [%r47, %b5625], [%r47, %b5627]
  %r81 = inttoptr i32 %r83 to i8*
  %r82 = load i8, i8* %r81
  %r50 = zext i8 %r82 to i32
  %r80 = icmp eq i32 %r50, 0
  br i1 %r80, label %b5617, label %b5620

c780:
  tail call void @func_b5034(i32 %r52, i32 %r71)
  ret void

b5585:
  %r85 = call i32 @inb(i32 1021)
  %r84 = and i32 %r85, 96
  call void @func_b1572(i32 %r84, i32 0, i32 13)
  call void @func_b1950(i32 %r73)
  br label %b5578

b5587:
  call void @func_b1950(i32 %r73)
  br label %b5578

b5620:
  %r48 = add i32 %r83, 1
  br label %b5622

b5578:
  %r89 = phi i32 [%r78, %b5585], [%r78, %b5587]
  %r60 = phi i32 [%r76, %b5585], [%r76, %b5587]
  %r87 = inttoptr i32 %r89 to i8*
  %r88 = load i8, i8* %r87
  %r79 = zext i8 %r88 to i32
  %r86 = icmp eq i32 %r79, 0
  br i1 %r86, label %b1902, label %b5580

b5580:
  %r77 = add i32 %r89, 1
  br label %b5582
}

define internal void @func_b5826(i32 %r0, i32 %r1) {
  br label %b5826

b5826:
  %r3 = phi i32 [%r0, %0], [%r8, %b5819]
  %r7 = phi i32 [%r1, %0], [%r6, %b5819]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1572(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b6200, label %b6201

b6200:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1572(i32 %r13, i32 0, i32 13)
  call void @func_b1950(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1908, label %b5819

b6201:
  call void @func_b1950(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1908, label %b5819

b1908:
  %r24 = inttoptr i32 4104 to i32*
  %r23 = load i32, i32* %r24
  %r21 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b5804, label %b5814

b5819:
  %r8 = phi i32 [%r10, %b6200], [%r16, %b6201]
  %r25 = phi i32 [%r7, %b6200], [%r7, %b6201]
  %r6 = add i32 %r25, 1
  br label %b5826

b5804:
  %r28 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b5792, label %b5806

b5814:
  %r36 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b5742(i32 %r20, i32 %r36, i32 %r23)
  %r35 = inttoptr i32 4108 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b5651, label %b5811

b5792:
  %r39 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b5785, label %b5803

b5806:
  %r45 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5034(i32 %r27, i32 %r45)
  %r43 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b5785, label %b5803

b5651:
  %r57 = phi i32 [%r34, %b5814], [%r56, %b5798], [%r55, %b5800], [%r54, %b5656], [%r53, %b3102], [%r52, %b5759], [%r51, %b5774], [%r50, %b5776]
  %r48 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r49 = load i8, i8* %r48
  %r47 = zext i8 %r49 to i32
  %r46 = icmp eq i32 %r47, 0
  br i1 %r46, label %b5645, label %b5653

b5811:
  %r66 = phi i32 [%r31, %b5814], [%r65, %b5798], [%r64, %b5800], [%r63, %b3102], [%r62, %b5759], [%r61, %b5774], [%r60, %b5776]
  %r59 = phi i32 [%r34, %b5814], [%r56, %b5798], [%r55, %b5800], [%r53, %b3102], [%r52, %b5759], [%r51, %b5774], [%r50, %b5776]
  %r58 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b5660

b5785:
  %r71 = phi i32 [%r23, %b5792], [%r23, %b5806]
  %r69 = inttoptr i32 %r71 to i8*
  %r70 = load i8, i8* %r69
  %r68 = zext i8 %r70 to i32
  %r67 = icmp eq i32 %r68, 0
  br i1 %r67, label %b5768, label %b6199

b5803:
  %r73 = phi i32 [%r38, %b5792], [%r42, %b5806]
  %r77 = phi i32 [%r23, %b5792], [%r23, %b5806]
  %r76 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1572(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b5798, label %b5800

b5645:
  %r80 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b5617, label %b5650

b5653:
  %r86 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5034(i32 %r47, i32 %r86)
  %r84 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r85 = load i8, i8* %r84
  %r83 = zext i8 %r85 to i32
  %r82 = icmp eq i32 %r83, 0
  br i1 %r82, label %b5617, label %b5650

b5660:
  %r88 = phi i32 [%r66, %b5811], [%r94, %b5658]
  %r93 = phi i32 [%r58, %b5811], [%r92, %b5658]
  %r91 = phi i32 [%r59, %b5811], [%r54, %b5658]
  %r90 = call i32 @inb(i32 1021)
  %r89 = and i32 %r90, 96
  call void @func_b1572(i32 %r89, i32 0, i32 %r88)
  %r87 = icmp eq i32 %r88, 10
  br i1 %r87, label %b5663, label %b5665

b5768:
  %r100 = phi i32 [%r71, %b5785], [%r99, %b5781]
  %r97 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r98 = load i8, i8* %r97
  %r96 = zext i8 %r98 to i32
  %r95 = icmp eq i32 %r96, 0
  br i1 %r95, label %b3371, label %b5770

b6199:
  %r101 = add i32 %r71, 1
  br label %b5781

b5798:
  %r107 = call i32 @inb(i32 1021)
  %r106 = and i32 %r107, 96
  call void @func_b1572(i32 %r106, i32 0, i32 13)
  call void @func_b1950(i32 %r73)
  call void @func_b5618(i32 %r76, i32 %r77)
  %r105 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r105
  %r103 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r104 = load i8, i8* %r103
  %r65 = zext i8 %r104 to i32
  %r102 = icmp eq i32 %r65, 0
  br i1 %r102, label %b5651, label %b5811

b5800:
  call void @func_b1950(i32 %r73)
  call void @func_b5618(i32 %r76, i32 %r77)
  %r111 = inttoptr i32 4108 to i32*
  %r55 = load i32, i32* %r111
  %r109 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r110 = load i8, i8* %r109
  %r64 = zext i8 %r110 to i32
  %r108 = icmp eq i32 %r64, 0
  br i1 %r108, label %b5651, label %b5811

b5617:
  %r116 = phi i32 [%r57, %b5645], [%r57, %b5653], [%r117, %b5618]
  %r114 = inttoptr i32 %r116 to i8*
  %r115 = load i8, i8* %r114
  %r113 = zext i8 %r115 to i32
  %r112 = icmp eq i32 %r113, 0
  br i1 %r112, label %b5606, label %b6196

b5650:
  %r120 = phi i32 [%r79, %b5645], [%r83, %b5653]
  %r119 = phi i32 [%r57, %b5645], [%r57, %b5653]
  %r118 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5622

b5663:
  %r122 = call i32 @inb(i32 1021)
  %r121 = and i32 %r122, 96
  call void @func_b1572(i32 %r121, i32 0, i32 13)
  call void @func_b1950(i32 %r88)
  br label %b5656

b5665:
  call void @func_b1950(i32 %r88)
  br label %b5656

b3371:
  %r130 = and i32 %r100, 15
  %r128 = call i32 @func_b1608(i32 %r130, i32 9)
  %r127 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r129 = trunc i32 %r128 to i8
  store i8 %r129, i8* %r127
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r100, i32 32)
  %r125 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b3102, label %b5759

b5770:
  %r134 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1572(i32 %r132, i32 0, i32 %r96)
  %r131 = icmp eq i32 %r96, 10
  br i1 %r131, label %b5774, label %b5776

b5781:
  %r140 = phi i32 [%r68, %b6199], [%r136, %b5779]
  %r139 = phi i32 [%r101, %b6199], [%r141, %b5779]
  %r99 = phi i32 [%r71, %b6199], [%r99, %b5779]
  call void @func_b1959(i32 %r140)
  %r137 = inttoptr i32 %r139 to i8*
  %r138 = load i8, i8* %r137
  %r136 = zext i8 %r138 to i32
  %r135 = icmp eq i32 %r136, 0
  br i1 %r135, label %b5768, label %b5779

b5606:
  %r147 = phi i32 [%r116, %b5617], [%r146, %b5613]
  %r144 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r145 = load i8, i8* %r144
  %r143 = zext i8 %r145 to i32
  %r142 = icmp eq i32 %r143, 0
  br i1 %r142, label %b1902, label %b5608

b6196:
  %r148 = add i32 %r116, 1
  br label %b5613

b5622:
  %r150 = phi i32 [%r120, %b5650], [%r156, %b5620]
  %r155 = phi i32 [%r118, %b5650], [%r154, %b5620]
  %r153 = phi i32 [%r119, %b5650], [%r117, %b5620]
  %r152 = call i32 @inb(i32 1021)
  %r151 = and i32 %r152, 96
  call void @func_b1572(i32 %r151, i32 0, i32 %r150)
  %r149 = icmp eq i32 %r150, 10
  br i1 %r149, label %b5625, label %b5627

b5656:
  %r160 = phi i32 [%r93, %b5663], [%r93, %b5665]
  %r54 = phi i32 [%r91, %b5663], [%r91, %b5665]
  %r158 = inttoptr i32 %r160 to i8*
  %r159 = load i8, i8* %r158
  %r94 = zext i8 %r159 to i32
  %r157 = icmp eq i32 %r94, 0
  br i1 %r157, label %b5651, label %b5658

b3102:
  %r164 = inttoptr i32 4108 to i32*
  %r53 = load i32, i32* %r164
  %r162 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r163 = load i8, i8* %r162
  %r63 = zext i8 %r163 to i32
  %r161 = icmp eq i32 %r63, 0
  br i1 %r161, label %b5651, label %b5811

b5759:
  %r169 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5034(i32 %r124, i32 %r169)
  %r168 = inttoptr i32 4108 to i32*
  %r52 = load i32, i32* %r168
  %r166 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r62 = zext i8 %r167 to i32
  %r165 = icmp eq i32 %r62, 0
  br i1 %r165, label %b5651, label %b5811

b5774:
  %r175 = call i32 @inb(i32 1021)
  %r174 = and i32 %r175, 96
  call void @func_b1572(i32 %r174, i32 0, i32 13)
  call void @func_b1950(i32 %r96)
  call void @func_b5578(i32 %r134, i32 %r100)
  %r173 = inttoptr i32 4108 to i32*
  %r51 = load i32, i32* %r173
  %r171 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r172 = load i8, i8* %r171
  %r61 = zext i8 %r172 to i32
  %r170 = icmp eq i32 %r61, 0
  br i1 %r170, label %b5651, label %b5811

b5776:
  call void @func_b1950(i32 %r96)
  call void @func_b5578(i32 %r134, i32 %r100)
  %r179 = inttoptr i32 4108 to i32*
  %r50 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r60 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r60, 0
  br i1 %r176, label %b5651, label %b5811

b5779:
  %r141 = add i32 %r139, 1
  br label %b5781

b1902:
  %r184 = phi i32 [%r147, %b5606], [%r189, %b5578]
  %r188 = and i32 %r184, 15
  %r186 = call i32 @func_b1608(i32 %r188, i32 9)
  %r185 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r187 = trunc i32 %r186 to i8
  store i8 %r187, i8* %r185
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r184, i32 32)
  %r182 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r181 = zext i8 %r183 to i32
  %r180 = icmp eq i32 %r181, 0
  br i1 %r180, label %b303, label %b5577

b5608:
  %r190 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5582

b5613:
  %r196 = phi i32 [%r113, %b6196], [%r192, %b5611]
  %r195 = phi i32 [%r148, %b6196], [%r197, %b5611]
  %r146 = phi i32 [%r116, %b6196], [%r146, %b5611]
  call void @func_b1959(i32 %r196)
  %r193 = inttoptr i32 %r195 to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b5606, label %b5611

b5625:
  %r199 = call i32 @inb(i32 1021)
  %r198 = and i32 %r199, 96
  call void @func_b1572(i32 %r198, i32 0, i32 13)
  call void @func_b1950(i32 %r150)
  br label %b5618

b5627:
  call void @func_b1950(i32 %r150)
  br label %b5618

b5658:
  %r92 = add i32 %r160, 1
  br label %b5660

b303:
  ret void

b5577:
  %r200 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c834

b5582:
  %r202 = phi i32 [%r143, %b5608], [%r208, %b5580]
  %r207 = phi i32 [%r190, %b5608], [%r206, %b5580]
  %r205 = phi i32 [%r147, %b5608], [%r189, %b5580]
  %r204 = call i32 @inb(i32 1021)
  %r203 = and i32 %r204, 96
  call void @func_b1572(i32 %r203, i32 0, i32 %r202)
  %r201 = icmp eq i32 %r202, 10
  br i1 %r201, label %b5585, label %b5587

b5611:
  %r197 = add i32 %r195, 1
  br label %b5613

b5618:
  %r212 = phi i32 [%r155, %b5625], [%r155, %b5627]
  %r117 = phi i32 [%r153, %b5625], [%r153, %b5627]
  %r210 = inttoptr i32 %r212 to i8*
  %r211 = load i8, i8* %r210
  %r156 = zext i8 %r211 to i32
  %r209 = icmp eq i32 %r156, 0
  br i1 %r209, label %b5617, label %b5620

c834:
  tail call void @func_b5034(i32 %r181, i32 %r200)
  ret void

b5585:
  %r214 = call i32 @inb(i32 1021)
  %r213 = and i32 %r214, 96
  call void @func_b1572(i32 %r213, i32 0, i32 13)
  call void @func_b1950(i32 %r202)
  br label %b5578

b5587:
  call void @func_b1950(i32 %r202)
  br label %b5578

b5620:
  %r154 = add i32 %r212, 1
  br label %b5622

b5578:
  %r218 = phi i32 [%r207, %b5585], [%r207, %b5587]
  %r189 = phi i32 [%r205, %b5585], [%r205, %b5587]
  %r216 = inttoptr i32 %r218 to i8*
  %r217 = load i8, i8* %r216
  %r208 = zext i8 %r217 to i32
  %r215 = icmp eq i32 %r208, 0
  br i1 %r215, label %b1902, label %b5580

b5580:
  %r206 = add i32 %r218, 1
  br label %b5582
}

define internal void @func_b5844(i32 %r0, i32 %r1) {
  br label %b5844

b5844:
  %r3 = phi i32 [%r0, %0], [%r8, %b5837]
  %r7 = phi i32 [%r1, %0], [%r6, %b5837]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1572(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b6202, label %b6203

b6202:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1572(i32 %r13, i32 0, i32 13)
  call void @func_b1950(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1910, label %b5837

b6203:
  call void @func_b1950(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1910, label %b5837

b1910:
  %r28 = inttoptr i32 4100 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b5329(i32 %r24, i32 %r25, i32 8, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1908, label %b5834

b5837:
  %r8 = phi i32 [%r10, %b6202], [%r16, %b6203]
  %r29 = phi i32 [%r7, %b6202], [%r7, %b6203]
  %r6 = add i32 %r29, 1
  br label %b5844

b1908:
  %r35 = inttoptr i32 4104 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b5804, label %b5814

b5834:
  %r36 = add i32 ptrtoint(i8* @str15 to i32), 1
  br label %c850

b5804:
  %r39 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b5792, label %b5806

b5814:
  %r47 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b5742(i32 %r31, i32 %r47, i32 %r34)
  %r46 = inttoptr i32 4108 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b5651, label %b5811

c850:
  tail call void @func_b5826(i32 %r20, i32 %r36)
  ret void

b5792:
  %r50 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b5785, label %b5803

b5806:
  %r56 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5034(i32 %r38, i32 %r56)
  %r54 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b5785, label %b5803

b5651:
  %r68 = phi i32 [%r45, %b5814], [%r67, %b5798], [%r66, %b5800], [%r65, %b5656], [%r64, %b3102], [%r63, %b5759], [%r62, %b5774], [%r61, %b5776]
  %r59 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r60 = load i8, i8* %r59
  %r58 = zext i8 %r60 to i32
  %r57 = icmp eq i32 %r58, 0
  br i1 %r57, label %b5645, label %b5653

b5811:
  %r77 = phi i32 [%r42, %b5814], [%r76, %b5798], [%r75, %b5800], [%r74, %b3102], [%r73, %b5759], [%r72, %b5774], [%r71, %b5776]
  %r70 = phi i32 [%r45, %b5814], [%r67, %b5798], [%r66, %b5800], [%r64, %b3102], [%r63, %b5759], [%r62, %b5774], [%r61, %b5776]
  %r69 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b5660

b5785:
  %r82 = phi i32 [%r34, %b5792], [%r34, %b5806]
  %r80 = inttoptr i32 %r82 to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b5768, label %b6199

b5803:
  %r84 = phi i32 [%r49, %b5792], [%r53, %b5806]
  %r88 = phi i32 [%r34, %b5792], [%r34, %b5806]
  %r87 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r86 = call i32 @inb(i32 1021)
  %r85 = and i32 %r86, 96
  call void @func_b1572(i32 %r85, i32 0, i32 %r84)
  %r83 = icmp eq i32 %r84, 10
  br i1 %r83, label %b5798, label %b5800

b5645:
  %r91 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b5617, label %b5650

b5653:
  %r97 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5034(i32 %r58, i32 %r97)
  %r95 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b5617, label %b5650

b5660:
  %r99 = phi i32 [%r77, %b5811], [%r105, %b5658]
  %r104 = phi i32 [%r69, %b5811], [%r103, %b5658]
  %r102 = phi i32 [%r70, %b5811], [%r65, %b5658]
  %r101 = call i32 @inb(i32 1021)
  %r100 = and i32 %r101, 96
  call void @func_b1572(i32 %r100, i32 0, i32 %r99)
  %r98 = icmp eq i32 %r99, 10
  br i1 %r98, label %b5663, label %b5665

b5768:
  %r111 = phi i32 [%r82, %b5785], [%r110, %b5781]
  %r108 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  %r106 = icmp eq i32 %r107, 0
  br i1 %r106, label %b3371, label %b5770

b6199:
  %r112 = add i32 %r82, 1
  br label %b5781

b5798:
  %r118 = call i32 @inb(i32 1021)
  %r117 = and i32 %r118, 96
  call void @func_b1572(i32 %r117, i32 0, i32 13)
  call void @func_b1950(i32 %r84)
  call void @func_b5618(i32 %r87, i32 %r88)
  %r116 = inttoptr i32 4108 to i32*
  %r67 = load i32, i32* %r116
  %r114 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r115 = load i8, i8* %r114
  %r76 = zext i8 %r115 to i32
  %r113 = icmp eq i32 %r76, 0
  br i1 %r113, label %b5651, label %b5811

b5800:
  call void @func_b1950(i32 %r84)
  call void @func_b5618(i32 %r87, i32 %r88)
  %r122 = inttoptr i32 4108 to i32*
  %r66 = load i32, i32* %r122
  %r120 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r75 = zext i8 %r121 to i32
  %r119 = icmp eq i32 %r75, 0
  br i1 %r119, label %b5651, label %b5811

b5617:
  %r127 = phi i32 [%r68, %b5645], [%r68, %b5653], [%r128, %b5618]
  %r125 = inttoptr i32 %r127 to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b5606, label %b6196

b5650:
  %r131 = phi i32 [%r90, %b5645], [%r94, %b5653]
  %r130 = phi i32 [%r68, %b5645], [%r68, %b5653]
  %r129 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5622

b5663:
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1572(i32 %r132, i32 0, i32 13)
  call void @func_b1950(i32 %r99)
  br label %b5656

b5665:
  call void @func_b1950(i32 %r99)
  br label %b5656

b3371:
  %r141 = and i32 %r111, 15
  %r139 = call i32 @func_b1608(i32 %r141, i32 9)
  %r138 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r140 = trunc i32 %r139 to i8
  store i8 %r140, i8* %r138
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r111, i32 32)
  %r136 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b3102, label %b5759

b5770:
  %r145 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1572(i32 %r143, i32 0, i32 %r107)
  %r142 = icmp eq i32 %r107, 10
  br i1 %r142, label %b5774, label %b5776

b5781:
  %r151 = phi i32 [%r79, %b6199], [%r147, %b5779]
  %r150 = phi i32 [%r112, %b6199], [%r152, %b5779]
  %r110 = phi i32 [%r82, %b6199], [%r110, %b5779]
  call void @func_b1959(i32 %r151)
  %r148 = inttoptr i32 %r150 to i8*
  %r149 = load i8, i8* %r148
  %r147 = zext i8 %r149 to i32
  %r146 = icmp eq i32 %r147, 0
  br i1 %r146, label %b5768, label %b5779

b5606:
  %r158 = phi i32 [%r127, %b5617], [%r157, %b5613]
  %r155 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r156 = load i8, i8* %r155
  %r154 = zext i8 %r156 to i32
  %r153 = icmp eq i32 %r154, 0
  br i1 %r153, label %b1902, label %b5608

b6196:
  %r159 = add i32 %r127, 1
  br label %b5613

b5622:
  %r161 = phi i32 [%r131, %b5650], [%r167, %b5620]
  %r166 = phi i32 [%r129, %b5650], [%r165, %b5620]
  %r164 = phi i32 [%r130, %b5650], [%r128, %b5620]
  %r163 = call i32 @inb(i32 1021)
  %r162 = and i32 %r163, 96
  call void @func_b1572(i32 %r162, i32 0, i32 %r161)
  %r160 = icmp eq i32 %r161, 10
  br i1 %r160, label %b5625, label %b5627

b5656:
  %r171 = phi i32 [%r104, %b5663], [%r104, %b5665]
  %r65 = phi i32 [%r102, %b5663], [%r102, %b5665]
  %r169 = inttoptr i32 %r171 to i8*
  %r170 = load i8, i8* %r169
  %r105 = zext i8 %r170 to i32
  %r168 = icmp eq i32 %r105, 0
  br i1 %r168, label %b5651, label %b5658

b3102:
  %r175 = inttoptr i32 4108 to i32*
  %r64 = load i32, i32* %r175
  %r173 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r174 = load i8, i8* %r173
  %r74 = zext i8 %r174 to i32
  %r172 = icmp eq i32 %r74, 0
  br i1 %r172, label %b5651, label %b5811

b5759:
  %r180 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5034(i32 %r135, i32 %r180)
  %r179 = inttoptr i32 4108 to i32*
  %r63 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r73 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r73, 0
  br i1 %r176, label %b5651, label %b5811

b5774:
  %r186 = call i32 @inb(i32 1021)
  %r185 = and i32 %r186, 96
  call void @func_b1572(i32 %r185, i32 0, i32 13)
  call void @func_b1950(i32 %r107)
  call void @func_b5578(i32 %r145, i32 %r111)
  %r184 = inttoptr i32 4108 to i32*
  %r62 = load i32, i32* %r184
  %r182 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r72 = zext i8 %r183 to i32
  %r181 = icmp eq i32 %r72, 0
  br i1 %r181, label %b5651, label %b5811

b5776:
  call void @func_b1950(i32 %r107)
  call void @func_b5578(i32 %r145, i32 %r111)
  %r190 = inttoptr i32 4108 to i32*
  %r61 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r71 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r71, 0
  br i1 %r187, label %b5651, label %b5811

b5779:
  %r152 = add i32 %r150, 1
  br label %b5781

b1902:
  %r195 = phi i32 [%r158, %b5606], [%r200, %b5578]
  %r199 = and i32 %r195, 15
  %r197 = call i32 @func_b1608(i32 %r199, i32 9)
  %r196 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r198 = trunc i32 %r197 to i8
  store i8 %r198, i8* %r196
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r195, i32 32)
  %r193 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b303, label %b5577

b5608:
  %r201 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5582

b5613:
  %r207 = phi i32 [%r124, %b6196], [%r203, %b5611]
  %r206 = phi i32 [%r159, %b6196], [%r208, %b5611]
  %r157 = phi i32 [%r127, %b6196], [%r157, %b5611]
  call void @func_b1959(i32 %r207)
  %r204 = inttoptr i32 %r206 to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b5606, label %b5611

b5625:
  %r210 = call i32 @inb(i32 1021)
  %r209 = and i32 %r210, 96
  call void @func_b1572(i32 %r209, i32 0, i32 13)
  call void @func_b1950(i32 %r161)
  br label %b5618

b5627:
  call void @func_b1950(i32 %r161)
  br label %b5618

b5658:
  %r103 = add i32 %r171, 1
  br label %b5660

b303:
  ret void

b5577:
  %r211 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c891

b5582:
  %r213 = phi i32 [%r154, %b5608], [%r219, %b5580]
  %r218 = phi i32 [%r201, %b5608], [%r217, %b5580]
  %r216 = phi i32 [%r158, %b5608], [%r200, %b5580]
  %r215 = call i32 @inb(i32 1021)
  %r214 = and i32 %r215, 96
  call void @func_b1572(i32 %r214, i32 0, i32 %r213)
  %r212 = icmp eq i32 %r213, 10
  br i1 %r212, label %b5585, label %b5587

b5611:
  %r208 = add i32 %r206, 1
  br label %b5613

b5618:
  %r223 = phi i32 [%r166, %b5625], [%r166, %b5627]
  %r128 = phi i32 [%r164, %b5625], [%r164, %b5627]
  %r221 = inttoptr i32 %r223 to i8*
  %r222 = load i8, i8* %r221
  %r167 = zext i8 %r222 to i32
  %r220 = icmp eq i32 %r167, 0
  br i1 %r220, label %b5617, label %b5620

c891:
  tail call void @func_b5034(i32 %r192, i32 %r211)
  ret void

b5585:
  %r225 = call i32 @inb(i32 1021)
  %r224 = and i32 %r225, 96
  call void @func_b1572(i32 %r224, i32 0, i32 13)
  call void @func_b1950(i32 %r213)
  br label %b5578

b5587:
  call void @func_b1950(i32 %r213)
  br label %b5578

b5620:
  %r165 = add i32 %r223, 1
  br label %b5622

b5578:
  %r229 = phi i32 [%r218, %b5585], [%r218, %b5587]
  %r200 = phi i32 [%r216, %b5585], [%r216, %b5587]
  %r227 = inttoptr i32 %r229 to i8*
  %r228 = load i8, i8* %r227
  %r219 = zext i8 %r228 to i32
  %r226 = icmp eq i32 %r219, 0
  br i1 %r226, label %b1902, label %b5580

b5580:
  %r217 = add i32 %r229, 1
  br label %b5582
}

define internal void @func_b5862(i32 %r0, i32 %r1) {
  br label %b5862

b5862:
  %r3 = phi i32 [%r0, %0], [%r8, %b5855]
  %r7 = phi i32 [%r1, %0], [%r6, %b5855]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1572(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b6204, label %b6205

b6204:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1572(i32 %r13, i32 0, i32 13)
  call void @func_b1950(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1912, label %b5855

b6205:
  call void @func_b1950(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1912, label %b5855

b1912:
  %r28 = inttoptr i32 4096 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b5191(i32 %r24, i32 %r25, i32 12, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str13 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1910, label %b5852

b5855:
  %r8 = phi i32 [%r10, %b6204], [%r16, %b6205]
  %r29 = phi i32 [%r7, %b6204], [%r7, %b6205]
  %r6 = add i32 %r29, 1
  br label %b5862

b1910:
  %r39 = inttoptr i32 4100 to i32*
  %r37 = load i32, i32* %r39
  %r38 = inttoptr i32 %r37 to i32*
  %r35 = load i32, i32* %r38
  %r36 = add i32 %r37, 4
  %r34 = call i32 @func_b5329(i32 %r35, i32 %r36, i32 8, i32 0)
  %r32 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b1908, label %b5834

b5852:
  %r40 = add i32 ptrtoint(i8* @str13 to i32), 1
  br label %c907

b1908:
  %r46 = inttoptr i32 4104 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b5804, label %b5814

b5834:
  %r47 = add i32 ptrtoint(i8* @str15 to i32), 1
  br label %c910

c907:
  tail call void @func_b5844(i32 %r20, i32 %r40)
  ret void

b5804:
  %r50 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b5792, label %b5806

b5814:
  %r58 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b5742(i32 %r42, i32 %r58, i32 %r45)
  %r57 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r57
  %r54 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b5651, label %b5811

c910:
  tail call void @func_b5826(i32 %r31, i32 %r47)
  ret void

b5792:
  %r61 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r62 = load i8, i8* %r61
  %r60 = zext i8 %r62 to i32
  %r59 = icmp eq i32 %r60, 0
  br i1 %r59, label %b5785, label %b5803

b5806:
  %r67 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5034(i32 %r49, i32 %r67)
  %r65 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r66 = load i8, i8* %r65
  %r64 = zext i8 %r66 to i32
  %r63 = icmp eq i32 %r64, 0
  br i1 %r63, label %b5785, label %b5803

b5651:
  %r79 = phi i32 [%r56, %b5814], [%r78, %b5798], [%r77, %b5800], [%r76, %b5656], [%r75, %b3102], [%r74, %b5759], [%r73, %b5774], [%r72, %b5776]
  %r70 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r71 = load i8, i8* %r70
  %r69 = zext i8 %r71 to i32
  %r68 = icmp eq i32 %r69, 0
  br i1 %r68, label %b5645, label %b5653

b5811:
  %r88 = phi i32 [%r53, %b5814], [%r87, %b5798], [%r86, %b5800], [%r85, %b3102], [%r84, %b5759], [%r83, %b5774], [%r82, %b5776]
  %r81 = phi i32 [%r56, %b5814], [%r78, %b5798], [%r77, %b5800], [%r75, %b3102], [%r74, %b5759], [%r73, %b5774], [%r72, %b5776]
  %r80 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b5660

b5785:
  %r93 = phi i32 [%r45, %b5792], [%r45, %b5806]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b5768, label %b6199

b5803:
  %r95 = phi i32 [%r60, %b5792], [%r64, %b5806]
  %r99 = phi i32 [%r45, %b5792], [%r45, %b5806]
  %r98 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r97 = call i32 @inb(i32 1021)
  %r96 = and i32 %r97, 96
  call void @func_b1572(i32 %r96, i32 0, i32 %r95)
  %r94 = icmp eq i32 %r95, 10
  br i1 %r94, label %b5798, label %b5800

b5645:
  %r102 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r103 = load i8, i8* %r102
  %r101 = zext i8 %r103 to i32
  %r100 = icmp eq i32 %r101, 0
  br i1 %r100, label %b5617, label %b5650

b5653:
  %r108 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5034(i32 %r69, i32 %r108)
  %r106 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r107 = load i8, i8* %r106
  %r105 = zext i8 %r107 to i32
  %r104 = icmp eq i32 %r105, 0
  br i1 %r104, label %b5617, label %b5650

b5660:
  %r110 = phi i32 [%r88, %b5811], [%r116, %b5658]
  %r115 = phi i32 [%r80, %b5811], [%r114, %b5658]
  %r113 = phi i32 [%r81, %b5811], [%r76, %b5658]
  %r112 = call i32 @inb(i32 1021)
  %r111 = and i32 %r112, 96
  call void @func_b1572(i32 %r111, i32 0, i32 %r110)
  %r109 = icmp eq i32 %r110, 10
  br i1 %r109, label %b5663, label %b5665

b5768:
  %r122 = phi i32 [%r93, %b5785], [%r121, %b5781]
  %r119 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r120 = load i8, i8* %r119
  %r118 = zext i8 %r120 to i32
  %r117 = icmp eq i32 %r118, 0
  br i1 %r117, label %b3371, label %b5770

b6199:
  %r123 = add i32 %r93, 1
  br label %b5781

b5798:
  %r129 = call i32 @inb(i32 1021)
  %r128 = and i32 %r129, 96
  call void @func_b1572(i32 %r128, i32 0, i32 13)
  call void @func_b1950(i32 %r95)
  call void @func_b5618(i32 %r98, i32 %r99)
  %r127 = inttoptr i32 4108 to i32*
  %r78 = load i32, i32* %r127
  %r125 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r87 = zext i8 %r126 to i32
  %r124 = icmp eq i32 %r87, 0
  br i1 %r124, label %b5651, label %b5811

b5800:
  call void @func_b1950(i32 %r95)
  call void @func_b5618(i32 %r98, i32 %r99)
  %r133 = inttoptr i32 4108 to i32*
  %r77 = load i32, i32* %r133
  %r131 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r132 = load i8, i8* %r131
  %r86 = zext i8 %r132 to i32
  %r130 = icmp eq i32 %r86, 0
  br i1 %r130, label %b5651, label %b5811

b5617:
  %r138 = phi i32 [%r79, %b5645], [%r79, %b5653], [%r139, %b5618]
  %r136 = inttoptr i32 %r138 to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b5606, label %b6196

b5650:
  %r142 = phi i32 [%r101, %b5645], [%r105, %b5653]
  %r141 = phi i32 [%r79, %b5645], [%r79, %b5653]
  %r140 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b5622

b5663:
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1572(i32 %r143, i32 0, i32 13)
  call void @func_b1950(i32 %r110)
  br label %b5656

b5665:
  call void @func_b1950(i32 %r110)
  br label %b5656

b3371:
  %r152 = and i32 %r122, 15
  %r150 = call i32 @func_b1608(i32 %r152, i32 9)
  %r149 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r151 = trunc i32 %r150 to i8
  store i8 %r151, i8* %r149
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r122, i32 32)
  %r147 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r148 = load i8, i8* %r147
  %r146 = zext i8 %r148 to i32
  %r145 = icmp eq i32 %r146, 0
  br i1 %r145, label %b3102, label %b5759

b5770:
  %r156 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r155 = call i32 @inb(i32 1021)
  %r154 = and i32 %r155, 96
  call void @func_b1572(i32 %r154, i32 0, i32 %r118)
  %r153 = icmp eq i32 %r118, 10
  br i1 %r153, label %b5774, label %b5776

b5781:
  %r162 = phi i32 [%r90, %b6199], [%r158, %b5779]
  %r161 = phi i32 [%r123, %b6199], [%r163, %b5779]
  %r121 = phi i32 [%r93, %b6199], [%r121, %b5779]
  call void @func_b1959(i32 %r162)
  %r159 = inttoptr i32 %r161 to i8*
  %r160 = load i8, i8* %r159
  %r158 = zext i8 %r160 to i32
  %r157 = icmp eq i32 %r158, 0
  br i1 %r157, label %b5768, label %b5779

b5606:
  %r169 = phi i32 [%r138, %b5617], [%r168, %b5613]
  %r166 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r165 = zext i8 %r167 to i32
  %r164 = icmp eq i32 %r165, 0
  br i1 %r164, label %b1902, label %b5608

b6196:
  %r170 = add i32 %r138, 1
  br label %b5613

b5622:
  %r172 = phi i32 [%r142, %b5650], [%r178, %b5620]
  %r177 = phi i32 [%r140, %b5650], [%r176, %b5620]
  %r175 = phi i32 [%r141, %b5650], [%r139, %b5620]
  %r174 = call i32 @inb(i32 1021)
  %r173 = and i32 %r174, 96
  call void @func_b1572(i32 %r173, i32 0, i32 %r172)
  %r171 = icmp eq i32 %r172, 10
  br i1 %r171, label %b5625, label %b5627

b5656:
  %r182 = phi i32 [%r115, %b5663], [%r115, %b5665]
  %r76 = phi i32 [%r113, %b5663], [%r113, %b5665]
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r116 = zext i8 %r181 to i32
  %r179 = icmp eq i32 %r116, 0
  br i1 %r179, label %b5651, label %b5658

b3102:
  %r186 = inttoptr i32 4108 to i32*
  %r75 = load i32, i32* %r186
  %r184 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r185 = load i8, i8* %r184
  %r85 = zext i8 %r185 to i32
  %r183 = icmp eq i32 %r85, 0
  br i1 %r183, label %b5651, label %b5811

b5759:
  %r191 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5034(i32 %r146, i32 %r191)
  %r190 = inttoptr i32 4108 to i32*
  %r74 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r84 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r84, 0
  br i1 %r187, label %b5651, label %b5811

b5774:
  %r197 = call i32 @inb(i32 1021)
  %r196 = and i32 %r197, 96
  call void @func_b1572(i32 %r196, i32 0, i32 13)
  call void @func_b1950(i32 %r118)
  call void @func_b5578(i32 %r156, i32 %r122)
  %r195 = inttoptr i32 4108 to i32*
  %r73 = load i32, i32* %r195
  %r193 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r83 = zext i8 %r194 to i32
  %r192 = icmp eq i32 %r83, 0
  br i1 %r192, label %b5651, label %b5811

b5776:
  call void @func_b1950(i32 %r118)
  call void @func_b5578(i32 %r156, i32 %r122)
  %r201 = inttoptr i32 4108 to i32*
  %r72 = load i32, i32* %r201
  %r199 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r200 = load i8, i8* %r199
  %r82 = zext i8 %r200 to i32
  %r198 = icmp eq i32 %r82, 0
  br i1 %r198, label %b5651, label %b5811

b5779:
  %r163 = add i32 %r161, 1
  br label %b5781

b1902:
  %r206 = phi i32 [%r169, %b5606], [%r211, %b5578]
  %r210 = and i32 %r206, 15
  %r208 = call i32 @func_b1608(i32 %r210, i32 9)
  %r207 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r209 = trunc i32 %r208 to i8
  store i8 %r209, i8* %r207
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r206, i32 32)
  %r204 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b303, label %b5577

b5608:
  %r212 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %b5582

b5613:
  %r218 = phi i32 [%r135, %b6196], [%r214, %b5611]
  %r217 = phi i32 [%r170, %b6196], [%r219, %b5611]
  %r168 = phi i32 [%r138, %b6196], [%r168, %b5611]
  call void @func_b1959(i32 %r218)
  %r215 = inttoptr i32 %r217 to i8*
  %r216 = load i8, i8* %r215
  %r214 = zext i8 %r216 to i32
  %r213 = icmp eq i32 %r214, 0
  br i1 %r213, label %b5606, label %b5611

b5625:
  %r221 = call i32 @inb(i32 1021)
  %r220 = and i32 %r221, 96
  call void @func_b1572(i32 %r220, i32 0, i32 13)
  call void @func_b1950(i32 %r172)
  br label %b5618

b5627:
  call void @func_b1950(i32 %r172)
  br label %b5618

b5658:
  %r114 = add i32 %r182, 1
  br label %b5660

b303:
  ret void

b5577:
  %r222 = add i32 ptrtoint(i8* @str21 to i32), 1
  br label %c951

b5582:
  %r224 = phi i32 [%r165, %b5608], [%r230, %b5580]
  %r229 = phi i32 [%r212, %b5608], [%r228, %b5580]
  %r227 = phi i32 [%r169, %b5608], [%r211, %b5580]
  %r226 = call i32 @inb(i32 1021)
  %r225 = and i32 %r226, 96
  call void @func_b1572(i32 %r225, i32 0, i32 %r224)
  %r223 = icmp eq i32 %r224, 10
  br i1 %r223, label %b5585, label %b5587

b5611:
  %r219 = add i32 %r217, 1
  br label %b5613

b5618:
  %r234 = phi i32 [%r177, %b5625], [%r177, %b5627]
  %r139 = phi i32 [%r175, %b5625], [%r175, %b5627]
  %r232 = inttoptr i32 %r234 to i8*
  %r233 = load i8, i8* %r232
  %r178 = zext i8 %r233 to i32
  %r231 = icmp eq i32 %r178, 0
  br i1 %r231, label %b5617, label %b5620

c951:
  tail call void @func_b5034(i32 %r203, i32 %r222)
  ret void

b5585:
  %r236 = call i32 @inb(i32 1021)
  %r235 = and i32 %r236, 96
  call void @func_b1572(i32 %r235, i32 0, i32 13)
  call void @func_b1950(i32 %r224)
  br label %b5578

b5587:
  call void @func_b1950(i32 %r224)
  br label %b5578

b5620:
  %r176 = add i32 %r234, 1
  br label %b5622

b5578:
  %r240 = phi i32 [%r229, %b5585], [%r229, %b5587]
  %r211 = phi i32 [%r227, %b5585], [%r227, %b5587]
  %r238 = inttoptr i32 %r240 to i8*
  %r239 = load i8, i8* %r238
  %r230 = zext i8 %r239 to i32
  %r237 = icmp eq i32 %r230, 0
  br i1 %r237, label %b1902, label %b5580

b5580:
  %r228 = add i32 %r240, 1
  br label %b5582
}

define internal void @func_b5374(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5374

b5374:
  %r4 = phi i32 [%r0, %0], [%r11, %b5372]
  %r10 = phi i32 [%r1, %0], [%r9, %b5372]
  %r8 = phi i32 [%r2, %0], [%r7, %b5372]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1572(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b5377, label %b5379

b5377:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1572(i32 %r12, i32 0, i32 13)
  call void @func_b1950(i32 %r4)
  br label %b5370

b5379:
  call void @func_b1950(i32 %r4)
  br label %b5370

b5370:
  %r17 = phi i32 [%r10, %b5377], [%r10, %b5379]
  %r7 = phi i32 [%r8, %b5377], [%r8, %b5379]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b2351, label %b5372

b2351:
  %r19 = add i32 ptrtoint(i8* @users to i32), 52
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b5372:
  %r9 = add i32 %r17, 1
  br label %b5374
}

define internal void @func_b5423(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5423

b5423:
  %r4 = phi i32 [%r0, %0], [%r11, %b5416]
  %r10 = phi i32 [%r1, %0], [%r9, %b5416]
  %r8 = phi i32 [%r2, %0], [%r7, %b5416]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1572(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b6206, label %b6207

b6206:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1572(i32 %r12, i32 0, i32 13)
  call void @func_b1950(i32 %r4)
  br label %b5414

b6207:
  call void @func_b1950(i32 %r4)
  br label %b5414

b5414:
  %r17 = phi i32 [%r10, %b6206], [%r10, %b6207]
  %r7 = phi i32 [%r8, %b6206], [%r8, %b6207]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b2347, label %b5416

b2347:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1608(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b2351, label %b5408

b5416:
  %r9 = add i32 %r17, 1
  br label %b5423

b2351:
  %r27 = add i32 ptrtoint(i8* @users to i32), 52
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b5408:
  %r28 = add i32 ptrtoint(i8* @str54 to i32), 1
  br label %c973

c973:
  tail call void @func_b5374(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define internal void @func_b5384(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5384

b5384:
  %r4 = phi i32 [%r0, %0], [%r11, %b5382]
  %r10 = phi i32 [%r1, %0], [%r9, %b5382]
  %r8 = phi i32 [%r2, %0], [%r7, %b5382]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1572(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b5387, label %b5389

b5387:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1572(i32 %r12, i32 0, i32 13)
  call void @func_b1950(i32 %r4)
  br label %b5380

b5389:
  call void @func_b1950(i32 %r4)
  br label %b5380

b5380:
  %r17 = phi i32 [%r10, %b5387], [%r10, %b5389]
  %r7 = phi i32 [%r8, %b5387], [%r8, %b5389]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b2362, label %b5382

b2362:
  %r19 = add i32 ptrtoint(i8* @users to i32), 124
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b5382:
  %r9 = add i32 %r17, 1
  br label %b5384
}

define internal void @func_b5405(i32 %r0, i32 %r1, i32 %r2) {
  br label %b5405

b5405:
  %r4 = phi i32 [%r0, %0], [%r11, %b5398]
  %r10 = phi i32 [%r1, %0], [%r9, %b5398]
  %r8 = phi i32 [%r2, %0], [%r7, %b5398]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1572(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b6208, label %b6209

b6208:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1572(i32 %r12, i32 0, i32 13)
  call void @func_b1950(i32 %r4)
  br label %b5396

b6209:
  call void @func_b1950(i32 %r4)
  br label %b5396

b5396:
  %r17 = phi i32 [%r10, %b6208], [%r10, %b6209]
  %r7 = phi i32 [%r8, %b6208], [%r8, %b6209]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b2358, label %b5398

b2358:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1608(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b2362, label %b5395

b5398:
  %r9 = add i32 %r17, 1
  br label %b5405

b2362:
  %r27 = add i32 ptrtoint(i8* @users to i32), 124
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b5395:
  %r28 = add i32 ptrtoint(i8* @str54 to i32), 1
  br label %c990

c990:
  tail call void @func_b5384(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define void @kernel() {
  %r0 = load i32, i32* @keyb_layout
  %r1 = add i32 ptrtoint(i8* @objects to i32), 24
  store i32 %r1, i32* @ball
  br label %initialize

initialize:
  %r137 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r137
  %r136 = inttoptr i32 ptrtoint(i8* @users to i32) to i32*
  store i32 0, i32* %r136
  %r135 = add i32 ptrtoint(i8* @users to i32), 4
  %r134 = inttoptr i32 %r135 to i32*
  store i32 0, i32* %r134
  %r133 = add i32 ptrtoint(i8* @users to i32), 8
  %r132 = inttoptr i32 %r133 to i32*
  store i32 0, i32* %r132
  %r131 = add i32 ptrtoint(i8* @users to i32), 12
  %r130 = inttoptr i32 %r131 to i32*
  store i32 0, i32* %r130
  %r129 = add i32 ptrtoint(i8* @users to i32), 16
  %r128 = inttoptr i32 %r129 to i32*
  store i32 0, i32* %r128
  %r127 = add i32 ptrtoint(i8* @users to i32), 20
  %r126 = inttoptr i32 %r127 to i32*
  store i32 0, i32* %r126
  %r125 = add i32 ptrtoint(i8* @users to i32), 24
  %r124 = inttoptr i32 %r125 to i32*
  store i32 0, i32* %r124
  %r123 = add i32 ptrtoint(i8* @users to i32), 28
  %r122 = inttoptr i32 %r123 to i32*
  store i32 0, i32* %r122
  %r121 = add i32 ptrtoint(i8* @users to i32), 32
  %r120 = inttoptr i32 %r121 to i32*
  store i32 59, i32* %r120
  %r119 = add i32 ptrtoint(i8* @users to i32), 36
  %r118 = inttoptr i32 %r119 to i32*
  store i32 59, i32* %r118
  %r117 = add i32 ptrtoint(i8* @users to i32), 40
  %r116 = inttoptr i32 %r117 to i32*
  store i32 59, i32* %r116
  %r115 = add i32 ptrtoint(i8* @users to i32), 44
  %r114 = inttoptr i32 %r115 to i32*
  store i32 59, i32* %r114
  %r113 = add i32 ptrtoint(i8* @users to i32), 48
  %r112 = inttoptr i32 %r113 to i32*
  store i32 0, i32* %r112
  %r111 = add i32 ptrtoint(i8* @users to i32), 52
  %r110 = inttoptr i32 %r111 to i32*
  store i32 0, i32* %r110
  %r109 = add i32 ptrtoint(i8* @users to i32), 56
  %r108 = inttoptr i32 %r109 to i32*
  store i32 51, i32* %r108
  %r107 = add i32 ptrtoint(i8* @users to i32), 60
  %r106 = inttoptr i32 %r107 to i32*
  store i32 12802, i32* %r106
  %r105 = add i32 ptrtoint(i8* @users to i32), 64
  %r104 = inttoptr i32 %r105 to i32*
  store i32 0, i32* %r104
  %r103 = add i32 ptrtoint(i8* @users to i32), 68
  %r102 = inttoptr i32 %r103 to i32*
  store i32 59, i32* %r102
  %r101 = add i32 ptrtoint(i8* @users to i32), 72
  %r100 = inttoptr i32 %r101 to i32*
  store i32 0, i32* %r100
  %r99 = add i32 ptrtoint(i8* @users to i32), 76
  %r98 = inttoptr i32 %r99 to i32*
  store i32 0, i32* %r98
  %r97 = add i32 ptrtoint(i8* @users to i32), 80
  %r96 = inttoptr i32 %r97 to i32*
  store i32 0, i32* %r96
  %r95 = add i32 ptrtoint(i8* @users to i32), 84
  %r94 = inttoptr i32 %r95 to i32*
  store i32 0, i32* %r94
  %r93 = add i32 ptrtoint(i8* @users to i32), 88
  %r92 = inttoptr i32 %r93 to i32*
  store i32 0, i32* %r92
  %r91 = add i32 ptrtoint(i8* @users to i32), 92
  %r90 = inttoptr i32 %r91 to i32*
  store i32 0, i32* %r90
  %r89 = add i32 ptrtoint(i8* @users to i32), 96
  %r88 = inttoptr i32 %r89 to i32*
  store i32 0, i32* %r88
  %r87 = add i32 ptrtoint(i8* @users to i32), 100
  %r86 = inttoptr i32 %r87 to i32*
  store i32 0, i32* %r86
  %r85 = add i32 ptrtoint(i8* @users to i32), 104
  %r84 = inttoptr i32 %r85 to i32*
  store i32 59, i32* %r84
  %r83 = add i32 ptrtoint(i8* @users to i32), 108
  %r82 = inttoptr i32 %r83 to i32*
  store i32 59, i32* %r82
  %r81 = add i32 ptrtoint(i8* @users to i32), 112
  %r80 = inttoptr i32 %r81 to i32*
  store i32 59, i32* %r80
  %r79 = add i32 ptrtoint(i8* @users to i32), 116
  %r78 = inttoptr i32 %r79 to i32*
  store i32 59, i32* %r78
  %r77 = add i32 ptrtoint(i8* @users to i32), 120
  %r76 = inttoptr i32 %r77 to i32*
  store i32 0, i32* %r76
  %r75 = add i32 ptrtoint(i8* @users to i32), 124
  %r74 = inttoptr i32 %r75 to i32*
  store i32 0, i32* %r74
  %r73 = add i32 ptrtoint(i8* @users to i32), 128
  %r72 = inttoptr i32 %r73 to i32*
  store i32 51, i32* %r72
  %r71 = add i32 ptrtoint(i8* @users to i32), 132
  %r70 = inttoptr i32 %r71 to i32*
  store i32 12802, i32* %r70
  %r69 = add i32 ptrtoint(i8* @users to i32), 136
  %r68 = inttoptr i32 %r69 to i32*
  store i32 0, i32* %r68
  %r67 = add i32 ptrtoint(i8* @users to i32), 140
  %r66 = inttoptr i32 %r67 to i32*
  store i32 59, i32* %r66
  %r64 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r65 = trunc i32 0 to i8
  store i8 %r65, i8* %r64
  %r63 = add i32 ptrtoint(i8* @console to i32), 1
  %r61 = inttoptr i32 %r63 to i8*
  %r62 = trunc i32 0 to i8
  store i8 %r62, i8* %r61
  %r60 = add i32 ptrtoint(i8* @console to i32), 2
  %r58 = inttoptr i32 %r60 to i8*
  %r59 = trunc i32 24 to i8
  store i8 %r59, i8* %r58
  %r57 = add i32 ptrtoint(i8* @console to i32), 3
  %r55 = inttoptr i32 %r57 to i8*
  %r56 = trunc i32 79 to i8
  store i8 %r56, i8* %r55
  %r54 = add i32 ptrtoint(i8* @console to i32), 4
  %r52 = inttoptr i32 %r54 to i8*
  %r53 = trunc i32 0 to i8
  store i8 %r53, i8* %r52
  %r51 = add i32 ptrtoint(i8* @console to i32), 5
  %r49 = inttoptr i32 %r51 to i8*
  %r50 = trunc i32 0 to i8
  store i8 %r50, i8* %r49
  %r8 = add i32 ptrtoint(i8* @console to i32), 6
  %r47 = inttoptr i32 %r8 to i8*
  %r48 = trunc i32 10 to i8
  store i8 %r48, i8* %r47
  %r45 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r46 = trunc i32 0 to i8
  store i8 %r46, i8* %r45
  %r43 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r44 = trunc i32 0 to i8
  store i8 %r44, i8* %r43
  %r42 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  store i32 1, i32* %r42
  %r41 = inttoptr i32 ptrtoint(i8* @objects to i32) to i32*
  store i32 8, i32* %r41
  %r40 = add i32 ptrtoint(i8* @objects to i32), 4
  %r39 = inttoptr i32 %r40 to i32*
  store i32 1, i32* %r39
  %r38 = add i32 ptrtoint(i8* @objects to i32), 8
  %r37 = inttoptr i32 %r38 to i32*
  store i32 18, i32* %r37
  %r36 = add i32 ptrtoint(i8* @objects to i32), 12
  %r35 = inttoptr i32 %r36 to i32*
  store i32 21, i32* %r35
  %r34 = add i32 ptrtoint(i8* @objects to i32), 16
  %r33 = inttoptr i32 %r34 to i32*
  store i32 48, i32* %r33
  %r32 = add i32 ptrtoint(i8* @objects to i32), 20
  %r31 = inttoptr i32 %r32 to i32*
  store i32 22, i32* %r31
  %r30 = add i32 ptrtoint(i8* @objects to i32), 24
  call void @func_b4523(i32 %r30, i32 1)
  %r28 = inttoptr i32 ptrtoint(i8* @spinner to i32) to i8*
  %r29 = trunc i32 45 to i8
  store i8 %r29, i8* %r28
  %r27 = add i32 ptrtoint(i8* @spinner to i32), 1
  %r25 = inttoptr i32 %r27 to i8*
  %r26 = trunc i32 92 to i8
  store i8 %r26, i8* %r25
  %r24 = add i32 ptrtoint(i8* @spinner to i32), 2
  %r22 = inttoptr i32 %r24 to i8*
  %r23 = trunc i32 124 to i8
  store i8 %r23, i8* %r22
  %r21 = add i32 ptrtoint(i8* @spinner to i32), 3
  %r19 = inttoptr i32 %r21 to i8*
  %r20 = trunc i32 47 to i8
  store i8 %r20, i8* %r19
  %r17 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r18 = trunc i32 0 to i8
  store i8 %r18, i8* %r17
  %r15 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r16 = trunc i32 55 to i8
  store i8 %r16, i8* %r15
  %r14 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r14
  %r13 = inttoptr i32 ptrtoint(i8* @headingLeft to i32) to i1*
  store i1 true, i1* %r13
  %r12 = inttoptr i32 ptrtoint(i8* @headingTop to i32) to i1*
  store i1 true, i1* %r12
  %r10 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r11 = trunc i32 0 to i8
  store i8 %r11, i8* %r10
  %r9 = add i32 ptrtoint(i8* @itoaBuf to i32), 1
  call void @func_b4530(i32 %r9, i32 1)
  %r6 = inttoptr i32 %r8 to i8*
  %r7 = trunc i32 32 to i8
  store i8 %r7, i8* %r6
  call void @func_b1223()
  %r4 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1930, label %b5880

b1930:
  %r160 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r161 = trunc i32 1 to i8
  store i8 %r161, i8* %r160
  %r159 = add i32 ptrtoint(i8* @console to i32), 1
  %r157 = inttoptr i32 %r159 to i8*
  %r158 = trunc i32 1 to i8
  store i8 %r158, i8* %r157
  %r156 = add i32 ptrtoint(i8* @console to i32), 2
  %r154 = inttoptr i32 %r156 to i8*
  %r155 = trunc i32 23 to i8
  store i8 %r155, i8* %r154
  %r153 = add i32 ptrtoint(i8* @console to i32), 3
  %r151 = inttoptr i32 %r153 to i8*
  %r152 = trunc i32 45 to i8
  store i8 %r152, i8* %r151
  %r150 = add i32 ptrtoint(i8* @console to i32), 4
  %r148 = inttoptr i32 %r150 to i8*
  %r149 = trunc i32 1 to i8
  store i8 %r149, i8* %r148
  %r147 = add i32 ptrtoint(i8* @console to i32), 5
  %r145 = inttoptr i32 %r147 to i8*
  %r146 = trunc i32 1 to i8
  store i8 %r146, i8* %r145
  %r144 = add i32 ptrtoint(i8* @console to i32), 6
  %r142 = inttoptr i32 %r144 to i8*
  %r143 = trunc i32 15 to i8
  store i8 %r143, i8* %r142
  call void @func_b1223()
  %r140 = inttoptr i32 ptrtoint(i8* @str11 to i32) to i8*
  %r141 = load i8, i8* %r140
  %r139 = zext i8 %r141 to i32
  %r138 = icmp eq i32 %r139, 0
  br i1 %r138, label %b2987, label %b5865

b5880:
  %r162 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %b5872

b2987:
  %r172 = inttoptr i32 4096 to i32*
  %r170 = load i32, i32* %r172
  %r171 = inttoptr i32 %r170 to i32*
  %r168 = load i32, i32* %r171
  %r169 = add i32 %r170, 4
  %r167 = call i32 @func_b5191(i32 %r168, i32 %r169, i32 12, i32 0)
  %r165 = inttoptr i32 ptrtoint(i8* @str13 to i32) to i8*
  %r166 = load i8, i8* %r165
  %r164 = zext i8 %r166 to i32
  %r163 = icmp eq i32 %r164, 0
  br i1 %r163, label %b2988, label %b5847

b5865:
  %r179 = add i32 ptrtoint(i8* @str11 to i32), 1
  call void @func_b5862(i32 %r139, i32 %r179)
  %r178 = inttoptr i32 4096 to i32*
  %r176 = load i32, i32* %r178
  %r177 = inttoptr i32 %r176 to i32*
  %r174 = load i32, i32* %r177
  %r175 = add i32 %r176, 4
  %r173 = icmp eq i32 %r174, 0
  br i1 %r173, label %b5354, label %b5567

b5872:
  %r181 = phi i32 [%r3, %b5880], [%r186, %b5870]
  %r185 = phi i32 [%r162, %b5880], [%r184, %b5870]
  %r183 = call i32 @inb(i32 1021)
  %r182 = and i32 %r183, 96
  call void @func_b1572(i32 %r182, i32 0, i32 %r181)
  %r180 = icmp eq i32 %r181, 10
  br i1 %r180, label %b5875, label %b5877

b2988:
  %r196 = inttoptr i32 4100 to i32*
  %r194 = load i32, i32* %r196
  %r195 = inttoptr i32 %r194 to i32*
  %r192 = load i32, i32* %r195
  %r193 = add i32 %r194, 4
  %r191 = call i32 @func_b5329(i32 %r192, i32 %r193, i32 8, i32 0)
  %r189 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r190 = load i8, i8* %r189
  %r188 = zext i8 %r190 to i32
  %r187 = icmp eq i32 %r188, 0
  br i1 %r187, label %b2989, label %b5829

b5847:
  %r203 = add i32 ptrtoint(i8* @str13 to i32), 1
  call void @func_b5844(i32 %r164, i32 %r203)
  %r202 = inttoptr i32 4096 to i32*
  %r200 = load i32, i32* %r202
  %r201 = inttoptr i32 %r200 to i32*
  %r198 = load i32, i32* %r201
  %r199 = add i32 %r200, 4
  %r197 = icmp eq i32 %r198, 0
  br i1 %r197, label %b5354, label %b5567

b5354:
  %r206 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r207 = load i8, i8* %r206
  %r205 = zext i8 %r207 to i32
  %r204 = icmp eq i32 %r205, 0
  br i1 %r204, label %b5341, label %b5356

b5567:
  %r212 = phi i32 [%r174, %b5865], [%r198, %b5847], [%r233, %b5829], [%r211, %b5565], [%r232, %b5672], [%r231, %b5674], [%r230, %b5634], [%r229, %b5636], [%r228, %b3416], [%r227, %b5572], [%r226, %b5594], [%r225, %b5596]
  %r214 = phi i32 [%r175, %b5865], [%r199, %b5847], [%r224, %b5829], [%r213, %b5565], [%r223, %b5672], [%r222, %b5674], [%r221, %b5634], [%r220, %b5636], [%r219, %b3416], [%r218, %b5572], [%r217, %b5594], [%r216, %b5596]
  %r215 = phi i32 [12, %b5865], [12, %b5847], [12, %b5829], [12, %b5565], [12, %b5672], [12, %b5674], [12, %b5634], [12, %b5636], [12, %b3416], [12, %b5572], [12, %b5594], [12, %b5596]
  %r210 = phi i32 [2, %b5865], [2, %b5847], [2, %b5829], [%r209, %b5565], [2, %b5672], [2, %b5674], [2, %b5634], [2, %b5636], [2, %b3416], [2, %b5572], [2, %b5594], [2, %b5596]
  %r213 = add i32 %r214, %r215
  %r211 = add i32 %r212, -1
  %r209 = add i32 %r210, -1
  %r208 = icmp eq i32 %r209, 0
  br i1 %r208, label %b5502, label %b5565

b5875:
  %r239 = call i32 @inb(i32 1021)
  %r238 = and i32 %r239, 96
  call void @func_b1572(i32 %r238, i32 0, i32 13)
  call void @func_b1950(i32 %r181)
  %r236 = inttoptr i32 %r185 to i8*
  %r237 = load i8, i8* %r236
  %r235 = zext i8 %r237 to i32
  %r234 = icmp eq i32 %r235, 0
  br i1 %r234, label %b1930, label %b5870

b5877:
  call void @func_b1950(i32 %r181)
  %r242 = inttoptr i32 %r185 to i8*
  %r243 = load i8, i8* %r242
  %r241 = zext i8 %r243 to i32
  %r240 = icmp eq i32 %r241, 0
  br i1 %r240, label %b1930, label %b5870

b2989:
  %r249 = inttoptr i32 4104 to i32*
  %r248 = load i32, i32* %r249
  %r246 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r247 = load i8, i8* %r246
  %r245 = zext i8 %r247 to i32
  %r244 = icmp eq i32 %r245, 0
  br i1 %r244, label %b5725, label %b5748

b5829:
  %r254 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b5826(i32 %r188, i32 %r254)
  %r253 = inttoptr i32 4096 to i32*
  %r251 = load i32, i32* %r253
  %r252 = inttoptr i32 %r251 to i32*
  %r233 = load i32, i32* %r252
  %r224 = add i32 %r251, 4
  %r250 = icmp eq i32 %r233, 0
  br i1 %r250, label %b5354, label %b5567

b5341:
  %r257 = inttoptr i32 ptrtoint(i8* @str46 to i32) to i8*
  %r258 = load i8, i8* %r257
  %r256 = zext i8 %r258 to i32
  %r255 = icmp eq i32 %r256, 0
  br i1 %r255, label %b303, label %b5343

b5356:
  %r259 = add i32 ptrtoint(i8* @str52 to i32), 1
  br label %b5348

b5502:
  %r260 = icmp eq i32 %r211, 0
  br i1 %r260, label %b5354, label %b5504

b5565:
  %r261 = icmp eq i32 %r211, 0
  br i1 %r261, label %b5354, label %b5567

b5870:
  %r186 = phi i32 [%r235, %b5875], [%r241, %b5877]
  %r262 = phi i32 [%r185, %b5875], [%r185, %b5877]
  %r184 = add i32 %r262, 1
  br label %b5872

b5725:
  %r265 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r266 = load i8, i8* %r265
  %r264 = zext i8 %r266 to i32
  %r263 = icmp eq i32 %r264, 0
  br i1 %r263, label %b5713, label %b5727

b5748:
  %r273 = add i32 ptrtoint(i8* @str18 to i32), 1
  call void @func_b5742(i32 %r245, i32 %r273, i32 %r248)
  %r272 = inttoptr i32 4108 to i32*
  %r271 = load i32, i32* %r272
  %r269 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r270 = load i8, i8* %r269
  %r268 = zext i8 %r270 to i32
  %r267 = icmp eq i32 %r268, 0
  br i1 %r267, label %b5640, label %b5745

b303:
  ret void

b5343:
  %r276 = phi i32 [%r256, %b5341], [%r275, %b2560]
  %r274 = add i32 ptrtoint(i8* @str46 to i32), 1
  br label %c1021

b5348:
  %r278 = phi i32 [%r205, %b5356], [%r283, %b5346]
  %r282 = phi i32 [%r259, %b5356], [%r281, %b5346]
  %r280 = call i32 @inb(i32 1021)
  %r279 = and i32 %r280, 96
  call void @func_b1572(i32 %r279, i32 0, i32 %r278)
  %r277 = icmp eq i32 %r278, 10
  br i1 %r277, label %b5351, label %b5353

b5504:
  %r289 = add i32 %r213, 12
  %r288 = add i32 %r211, -1
  %r286 = inttoptr i32 ptrtoint(i8* @str47 to i32) to i8*
  %r287 = load i8, i8* %r286
  %r285 = zext i8 %r287 to i32
  %r284 = icmp eq i32 %r285, 0
  br i1 %r284, label %b5510, label %b5556

b5713:
  %r292 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r293 = load i8, i8* %r292
  %r291 = zext i8 %r293 to i32
  %r290 = icmp eq i32 %r291, 0
  br i1 %r290, label %b5706, label %b5724

b5727:
  %r298 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b5034(i32 %r264, i32 %r298)
  %r296 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r297 = load i8, i8* %r296
  %r295 = zext i8 %r297 to i32
  %r294 = icmp eq i32 %r295, 0
  br i1 %r294, label %b5706, label %b5724

b5640:
  %r309 = phi i32 [%r271, %b5748], [%r308, %b5719], [%r307, %b5721], [%r306, %b3663], [%r305, %b5680], [%r304, %b5695], [%r303, %b5697]
  %r301 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r302 = load i8, i8* %r301
  %r300 = zext i8 %r302 to i32
  %r299 = icmp eq i32 %r300, 0
  br i1 %r299, label %b5628, label %b5642

b5745:
  %r311 = phi i32 [%r268, %b5748], [%r321, %b5719], [%r320, %b5721], [%r319, %b3663], [%r318, %b5680], [%r317, %b5695], [%r316, %b5697]
  %r315 = phi i32 [%r271, %b5748], [%r308, %b5719], [%r307, %b5721], [%r306, %b3663], [%r305, %b5680], [%r304, %b5695], [%r303, %b5697]
  %r314 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r313 = call i32 @inb(i32 1021)
  %r312 = and i32 %r313, 96
  call void @func_b1572(i32 %r312, i32 0, i32 %r311)
  %r310 = icmp eq i32 %r311, 10
  br i1 %r310, label %b5672, label %b5674

c1021:
  tail call void @func_b5034(i32 %r276, i32 %r274)
  ret void

b5351:
  %r327 = call i32 @inb(i32 1021)
  %r326 = and i32 %r327, 96
  call void @func_b1572(i32 %r326, i32 0, i32 13)
  call void @func_b1950(i32 %r278)
  %r324 = inttoptr i32 %r282 to i8*
  %r325 = load i8, i8* %r324
  %r323 = zext i8 %r325 to i32
  %r322 = icmp eq i32 %r323, 0
  br i1 %r322, label %b5341, label %b5346

b5353:
  call void @func_b1950(i32 %r278)
  %r330 = inttoptr i32 %r282 to i8*
  %r331 = load i8, i8* %r330
  %r329 = zext i8 %r331 to i32
  %r328 = icmp eq i32 %r329, 0
  br i1 %r328, label %b5341, label %b5346

b5510:
  %r336 = phi i32 [%r213, %b5504], [%r341, %b5558], [%r341, %b5564]
  %r340 = phi i32 [%r288, %b5504], [%r339, %b5558], [%r339, %b5564]
  %r338 = phi i32 [%r289, %b5504], [%r337, %b5558], [%r337, %b5564]
  call void @func_b5136(i32 %r336)
  %r334 = inttoptr i32 ptrtoint(i8* @str48 to i32) to i8*
  %r335 = load i8, i8* %r334
  %r333 = zext i8 %r335 to i32
  %r332 = icmp eq i32 %r333, 0
  br i1 %r332, label %b5546, label %b5547

b5556:
  %r342 = add i32 ptrtoint(i8* @str47 to i32), 1
  br label %b5557

b5706:
  %r347 = phi i32 [%r248, %b5713], [%r248, %b5727]
  %r345 = inttoptr i32 %r347 to i8*
  %r346 = load i8, i8* %r345
  %r344 = zext i8 %r346 to i32
  %r343 = icmp eq i32 %r344, 0
  br i1 %r343, label %b5689, label %b6220

b5724:
  %r349 = phi i32 [%r291, %b5713], [%r295, %b5727]
  %r353 = phi i32 [%r248, %b5713], [%r248, %b5727]
  %r352 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r351 = call i32 @inb(i32 1021)
  %r350 = and i32 %r351, 96
  call void @func_b1572(i32 %r350, i32 0, i32 %r349)
  %r348 = icmp eq i32 %r349, 10
  br i1 %r348, label %b5719, label %b5721

b5628:
  %r356 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r357 = load i8, i8* %r356
  %r355 = zext i8 %r357 to i32
  %r354 = icmp eq i32 %r355, 0
  br i1 %r354, label %b5605, label %b5639

b5642:
  %r362 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b5034(i32 %r300, i32 %r362)
  %r360 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r361 = load i8, i8* %r360
  %r359 = zext i8 %r361 to i32
  %r358 = icmp eq i32 %r359, 0
  br i1 %r358, label %b5605, label %b5639

b5672:
  %r368 = call i32 @inb(i32 1021)
  %r367 = and i32 %r368, 96
  call void @func_b1572(i32 %r367, i32 0, i32 13)
  call void @func_b1950(i32 %r311)
  call void @func_b5656(i32 %r314, i32 %r315)
  %r366 = inttoptr i32 4096 to i32*
  %r364 = load i32, i32* %r366
  %r365 = inttoptr i32 %r364 to i32*
  %r232 = load i32, i32* %r365
  %r223 = add i32 %r364, 4
  %r363 = icmp eq i32 %r232, 0
  br i1 %r363, label %b5354, label %b5567

b5674:
  call void @func_b1950(i32 %r311)
  call void @func_b5656(i32 %r314, i32 %r315)
  %r372 = inttoptr i32 4096 to i32*
  %r370 = load i32, i32* %r372
  %r371 = inttoptr i32 %r370 to i32*
  %r231 = load i32, i32* %r371
  %r222 = add i32 %r370, 4
  %r369 = icmp eq i32 %r231, 0
  br i1 %r369, label %b5354, label %b5567

b5346:
  %r283 = phi i32 [%r323, %b5351], [%r329, %b5353]
  %r373 = phi i32 [%r282, %b5351], [%r282, %b5353]
  %r281 = add i32 %r373, 1
  br label %b5348

b5546:
  %r375 = phi i32 [%r340, %b5510], [%r381, %b5549], [%r381, %b5555]
  %r380 = phi i32 [%r338, %b5510], [%r379, %b5549], [%r379, %b5555]
  %r378 = phi i32 [12, %b5510], [12, %b5549], [12, %b5555]
  %r377 = phi i32 [%r336, %b5510], [%r376, %b5549], [%r376, %b5555]
  %r374 = icmp eq i32 %r375, 0
  br i1 %r374, label %b5367, label %b6218

b5547:
  %r382 = add i32 ptrtoint(i8* @str48 to i32), 1
  br label %b5548

b5557:
  %r384 = phi i32 [%r285, %b5556], [%r392, %b5563]
  %r391 = phi i32 [%r342, %b5556], [%r390, %b5563]
  %r341 = phi i32 [%r213, %b5556], [%r389, %b5563]
  %r339 = phi i32 [%r288, %b5556], [%r388, %b5563]
  %r337 = phi i32 [%r289, %b5556], [%r387, %b5563]
  %r386 = call i32 @inb(i32 1021)
  %r385 = and i32 %r386, 96
  call void @func_b1572(i32 %r385, i32 0, i32 %r384)
  %r383 = icmp eq i32 %r384, 10
  br i1 %r383, label %b5558, label %b5564

b5689:
  %r398 = phi i32 [%r347, %b5706], [%r397, %b5702]
  %r395 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r396 = load i8, i8* %r395
  %r394 = zext i8 %r396 to i32
  %r393 = icmp eq i32 %r394, 0
  br i1 %r393, label %b3662, label %b5691

b6220:
  %r399 = add i32 %r347, 1
  br label %b5702

b5719:
  %r405 = call i32 @inb(i32 1021)
  %r404 = and i32 %r405, 96
  call void @func_b1572(i32 %r404, i32 0, i32 13)
  call void @func_b1950(i32 %r349)
  call void @func_b5618(i32 %r352, i32 %r353)
  %r403 = inttoptr i32 4108 to i32*
  %r308 = load i32, i32* %r403
  %r401 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r402 = load i8, i8* %r401
  %r321 = zext i8 %r402 to i32
  %r400 = icmp eq i32 %r321, 0
  br i1 %r400, label %b5640, label %b5745

b5721:
  call void @func_b1950(i32 %r349)
  call void @func_b5618(i32 %r352, i32 %r353)
  %r409 = inttoptr i32 4108 to i32*
  %r307 = load i32, i32* %r409
  %r407 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r408 = load i8, i8* %r407
  %r320 = zext i8 %r408 to i32
  %r406 = icmp eq i32 %r320, 0
  br i1 %r406, label %b5640, label %b5745

b5605:
  %r414 = phi i32 [%r309, %b5628], [%r309, %b5642]
  %r412 = inttoptr i32 %r414 to i8*
  %r413 = load i8, i8* %r412
  %r411 = zext i8 %r413 to i32
  %r410 = icmp eq i32 %r411, 0
  br i1 %r410, label %b5588, label %b6219

b5639:
  %r416 = phi i32 [%r355, %b5628], [%r359, %b5642]
  %r420 = phi i32 [%r309, %b5628], [%r309, %b5642]
  %r419 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r418 = call i32 @inb(i32 1021)
  %r417 = and i32 %r418, 96
  call void @func_b1572(i32 %r417, i32 0, i32 %r416)
  %r415 = icmp eq i32 %r416, 10
  br i1 %r415, label %b5634, label %b5636

b5367:
  %r423 = inttoptr i32 ptrtoint(i8* @str51 to i32) to i8*
  %r424 = load i8, i8* %r423
  %r422 = zext i8 %r424 to i32
  %r421 = icmp eq i32 %r422, 0
  br i1 %r421, label %b5341, label %b5369

b6218:
  %r430 = add i32 %r380, %r378
  %r429 = add i32 %r375, -1
  %r427 = inttoptr i32 ptrtoint(i8* @str49 to i32) to i8*
  %r428 = load i8, i8* %r427
  %r426 = zext i8 %r428 to i32
  %r425 = icmp eq i32 %r426, 0
  br i1 %r425, label %b6679, label %b6680

b5548:
  %r432 = phi i32 [%r333, %b5547], [%r440, %b5554]
  %r439 = phi i32 [%r382, %b5547], [%r438, %b5554]
  %r376 = phi i32 [%r336, %b5547], [%r437, %b5554]
  %r381 = phi i32 [%r340, %b5547], [%r436, %b5554]
  %r379 = phi i32 [%r338, %b5547], [%r435, %b5554]
  %r434 = call i32 @inb(i32 1021)
  %r433 = and i32 %r434, 96
  call void @func_b1572(i32 %r433, i32 0, i32 %r432)
  %r431 = icmp eq i32 %r432, 10
  br i1 %r431, label %b5549, label %b5555

b5558:
  %r446 = call i32 @inb(i32 1021)
  %r445 = and i32 %r446, 96
  call void @func_b1572(i32 %r445, i32 0, i32 13)
  call void @func_b1950(i32 %r384)
  %r443 = inttoptr i32 %r391 to i8*
  %r444 = load i8, i8* %r443
  %r442 = zext i8 %r444 to i32
  %r441 = icmp eq i32 %r442, 0
  br i1 %r441, label %b5510, label %b5563

b5564:
  call void @func_b1950(i32 %r384)
  %r449 = inttoptr i32 %r391 to i8*
  %r450 = load i8, i8* %r449
  %r448 = zext i8 %r450 to i32
  %r447 = icmp eq i32 %r448, 0
  br i1 %r447, label %b5510, label %b5563

b3662:
  %r458 = and i32 %r398, 15
  %r456 = call i32 @func_b1608(i32 %r458, i32 9)
  %r455 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r457 = trunc i32 %r456 to i8
  store i8 %r457, i8* %r455
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r398, i32 32)
  %r453 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r454 = load i8, i8* %r453
  %r452 = zext i8 %r454 to i32
  %r451 = icmp eq i32 %r452, 0
  br i1 %r451, label %b3663, label %b5680

b5691:
  %r462 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r461 = call i32 @inb(i32 1021)
  %r460 = and i32 %r461, 96
  call void @func_b1572(i32 %r460, i32 0, i32 %r394)
  %r459 = icmp eq i32 %r394, 10
  br i1 %r459, label %b5695, label %b5697

b5702:
  %r468 = phi i32 [%r344, %b6220], [%r464, %b5700]
  %r467 = phi i32 [%r399, %b6220], [%r469, %b5700]
  %r397 = phi i32 [%r347, %b6220], [%r397, %b5700]
  call void @func_b1959(i32 %r468)
  %r465 = inttoptr i32 %r467 to i8*
  %r466 = load i8, i8* %r465
  %r464 = zext i8 %r466 to i32
  %r463 = icmp eq i32 %r464, 0
  br i1 %r463, label %b5689, label %b5700

b5588:
  %r475 = phi i32 [%r414, %b5605], [%r474, %b5601]
  %r472 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r473 = load i8, i8* %r472
  %r471 = zext i8 %r473 to i32
  %r470 = icmp eq i32 %r471, 0
  br i1 %r470, label %b3668, label %b5590

b6219:
  %r476 = add i32 %r414, 1
  br label %b5601

b5634:
  %r482 = call i32 @inb(i32 1021)
  %r481 = and i32 %r482, 96
  call void @func_b1572(i32 %r481, i32 0, i32 13)
  call void @func_b1950(i32 %r416)
  call void @func_b5618(i32 %r419, i32 %r420)
  %r480 = inttoptr i32 4096 to i32*
  %r478 = load i32, i32* %r480
  %r479 = inttoptr i32 %r478 to i32*
  %r230 = load i32, i32* %r479
  %r221 = add i32 %r478, 4
  %r477 = icmp eq i32 %r230, 0
  br i1 %r477, label %b5354, label %b5567

b5636:
  call void @func_b1950(i32 %r416)
  call void @func_b5618(i32 %r419, i32 %r420)
  %r486 = inttoptr i32 4096 to i32*
  %r484 = load i32, i32* %r486
  %r485 = inttoptr i32 %r484 to i32*
  %r229 = load i32, i32* %r485
  %r220 = add i32 %r484, 4
  %r483 = icmp eq i32 %r229, 0
  br i1 %r483, label %b5354, label %b5567

b5369:
  %r487 = add i32 ptrtoint(i8* @str51 to i32), 1
  br label %b5361

b6679:
  %r492 = phi i32 [%r380, %b6218], [%r506, %b6712], [%r505, %b6713]
  %r504 = phi i32 [%r429, %b6218], [%r503, %b6712], [%r502, %b6713]
  %r501 = phi i32 [%r430, %b6218], [%r500, %b6712], [%r499, %b6713]
  %r498 = phi i32 [%r377, %b6218], [%r497, %b6712], [%r496, %b6713]
  %r495 = phi i32 [%r375, %b6218], [%r494, %b6712], [%r493, %b6713]
  call void @func_b5136(i32 %r492)
  %r490 = inttoptr i32 ptrtoint(i8* @str50 to i32) to i8*
  %r491 = load i8, i8* %r490
  %r489 = zext i8 %r491 to i32
  %r488 = icmp eq i32 %r489, 0
  br i1 %r488, label %b6699, label %b6700

b6680:
  %r510 = add i32 ptrtoint(i8* @str49 to i32), 1
  %r509 = call i32 @inb(i32 1021)
  %r508 = and i32 %r509, 96
  call void @func_b1572(i32 %r508, i32 0, i32 %r426)
  %r507 = icmp eq i32 %r426, 10
  br i1 %r507, label %b6712, label %b6713

b5549:
  %r516 = call i32 @inb(i32 1021)
  %r515 = and i32 %r516, 96
  call void @func_b1572(i32 %r515, i32 0, i32 13)
  call void @func_b1950(i32 %r432)
  %r513 = inttoptr i32 %r439 to i8*
  %r514 = load i8, i8* %r513
  %r512 = zext i8 %r514 to i32
  %r511 = icmp eq i32 %r512, 0
  br i1 %r511, label %b5546, label %b5554

b5555:
  call void @func_b1950(i32 %r432)
  %r519 = inttoptr i32 %r439 to i8*
  %r520 = load i8, i8* %r519
  %r518 = zext i8 %r520 to i32
  %r517 = icmp eq i32 %r518, 0
  br i1 %r517, label %b5546, label %b5554

b5563:
  %r392 = phi i32 [%r442, %b5558], [%r448, %b5564]
  %r521 = phi i32 [%r391, %b5558], [%r391, %b5564]
  %r389 = phi i32 [%r341, %b5558], [%r341, %b5564]
  %r388 = phi i32 [%r339, %b5558], [%r339, %b5564]
  %r387 = phi i32 [%r337, %b5558], [%r337, %b5564]
  %r390 = add i32 %r521, 1
  br label %b5557

b3663:
  %r525 = inttoptr i32 4108 to i32*
  %r306 = load i32, i32* %r525
  %r523 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r524 = load i8, i8* %r523
  %r319 = zext i8 %r524 to i32
  %r522 = icmp eq i32 %r319, 0
  br i1 %r522, label %b5640, label %b5745

b5680:
  %r530 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5034(i32 %r452, i32 %r530)
  %r529 = inttoptr i32 4108 to i32*
  %r305 = load i32, i32* %r529
  %r527 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r528 = load i8, i8* %r527
  %r318 = zext i8 %r528 to i32
  %r526 = icmp eq i32 %r318, 0
  br i1 %r526, label %b5640, label %b5745

b5695:
  %r536 = call i32 @inb(i32 1021)
  %r535 = and i32 %r536, 96
  call void @func_b1572(i32 %r535, i32 0, i32 13)
  call void @func_b1950(i32 %r394)
  call void @func_b5578(i32 %r462, i32 %r398)
  %r534 = inttoptr i32 4108 to i32*
  %r304 = load i32, i32* %r534
  %r532 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r533 = load i8, i8* %r532
  %r317 = zext i8 %r533 to i32
  %r531 = icmp eq i32 %r317, 0
  br i1 %r531, label %b5640, label %b5745

b5697:
  call void @func_b1950(i32 %r394)
  call void @func_b5578(i32 %r462, i32 %r398)
  %r540 = inttoptr i32 4108 to i32*
  %r303 = load i32, i32* %r540
  %r538 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r539 = load i8, i8* %r538
  %r316 = zext i8 %r539 to i32
  %r537 = icmp eq i32 %r316, 0
  br i1 %r537, label %b5640, label %b5745

b5700:
  %r469 = add i32 %r467, 1
  br label %b5702

b3668:
  %r548 = and i32 %r475, 15
  %r546 = call i32 @func_b1608(i32 %r548, i32 9)
  %r545 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r547 = trunc i32 %r546 to i8
  store i8 %r547, i8* %r545
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r475, i32 32)
  %r543 = inttoptr i32 ptrtoint(i8* @str21 to i32) to i8*
  %r544 = load i8, i8* %r543
  %r542 = zext i8 %r544 to i32
  %r541 = icmp eq i32 %r542, 0
  br i1 %r541, label %b3416, label %b5572

b5590:
  %r552 = add i32 ptrtoint(i8* @str20 to i32), 1
  %r551 = call i32 @inb(i32 1021)
  %r550 = and i32 %r551, 96
  call void @func_b1572(i32 %r550, i32 0, i32 %r471)
  %r549 = icmp eq i32 %r471, 10
  br i1 %r549, label %b5594, label %b5596

b5601:
  %r558 = phi i32 [%r411, %b6219], [%r554, %b5599]
  %r557 = phi i32 [%r476, %b6219], [%r559, %b5599]
  %r474 = phi i32 [%r414, %b6219], [%r474, %b5599]
  call void @func_b1959(i32 %r558)
  %r555 = inttoptr i32 %r557 to i8*
  %r556 = load i8, i8* %r555
  %r554 = zext i8 %r556 to i32
  %r553 = icmp eq i32 %r554, 0
  br i1 %r553, label %b5588, label %b5599

b5361:
  %r561 = phi i32 [%r422, %b5369], [%r566, %b5359]
  %r565 = phi i32 [%r487, %b5369], [%r564, %b5359]
  %r563 = call i32 @inb(i32 1021)
  %r562 = and i32 %r563, 96
  call void @func_b1572(i32 %r562, i32 0, i32 %r561)
  %r560 = icmp eq i32 %r561, 10
  br i1 %r560, label %b5364, label %b5366

b6699:
  %r574 = phi i32 [%r498, %b6679], [%r582, %b6719], [%r581, %b6720]
  %r580 = phi i32 [%r495, %b6679], [%r579, %b6719], [%r578, %b6720]
  %r577 = phi i32 [%r492, %b6679], [%r576, %b6719], [%r575, %b6720]
  %r573 = add i32 %r574, 8
  %r572 = inttoptr i32 %r573 to i32*
  %r571 = load i32, i32* %r572
  %r569 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r570 = load i8, i8* %r569
  %r568 = zext i8 %r570 to i32
  %r567 = icmp eq i32 %r568, 0
  br i1 %r567, label %b2795, label %b5429

b6700:
  %r586 = add i32 ptrtoint(i8* @str50 to i32), 1
  %r585 = call i32 @inb(i32 1021)
  %r584 = and i32 %r585, 96
  call void @func_b1572(i32 %r584, i32 0, i32 %r489)
  %r583 = icmp eq i32 %r489, 10
  br i1 %r583, label %b6719, label %b6720

b6712:
  %r592 = phi i32 [%r426, %b6680], [%r601, %b6718]
  %r591 = phi i32 [%r510, %b6680], [%r600, %b6718]
  %r497 = phi i32 [%r377, %b6680], [%r599, %b6718]
  %r494 = phi i32 [%r375, %b6680], [%r598, %b6718]
  %r506 = phi i32 [%r380, %b6680], [%r597, %b6718]
  %r503 = phi i32 [%r429, %b6680], [%r596, %b6718]
  %r500 = phi i32 [%r430, %b6680], [%r595, %b6718]
  %r594 = call i32 @inb(i32 1021)
  %r593 = and i32 %r594, 96
  call void @func_b1572(i32 %r593, i32 0, i32 13)
  call void @func_b1950(i32 %r592)
  %r589 = inttoptr i32 %r591 to i8*
  %r590 = load i8, i8* %r589
  %r588 = zext i8 %r590 to i32
  %r587 = icmp eq i32 %r588, 0
  br i1 %r587, label %b6679, label %b6718

b6713:
  %r607 = phi i32 [%r426, %b6680], [%r601, %b6718]
  %r606 = phi i32 [%r510, %b6680], [%r600, %b6718]
  %r496 = phi i32 [%r377, %b6680], [%r599, %b6718]
  %r493 = phi i32 [%r375, %b6680], [%r598, %b6718]
  %r505 = phi i32 [%r380, %b6680], [%r597, %b6718]
  %r502 = phi i32 [%r429, %b6680], [%r596, %b6718]
  %r499 = phi i32 [%r430, %b6680], [%r595, %b6718]
  call void @func_b1950(i32 %r607)
  %r604 = inttoptr i32 %r606 to i8*
  %r605 = load i8, i8* %r604
  %r603 = zext i8 %r605 to i32
  %r602 = icmp eq i32 %r603, 0
  br i1 %r602, label %b6679, label %b6718

b5554:
  %r440 = phi i32 [%r512, %b5549], [%r518, %b5555]
  %r608 = phi i32 [%r439, %b5549], [%r439, %b5555]
  %r437 = phi i32 [%r376, %b5549], [%r376, %b5555]
  %r436 = phi i32 [%r381, %b5549], [%r381, %b5555]
  %r435 = phi i32 [%r379, %b5549], [%r379, %b5555]
  %r438 = add i32 %r608, 1
  br label %b5548

b3416:
  %r612 = inttoptr i32 4096 to i32*
  %r610 = load i32, i32* %r612
  %r611 = inttoptr i32 %r610 to i32*
  %r228 = load i32, i32* %r611
  %r219 = add i32 %r610, 4
  %r609 = icmp eq i32 %r228, 0
  br i1 %r609, label %b5354, label %b5567

b5572:
  %r617 = add i32 ptrtoint(i8* @str21 to i32), 1
  call void @func_b5034(i32 %r542, i32 %r617)
  %r616 = inttoptr i32 4096 to i32*
  %r614 = load i32, i32* %r616
  %r615 = inttoptr i32 %r614 to i32*
  %r227 = load i32, i32* %r615
  %r218 = add i32 %r614, 4
  %r613 = icmp eq i32 %r227, 0
  br i1 %r613, label %b5354, label %b5567

b5594:
  %r623 = call i32 @inb(i32 1021)
  %r622 = and i32 %r623, 96
  call void @func_b1572(i32 %r622, i32 0, i32 13)
  call void @func_b1950(i32 %r471)
  call void @func_b5578(i32 %r552, i32 %r475)
  %r621 = inttoptr i32 4096 to i32*
  %r619 = load i32, i32* %r621
  %r620 = inttoptr i32 %r619 to i32*
  %r226 = load i32, i32* %r620
  %r217 = add i32 %r619, 4
  %r618 = icmp eq i32 %r226, 0
  br i1 %r618, label %b5354, label %b5567

b5596:
  call void @func_b1950(i32 %r471)
  call void @func_b5578(i32 %r552, i32 %r475)
  %r627 = inttoptr i32 4096 to i32*
  %r625 = load i32, i32* %r627
  %r626 = inttoptr i32 %r625 to i32*
  %r225 = load i32, i32* %r626
  %r216 = add i32 %r625, 4
  %r624 = icmp eq i32 %r225, 0
  br i1 %r624, label %b5354, label %b5567

b5599:
  %r559 = add i32 %r557, 1
  br label %b5601

b5364:
  %r633 = call i32 @inb(i32 1021)
  %r632 = and i32 %r633, 96
  call void @func_b1572(i32 %r632, i32 0, i32 13)
  call void @func_b1950(i32 %r561)
  %r630 = inttoptr i32 %r565 to i8*
  %r631 = load i8, i8* %r630
  %r629 = zext i8 %r631 to i32
  %r628 = icmp eq i32 %r629, 0
  br i1 %r628, label %b5341, label %b5359

b5366:
  call void @func_b1950(i32 %r561)
  %r636 = inttoptr i32 %r565 to i8*
  %r637 = load i8, i8* %r636
  %r635 = zext i8 %r637 to i32
  %r634 = icmp eq i32 %r635, 0
  br i1 %r634, label %b5341, label %b5359

b2795:
  %r645 = and i32 %r571, 15
  %r643 = call i32 @func_b1608(i32 %r645, i32 9)
  %r642 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r644 = trunc i32 %r643 to i8
  store i8 %r644, i8* %r642
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r571, i32 32)
  %r640 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r641 = load i8, i8* %r640
  %r639 = zext i8 %r641 to i32
  %r638 = icmp eq i32 %r639, 0
  br i1 %r638, label %b6677, label %b6678

b5429:
  %r653 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b5423(i32 %r568, i32 %r653, i32 %r571)
  %r652 = add i32 %r577, 8
  %r651 = inttoptr i32 %r652 to i32*
  %r650 = load i32, i32* %r651
  %r648 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r649 = load i8, i8* %r648
  %r647 = zext i8 %r649 to i32
  %r646 = icmp eq i32 %r647, 0
  br i1 %r646, label %b2783, label %b5426

b6719:
  %r659 = phi i32 [%r489, %b6700], [%r666, %b6723]
  %r658 = phi i32 [%r586, %b6700], [%r665, %b6723]
  %r576 = phi i32 [%r492, %b6700], [%r664, %b6723]
  %r582 = phi i32 [%r498, %b6700], [%r663, %b6723]
  %r579 = phi i32 [%r495, %b6700], [%r662, %b6723]
  %r661 = call i32 @inb(i32 1021)
  %r660 = and i32 %r661, 96
  call void @func_b1572(i32 %r660, i32 0, i32 13)
  call void @func_b1950(i32 %r659)
  %r656 = inttoptr i32 %r658 to i8*
  %r657 = load i8, i8* %r656
  %r655 = zext i8 %r657 to i32
  %r654 = icmp eq i32 %r655, 0
  br i1 %r654, label %b6699, label %b6723

b6720:
  %r672 = phi i32 [%r489, %b6700], [%r666, %b6723]
  %r671 = phi i32 [%r586, %b6700], [%r665, %b6723]
  %r575 = phi i32 [%r492, %b6700], [%r664, %b6723]
  %r581 = phi i32 [%r498, %b6700], [%r663, %b6723]
  %r578 = phi i32 [%r495, %b6700], [%r662, %b6723]
  call void @func_b1950(i32 %r672)
  %r669 = inttoptr i32 %r671 to i8*
  %r670 = load i8, i8* %r669
  %r668 = zext i8 %r670 to i32
  %r667 = icmp eq i32 %r668, 0
  br i1 %r667, label %b6699, label %b6723

b6718:
  %r601 = phi i32 [%r588, %b6712], [%r603, %b6713]
  %r676 = phi i32 [%r591, %b6712], [%r606, %b6713]
  %r599 = phi i32 [%r497, %b6712], [%r496, %b6713]
  %r598 = phi i32 [%r494, %b6712], [%r493, %b6713]
  %r597 = phi i32 [%r506, %b6712], [%r505, %b6713]
  %r596 = phi i32 [%r503, %b6712], [%r502, %b6713]
  %r595 = phi i32 [%r500, %b6712], [%r499, %b6713]
  %r600 = add i32 %r676, 1
  %r675 = call i32 @inb(i32 1021)
  %r674 = and i32 %r675, 96
  call void @func_b1572(i32 %r674, i32 0, i32 %r601)
  %r673 = icmp eq i32 %r601, 10
  br i1 %r673, label %b6712, label %b6713

b5359:
  %r566 = phi i32 [%r629, %b5364], [%r635, %b5366]
  %r677 = phi i32 [%r565, %b5364], [%r565, %b5366]
  %r564 = add i32 %r677, 1
  br label %b5361

b6677:
  %r686 = add i32 ptrtoint(i8* @users to i32), 52
  %r685 = inttoptr i32 %r686 to i32*
  store i32 %r571, i32* %r685
  %r684 = add i32 %r577, 8
  %r683 = inttoptr i32 %r684 to i32*
  %r682 = load i32, i32* %r683
  %r680 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r681 = load i8, i8* %r680
  %r679 = zext i8 %r681 to i32
  %r678 = icmp eq i32 %r679, 0
  br i1 %r678, label %b2783, label %b5426

b6678:
  %r694 = add i32 ptrtoint(i8* @str54 to i32), 1
  call void @func_b5374(i32 %r639, i32 %r694, i32 %r571)
  %r693 = add i32 %r577, 8
  %r692 = inttoptr i32 %r693 to i32*
  %r691 = load i32, i32* %r692
  %r689 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r690 = load i8, i8* %r689
  %r688 = zext i8 %r690 to i32
  %r687 = icmp eq i32 %r688, 0
  br i1 %r687, label %b2783, label %b5426

b2783:
  %r699 = phi i32 [%r650, %b5429], [%r682, %b6677], [%r691, %b6678]
  %r703 = and i32 %r699, 15
  %r701 = call i32 @func_b1608(i32 %r703, i32 9)
  %r700 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r702 = trunc i32 %r701 to i8
  store i8 %r702, i8* %r700
  call void @func_b6395(i32 1, i32 0, i32 31, i32 %r699, i32 32)
  %r697 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r698 = load i8, i8* %r697
  %r696 = zext i8 %r698 to i32
  %r695 = icmp eq i32 %r696, 0
  br i1 %r695, label %b6674, label %b6675

b5426:
  %r704 = phi i32 [%r647, %b5429], [%r679, %b6677], [%r688, %b6678]
  %r706 = phi i32 [%r650, %b5429], [%r682, %b6677], [%r691, %b6678]
  %r705 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b5405(i32 %r704, i32 %r705, i32 %r706)
  br label %b2560

b6723:
  %r666 = phi i32 [%r655, %b6719], [%r668, %b6720]
  %r710 = phi i32 [%r658, %b6719], [%r671, %b6720]
  %r664 = phi i32 [%r576, %b6719], [%r575, %b6720]
  %r663 = phi i32 [%r582, %b6719], [%r581, %b6720]
  %r662 = phi i32 [%r579, %b6719], [%r578, %b6720]
  %r665 = add i32 %r710, 1
  %r709 = call i32 @inb(i32 1021)
  %r708 = and i32 %r709, 96
  call void @func_b1572(i32 %r708, i32 0, i32 %r666)
  %r707 = icmp eq i32 %r666, 10
  br i1 %r707, label %b6719, label %b6720

b6674:
  %r712 = add i32 ptrtoint(i8* @users to i32), 124
  %r711 = inttoptr i32 %r712 to i32*
  store i32 %r699, i32* %r711
  br label %b2560

b6675:
  %r713 = add i32 ptrtoint(i8* @str54 to i32), 1
  call void @func_b5384(i32 %r696, i32 %r713, i32 %r699)
  br label %b2560

b2560:
  %r726 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r726
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
  %r725 = call i32 @inb(i32 33)
  %r724 = and i32 %r725, -2
  call void @outb(i32 33, i32 %r724)
  %r723 = call i32 @inb(i32 33)
  %r722 = and i32 %r723, -3
  call void @outb(i32 33, i32 %r722)
  %r721 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r720 = load i1, i1* %r721
  %r719 = zext i1 %r720 to i32
  %r718 = mul i32 %r719, 72
  %r717 = add i32 ptrtoint(i8* @users to i32), %r718
  call void @returnTo(i32 %r717)
  %r715 = inttoptr i32 ptrtoint(i8* @str46 to i32) to i8*
  %r716 = load i8, i8* %r715
  %r275 = zext i8 %r716 to i32
  %r714 = icmp eq i32 %r275, 0
  br i1 %r714, label %b303, label %b5343
}

