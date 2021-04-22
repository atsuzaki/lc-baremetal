target triple = "i386-pc-linux-gnu"

@raw.0 = internal global [1 x i8] zeroinitializer, align 1

@current = internal alias i8, i8* bitcast([1 x i8]* @raw.0 to i8*)

@raw.1 = internal global [144 x i8] zeroinitializer, align 4

@users = internal alias i8, i8* bitcast([144 x i8]* @raw.1 to i8*)

@raw.2 = internal global [7 x i8] zeroinitializer, align 8

@console = internal alias i8, i8* bitcast([7 x i8]* @raw.2 to i8*)

@keyb_layout = external global i32

@raw.3 = internal global [1 x i8] zeroinitializer, align 1

@keyDown = internal alias i8, i8* bitcast([1 x i8]* @raw.3 to i8*)

@raw.4 = internal global [4 x i8] zeroinitializer, align 4

@ticks = internal alias i8, i8* bitcast([4 x i8]* @raw.4 to i8*)

@raw.5 = internal global [4 x i8] zeroinitializer, align 1

@spinner = internal alias i8, i8* bitcast([4 x i8]* @raw.5 to i8*)

@raw.6 = internal global [1 x i8] zeroinitializer, align 1

@spinpos = internal alias i8, i8* bitcast([1 x i8]* @raw.6 to i8*)

@raw.7 = internal global [1 x i8] zeroinitializer, align 1

@pos = internal alias i8, i8* bitcast([1 x i8]* @raw.7 to i8*)

@raw.8 = internal global [1 x i8] zeroinitializer, align 1

@dir = internal alias i8, i8* bitcast([1 x i8]* @raw.8 to i8*)

@str.9 = private unnamed_addr constant [13 x i8] c"Exception 0x\00"

@str54 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.9, i32 0, i32 0)

@raw.10 = internal global [32 x i8] zeroinitializer, align 1

@itoaBuf = internal alias i8, i8* bitcast([32 x i8]* @raw.10 to i8*)

@str.11 = private unnamed_addr constant [11 x i8] c", frame=0x\00"

@str55 = internal alias i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.11, i32 0, i32 0)

@str.12 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str56 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.12, i32 0, i32 0)

@str.13 = private unnamed_addr constant [19 x i8] c" Last key pressed:\00"

@str44 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.13, i32 0, i32 0)

@str.14 = private unnamed_addr constant [10 x i8] c"Headers:\0a\00"

@str10 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.14, i32 0, i32 0)

@str.15 = private unnamed_addr constant [2 x i8] c" \00"

@str0 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.15, i32 0, i32 0)

@str.16 = private unnamed_addr constant [7 x i8] c"header\00"

@str11 = internal alias i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.16, i32 0, i32 0)

@str.17 = private unnamed_addr constant [2 x i8] c"[\00"

@str1 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.17, i32 0, i32 0)

@str.18 = private unnamed_addr constant [4 x i8] c"]: \00"

@str2 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.18, i32 0, i32 0)

@str.19 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str4 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.19, i32 0, i32 0)

@str.20 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str5 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.20, i32 0, i32 0)

@str.21 = private unnamed_addr constant [12 x i8] c"], entry 0x\00"

@str6 = internal alias i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.21, i32 0, i32 0)

@str.22 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str3 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.22, i32 0, i32 0)

@str.23 = private unnamed_addr constant [13 x i8] c"Memory map:\0a\00"

@str12 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.23, i32 0, i32 0)

@str.24 = private unnamed_addr constant [5 x i8] c"mmap\00"

@str13 = internal alias i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str.24, i32 0, i32 0)

@str.25 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str7 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.25, i32 0, i32 0)

@str.26 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str8 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.26, i32 0, i32 0)

@str.27 = private unnamed_addr constant [2 x i8] c"]\00"

@str9 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.27, i32 0, i32 0)

@str.28 = private unnamed_addr constant [10 x i8] c"Strings:\0a\00"

@str14 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.28, i32 0, i32 0)

@str.29 = private unnamed_addr constant [2 x i8] c" \00"

@str17 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.29, i32 0, i32 0)

@str.30 = private unnamed_addr constant [8 x i8] c"cmdline\00"

@str15 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.30, i32 0, i32 0)

@str.31 = private unnamed_addr constant [3 x i8] c": \00"

@str18 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.31, i32 0, i32 0)

@str.32 = private unnamed_addr constant [3 x i8] c" [\00"

@str19 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.32, i32 0, i32 0)

@str.33 = private unnamed_addr constant [3 x i8] c"]\0a\00"

@str20 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.33, i32 0, i32 0)

@str.34 = private unnamed_addr constant [8 x i8] c"imgline\00"

@str16 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.34, i32 0, i32 0)

@str.35 = private unnamed_addr constant [33 x i8] c"Did not find first user program\0a\00"

@str51 = internal alias i8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.35, i32 0, i32 0)

@str.36 = private unnamed_addr constant [40 x i8] c"\0aHalting kernel, returning to mimgload\0a\00"

@str45 = internal alias i8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.36, i32 0, i32 0)

@str.37 = private unnamed_addr constant [38 x i8] c"Found header for first user program:\0a\00"

@str46 = internal alias i8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.37, i32 0, i32 0)

@str.38 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str47 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.38, i32 0, i32 0)

@str.39 = private unnamed_addr constant [39 x i8] c"Found header for second user program:\0a\00"

@str48 = internal alias i8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.39, i32 0, i32 0)

@str.40 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str49 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.40, i32 0, i32 0)

@str.41 = private unnamed_addr constant [19 x i8] c"user code is at 0x\00"

@str52 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.41, i32 0, i32 0)

@str.42 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str53 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.42, i32 0, i32 0)

@str.43 = private unnamed_addr constant [34 x i8] c"Did not find second user program\0a\00"

@str50 = internal alias i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.43, i32 0, i32 0)

declare void @returnTo(i32)

define void @yield() {
  br label %yield

yield:
  br label %b1011

b1011:
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

define internal void @func_b1206(i32 %r0, i32 %r1, i32 %r2) {
  br label %b1206

b1206:
  %r4 = phi i32 [%r0, %0], [%r7, %b258]
  %r5 = phi i32 [%r1, %0], [0, %b258]
  %r6 = phi i32 [%r2, %0], [%r6, %b258]
  %r3 = icmp eq i32 %r4, %r5
  br i1 %r3, label %b258, label %b2569

b258:
  %r8 = call i32 @inb(i32 1021)
  %r7 = and i32 %r8, 96
  br label %b1206

b2569:
  tail call void @outb(i32 1016, i32 %r6)
  ret void
}

define internal void @func_b1214(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1214

b1214:
  %r7 = phi i32 [%r0, %0], [%r5, %b1214]
  %r6 = phi i32 [%r1, %0], [%r6, %b1214]
  %r18 = phi i32 [%r2, %0], [%r18, %b1214]
  %r21 = phi i32 [%r3, %0], [%r21, %b1214]
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
  br i1 %r4, label %b1214, label %b295

b295:
  ret void
}

define internal void @func_b1427(i32 %r0) {
  br label %b1427

b1427:
  %r5 = add i32 ptrtoint(i8* @console to i32), 4
  %r3 = inttoptr i32 %r5 to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r0, 13
  br i1 %r1, label %b1429, label %b1432

b1429:
  %r9 = phi i32 [%r2, %b1427], [%r2, %b1432], [%r2, %b1434]
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
  br i1 %r6, label %b3905, label %b1431

b1432:
  %r20 = icmp eq i32 %r0, 10
  br i1 %r20, label %b1429, label %b1434

b3905:
  %r23 = add i32 ptrtoint(i8* @console to i32), 4
  %r21 = inttoptr i32 %r23 to i8*
  %r22 = trunc i32 %r7 to i8
  store i8 %r22, i8* %r21
  ret void

b1431:
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
  br i1 %r24, label %b3896, label %b1212

b1434:
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
  br i1 %r45, label %b3909, label %b1429

b3896:
  %r71 = phi i32 [%r25, %b1431], [%r69, %b3896]
  %r74 = phi i32 [%r27, %b1431], [%r71, %b3896]
  %r70 = phi i32 [%r26, %b1431], [%r70, %b3896]
  %r73 = phi i32 [%r32, %b1431], [%r73, %b3896]
  %r72 = phi i32 [%r39, %b1431], [%r72, %b3896]
  %r75 = phi i32 [%r28, %b1431], [%r75, %b3896]
  call void @func_b1214(i32 %r72, i32 %r73, i32 %r74, i32 %r71)
  %r69 = add i32 %r71, 1
  %r68 = icmp ule i32 %r69, %r70
  br i1 %r68, label %b3896, label %b1212

b1212:
  %r79 = phi i32 [%r39, %b1431], [%r72, %b3896], [%r77, %b1212]
  %r78 = phi i32 [%r32, %b1431], [%r73, %b3896], [%r78, %b1212]
  %r85 = phi i32 [%r28, %b1431], [%r75, %b3896], [%r85, %b1212]
  %r89 = phi i32 [%r26, %b1431], [%r70, %b3896], [%r89, %b1212]
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
  br i1 %r76, label %b1212, label %b295

b3909:
  %r92 = add i32 ptrtoint(i8* @console to i32), 5
  %r90 = inttoptr i32 %r92 to i8*
  %r91 = trunc i32 %r46 to i8
  store i8 %r91, i8* %r90
  ret void

b295:
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
  call void @func_b1206(i32 %r2, i32 0, i32 %r1)
  %r0 = icmp eq i32 %r1, 10
  br i1 %r0, label %b1729, label %b1730

b1729:
  %r12 = call i32 @inb(i32 1021)
  %r11 = and i32 %r12, 96
  call void @func_b1206(i32 %r11, i32 0, i32 13)
  call void @func_b1427(i32 %r1)
  tail call void @returnTo(i32 %r6)
  ret void

b1730:
  call void @func_b1427(i32 %r1)
  tail call void @returnTo(i32 %r6)
  ret void
}

define void @keyboardInterrupt() {
  %r25 = load i32, i32* @keyb_layout
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
  br i1 %r0, label %b888, label %b1011

b888:
  %r26 = and i32 %r2, 127
  %r24 = add i32 %r25, %r26
  %r22 = inttoptr i32 %r24 to i8*
  %r23 = load i8, i8* %r22
  %r13 = zext i8 %r23 to i32
  %r20 = inttoptr i32 753702 to i16*
  %r21 = load i16, i16* %r20
  %r19 = zext i16 %r21 to i32
  %r18 = and i32 %r19, 65280
  %r16 = or i32 %r18, %r13
  %r15 = inttoptr i32 753702 to i16*
  %r17 = trunc i32 %r16 to i16
  store i16 %r17, i16* %r15
  %r12 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r14 = trunc i32 %r13 to i8
  store i8 %r14, i8* %r12
  %r11 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r10 = load i1, i1* %r11
  %r9 = zext i1 %r10 to i32
  %r8 = mul i32 %r9, 72
  %r7 = add i32 ptrtoint(i8* @users to i32), %r8
  tail call void @returnTo(i32 %r7)
  ret void

b1011:
  %r31 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r30 = load i1, i1* %r31
  %r29 = zext i1 %r30 to i32
  %r28 = mul i32 %r29, 72
  %r27 = add i32 ptrtoint(i8* @users to i32), %r28
  tail call void @returnTo(i32 %r27)
  ret void
}

define internal i32 @func_b1242(i32 %r0, i32 %r1) {
  br label %b1242

b1242:
  %r2 = icmp ule i32 %r0, %r1
  br i1 %r2, label %b917, label %b918

b917:
  %r4 = add i32 %r0, 48
  %r3 = and i32 %r4, 255
  ret i32 %r3

b918:
  %r6 = add i32 %r0, 87
  %r5 = and i32 %r6, 255
  ret i32 %r5
}

define internal void @func_b829(i32 %r0, i32 %r1) {
  br label %b829

b829:
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
  %r15 = call i32 @func_b1242(i32 %r17, i32 9)
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
  %r4 = call i32 @func_b1242(i32 %r6, i32 9)
  %r3 = and i32 %r5, 65280
  %r1 = or i32 %r3, %r4
  %r0 = inttoptr i32 753816 to i16*
  %r2 = trunc i32 %r1 to i16
  store i16 %r2, i16* %r0
  br label %b3954

b3954:
  %r29 = phi i32 [75, %timerInterrupt], [%r28, %b3954]
  %r42 = phi i32 [%r7, %timerInterrupt], [%r38, %b3954]
  %r43 = phi i32 [%r10, %timerInterrupt], [%r43, %b3954]
  %r38 = lshr i32 %r42, 4
  %r41 = mul i32 %r29, 2
  %r33 = add i32 %r41, 753664
  %r39 = inttoptr i32 %r33 to i16*
  %r40 = load i16, i16* %r39
  %r36 = zext i16 %r40 to i32
  %r37 = and i32 %r38, 15
  %r35 = call i32 @func_b1242(i32 %r37, i32 9)
  %r34 = and i32 %r36, 65280
  %r31 = or i32 %r34, %r35
  %r30 = inttoptr i32 %r33 to i16*
  %r32 = trunc i32 %r31 to i16
  store i16 %r32, i16* %r30
  %r28 = add i32 %r29, -1
  %r27 = icmp sle i32 70, %r28
  br i1 %r27, label %b3954, label %b1608

b1608:
  %r45 = and i32 %r43, 3
  %r44 = icmp eq i32 %r45, 0
  br i1 %r44, label %b1266, label %b882

b1266:
  %r49 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r50 = load i8, i8* %r49
  %r48 = zext i8 %r50 to i32
  call void @func_b829(i32 %r48, i32 32)
  %r47 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  %r46 = load i1, i1* %r47
  br i1 %r46, label %b3951, label %b3946

b882:
  %r52 = and i32 %r43, 15
  %r51 = icmp eq i32 %r52, 0
  br i1 %r51, label %b880, label %b1011

b3951:
  %r54 = add i32 %r48, 1
  %r53 = icmp ule i32 %r54, 68
  br i1 %r53, label %b3949, label %b1269

b3946:
  %r56 = sub i32 %r48, 1
  %r55 = icmp sle i32 46, %r56
  br i1 %r55, label %b3944, label %b1272

b880:
  %r61 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r60 = load i1, i1* %r61
  %r59 = zext i1 %r60 to i32
  %r58 = add i32 %r59, 1
  %r57 = icmp ule i32 %r58, 1
  br i1 %r57, label %b3939, label %b2290

b1011:
  %r66 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r65 = load i1, i1* %r66
  %r64 = zext i1 %r65 to i32
  %r63 = mul i32 %r64, 72
  %r62 = add i32 ptrtoint(i8* @users to i32), %r63
  tail call void @returnTo(i32 %r62)
  ret void

b3949:
  call void @func_b829(i32 %r54, i32 62)
  %r69 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r70 = trunc i32 %r54 to i8
  store i8 %r70, i8* %r69
  %r68 = and i32 %r43, 15
  %r67 = icmp eq i32 %r68, 0
  br i1 %r67, label %b880, label %b1011

b1269:
  call void @func_b829(i32 %r48, i32 124)
  %r73 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 false, i1* %r73
  %r72 = and i32 %r43, 15
  %r71 = icmp eq i32 %r72, 0
  br i1 %r71, label %b880, label %b1011

b3944:
  call void @func_b829(i32 %r56, i32 60)
  %r76 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r77 = trunc i32 %r56 to i8
  store i8 %r77, i8* %r76
  %r75 = and i32 %r43, 15
  %r74 = icmp eq i32 %r75, 0
  br i1 %r74, label %b880, label %b1011

b1272:
  call void @func_b829(i32 %r48, i32 124)
  %r80 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r80
  %r79 = and i32 %r43, 15
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b880, label %b1011

b3939:
  %r82 = trunc i32 %r58 to i1
  %r81 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 %r82, i1* %r81
  br label %b1604

b2290:
  %r83 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r83
  br label %b1604

b1604:
  %r105 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r106 = load i8, i8* %r105
  %r101 = zext i8 %r106 to i32
  %r104 = add i32 ptrtoint(i8* @spinner to i32), %r101
  %r102 = inttoptr i32 %r104 to i8*
  %r103 = load i8, i8* %r102
  %r93 = zext i8 %r103 to i32
  %r100 = add i32 %r101, 1
  %r98 = and i32 %r100, 3
  %r97 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r99 = trunc i32 %r98 to i8
  store i8 %r99, i8* %r97
  %r95 = inttoptr i32 753822 to i16*
  %r96 = load i16, i16* %r95
  %r94 = zext i16 %r96 to i32
  %r92 = and i32 %r94, 65280
  %r90 = or i32 %r92, %r93
  %r89 = inttoptr i32 753822 to i16*
  %r91 = trunc i32 %r90 to i16
  store i16 %r91, i16* %r89
  %r88 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r87 = load i1, i1* %r88
  %r86 = zext i1 %r87 to i32
  %r85 = mul i32 %r86, 72
  %r84 = add i32 ptrtoint(i8* @users to i32), %r85
  tail call void @returnTo(i32 %r84)
  ret void
}

define internal void @func_b1436(i32 %r0) {
  br label %b1436

b1436:
  %r3 = call i32 @inb(i32 1021)
  %r2 = and i32 %r3, 96
  call void @func_b1206(i32 %r2, i32 0, i32 %r0)
  %r1 = icmp eq i32 %r0, 10
  br i1 %r1, label %b1424, label %c55

b1424:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1206(i32 %r9, i32 0, i32 13)
  %r8 = add i32 ptrtoint(i8* @console to i32), 4
  %r6 = inttoptr i32 %r8 to i8*
  %r7 = load i8, i8* %r6
  %r5 = zext i8 %r7 to i32
  %r4 = icmp eq i32 %r0, 13
  br i1 %r4, label %b1429, label %b1432

c55:
  tail call void @func_b1427(i32 %r0)
  ret void

b1429:
  %r14 = phi i32 [%r5, %b1424], [%r5, %b1432], [%r5, %b1434]
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
  br i1 %r11, label %b3905, label %b1431

b1432:
  %r25 = icmp eq i32 %r0, 10
  br i1 %r25, label %b1429, label %b1434

b3905:
  %r28 = add i32 ptrtoint(i8* @console to i32), 4
  %r26 = inttoptr i32 %r28 to i8*
  %r27 = trunc i32 %r12 to i8
  store i8 %r27, i8* %r26
  ret void

b1431:
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
  br i1 %r29, label %b3896, label %b1212

b1434:
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
  br i1 %r50, label %b3909, label %b1429

b3896:
  %r76 = phi i32 [%r30, %b1431], [%r74, %b3896]
  %r79 = phi i32 [%r32, %b1431], [%r76, %b3896]
  %r75 = phi i32 [%r31, %b1431], [%r75, %b3896]
  %r78 = phi i32 [%r37, %b1431], [%r78, %b3896]
  %r77 = phi i32 [%r44, %b1431], [%r77, %b3896]
  %r80 = phi i32 [%r33, %b1431], [%r80, %b3896]
  call void @func_b1214(i32 %r77, i32 %r78, i32 %r79, i32 %r76)
  %r74 = add i32 %r76, 1
  %r73 = icmp ule i32 %r74, %r75
  br i1 %r73, label %b3896, label %b1212

b1212:
  %r84 = phi i32 [%r44, %b1431], [%r77, %b3896], [%r82, %b1212]
  %r83 = phi i32 [%r37, %b1431], [%r78, %b3896], [%r83, %b1212]
  %r90 = phi i32 [%r33, %b1431], [%r80, %b3896], [%r90, %b1212]
  %r94 = phi i32 [%r31, %b1431], [%r75, %b3896], [%r94, %b1212]
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
  br i1 %r81, label %b1212, label %b295

b3909:
  %r97 = add i32 ptrtoint(i8* @console to i32), 5
  %r95 = inttoptr i32 %r97 to i8*
  %r96 = trunc i32 %r51 to i8
  store i8 %r96, i8* %r95
  ret void

b295:
  ret void
}

define internal void @func_b3918(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3918

b3918:
  %r8 = phi i32 [%r0, %0], [1, %b3920]
  %r7 = phi i32 [%r1, %0], [%r5, %b3920]
  %r6 = phi i32 [%r2, %0], [0, %b3920]
  %r9 = phi i32 [%r3, %0], [%r9, %b3920]
  %r5 = add i32 %r7, %r8
  %r4 = icmp ule i32 %r5, %r6
  br i1 %r4, label %b3920, label %b295

b3920:
  call void @func_b1436(i32 %r9)
  br label %b3918

b295:
  ret void
}

define internal void @func_b3934(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b3934

b3934:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b3936, label %b3925

b3936:
  %r8 = lshr i32 %r3, 4
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b3925, label %b2003

b3925:
  %r12 = phi i32 [1, %b3934], [1, %b3936]
  %r11 = phi i32 [0, %b3934], [0, %b3936]
  %r13 = phi i32 [%r4, %b3934], [%r4, %b3936]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b3927, label %b2061

b2003:
  %r22 = phi i32 [%r8, %b3936], [%r24, %b3931]
  %r16 = phi i32 [%r6, %b3936], [%r15, %b3931]
  %r23 = phi i32 [%r4, %b3936], [%r23, %b3931]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = and i32 %r22, 15
  %r18 = call i32 @func_b1242(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b3931, label %b2004

b3927:
  call void @func_b1436(i32 %r13)
  call void @func_b3918(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1436(i32 %r25)
  ret void

b2061:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1436(i32 %r28)
  ret void

b3931:
  %r24 = lshr i32 %r22, 4
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b2004, label %b2003

b2004:
  %r33 = phi i32 [%r23, %b2003], [%r23, %b3931]
  %r32 = phi i32 [%r16, %b2003], [%r16, %b3931]
  call void @func_b3918(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b2001

b2001:
  %r36 = phi i32 [%r32, %b2004], [%r35, %b2001]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1436(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b2001, label %b295

b295:
  ret void
}

define internal void @func_b2915(i32 %r0, i32 %r1) {
  br label %b2915

b2915:
  %r3 = phi i32 [%r0, %0], [%r8, %b2908]
  %r7 = phi i32 [%r1, %0], [%r6, %b2908]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1206(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3780, label %b3781

b3780:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1206(i32 %r9, i32 0, i32 13)
  call void @func_b1427(i32 %r3)
  br label %b2906

b3781:
  call void @func_b1427(i32 %r3)
  br label %b2906

b2906:
  %r14 = phi i32 [%r7, %b3780], [%r7, %b3781]
  %r12 = inttoptr i32 %r14 to i8*
  %r13 = load i8, i8* %r12
  %r8 = zext i8 %r13 to i32
  %r11 = icmp eq i32 %r8, 0
  br i1 %r11, label %b295, label %b2908

b295:
  ret void

b2908:
  %r6 = add i32 %r14, 1
  br label %b2915
}

define void @unhandled(i32 %r0, i32 %r1) {
  br label %unhandled

unhandled:
  %r4 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1350, label %b2944

b1350:
  %r10 = phi i32 [%r0, %unhandled], [%r17, %b2932]
  %r16 = phi i32 [%r1, %unhandled], [%r15, %b2932]
  %r14 = and i32 %r10, 15
  %r12 = call i32 @func_b1242(i32 %r14, i32 9)
  %r11 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r13 = trunc i32 %r12 to i8
  store i8 %r13, i8* %r11
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r10, i32 32)
  %r8 = inttoptr i32 ptrtoint(i8* @str55 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1346, label %b2931

b2944:
  %r18 = add i32 ptrtoint(i8* @str54 to i32), 1
  br label %b2936

b1346:
  %r23 = phi i32 [%r16, %b1350], [%r28, %b2919]
  %r27 = and i32 %r23, 15
  %r25 = call i32 @func_b1242(i32 %r27, i32 9)
  %r24 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r26 = trunc i32 %r25 to i8
  store i8 %r26, i8* %r24
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r23, i32 32)
  %r21 = inttoptr i32 ptrtoint(i8* @str56 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b295, label %b2918

b2931:
  %r29 = add i32 ptrtoint(i8* @str55 to i32), 1
  br label %b2923

b2936:
  %r31 = phi i32 [%r3, %b2944], [%r38, %b2934]
  %r37 = phi i32 [%r18, %b2944], [%r36, %b2934]
  %r35 = phi i32 [%r0, %b2944], [%r17, %b2934]
  %r34 = phi i32 [%r1, %b2944], [%r15, %b2934]
  %r33 = call i32 @inb(i32 1021)
  %r32 = and i32 %r33, 96
  call void @func_b1206(i32 %r32, i32 0, i32 %r31)
  %r30 = icmp eq i32 %r31, 10
  br i1 %r30, label %b2939, label %b2941

b295:
  ret void

b2918:
  %r39 = add i32 ptrtoint(i8* @str56 to i32), 1
  br label %c99

b2923:
  %r41 = phi i32 [%r7, %b2931], [%r47, %b2921]
  %r46 = phi i32 [%r29, %b2931], [%r45, %b2921]
  %r44 = phi i32 [%r16, %b2931], [%r28, %b2921]
  %r43 = call i32 @inb(i32 1021)
  %r42 = and i32 %r43, 96
  call void @func_b1206(i32 %r42, i32 0, i32 %r41)
  %r40 = icmp eq i32 %r41, 10
  br i1 %r40, label %b2926, label %b2928

b2939:
  %r49 = call i32 @inb(i32 1021)
  %r48 = and i32 %r49, 96
  call void @func_b1206(i32 %r48, i32 0, i32 13)
  call void @func_b1427(i32 %r31)
  br label %b2932

b2941:
  call void @func_b1427(i32 %r31)
  br label %b2932

c99:
  tail call void @func_b2915(i32 %r20, i32 %r39)
  ret void

b2926:
  %r51 = call i32 @inb(i32 1021)
  %r50 = and i32 %r51, 96
  call void @func_b1206(i32 %r50, i32 0, i32 13)
  call void @func_b1427(i32 %r41)
  br label %b2919

b2928:
  call void @func_b1427(i32 %r41)
  br label %b2919

b2932:
  %r55 = phi i32 [%r37, %b2939], [%r37, %b2941]
  %r15 = phi i32 [%r34, %b2939], [%r34, %b2941]
  %r17 = phi i32 [%r35, %b2939], [%r35, %b2941]
  %r53 = inttoptr i32 %r55 to i8*
  %r54 = load i8, i8* %r53
  %r38 = zext i8 %r54 to i32
  %r52 = icmp eq i32 %r38, 0
  br i1 %r52, label %b1350, label %b2934

b2919:
  %r59 = phi i32 [%r46, %b2926], [%r46, %b2928]
  %r28 = phi i32 [%r44, %b2926], [%r44, %b2928]
  %r57 = inttoptr i32 %r59 to i8*
  %r58 = load i8, i8* %r57
  %r47 = zext i8 %r58 to i32
  %r56 = icmp eq i32 %r47, 0
  br i1 %r56, label %b1346, label %b2921

b2934:
  %r36 = add i32 %r55, 1
  br label %b2936

b2921:
  %r45 = add i32 %r59, 1
  br label %b2923
}

define internal void @func_b2553(i32 %r0, i32 %r1) {
  br label %b2553

b2553:
  %r6 = phi i32 [%r0, %0], [%r5, %b2554]
  %r3 = phi i32 [%r1, %0], [%r4, %b2554]
  %r2 = icmp ult i32 %r3, 32
  br i1 %r2, label %b2554, label %b2224

b2554:
  %r7 = inttoptr i32 %r6 to i8*
  %r8 = trunc i32 0 to i8
  store i8 %r8, i8* %r7
  %r4 = add i32 %r3, 1
  %r5 = add i32 %r6, 1
  br label %b2553

b2224:
  ret void
}

define internal void @func_b1280(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1280

b1280:
  %r7 = phi i32 [%r0, %0], [%r5, %b1280]
  %r6 = phi i32 [%r1, %0], [%r6, %b1280]
  %r13 = phi i32 [%r2, %0], [%r13, %b1280]
  %r17 = phi i32 [%r3, %0], [%r17, %b1280]
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
  br i1 %r4, label %b1280, label %b295

b295:
  ret void
}

define internal void @func_b3972(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5) {
  br label %b3972

b3972:
  %r10 = phi i32 [%r0, %0], [1, %b1282]
  %r9 = phi i32 [%r1, %0], [%r7, %b1282]
  %r8 = phi i32 [%r2, %0], [%r8, %b1282]
  %r13 = phi i32 [%r3, %0], [%r13, %b1282]
  %r12 = phi i32 [%r4, %0], [%r12, %b1282]
  %r11 = phi i32 [%r5, %0], [%r11, %b1282]
  %r7 = add i32 %r9, %r10
  %r6 = icmp ule i32 %r7, %r8
  br i1 %r6, label %b1282, label %b295

b1282:
  call void @func_b1280(i32 %r13, i32 %r12, i32 %r11, i32 %r7)
  br label %b3972

b295:
  ret void
}

define internal void @func_b3981(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b3981

b3981:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b3983, label %b3925

b3983:
  %r8 = udiv i32 %r3, 10
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b3925, label %b2010

b3925:
  %r12 = phi i32 [1, %b3981], [1, %b3983]
  %r11 = phi i32 [0, %b3981], [0, %b3983]
  %r13 = phi i32 [%r4, %b3981], [%r4, %b3983]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b3927, label %b2061

b2010:
  %r22 = phi i32 [%r8, %b3983], [%r24, %b3975]
  %r16 = phi i32 [%r6, %b3983], [%r15, %b3975]
  %r23 = phi i32 [%r4, %b3983], [%r23, %b3975]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = urem i32 %r22, 10
  %r18 = call i32 @func_b1242(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b3975, label %b2004

b3927:
  call void @func_b1436(i32 %r13)
  call void @func_b3918(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1436(i32 %r25)
  ret void

b2061:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1436(i32 %r28)
  ret void

b3975:
  %r24 = udiv i32 %r22, 10
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b2004, label %b2010

b2004:
  %r33 = phi i32 [%r23, %b2010], [%r23, %b3975]
  %r32 = phi i32 [%r16, %b2010], [%r16, %b3975]
  call void @func_b3918(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b2001

b2001:
  %r36 = phi i32 [%r32, %b2004], [%r35, %b2001]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1436(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b2001, label %b295

b295:
  ret void
}

define internal void @func_b2994(i32 %r0) {
  br label %b2994

b2994:
  %r3 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b1361, label %b2996

b1361:
  %r15 = phi i32 [%r0, %b2994], [%r16, %b2974]
  %r14 = inttoptr i32 %r15 to i32*
  %r9 = load i32, i32* %r14
  %r13 = and i32 %r9, 15
  %r11 = call i32 @func_b1242(i32 %r13, i32 9)
  %r10 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r12 = trunc i32 %r11 to i8
  store i8 %r12, i8* %r10
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r9, i32 32)
  %r7 = inttoptr i32 ptrtoint(i8* @str5 to i32) to i8*
  %r8 = load i8, i8* %r7
  %r6 = zext i8 %r8 to i32
  %r5 = icmp eq i32 %r6, 0
  br i1 %r5, label %b1359, label %b2973

b2996:
  %r17 = add i32 ptrtoint(i8* @str4 to i32), 1
  br label %b2978

b1359:
  %r29 = phi i32 [%r15, %b1361], [%r30, %b2961]
  %r28 = add i32 %r29, 4
  %r27 = inttoptr i32 %r28 to i32*
  %r22 = load i32, i32* %r27
  %r26 = and i32 %r22, 15
  %r24 = call i32 @func_b1242(i32 %r26, i32 9)
  %r23 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r25 = trunc i32 %r24 to i8
  store i8 %r25, i8* %r23
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r22, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str6 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1357, label %b2960

b2973:
  %r31 = add i32 ptrtoint(i8* @str5 to i32), 1
  br label %b2965

b2978:
  %r33 = phi i32 [%r2, %b2996], [%r39, %b2976]
  %r38 = phi i32 [%r17, %b2996], [%r37, %b2976]
  %r36 = phi i32 [%r0, %b2996], [%r16, %b2976]
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1206(i32 %r34, i32 0, i32 %r33)
  %r32 = icmp eq i32 %r33, 10
  br i1 %r32, label %b2981, label %b2983

b1357:
  %r49 = phi i32 [%r29, %b1359], [%r50, %b2948]
  %r48 = add i32 %r49, 8
  %r47 = inttoptr i32 %r48 to i32*
  %r42 = load i32, i32* %r47
  %r46 = and i32 %r42, 15
  %r44 = call i32 @func_b1242(i32 %r46, i32 9)
  %r43 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r45 = trunc i32 %r44 to i8
  store i8 %r45, i8* %r43
  %r41 = lshr i32 %r42, 4
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b3925, label %b2003

b2960:
  %r51 = add i32 ptrtoint(i8* @str6 to i32), 1
  br label %b2952

b2965:
  %r53 = phi i32 [%r6, %b2973], [%r59, %b2963]
  %r58 = phi i32 [%r31, %b2973], [%r57, %b2963]
  %r56 = phi i32 [%r15, %b2973], [%r30, %b2963]
  %r55 = call i32 @inb(i32 1021)
  %r54 = and i32 %r55, 96
  call void @func_b1206(i32 %r54, i32 0, i32 %r53)
  %r52 = icmp eq i32 %r53, 10
  br i1 %r52, label %b2968, label %b2970

b2981:
  %r61 = call i32 @inb(i32 1021)
  %r60 = and i32 %r61, 96
  call void @func_b1206(i32 %r60, i32 0, i32 13)
  call void @func_b1427(i32 %r33)
  br label %b2974

b2983:
  call void @func_b1427(i32 %r33)
  br label %b2974

b3925:
  %r63 = add i32 0, 1
  %r62 = icmp ule i32 %r63, 0
  br i1 %r62, label %b3927, label %b2061

b2003:
  %r72 = phi i32 [%r41, %b1357], [%r74, %b3931]
  %r66 = phi i32 [1, %b1357], [%r65, %b3931]
  %r73 = phi i32 [32, %b1357], [%r73, %b3931]
  %r70 = add i32 ptrtoint(i8* @itoaBuf to i32), %r66
  %r71 = and i32 %r72, 15
  %r68 = call i32 @func_b1242(i32 %r71, i32 9)
  %r67 = inttoptr i32 %r70 to i8*
  %r69 = trunc i32 %r68 to i8
  store i8 %r69, i8* %r67
  %r65 = add i32 %r66, 1
  %r64 = icmp ule i32 %r65, 31
  br i1 %r64, label %b3931, label %b2004

b2952:
  %r76 = phi i32 [%r19, %b2960], [%r82, %b2950]
  %r81 = phi i32 [%r51, %b2960], [%r80, %b2950]
  %r79 = phi i32 [%r29, %b2960], [%r50, %b2950]
  %r78 = call i32 @inb(i32 1021)
  %r77 = and i32 %r78, 96
  call void @func_b1206(i32 %r77, i32 0, i32 %r76)
  %r75 = icmp eq i32 %r76, 10
  br i1 %r75, label %b2955, label %b2957

b2968:
  %r84 = call i32 @inb(i32 1021)
  %r83 = and i32 %r84, 96
  call void @func_b1206(i32 %r83, i32 0, i32 13)
  call void @func_b1427(i32 %r53)
  br label %b2961

b2970:
  call void @func_b1427(i32 %r53)
  br label %b2961

b2974:
  %r88 = phi i32 [%r38, %b2981], [%r38, %b2983]
  %r16 = phi i32 [%r36, %b2981], [%r36, %b2983]
  %r86 = inttoptr i32 %r88 to i8*
  %r87 = load i8, i8* %r86
  %r39 = zext i8 %r87 to i32
  %r85 = icmp eq i32 %r39, 0
  br i1 %r85, label %b1361, label %b2976

b3927:
  call void @func_b1436(i32 32)
  call void @func_b3918(i32 1, i32 %r63, i32 0, i32 32)
  %r90 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r91 = load i8, i8* %r90
  %r89 = zext i8 %r91 to i32
  call void @func_b1436(i32 %r89)
  ret void

b2061:
  %r93 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r94 = load i8, i8* %r93
  %r92 = zext i8 %r94 to i32
  call void @func_b1436(i32 %r92)
  ret void

b3931:
  %r74 = lshr i32 %r72, 4
  %r95 = icmp eq i32 %r74, 0
  br i1 %r95, label %b2004, label %b2003

b2004:
  %r97 = phi i32 [%r73, %b2003], [%r73, %b3931]
  %r96 = phi i32 [%r66, %b2003], [%r66, %b3931]
  call void @func_b3918(i32 1, i32 %r96, i32 0, i32 %r97)
  br label %b2001

b2955:
  %r99 = call i32 @inb(i32 1021)
  %r98 = and i32 %r99, 96
  call void @func_b1206(i32 %r98, i32 0, i32 13)
  call void @func_b1427(i32 %r76)
  br label %b2948

b2957:
  call void @func_b1427(i32 %r76)
  br label %b2948

b2961:
  %r103 = phi i32 [%r58, %b2968], [%r58, %b2970]
  %r30 = phi i32 [%r56, %b2968], [%r56, %b2970]
  %r101 = inttoptr i32 %r103 to i8*
  %r102 = load i8, i8* %r101
  %r59 = zext i8 %r102 to i32
  %r100 = icmp eq i32 %r59, 0
  br i1 %r100, label %b1359, label %b2963

b2976:
  %r37 = add i32 %r88, 1
  br label %b2978

b2001:
  %r106 = phi i32 [%r96, %b2004], [%r105, %b2001]
  %r110 = add i32 ptrtoint(i8* @itoaBuf to i32), %r106
  %r108 = inttoptr i32 %r110 to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  call void @func_b1436(i32 %r107)
  %r105 = add i32 %r106, -1
  %r104 = icmp sle i32 0, %r105
  br i1 %r104, label %b2001, label %b295

b2948:
  %r114 = phi i32 [%r81, %b2955], [%r81, %b2957]
  %r50 = phi i32 [%r79, %b2955], [%r79, %b2957]
  %r112 = inttoptr i32 %r114 to i8*
  %r113 = load i8, i8* %r112
  %r82 = zext i8 %r113 to i32
  %r111 = icmp eq i32 %r82, 0
  br i1 %r111, label %b1357, label %b2950

b2963:
  %r57 = add i32 %r103, 1
  br label %b2965

b295:
  ret void

b2950:
  %r80 = add i32 %r114, 1
  br label %b2952
}

define internal i32 @func_b3031(i32 %r0, i32 %r1) {
  br label %b3031

b3031:
  %r4 = inttoptr i32 ptrtoint(i8* @str11 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3023, label %b3033

b3023:
  %r13 = phi i32 [%r1, %b3031], [%r12, %b3030]
  %r11 = phi i32 [%r0, %b3031], [%r10, %b3030]
  %r8 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1832, label %b3025

b3033:
  %r14 = add i32 ptrtoint(i8* @str11 to i32), 1
  br label %b3030

b1832:
  %r19 = phi i32 [%r11, %b3023], [%r26, %b3013]
  %r25 = phi i32 [%r13, %b3023], [%r24, %b3013]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1242(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b3981(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1833, label %b3012

b3025:
  %r27 = add i32 ptrtoint(i8* @str1 to i32), 1
  br label %b3017

b3030:
  %r33 = phi i32 [%r3, %b3033], [%r29, %b3028]
  %r32 = phi i32 [%r14, %b3033], [%r34, %b3028]
  %r12 = phi i32 [%r1, %b3033], [%r12, %b3028]
  %r10 = phi i32 [%r0, %b3033], [%r10, %b3028]
  call void @func_b1436(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b3023, label %b3028

b1833:
  %r39 = phi i32 [%r25, %b1832], [%r42, %b3000]
  %r41 = phi i32 [%r19, %b1832], [%r40, %b3000]
  call void @func_b2994(i32 %r39)
  %r37 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b1363, label %b2999

b3012:
  %r43 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b3004

b3017:
  %r45 = phi i32 [%r7, %b3025], [%r52, %b3015]
  %r51 = phi i32 [%r27, %b3025], [%r50, %b3015]
  %r49 = phi i32 [%r11, %b3025], [%r26, %b3015]
  %r48 = phi i32 [%r13, %b3025], [%r24, %b3015]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1206(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3020, label %b3022

b3028:
  %r34 = add i32 %r32, 1
  br label %b3030

b1363:
  %r54 = phi i32 [%r41, %b1833], [%r55, %b2984]
  %r53 = add i32 %r54, 1
  ret i32 %r53

b2999:
  %r56 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b2988

b3004:
  %r58 = phi i32 [%r16, %b3012], [%r65, %b3002]
  %r64 = phi i32 [%r43, %b3012], [%r63, %b3002]
  %r62 = phi i32 [%r25, %b3012], [%r42, %b3002]
  %r61 = phi i32 [%r19, %b3012], [%r40, %b3002]
  %r60 = call i32 @inb(i32 1021)
  %r59 = and i32 %r60, 96
  call void @func_b1206(i32 %r59, i32 0, i32 %r58)
  %r57 = icmp eq i32 %r58, 10
  br i1 %r57, label %b3007, label %b3009

b3020:
  %r67 = call i32 @inb(i32 1021)
  %r66 = and i32 %r67, 96
  call void @func_b1206(i32 %r66, i32 0, i32 13)
  call void @func_b1427(i32 %r45)
  br label %b3013

b3022:
  call void @func_b1427(i32 %r45)
  br label %b3013

b2988:
  %r69 = phi i32 [%r36, %b2999], [%r75, %b2986]
  %r74 = phi i32 [%r56, %b2999], [%r73, %b2986]
  %r72 = phi i32 [%r41, %b2999], [%r55, %b2986]
  %r71 = call i32 @inb(i32 1021)
  %r70 = and i32 %r71, 96
  call void @func_b1206(i32 %r70, i32 0, i32 %r69)
  %r68 = icmp eq i32 %r69, 10
  br i1 %r68, label %b2991, label %b2993

b3007:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1206(i32 %r76, i32 0, i32 13)
  call void @func_b1427(i32 %r58)
  br label %b3000

b3009:
  call void @func_b1427(i32 %r58)
  br label %b3000

b3013:
  %r81 = phi i32 [%r51, %b3020], [%r51, %b3022]
  %r24 = phi i32 [%r48, %b3020], [%r48, %b3022]
  %r26 = phi i32 [%r49, %b3020], [%r49, %b3022]
  %r79 = inttoptr i32 %r81 to i8*
  %r80 = load i8, i8* %r79
  %r52 = zext i8 %r80 to i32
  %r78 = icmp eq i32 %r52, 0
  br i1 %r78, label %b1832, label %b3015

b2991:
  %r83 = call i32 @inb(i32 1021)
  %r82 = and i32 %r83, 96
  call void @func_b1206(i32 %r82, i32 0, i32 13)
  call void @func_b1427(i32 %r69)
  br label %b2984

b2993:
  call void @func_b1427(i32 %r69)
  br label %b2984

b3000:
  %r87 = phi i32 [%r64, %b3007], [%r64, %b3009]
  %r40 = phi i32 [%r61, %b3007], [%r61, %b3009]
  %r42 = phi i32 [%r62, %b3007], [%r62, %b3009]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r65 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r65, 0
  br i1 %r84, label %b1833, label %b3002

b3015:
  %r50 = add i32 %r81, 1
  br label %b3017

b2984:
  %r91 = phi i32 [%r74, %b2991], [%r74, %b2993]
  %r55 = phi i32 [%r72, %b2991], [%r72, %b2993]
  %r89 = inttoptr i32 %r91 to i8*
  %r90 = load i8, i8* %r89
  %r75 = zext i8 %r90 to i32
  %r88 = icmp eq i32 %r75, 0
  br i1 %r88, label %b1363, label %b2986

b3002:
  %r63 = add i32 %r87, 1
  br label %b3004

b2986:
  %r73 = add i32 %r91, 1
  br label %b2988
}

define internal i32 @func_b3043(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3043

b3043:
  %r5 = phi i32 [%r0, %0], [%r14, %b3036]
  %r13 = phi i32 [%r1, %0], [%r12, %b3036]
  %r11 = phi i32 [%r2, %0], [%r10, %b3036]
  %r9 = phi i32 [%r3, %0], [%r8, %b3036]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1206(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b3787, label %b3788

b3787:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1206(i32 %r15, i32 0, i32 13)
  call void @func_b1427(i32 %r5)
  br label %b3034

b3788:
  call void @func_b1427(i32 %r5)
  br label %b3034

b3034:
  %r20 = phi i32 [%r13, %b3787], [%r13, %b3788]
  %r10 = phi i32 [%r11, %b3787], [%r11, %b3788]
  %r8 = phi i32 [%r9, %b3787], [%r9, %b3788]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c191, label %b3036

c191:
  %r21 = tail call i32 @func_b3031(i32 %r10, i32 %r8)
  ret i32 %r21

b3036:
  %r12 = add i32 %r20, 1
  br label %b3043
}

define internal i32 @func_b3049(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3049

b3049:
  %r5 = phi i32 [%r0, %0], [%r12, %b3791], [%r12, %b3792]
  %r11 = phi i32 [%r1, %0], [%r10, %b3791], [%r10, %b3792]
  %r9 = phi i32 [%r2, %0], [12, %b3791], [12, %b3792]
  %r8 = phi i32 [%r3, %0], [%r7, %b3791], [%r6, %b3792]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b423, label %b3051

b423:
  ret i32 %r8

b3051:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str0 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3791, label %b3792

b3791:
  %r7 = call i32 @func_b3031(i32 %r8, i32 %r11)
  br label %b3049

b3792:
  %r17 = add i32 ptrtoint(i8* @str0 to i32), 1
  %r6 = call i32 @func_b3043(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b3049
}

define internal void @func_b3085(i32 %r0, i32 %r1) {
  br label %b3085

b3085:
  %r6 = phi i32 [%r0, %0], [%r8, %b3092], [%r8, %b3094]
  %r7 = phi i32 [%r1, %0], [%r7, %b3092], [%r7, %b3094]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1371, label %b3087

b1371:
  %r19 = add i32 %r7, 4
  %r18 = inttoptr i32 %r19 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1242(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b295, label %b3084

b3087:
  %r8 = add i32 %r6, 1
  br label %b3089

b295:
  ret void

b3084:
  %r20 = add i32 ptrtoint(i8* @str9 to i32), 1
  br label %c206

b3089:
  %r23 = call i32 @inb(i32 1021)
  %r22 = and i32 %r23, 96
  call void @func_b1206(i32 %r22, i32 0, i32 %r3)
  %r21 = icmp eq i32 %r3, 10
  br i1 %r21, label %b3092, label %b3094

c206:
  tail call void @func_b2915(i32 %r10, i32 %r20)
  ret void

b3092:
  %r25 = call i32 @inb(i32 1021)
  %r24 = and i32 %r25, 96
  call void @func_b1206(i32 %r24, i32 0, i32 13)
  call void @func_b1427(i32 %r3)
  br label %b3085

b3094:
  call void @func_b1427(i32 %r3)
  br label %b3085
}

define internal void @func_b3113(i32 %r0, i32 %r1) {
  br label %b3113

b3113:
  %r6 = phi i32 [%r0, %0], [%r8, %b3120], [%r8, %b3122]
  %r7 = phi i32 [%r1, %0], [%r7, %b3120], [%r7, %b3122]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1373, label %b3115

b1373:
  %r18 = inttoptr i32 %r7 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1242(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str8 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1371, label %b3112

b3115:
  %r8 = add i32 %r6, 1
  %r21 = call i32 @inb(i32 1021)
  %r20 = and i32 %r21, 96
  call void @func_b1206(i32 %r20, i32 0, i32 %r3)
  %r19 = icmp eq i32 %r3, 10
  br i1 %r19, label %b3120, label %b3122

b1371:
  %r33 = phi i32 [%r7, %b1373], [%r34, %b3085]
  %r32 = add i32 %r33, 4
  %r31 = inttoptr i32 %r32 to i32*
  %r26 = load i32, i32* %r31
  %r30 = and i32 %r26, 15
  %r28 = call i32 @func_b1242(i32 %r30, i32 9)
  %r27 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r29 = trunc i32 %r28 to i8
  store i8 %r29, i8* %r27
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r26, i32 32)
  %r24 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b295, label %b3084

b3112:
  %r35 = add i32 ptrtoint(i8* @str8 to i32), 1
  br label %b3089

b3120:
  %r37 = call i32 @inb(i32 1021)
  %r36 = and i32 %r37, 96
  call void @func_b1206(i32 %r36, i32 0, i32 13)
  call void @func_b1427(i32 %r3)
  br label %b3113

b3122:
  call void @func_b1427(i32 %r3)
  br label %b3113

b295:
  ret void

b3084:
  %r38 = add i32 ptrtoint(i8* @str9 to i32), 1
  br label %c220

b3089:
  %r40 = phi i32 [%r10, %b3112], [%r46, %b3087]
  %r45 = phi i32 [%r35, %b3112], [%r44, %b3087]
  %r43 = phi i32 [%r7, %b3112], [%r34, %b3087]
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1206(i32 %r41, i32 0, i32 %r40)
  %r39 = icmp eq i32 %r40, 10
  br i1 %r39, label %b3092, label %b3094

c220:
  tail call void @func_b2915(i32 %r23, i32 %r38)
  ret void

b3092:
  %r48 = call i32 @inb(i32 1021)
  %r47 = and i32 %r48, 96
  call void @func_b1206(i32 %r47, i32 0, i32 13)
  call void @func_b1427(i32 %r40)
  br label %b3085

b3094:
  call void @func_b1427(i32 %r40)
  br label %b3085

b3085:
  %r52 = phi i32 [%r45, %b3092], [%r45, %b3094]
  %r34 = phi i32 [%r43, %b3092], [%r43, %b3094]
  %r50 = inttoptr i32 %r52 to i8*
  %r51 = load i8, i8* %r50
  %r46 = zext i8 %r51 to i32
  %r49 = icmp eq i32 %r46, 0
  br i1 %r49, label %b1371, label %b3087

b3087:
  %r44 = add i32 %r52, 1
  br label %b3089
}

define internal i32 @func_b3169(i32 %r0, i32 %r1) {
  br label %b3169

b3169:
  %r4 = inttoptr i32 ptrtoint(i8* @str13 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3161, label %b3171

b3161:
  %r13 = phi i32 [%r1, %b3169], [%r12, %b3168]
  %r11 = phi i32 [%r0, %b3169], [%r10, %b3168]
  %r8 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1896, label %b3163

b3171:
  %r14 = add i32 ptrtoint(i8* @str13 to i32), 1
  br label %b3168

b1896:
  %r19 = phi i32 [%r11, %b3161], [%r26, %b3151]
  %r25 = phi i32 [%r13, %b3161], [%r24, %b3151]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1242(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b3981(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b3129, label %b3150

b3163:
  %r27 = add i32 ptrtoint(i8* @str1 to i32), 1
  br label %b3155

b3168:
  %r33 = phi i32 [%r3, %b3171], [%r29, %b3166]
  %r32 = phi i32 [%r14, %b3171], [%r34, %b3166]
  %r12 = phi i32 [%r1, %b3171], [%r12, %b3166]
  %r10 = phi i32 [%r0, %b3171], [%r10, %b3166]
  call void @func_b1436(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b3161, label %b3166

b3129:
  %r42 = phi i32 [%r19, %b1896], [%r41, %b3138]
  %r40 = phi i32 [%r25, %b1896], [%r39, %b3138]
  %r37 = inttoptr i32 ptrtoint(i8* @str7 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b2114, label %b3131

b3150:
  %r43 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b3142

b3155:
  %r45 = phi i32 [%r7, %b3163], [%r52, %b3153]
  %r51 = phi i32 [%r27, %b3163], [%r50, %b3153]
  %r49 = phi i32 [%r11, %b3163], [%r26, %b3153]
  %r48 = phi i32 [%r13, %b3163], [%r24, %b3153]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1206(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3158, label %b3160

b3166:
  %r34 = add i32 %r32, 1
  br label %b3168

b2114:
  %r62 = inttoptr i32 %r40 to i32*
  %r57 = load i32, i32* %r62
  %r61 = and i32 %r57, 15
  %r59 = call i32 @func_b1242(i32 %r61, i32 9)
  %r58 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r60 = trunc i32 %r59 to i8
  store i8 %r60, i8* %r58
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r57, i32 32)
  %r55 = inttoptr i32 ptrtoint(i8* @str8 to i32) to i8*
  %r56 = load i8, i8* %r55
  %r54 = zext i8 %r56 to i32
  %r53 = icmp eq i32 %r54, 0
  br i1 %r53, label %b2115, label %b3103

b3131:
  %r66 = add i32 ptrtoint(i8* @str7 to i32), 1
  %r65 = call i32 @inb(i32 1021)
  %r64 = and i32 %r65, 96
  call void @func_b1206(i32 %r64, i32 0, i32 %r36)
  %r63 = icmp eq i32 %r36, 10
  br i1 %r63, label %b3135, label %b3137

b3142:
  %r68 = phi i32 [%r16, %b3150], [%r75, %b3140]
  %r74 = phi i32 [%r43, %b3150], [%r73, %b3140]
  %r72 = phi i32 [%r25, %b3150], [%r39, %b3140]
  %r71 = phi i32 [%r19, %b3150], [%r41, %b3140]
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1206(i32 %r69, i32 0, i32 %r68)
  %r67 = icmp eq i32 %r68, 10
  br i1 %r67, label %b3145, label %b3147

b3158:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1206(i32 %r76, i32 0, i32 13)
  call void @func_b1427(i32 %r45)
  br label %b3151

b3160:
  call void @func_b1427(i32 %r45)
  br label %b3151

b2115:
  %r88 = add i32 %r40, 4
  %r87 = inttoptr i32 %r88 to i32*
  %r82 = load i32, i32* %r87
  %r86 = and i32 %r82, 15
  %r84 = call i32 @func_b1242(i32 %r86, i32 9)
  %r83 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r85 = trunc i32 %r84 to i8
  store i8 %r85, i8* %r83
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r82, i32 32)
  %r80 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3071, label %b3079

b3103:
  %r92 = add i32 ptrtoint(i8* @str8 to i32), 1
  %r91 = call i32 @inb(i32 1021)
  %r90 = and i32 %r91, 96
  call void @func_b1206(i32 %r90, i32 0, i32 %r54)
  %r89 = icmp eq i32 %r54, 10
  br i1 %r89, label %b3107, label %b3109

b3135:
  %r98 = call i32 @inb(i32 1021)
  %r97 = and i32 %r98, 96
  call void @func_b1206(i32 %r97, i32 0, i32 13)
  call void @func_b1427(i32 %r36)
  call void @func_b3113(i32 %r66, i32 %r40)
  %r95 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b1363, label %b3125

b3137:
  call void @func_b1427(i32 %r36)
  call void @func_b3113(i32 %r66, i32 %r40)
  %r101 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r102 = load i8, i8* %r101
  %r100 = zext i8 %r102 to i32
  %r99 = icmp eq i32 %r100, 0
  br i1 %r99, label %b1363, label %b3125

b3145:
  %r104 = call i32 @inb(i32 1021)
  %r103 = and i32 %r104, 96
  call void @func_b1206(i32 %r103, i32 0, i32 13)
  call void @func_b1427(i32 %r68)
  br label %b3138

b3147:
  call void @func_b1427(i32 %r68)
  br label %b3138

b3151:
  %r108 = phi i32 [%r51, %b3158], [%r51, %b3160]
  %r24 = phi i32 [%r48, %b3158], [%r48, %b3160]
  %r26 = phi i32 [%r49, %b3158], [%r49, %b3160]
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r52 = zext i8 %r107 to i32
  %r105 = icmp eq i32 %r52, 0
  br i1 %r105, label %b1896, label %b3153

b3071:
  %r111 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r112 = load i8, i8* %r111
  %r110 = zext i8 %r112 to i32
  %r109 = icmp eq i32 %r110, 0
  br i1 %r109, label %b1363, label %b3125

b3079:
  %r117 = add i32 ptrtoint(i8* @str9 to i32), 1
  call void @func_b2915(i32 %r79, i32 %r117)
  %r115 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r116 = load i8, i8* %r115
  %r114 = zext i8 %r116 to i32
  %r113 = icmp eq i32 %r114, 0
  br i1 %r113, label %b1363, label %b3125

b3107:
  %r123 = call i32 @inb(i32 1021)
  %r122 = and i32 %r123, 96
  call void @func_b1206(i32 %r122, i32 0, i32 13)
  call void @func_b1427(i32 %r54)
  call void @func_b3085(i32 %r92, i32 %r40)
  %r120 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r119 = zext i8 %r121 to i32
  %r118 = icmp eq i32 %r119, 0
  br i1 %r118, label %b1363, label %b3125

b3109:
  call void @func_b1427(i32 %r54)
  call void @func_b3085(i32 %r92, i32 %r40)
  %r126 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r127 = load i8, i8* %r126
  %r125 = zext i8 %r127 to i32
  %r124 = icmp eq i32 %r125, 0
  br i1 %r124, label %b1363, label %b3125

b1363:
  %r129 = phi i32 [%r42, %b3135], [%r42, %b3137], [%r42, %b3071], [%r42, %b3079], [%r42, %b3107], [%r42, %b3109], [%r130, %b3061]
  %r128 = add i32 %r129, 1
  ret i32 %r128

b3125:
  %r133 = phi i32 [%r94, %b3135], [%r100, %b3137], [%r110, %b3071], [%r114, %b3079], [%r119, %b3107], [%r125, %b3109]
  %r132 = phi i32 [%r42, %b3135], [%r42, %b3137], [%r42, %b3071], [%r42, %b3079], [%r42, %b3107], [%r42, %b3109]
  %r131 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b3065

b3138:
  %r137 = phi i32 [%r74, %b3145], [%r74, %b3147]
  %r41 = phi i32 [%r71, %b3145], [%r71, %b3147]
  %r39 = phi i32 [%r72, %b3145], [%r72, %b3147]
  %r135 = inttoptr i32 %r137 to i8*
  %r136 = load i8, i8* %r135
  %r75 = zext i8 %r136 to i32
  %r134 = icmp eq i32 %r75, 0
  br i1 %r134, label %b3129, label %b3140

b3153:
  %r50 = add i32 %r108, 1
  br label %b3155

b3065:
  %r139 = phi i32 [%r133, %b3125], [%r145, %b3063]
  %r144 = phi i32 [%r131, %b3125], [%r143, %b3063]
  %r142 = phi i32 [%r132, %b3125], [%r130, %b3063]
  %r141 = call i32 @inb(i32 1021)
  %r140 = and i32 %r141, 96
  call void @func_b1206(i32 %r140, i32 0, i32 %r139)
  %r138 = icmp eq i32 %r139, 10
  br i1 %r138, label %b3068, label %b3070

b3140:
  %r73 = add i32 %r137, 1
  br label %b3142

b3068:
  %r147 = call i32 @inb(i32 1021)
  %r146 = and i32 %r147, 96
  call void @func_b1206(i32 %r146, i32 0, i32 13)
  call void @func_b1427(i32 %r139)
  br label %b3061

b3070:
  call void @func_b1427(i32 %r139)
  br label %b3061

b3061:
  %r151 = phi i32 [%r144, %b3068], [%r144, %b3070]
  %r130 = phi i32 [%r142, %b3068], [%r142, %b3070]
  %r149 = inttoptr i32 %r151 to i8*
  %r150 = load i8, i8* %r149
  %r145 = zext i8 %r150 to i32
  %r148 = icmp eq i32 %r145, 0
  br i1 %r148, label %b1363, label %b3063

b3063:
  %r143 = add i32 %r151, 1
  br label %b3065
}

define internal i32 @func_b3181(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3181

b3181:
  %r5 = phi i32 [%r0, %0], [%r14, %b3174]
  %r13 = phi i32 [%r1, %0], [%r12, %b3174]
  %r11 = phi i32 [%r2, %0], [%r10, %b3174]
  %r9 = phi i32 [%r3, %0], [%r8, %b3174]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1206(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b3793, label %b3794

b3793:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1206(i32 %r15, i32 0, i32 13)
  call void @func_b1427(i32 %r5)
  br label %b3172

b3794:
  call void @func_b1427(i32 %r5)
  br label %b3172

b3172:
  %r20 = phi i32 [%r13, %b3793], [%r13, %b3794]
  %r10 = phi i32 [%r11, %b3793], [%r11, %b3794]
  %r8 = phi i32 [%r9, %b3793], [%r9, %b3794]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c267, label %b3174

c267:
  %r21 = tail call i32 @func_b3169(i32 %r10, i32 %r8)
  ret i32 %r21

b3174:
  %r12 = add i32 %r20, 1
  br label %b3181
}

define internal i32 @func_b3187(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3187

b3187:
  %r5 = phi i32 [%r0, %0], [%r12, %b3797], [%r12, %b3798]
  %r11 = phi i32 [%r1, %0], [%r10, %b3797], [%r10, %b3798]
  %r9 = phi i32 [%r2, %0], [8, %b3797], [8, %b3798]
  %r8 = phi i32 [%r3, %0], [%r7, %b3797], [%r6, %b3798]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b423, label %b3189

b423:
  ret i32 %r8

b3189:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str0 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3797, label %b3798

b3797:
  %r7 = call i32 @func_b3169(i32 %r8, i32 %r11)
  br label %b3187

b3798:
  %r17 = add i32 ptrtoint(i8* @str0 to i32), 1
  %r6 = call i32 @func_b3181(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b3187
}

define internal void @func_b3436(i32 %r0, i32 %r1) {
  br label %b3436

b3436:
  %r6 = phi i32 [%r0, %0], [%r8, %b3443], [%r8, %b3445]
  %r7 = phi i32 [%r1, %0], [%r7, %b3443], [%r7, %b3445]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1379, label %b3438

b1379:
  %r16 = and i32 %r7, 15
  %r14 = call i32 @func_b1242(i32 %r16, i32 9)
  %r13 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r15 = trunc i32 %r14 to i8
  store i8 %r15, i8* %r13
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b295, label %b3435

b3438:
  %r8 = add i32 %r6, 1
  br label %b3440

b295:
  ret void

b3435:
  %r17 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c282

b3440:
  %r20 = call i32 @inb(i32 1021)
  %r19 = and i32 %r20, 96
  call void @func_b1206(i32 %r19, i32 0, i32 %r3)
  %r18 = icmp eq i32 %r3, 10
  br i1 %r18, label %b3443, label %b3445

c282:
  tail call void @func_b2915(i32 %r10, i32 %r17)
  ret void

b3443:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1206(i32 %r21, i32 0, i32 13)
  call void @func_b1427(i32 %r3)
  br label %b3436

b3445:
  call void @func_b1427(i32 %r3)
  br label %b3436
}

define internal void @func_b3476(i32 %r0, i32 %r1) {
  br label %b3476

b3476:
  %r6 = phi i32 [%r0, %0], [%r8, %b3483], [%r8, %b3485]
  %r7 = phi i32 [%r1, %0], [%r7, %b3483], [%r7, %b3485]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3475, label %b3478

b3475:
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b3464, label %b3799

b3478:
  %r8 = add i32 %r6, 1
  br label %b3480

b3464:
  %r18 = phi i32 [%r7, %b3475], [%r17, %b3471]
  %r15 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b1379, label %b3466

b3799:
  %r19 = add i32 %r7, 1
  br label %b3471

b3480:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1206(i32 %r21, i32 0, i32 %r3)
  %r20 = icmp eq i32 %r3, 10
  br i1 %r20, label %b3483, label %b3485

b1379:
  %r27 = phi i32 [%r18, %b3464], [%r32, %b3436]
  %r31 = and i32 %r27, 15
  %r29 = call i32 @func_b1242(i32 %r31, i32 9)
  %r28 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = trunc i32 %r29 to i8
  store i8 %r30, i8* %r28
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r27, i32 32)
  %r25 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r26 = load i8, i8* %r25
  %r24 = zext i8 %r26 to i32
  %r23 = icmp eq i32 %r24, 0
  br i1 %r23, label %b295, label %b3435

b3466:
  %r33 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3440

b3471:
  %r39 = phi i32 [%r10, %b3799], [%r35, %b3469]
  %r38 = phi i32 [%r19, %b3799], [%r40, %b3469]
  %r17 = phi i32 [%r7, %b3799], [%r17, %b3469]
  call void @func_b1436(i32 %r39)
  %r36 = inttoptr i32 %r38 to i8*
  %r37 = load i8, i8* %r36
  %r35 = zext i8 %r37 to i32
  %r34 = icmp eq i32 %r35, 0
  br i1 %r34, label %b3464, label %b3469

b3483:
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1206(i32 %r41, i32 0, i32 13)
  call void @func_b1427(i32 %r3)
  br label %b3476

b3485:
  call void @func_b1427(i32 %r3)
  br label %b3476

b295:
  ret void

b3435:
  %r43 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c301

b3440:
  %r45 = phi i32 [%r14, %b3466], [%r51, %b3438]
  %r50 = phi i32 [%r33, %b3466], [%r49, %b3438]
  %r48 = phi i32 [%r18, %b3466], [%r32, %b3438]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1206(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3443, label %b3445

b3469:
  %r40 = add i32 %r38, 1
  br label %b3471

c301:
  tail call void @func_b2915(i32 %r24, i32 %r43)
  ret void

b3443:
  %r53 = call i32 @inb(i32 1021)
  %r52 = and i32 %r53, 96
  call void @func_b1206(i32 %r52, i32 0, i32 13)
  call void @func_b1427(i32 %r45)
  br label %b3436

b3445:
  call void @func_b1427(i32 %r45)
  br label %b3436

b3436:
  %r57 = phi i32 [%r50, %b3443], [%r50, %b3445]
  %r32 = phi i32 [%r48, %b3443], [%r48, %b3445]
  %r55 = inttoptr i32 %r57 to i8*
  %r56 = load i8, i8* %r55
  %r51 = zext i8 %r56 to i32
  %r54 = icmp eq i32 %r51, 0
  br i1 %r54, label %b1379, label %b3438

b3438:
  %r49 = add i32 %r57, 1
  br label %b3440
}

define internal void @func_b3600(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3600

b3600:
  %r4 = phi i32 [%r0, %0], [%r11, %b3593]
  %r10 = phi i32 [%r1, %0], [%r9, %b3593]
  %r8 = phi i32 [%r2, %0], [%r7, %b3593]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1206(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3800, label %b3801

b3800:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1206(i32 %r12, i32 0, i32 13)
  call void @func_b1427(i32 %r4)
  br label %b3591

b3801:
  call void @func_b1427(i32 %r4)
  br label %b3591

b3591:
  %r17 = phi i32 [%r10, %b3800], [%r10, %b3801]
  %r7 = phi i32 [%r8, %b3800], [%r8, %b3801]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b3588, label %b3593

b3588:
  %r20 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b3503, label %b3590

b3593:
  %r9 = add i32 %r17, 1
  br label %b3600

b3503:
  %r24 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b3475, label %b3508

b3590:
  %r30 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2915(i32 %r19, i32 %r30)
  %r28 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b3475, label %b3508

b3475:
  %r35 = phi i32 [%r7, %b3503], [%r7, %b3590], [%r36, %b3476]
  %r33 = inttoptr i32 %r35 to i8*
  %r34 = load i8, i8* %r33
  %r32 = zext i8 %r34 to i32
  %r31 = icmp eq i32 %r32, 0
  br i1 %r31, label %b3464, label %b3799

b3508:
  %r39 = phi i32 [%r23, %b3503], [%r27, %b3590]
  %r38 = phi i32 [%r7, %b3503], [%r7, %b3590]
  %r37 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3480

b3464:
  %r45 = phi i32 [%r35, %b3475], [%r44, %b3471]
  %r42 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r43 = load i8, i8* %r42
  %r41 = zext i8 %r43 to i32
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b1379, label %b3466

b3799:
  %r46 = add i32 %r35, 1
  br label %b3471

b3480:
  %r48 = phi i32 [%r39, %b3508], [%r54, %b3478]
  %r53 = phi i32 [%r37, %b3508], [%r52, %b3478]
  %r51 = phi i32 [%r38, %b3508], [%r36, %b3478]
  %r50 = call i32 @inb(i32 1021)
  %r49 = and i32 %r50, 96
  call void @func_b1206(i32 %r49, i32 0, i32 %r48)
  %r47 = icmp eq i32 %r48, 10
  br i1 %r47, label %b3483, label %b3485

b1379:
  %r59 = phi i32 [%r45, %b3464], [%r64, %b3436]
  %r63 = and i32 %r59, 15
  %r61 = call i32 @func_b1242(i32 %r63, i32 9)
  %r60 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r62 = trunc i32 %r61 to i8
  store i8 %r62, i8* %r60
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r59, i32 32)
  %r57 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r58 = load i8, i8* %r57
  %r56 = zext i8 %r58 to i32
  %r55 = icmp eq i32 %r56, 0
  br i1 %r55, label %b295, label %b3435

b3466:
  %r65 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3440

b3471:
  %r71 = phi i32 [%r32, %b3799], [%r67, %b3469]
  %r70 = phi i32 [%r46, %b3799], [%r72, %b3469]
  %r44 = phi i32 [%r35, %b3799], [%r44, %b3469]
  call void @func_b1436(i32 %r71)
  %r68 = inttoptr i32 %r70 to i8*
  %r69 = load i8, i8* %r68
  %r67 = zext i8 %r69 to i32
  %r66 = icmp eq i32 %r67, 0
  br i1 %r66, label %b3464, label %b3469

b3483:
  %r74 = call i32 @inb(i32 1021)
  %r73 = and i32 %r74, 96
  call void @func_b1206(i32 %r73, i32 0, i32 13)
  call void @func_b1427(i32 %r48)
  br label %b3476

b3485:
  call void @func_b1427(i32 %r48)
  br label %b3476

b295:
  ret void

b3435:
  %r75 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c330

b3440:
  %r77 = phi i32 [%r41, %b3466], [%r83, %b3438]
  %r82 = phi i32 [%r65, %b3466], [%r81, %b3438]
  %r80 = phi i32 [%r45, %b3466], [%r64, %b3438]
  %r79 = call i32 @inb(i32 1021)
  %r78 = and i32 %r79, 96
  call void @func_b1206(i32 %r78, i32 0, i32 %r77)
  %r76 = icmp eq i32 %r77, 10
  br i1 %r76, label %b3443, label %b3445

b3469:
  %r72 = add i32 %r70, 1
  br label %b3471

b3476:
  %r87 = phi i32 [%r53, %b3483], [%r53, %b3485]
  %r36 = phi i32 [%r51, %b3483], [%r51, %b3485]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r54 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r54, 0
  br i1 %r84, label %b3475, label %b3478

c330:
  tail call void @func_b2915(i32 %r56, i32 %r75)
  ret void

b3443:
  %r89 = call i32 @inb(i32 1021)
  %r88 = and i32 %r89, 96
  call void @func_b1206(i32 %r88, i32 0, i32 13)
  call void @func_b1427(i32 %r77)
  br label %b3436

b3445:
  call void @func_b1427(i32 %r77)
  br label %b3436

b3478:
  %r52 = add i32 %r87, 1
  br label %b3480

b3436:
  %r93 = phi i32 [%r82, %b3443], [%r82, %b3445]
  %r64 = phi i32 [%r80, %b3443], [%r80, %b3445]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r83 = zext i8 %r92 to i32
  %r90 = icmp eq i32 %r83, 0
  br i1 %r90, label %b1379, label %b3438

b3438:
  %r81 = add i32 %r93, 1
  br label %b3440
}

define internal void @func_b3514(i32 %r0, i32 %r1) {
  br label %b3514

b3514:
  %r6 = phi i32 [%r0, %0], [%r8, %b3521], [%r8, %b3523]
  %r7 = phi i32 [%r1, %0], [%r7, %b3521], [%r7, %b3523]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3509, label %b3516

b3509:
  %r11 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b3503, label %b3511

b3516:
  %r8 = add i32 %r6, 1
  br label %b3518

b3503:
  %r15 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3475, label %b3508

b3511:
  %r21 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2915(i32 %r10, i32 %r21)
  %r19 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r20 = load i8, i8* %r19
  %r18 = zext i8 %r20 to i32
  %r17 = icmp eq i32 %r18, 0
  br i1 %r17, label %b3475, label %b3508

b3518:
  %r24 = call i32 @inb(i32 1021)
  %r23 = and i32 %r24, 96
  call void @func_b1206(i32 %r23, i32 0, i32 %r3)
  %r22 = icmp eq i32 %r3, 10
  br i1 %r22, label %b3521, label %b3523

b3475:
  %r29 = phi i32 [%r7, %b3503], [%r7, %b3511], [%r30, %b3476]
  %r27 = inttoptr i32 %r29 to i8*
  %r28 = load i8, i8* %r27
  %r26 = zext i8 %r28 to i32
  %r25 = icmp eq i32 %r26, 0
  br i1 %r25, label %b3464, label %b3799

b3508:
  %r33 = phi i32 [%r14, %b3503], [%r18, %b3511]
  %r32 = phi i32 [%r7, %b3503], [%r7, %b3511]
  %r31 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3480

b3521:
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1206(i32 %r34, i32 0, i32 13)
  call void @func_b1427(i32 %r3)
  br label %b3514

b3523:
  call void @func_b1427(i32 %r3)
  br label %b3514

b3464:
  %r41 = phi i32 [%r29, %b3475], [%r40, %b3471]
  %r38 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  %r36 = icmp eq i32 %r37, 0
  br i1 %r36, label %b1379, label %b3466

b3799:
  %r42 = add i32 %r29, 1
  br label %b3471

b3480:
  %r44 = phi i32 [%r33, %b3508], [%r50, %b3478]
  %r49 = phi i32 [%r31, %b3508], [%r48, %b3478]
  %r47 = phi i32 [%r32, %b3508], [%r30, %b3478]
  %r46 = call i32 @inb(i32 1021)
  %r45 = and i32 %r46, 96
  call void @func_b1206(i32 %r45, i32 0, i32 %r44)
  %r43 = icmp eq i32 %r44, 10
  br i1 %r43, label %b3483, label %b3485

b1379:
  %r55 = phi i32 [%r41, %b3464], [%r60, %b3436]
  %r59 = and i32 %r55, 15
  %r57 = call i32 @func_b1242(i32 %r59, i32 9)
  %r56 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r58 = trunc i32 %r57 to i8
  store i8 %r58, i8* %r56
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r55, i32 32)
  %r53 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r54 = load i8, i8* %r53
  %r52 = zext i8 %r54 to i32
  %r51 = icmp eq i32 %r52, 0
  br i1 %r51, label %b295, label %b3435

b3466:
  %r61 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3440

b3471:
  %r67 = phi i32 [%r26, %b3799], [%r63, %b3469]
  %r66 = phi i32 [%r42, %b3799], [%r68, %b3469]
  %r40 = phi i32 [%r29, %b3799], [%r40, %b3469]
  call void @func_b1436(i32 %r67)
  %r64 = inttoptr i32 %r66 to i8*
  %r65 = load i8, i8* %r64
  %r63 = zext i8 %r65 to i32
  %r62 = icmp eq i32 %r63, 0
  br i1 %r62, label %b3464, label %b3469

b3483:
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1206(i32 %r69, i32 0, i32 13)
  call void @func_b1427(i32 %r44)
  br label %b3476

b3485:
  call void @func_b1427(i32 %r44)
  br label %b3476

b295:
  ret void

b3435:
  %r71 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c360

b3440:
  %r73 = phi i32 [%r37, %b3466], [%r79, %b3438]
  %r78 = phi i32 [%r61, %b3466], [%r77, %b3438]
  %r76 = phi i32 [%r41, %b3466], [%r60, %b3438]
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1206(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b3443, label %b3445

b3469:
  %r68 = add i32 %r66, 1
  br label %b3471

b3476:
  %r83 = phi i32 [%r49, %b3483], [%r49, %b3485]
  %r30 = phi i32 [%r47, %b3483], [%r47, %b3485]
  %r81 = inttoptr i32 %r83 to i8*
  %r82 = load i8, i8* %r81
  %r50 = zext i8 %r82 to i32
  %r80 = icmp eq i32 %r50, 0
  br i1 %r80, label %b3475, label %b3478

c360:
  tail call void @func_b2915(i32 %r52, i32 %r71)
  ret void

b3443:
  %r85 = call i32 @inb(i32 1021)
  %r84 = and i32 %r85, 96
  call void @func_b1206(i32 %r84, i32 0, i32 13)
  call void @func_b1427(i32 %r73)
  br label %b3436

b3445:
  call void @func_b1427(i32 %r73)
  br label %b3436

b3478:
  %r48 = add i32 %r83, 1
  br label %b3480

b3436:
  %r89 = phi i32 [%r78, %b3443], [%r78, %b3445]
  %r60 = phi i32 [%r76, %b3443], [%r76, %b3445]
  %r87 = inttoptr i32 %r89 to i8*
  %r88 = load i8, i8* %r87
  %r79 = zext i8 %r88 to i32
  %r86 = icmp eq i32 %r79, 0
  br i1 %r86, label %b1379, label %b3438

b3438:
  %r77 = add i32 %r89, 1
  br label %b3440
}

define internal void @func_b3684(i32 %r0, i32 %r1) {
  br label %b3684

b3684:
  %r3 = phi i32 [%r0, %0], [%r8, %b3677]
  %r7 = phi i32 [%r1, %0], [%r6, %b3677]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1206(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3803, label %b3804

b3803:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1206(i32 %r13, i32 0, i32 13)
  call void @func_b1427(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1385, label %b3677

b3804:
  call void @func_b1427(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1385, label %b3677

b1385:
  %r24 = inttoptr i32 4104 to i32*
  %r23 = load i32, i32* %r24
  %r21 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b3662, label %b3672

b3677:
  %r8 = phi i32 [%r10, %b3803], [%r16, %b3804]
  %r25 = phi i32 [%r7, %b3803], [%r7, %b3804]
  %r6 = add i32 %r25, 1
  br label %b3684

b3662:
  %r28 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b3650, label %b3664

b3672:
  %r36 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3600(i32 %r20, i32 %r36, i32 %r23)
  %r35 = inttoptr i32 4108 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b3509, label %b3669

b3650:
  %r39 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b3643, label %b3661

b3664:
  %r45 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2915(i32 %r27, i32 %r45)
  %r43 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3643, label %b3661

b3509:
  %r57 = phi i32 [%r34, %b3672], [%r56, %b3656], [%r55, %b3658], [%r54, %b3514], [%r53, %b1977], [%r52, %b3617], [%r51, %b3632], [%r50, %b3634]
  %r48 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r49 = load i8, i8* %r48
  %r47 = zext i8 %r49 to i32
  %r46 = icmp eq i32 %r47, 0
  br i1 %r46, label %b3503, label %b3511

b3669:
  %r66 = phi i32 [%r31, %b3672], [%r65, %b3656], [%r64, %b3658], [%r63, %b1977], [%r62, %b3617], [%r61, %b3632], [%r60, %b3634]
  %r59 = phi i32 [%r34, %b3672], [%r56, %b3656], [%r55, %b3658], [%r53, %b1977], [%r52, %b3617], [%r51, %b3632], [%r50, %b3634]
  %r58 = add i32 ptrtoint(i8* @str17 to i32), 1
  br label %b3518

b3643:
  %r71 = phi i32 [%r23, %b3650], [%r23, %b3664]
  %r69 = inttoptr i32 %r71 to i8*
  %r70 = load i8, i8* %r69
  %r68 = zext i8 %r70 to i32
  %r67 = icmp eq i32 %r68, 0
  br i1 %r67, label %b3626, label %b3802

b3661:
  %r73 = phi i32 [%r38, %b3650], [%r42, %b3664]
  %r77 = phi i32 [%r23, %b3650], [%r23, %b3664]
  %r76 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1206(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b3656, label %b3658

b3503:
  %r80 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3475, label %b3508

b3511:
  %r86 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2915(i32 %r47, i32 %r86)
  %r84 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r85 = load i8, i8* %r84
  %r83 = zext i8 %r85 to i32
  %r82 = icmp eq i32 %r83, 0
  br i1 %r82, label %b3475, label %b3508

b3518:
  %r88 = phi i32 [%r66, %b3669], [%r94, %b3516]
  %r93 = phi i32 [%r58, %b3669], [%r92, %b3516]
  %r91 = phi i32 [%r59, %b3669], [%r54, %b3516]
  %r90 = call i32 @inb(i32 1021)
  %r89 = and i32 %r90, 96
  call void @func_b1206(i32 %r89, i32 0, i32 %r88)
  %r87 = icmp eq i32 %r88, 10
  br i1 %r87, label %b3521, label %b3523

b3626:
  %r100 = phi i32 [%r71, %b3643], [%r99, %b3639]
  %r97 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r98 = load i8, i8* %r97
  %r96 = zext i8 %r98 to i32
  %r95 = icmp eq i32 %r96, 0
  br i1 %r95, label %b2042, label %b3628

b3802:
  %r101 = add i32 %r71, 1
  br label %b3639

b3656:
  %r107 = call i32 @inb(i32 1021)
  %r106 = and i32 %r107, 96
  call void @func_b1206(i32 %r106, i32 0, i32 13)
  call void @func_b1427(i32 %r73)
  call void @func_b3476(i32 %r76, i32 %r77)
  %r105 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r105
  %r103 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r104 = load i8, i8* %r103
  %r65 = zext i8 %r104 to i32
  %r102 = icmp eq i32 %r65, 0
  br i1 %r102, label %b3509, label %b3669

b3658:
  call void @func_b1427(i32 %r73)
  call void @func_b3476(i32 %r76, i32 %r77)
  %r111 = inttoptr i32 4108 to i32*
  %r55 = load i32, i32* %r111
  %r109 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r110 = load i8, i8* %r109
  %r64 = zext i8 %r110 to i32
  %r108 = icmp eq i32 %r64, 0
  br i1 %r108, label %b3509, label %b3669

b3475:
  %r116 = phi i32 [%r57, %b3503], [%r57, %b3511], [%r117, %b3476]
  %r114 = inttoptr i32 %r116 to i8*
  %r115 = load i8, i8* %r114
  %r113 = zext i8 %r115 to i32
  %r112 = icmp eq i32 %r113, 0
  br i1 %r112, label %b3464, label %b3799

b3508:
  %r120 = phi i32 [%r79, %b3503], [%r83, %b3511]
  %r119 = phi i32 [%r57, %b3503], [%r57, %b3511]
  %r118 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3480

b3521:
  %r122 = call i32 @inb(i32 1021)
  %r121 = and i32 %r122, 96
  call void @func_b1206(i32 %r121, i32 0, i32 13)
  call void @func_b1427(i32 %r88)
  br label %b3514

b3523:
  call void @func_b1427(i32 %r88)
  br label %b3514

b2042:
  %r130 = and i32 %r100, 15
  %r128 = call i32 @func_b1242(i32 %r130, i32 9)
  %r127 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r129 = trunc i32 %r128 to i8
  store i8 %r129, i8* %r127
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r100, i32 32)
  %r125 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b1977, label %b3617

b3628:
  %r134 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1206(i32 %r132, i32 0, i32 %r96)
  %r131 = icmp eq i32 %r96, 10
  br i1 %r131, label %b3632, label %b3634

b3639:
  %r140 = phi i32 [%r68, %b3802], [%r136, %b3637]
  %r139 = phi i32 [%r101, %b3802], [%r141, %b3637]
  %r99 = phi i32 [%r71, %b3802], [%r99, %b3637]
  call void @func_b1436(i32 %r140)
  %r137 = inttoptr i32 %r139 to i8*
  %r138 = load i8, i8* %r137
  %r136 = zext i8 %r138 to i32
  %r135 = icmp eq i32 %r136, 0
  br i1 %r135, label %b3626, label %b3637

b3464:
  %r147 = phi i32 [%r116, %b3475], [%r146, %b3471]
  %r144 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r145 = load i8, i8* %r144
  %r143 = zext i8 %r145 to i32
  %r142 = icmp eq i32 %r143, 0
  br i1 %r142, label %b1379, label %b3466

b3799:
  %r148 = add i32 %r116, 1
  br label %b3471

b3480:
  %r150 = phi i32 [%r120, %b3508], [%r156, %b3478]
  %r155 = phi i32 [%r118, %b3508], [%r154, %b3478]
  %r153 = phi i32 [%r119, %b3508], [%r117, %b3478]
  %r152 = call i32 @inb(i32 1021)
  %r151 = and i32 %r152, 96
  call void @func_b1206(i32 %r151, i32 0, i32 %r150)
  %r149 = icmp eq i32 %r150, 10
  br i1 %r149, label %b3483, label %b3485

b3514:
  %r160 = phi i32 [%r93, %b3521], [%r93, %b3523]
  %r54 = phi i32 [%r91, %b3521], [%r91, %b3523]
  %r158 = inttoptr i32 %r160 to i8*
  %r159 = load i8, i8* %r158
  %r94 = zext i8 %r159 to i32
  %r157 = icmp eq i32 %r94, 0
  br i1 %r157, label %b3509, label %b3516

b1977:
  %r164 = inttoptr i32 4108 to i32*
  %r53 = load i32, i32* %r164
  %r162 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r163 = load i8, i8* %r162
  %r63 = zext i8 %r163 to i32
  %r161 = icmp eq i32 %r63, 0
  br i1 %r161, label %b3509, label %b3669

b3617:
  %r169 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2915(i32 %r124, i32 %r169)
  %r168 = inttoptr i32 4108 to i32*
  %r52 = load i32, i32* %r168
  %r166 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r62 = zext i8 %r167 to i32
  %r165 = icmp eq i32 %r62, 0
  br i1 %r165, label %b3509, label %b3669

b3632:
  %r175 = call i32 @inb(i32 1021)
  %r174 = and i32 %r175, 96
  call void @func_b1206(i32 %r174, i32 0, i32 13)
  call void @func_b1427(i32 %r96)
  call void @func_b3436(i32 %r134, i32 %r100)
  %r173 = inttoptr i32 4108 to i32*
  %r51 = load i32, i32* %r173
  %r171 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r172 = load i8, i8* %r171
  %r61 = zext i8 %r172 to i32
  %r170 = icmp eq i32 %r61, 0
  br i1 %r170, label %b3509, label %b3669

b3634:
  call void @func_b1427(i32 %r96)
  call void @func_b3436(i32 %r134, i32 %r100)
  %r179 = inttoptr i32 4108 to i32*
  %r50 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r60 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r60, 0
  br i1 %r176, label %b3509, label %b3669

b3637:
  %r141 = add i32 %r139, 1
  br label %b3639

b1379:
  %r184 = phi i32 [%r147, %b3464], [%r189, %b3436]
  %r188 = and i32 %r184, 15
  %r186 = call i32 @func_b1242(i32 %r188, i32 9)
  %r185 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r187 = trunc i32 %r186 to i8
  store i8 %r187, i8* %r185
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r184, i32 32)
  %r182 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r181 = zext i8 %r183 to i32
  %r180 = icmp eq i32 %r181, 0
  br i1 %r180, label %b295, label %b3435

b3466:
  %r190 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3440

b3471:
  %r196 = phi i32 [%r113, %b3799], [%r192, %b3469]
  %r195 = phi i32 [%r148, %b3799], [%r197, %b3469]
  %r146 = phi i32 [%r116, %b3799], [%r146, %b3469]
  call void @func_b1436(i32 %r196)
  %r193 = inttoptr i32 %r195 to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b3464, label %b3469

b3483:
  %r199 = call i32 @inb(i32 1021)
  %r198 = and i32 %r199, 96
  call void @func_b1206(i32 %r198, i32 0, i32 13)
  call void @func_b1427(i32 %r150)
  br label %b3476

b3485:
  call void @func_b1427(i32 %r150)
  br label %b3476

b3516:
  %r92 = add i32 %r160, 1
  br label %b3518

b295:
  ret void

b3435:
  %r200 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c414

b3440:
  %r202 = phi i32 [%r143, %b3466], [%r208, %b3438]
  %r207 = phi i32 [%r190, %b3466], [%r206, %b3438]
  %r205 = phi i32 [%r147, %b3466], [%r189, %b3438]
  %r204 = call i32 @inb(i32 1021)
  %r203 = and i32 %r204, 96
  call void @func_b1206(i32 %r203, i32 0, i32 %r202)
  %r201 = icmp eq i32 %r202, 10
  br i1 %r201, label %b3443, label %b3445

b3469:
  %r197 = add i32 %r195, 1
  br label %b3471

b3476:
  %r212 = phi i32 [%r155, %b3483], [%r155, %b3485]
  %r117 = phi i32 [%r153, %b3483], [%r153, %b3485]
  %r210 = inttoptr i32 %r212 to i8*
  %r211 = load i8, i8* %r210
  %r156 = zext i8 %r211 to i32
  %r209 = icmp eq i32 %r156, 0
  br i1 %r209, label %b3475, label %b3478

c414:
  tail call void @func_b2915(i32 %r181, i32 %r200)
  ret void

b3443:
  %r214 = call i32 @inb(i32 1021)
  %r213 = and i32 %r214, 96
  call void @func_b1206(i32 %r213, i32 0, i32 13)
  call void @func_b1427(i32 %r202)
  br label %b3436

b3445:
  call void @func_b1427(i32 %r202)
  br label %b3436

b3478:
  %r154 = add i32 %r212, 1
  br label %b3480

b3436:
  %r218 = phi i32 [%r207, %b3443], [%r207, %b3445]
  %r189 = phi i32 [%r205, %b3443], [%r205, %b3445]
  %r216 = inttoptr i32 %r218 to i8*
  %r217 = load i8, i8* %r216
  %r208 = zext i8 %r217 to i32
  %r215 = icmp eq i32 %r208, 0
  br i1 %r215, label %b1379, label %b3438

b3438:
  %r206 = add i32 %r218, 1
  br label %b3440
}

define internal void @func_b3702(i32 %r0, i32 %r1) {
  br label %b3702

b3702:
  %r3 = phi i32 [%r0, %0], [%r8, %b3695]
  %r7 = phi i32 [%r1, %0], [%r6, %b3695]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1206(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3805, label %b3806

b3805:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1206(i32 %r13, i32 0, i32 13)
  call void @func_b1427(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1387, label %b3695

b3806:
  call void @func_b1427(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1387, label %b3695

b1387:
  %r28 = inttoptr i32 4100 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b3187(i32 %r24, i32 %r25, i32 8, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1385, label %b3692

b3695:
  %r8 = phi i32 [%r10, %b3805], [%r16, %b3806]
  %r29 = phi i32 [%r7, %b3805], [%r7, %b3806]
  %r6 = add i32 %r29, 1
  br label %b3702

b1385:
  %r35 = inttoptr i32 4104 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b3662, label %b3672

b3692:
  %r36 = add i32 ptrtoint(i8* @str14 to i32), 1
  br label %c430

b3662:
  %r39 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b3650, label %b3664

b3672:
  %r47 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3600(i32 %r31, i32 %r47, i32 %r34)
  %r46 = inttoptr i32 4108 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3509, label %b3669

c430:
  tail call void @func_b3684(i32 %r20, i32 %r36)
  ret void

b3650:
  %r50 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b3643, label %b3661

b3664:
  %r56 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2915(i32 %r38, i32 %r56)
  %r54 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b3643, label %b3661

b3509:
  %r68 = phi i32 [%r45, %b3672], [%r67, %b3656], [%r66, %b3658], [%r65, %b3514], [%r64, %b1977], [%r63, %b3617], [%r62, %b3632], [%r61, %b3634]
  %r59 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r60 = load i8, i8* %r59
  %r58 = zext i8 %r60 to i32
  %r57 = icmp eq i32 %r58, 0
  br i1 %r57, label %b3503, label %b3511

b3669:
  %r77 = phi i32 [%r42, %b3672], [%r76, %b3656], [%r75, %b3658], [%r74, %b1977], [%r73, %b3617], [%r72, %b3632], [%r71, %b3634]
  %r70 = phi i32 [%r45, %b3672], [%r67, %b3656], [%r66, %b3658], [%r64, %b1977], [%r63, %b3617], [%r62, %b3632], [%r61, %b3634]
  %r69 = add i32 ptrtoint(i8* @str17 to i32), 1
  br label %b3518

b3643:
  %r82 = phi i32 [%r34, %b3650], [%r34, %b3664]
  %r80 = inttoptr i32 %r82 to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3626, label %b3802

b3661:
  %r84 = phi i32 [%r49, %b3650], [%r53, %b3664]
  %r88 = phi i32 [%r34, %b3650], [%r34, %b3664]
  %r87 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r86 = call i32 @inb(i32 1021)
  %r85 = and i32 %r86, 96
  call void @func_b1206(i32 %r85, i32 0, i32 %r84)
  %r83 = icmp eq i32 %r84, 10
  br i1 %r83, label %b3656, label %b3658

b3503:
  %r91 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b3475, label %b3508

b3511:
  %r97 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2915(i32 %r58, i32 %r97)
  %r95 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b3475, label %b3508

b3518:
  %r99 = phi i32 [%r77, %b3669], [%r105, %b3516]
  %r104 = phi i32 [%r69, %b3669], [%r103, %b3516]
  %r102 = phi i32 [%r70, %b3669], [%r65, %b3516]
  %r101 = call i32 @inb(i32 1021)
  %r100 = and i32 %r101, 96
  call void @func_b1206(i32 %r100, i32 0, i32 %r99)
  %r98 = icmp eq i32 %r99, 10
  br i1 %r98, label %b3521, label %b3523

b3626:
  %r111 = phi i32 [%r82, %b3643], [%r110, %b3639]
  %r108 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  %r106 = icmp eq i32 %r107, 0
  br i1 %r106, label %b2042, label %b3628

b3802:
  %r112 = add i32 %r82, 1
  br label %b3639

b3656:
  %r118 = call i32 @inb(i32 1021)
  %r117 = and i32 %r118, 96
  call void @func_b1206(i32 %r117, i32 0, i32 13)
  call void @func_b1427(i32 %r84)
  call void @func_b3476(i32 %r87, i32 %r88)
  %r116 = inttoptr i32 4108 to i32*
  %r67 = load i32, i32* %r116
  %r114 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r115 = load i8, i8* %r114
  %r76 = zext i8 %r115 to i32
  %r113 = icmp eq i32 %r76, 0
  br i1 %r113, label %b3509, label %b3669

b3658:
  call void @func_b1427(i32 %r84)
  call void @func_b3476(i32 %r87, i32 %r88)
  %r122 = inttoptr i32 4108 to i32*
  %r66 = load i32, i32* %r122
  %r120 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r75 = zext i8 %r121 to i32
  %r119 = icmp eq i32 %r75, 0
  br i1 %r119, label %b3509, label %b3669

b3475:
  %r127 = phi i32 [%r68, %b3503], [%r68, %b3511], [%r128, %b3476]
  %r125 = inttoptr i32 %r127 to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b3464, label %b3799

b3508:
  %r131 = phi i32 [%r90, %b3503], [%r94, %b3511]
  %r130 = phi i32 [%r68, %b3503], [%r68, %b3511]
  %r129 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3480

b3521:
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1206(i32 %r132, i32 0, i32 13)
  call void @func_b1427(i32 %r99)
  br label %b3514

b3523:
  call void @func_b1427(i32 %r99)
  br label %b3514

b2042:
  %r141 = and i32 %r111, 15
  %r139 = call i32 @func_b1242(i32 %r141, i32 9)
  %r138 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r140 = trunc i32 %r139 to i8
  store i8 %r140, i8* %r138
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r111, i32 32)
  %r136 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b1977, label %b3617

b3628:
  %r145 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1206(i32 %r143, i32 0, i32 %r107)
  %r142 = icmp eq i32 %r107, 10
  br i1 %r142, label %b3632, label %b3634

b3639:
  %r151 = phi i32 [%r79, %b3802], [%r147, %b3637]
  %r150 = phi i32 [%r112, %b3802], [%r152, %b3637]
  %r110 = phi i32 [%r82, %b3802], [%r110, %b3637]
  call void @func_b1436(i32 %r151)
  %r148 = inttoptr i32 %r150 to i8*
  %r149 = load i8, i8* %r148
  %r147 = zext i8 %r149 to i32
  %r146 = icmp eq i32 %r147, 0
  br i1 %r146, label %b3626, label %b3637

b3464:
  %r158 = phi i32 [%r127, %b3475], [%r157, %b3471]
  %r155 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r156 = load i8, i8* %r155
  %r154 = zext i8 %r156 to i32
  %r153 = icmp eq i32 %r154, 0
  br i1 %r153, label %b1379, label %b3466

b3799:
  %r159 = add i32 %r127, 1
  br label %b3471

b3480:
  %r161 = phi i32 [%r131, %b3508], [%r167, %b3478]
  %r166 = phi i32 [%r129, %b3508], [%r165, %b3478]
  %r164 = phi i32 [%r130, %b3508], [%r128, %b3478]
  %r163 = call i32 @inb(i32 1021)
  %r162 = and i32 %r163, 96
  call void @func_b1206(i32 %r162, i32 0, i32 %r161)
  %r160 = icmp eq i32 %r161, 10
  br i1 %r160, label %b3483, label %b3485

b3514:
  %r171 = phi i32 [%r104, %b3521], [%r104, %b3523]
  %r65 = phi i32 [%r102, %b3521], [%r102, %b3523]
  %r169 = inttoptr i32 %r171 to i8*
  %r170 = load i8, i8* %r169
  %r105 = zext i8 %r170 to i32
  %r168 = icmp eq i32 %r105, 0
  br i1 %r168, label %b3509, label %b3516

b1977:
  %r175 = inttoptr i32 4108 to i32*
  %r64 = load i32, i32* %r175
  %r173 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r174 = load i8, i8* %r173
  %r74 = zext i8 %r174 to i32
  %r172 = icmp eq i32 %r74, 0
  br i1 %r172, label %b3509, label %b3669

b3617:
  %r180 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2915(i32 %r135, i32 %r180)
  %r179 = inttoptr i32 4108 to i32*
  %r63 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r73 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r73, 0
  br i1 %r176, label %b3509, label %b3669

b3632:
  %r186 = call i32 @inb(i32 1021)
  %r185 = and i32 %r186, 96
  call void @func_b1206(i32 %r185, i32 0, i32 13)
  call void @func_b1427(i32 %r107)
  call void @func_b3436(i32 %r145, i32 %r111)
  %r184 = inttoptr i32 4108 to i32*
  %r62 = load i32, i32* %r184
  %r182 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r72 = zext i8 %r183 to i32
  %r181 = icmp eq i32 %r72, 0
  br i1 %r181, label %b3509, label %b3669

b3634:
  call void @func_b1427(i32 %r107)
  call void @func_b3436(i32 %r145, i32 %r111)
  %r190 = inttoptr i32 4108 to i32*
  %r61 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r71 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r71, 0
  br i1 %r187, label %b3509, label %b3669

b3637:
  %r152 = add i32 %r150, 1
  br label %b3639

b1379:
  %r195 = phi i32 [%r158, %b3464], [%r200, %b3436]
  %r199 = and i32 %r195, 15
  %r197 = call i32 @func_b1242(i32 %r199, i32 9)
  %r196 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r198 = trunc i32 %r197 to i8
  store i8 %r198, i8* %r196
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r195, i32 32)
  %r193 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b295, label %b3435

b3466:
  %r201 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3440

b3471:
  %r207 = phi i32 [%r124, %b3799], [%r203, %b3469]
  %r206 = phi i32 [%r159, %b3799], [%r208, %b3469]
  %r157 = phi i32 [%r127, %b3799], [%r157, %b3469]
  call void @func_b1436(i32 %r207)
  %r204 = inttoptr i32 %r206 to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b3464, label %b3469

b3483:
  %r210 = call i32 @inb(i32 1021)
  %r209 = and i32 %r210, 96
  call void @func_b1206(i32 %r209, i32 0, i32 13)
  call void @func_b1427(i32 %r161)
  br label %b3476

b3485:
  call void @func_b1427(i32 %r161)
  br label %b3476

b3516:
  %r103 = add i32 %r171, 1
  br label %b3518

b295:
  ret void

b3435:
  %r211 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c471

b3440:
  %r213 = phi i32 [%r154, %b3466], [%r219, %b3438]
  %r218 = phi i32 [%r201, %b3466], [%r217, %b3438]
  %r216 = phi i32 [%r158, %b3466], [%r200, %b3438]
  %r215 = call i32 @inb(i32 1021)
  %r214 = and i32 %r215, 96
  call void @func_b1206(i32 %r214, i32 0, i32 %r213)
  %r212 = icmp eq i32 %r213, 10
  br i1 %r212, label %b3443, label %b3445

b3469:
  %r208 = add i32 %r206, 1
  br label %b3471

b3476:
  %r223 = phi i32 [%r166, %b3483], [%r166, %b3485]
  %r128 = phi i32 [%r164, %b3483], [%r164, %b3485]
  %r221 = inttoptr i32 %r223 to i8*
  %r222 = load i8, i8* %r221
  %r167 = zext i8 %r222 to i32
  %r220 = icmp eq i32 %r167, 0
  br i1 %r220, label %b3475, label %b3478

c471:
  tail call void @func_b2915(i32 %r192, i32 %r211)
  ret void

b3443:
  %r225 = call i32 @inb(i32 1021)
  %r224 = and i32 %r225, 96
  call void @func_b1206(i32 %r224, i32 0, i32 13)
  call void @func_b1427(i32 %r213)
  br label %b3436

b3445:
  call void @func_b1427(i32 %r213)
  br label %b3436

b3478:
  %r165 = add i32 %r223, 1
  br label %b3480

b3436:
  %r229 = phi i32 [%r218, %b3443], [%r218, %b3445]
  %r200 = phi i32 [%r216, %b3443], [%r216, %b3445]
  %r227 = inttoptr i32 %r229 to i8*
  %r228 = load i8, i8* %r227
  %r219 = zext i8 %r228 to i32
  %r226 = icmp eq i32 %r219, 0
  br i1 %r226, label %b1379, label %b3438

b3438:
  %r217 = add i32 %r229, 1
  br label %b3440
}

define internal void @func_b3720(i32 %r0, i32 %r1) {
  br label %b3720

b3720:
  %r3 = phi i32 [%r0, %0], [%r8, %b3713]
  %r7 = phi i32 [%r1, %0], [%r6, %b3713]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1206(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3807, label %b3808

b3807:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1206(i32 %r13, i32 0, i32 13)
  call void @func_b1427(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1389, label %b3713

b3808:
  call void @func_b1427(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1389, label %b3713

b1389:
  %r28 = inttoptr i32 4096 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b3049(i32 %r24, i32 %r25, i32 12, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str12 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1387, label %b3710

b3713:
  %r8 = phi i32 [%r10, %b3807], [%r16, %b3808]
  %r29 = phi i32 [%r7, %b3807], [%r7, %b3808]
  %r6 = add i32 %r29, 1
  br label %b3720

b1387:
  %r39 = inttoptr i32 4100 to i32*
  %r37 = load i32, i32* %r39
  %r38 = inttoptr i32 %r37 to i32*
  %r35 = load i32, i32* %r38
  %r36 = add i32 %r37, 4
  %r34 = call i32 @func_b3187(i32 %r35, i32 %r36, i32 8, i32 0)
  %r32 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b1385, label %b3692

b3710:
  %r40 = add i32 ptrtoint(i8* @str12 to i32), 1
  br label %c487

b1385:
  %r46 = inttoptr i32 4104 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3662, label %b3672

b3692:
  %r47 = add i32 ptrtoint(i8* @str14 to i32), 1
  br label %c490

c487:
  tail call void @func_b3702(i32 %r20, i32 %r40)
  ret void

b3662:
  %r50 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b3650, label %b3664

b3672:
  %r58 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3600(i32 %r42, i32 %r58, i32 %r45)
  %r57 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r57
  %r54 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b3509, label %b3669

c490:
  tail call void @func_b3684(i32 %r31, i32 %r47)
  ret void

b3650:
  %r61 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r62 = load i8, i8* %r61
  %r60 = zext i8 %r62 to i32
  %r59 = icmp eq i32 %r60, 0
  br i1 %r59, label %b3643, label %b3661

b3664:
  %r67 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2915(i32 %r49, i32 %r67)
  %r65 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r66 = load i8, i8* %r65
  %r64 = zext i8 %r66 to i32
  %r63 = icmp eq i32 %r64, 0
  br i1 %r63, label %b3643, label %b3661

b3509:
  %r79 = phi i32 [%r56, %b3672], [%r78, %b3656], [%r77, %b3658], [%r76, %b3514], [%r75, %b1977], [%r74, %b3617], [%r73, %b3632], [%r72, %b3634]
  %r70 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r71 = load i8, i8* %r70
  %r69 = zext i8 %r71 to i32
  %r68 = icmp eq i32 %r69, 0
  br i1 %r68, label %b3503, label %b3511

b3669:
  %r88 = phi i32 [%r53, %b3672], [%r87, %b3656], [%r86, %b3658], [%r85, %b1977], [%r84, %b3617], [%r83, %b3632], [%r82, %b3634]
  %r81 = phi i32 [%r56, %b3672], [%r78, %b3656], [%r77, %b3658], [%r75, %b1977], [%r74, %b3617], [%r73, %b3632], [%r72, %b3634]
  %r80 = add i32 ptrtoint(i8* @str17 to i32), 1
  br label %b3518

b3643:
  %r93 = phi i32 [%r45, %b3650], [%r45, %b3664]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b3626, label %b3802

b3661:
  %r95 = phi i32 [%r60, %b3650], [%r64, %b3664]
  %r99 = phi i32 [%r45, %b3650], [%r45, %b3664]
  %r98 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r97 = call i32 @inb(i32 1021)
  %r96 = and i32 %r97, 96
  call void @func_b1206(i32 %r96, i32 0, i32 %r95)
  %r94 = icmp eq i32 %r95, 10
  br i1 %r94, label %b3656, label %b3658

b3503:
  %r102 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r103 = load i8, i8* %r102
  %r101 = zext i8 %r103 to i32
  %r100 = icmp eq i32 %r101, 0
  br i1 %r100, label %b3475, label %b3508

b3511:
  %r108 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2915(i32 %r69, i32 %r108)
  %r106 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r107 = load i8, i8* %r106
  %r105 = zext i8 %r107 to i32
  %r104 = icmp eq i32 %r105, 0
  br i1 %r104, label %b3475, label %b3508

b3518:
  %r110 = phi i32 [%r88, %b3669], [%r116, %b3516]
  %r115 = phi i32 [%r80, %b3669], [%r114, %b3516]
  %r113 = phi i32 [%r81, %b3669], [%r76, %b3516]
  %r112 = call i32 @inb(i32 1021)
  %r111 = and i32 %r112, 96
  call void @func_b1206(i32 %r111, i32 0, i32 %r110)
  %r109 = icmp eq i32 %r110, 10
  br i1 %r109, label %b3521, label %b3523

b3626:
  %r122 = phi i32 [%r93, %b3643], [%r121, %b3639]
  %r119 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r120 = load i8, i8* %r119
  %r118 = zext i8 %r120 to i32
  %r117 = icmp eq i32 %r118, 0
  br i1 %r117, label %b2042, label %b3628

b3802:
  %r123 = add i32 %r93, 1
  br label %b3639

b3656:
  %r129 = call i32 @inb(i32 1021)
  %r128 = and i32 %r129, 96
  call void @func_b1206(i32 %r128, i32 0, i32 13)
  call void @func_b1427(i32 %r95)
  call void @func_b3476(i32 %r98, i32 %r99)
  %r127 = inttoptr i32 4108 to i32*
  %r78 = load i32, i32* %r127
  %r125 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r87 = zext i8 %r126 to i32
  %r124 = icmp eq i32 %r87, 0
  br i1 %r124, label %b3509, label %b3669

b3658:
  call void @func_b1427(i32 %r95)
  call void @func_b3476(i32 %r98, i32 %r99)
  %r133 = inttoptr i32 4108 to i32*
  %r77 = load i32, i32* %r133
  %r131 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r132 = load i8, i8* %r131
  %r86 = zext i8 %r132 to i32
  %r130 = icmp eq i32 %r86, 0
  br i1 %r130, label %b3509, label %b3669

b3475:
  %r138 = phi i32 [%r79, %b3503], [%r79, %b3511], [%r139, %b3476]
  %r136 = inttoptr i32 %r138 to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b3464, label %b3799

b3508:
  %r142 = phi i32 [%r101, %b3503], [%r105, %b3511]
  %r141 = phi i32 [%r79, %b3503], [%r79, %b3511]
  %r140 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3480

b3521:
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1206(i32 %r143, i32 0, i32 13)
  call void @func_b1427(i32 %r110)
  br label %b3514

b3523:
  call void @func_b1427(i32 %r110)
  br label %b3514

b2042:
  %r152 = and i32 %r122, 15
  %r150 = call i32 @func_b1242(i32 %r152, i32 9)
  %r149 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r151 = trunc i32 %r150 to i8
  store i8 %r151, i8* %r149
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r122, i32 32)
  %r147 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r148 = load i8, i8* %r147
  %r146 = zext i8 %r148 to i32
  %r145 = icmp eq i32 %r146, 0
  br i1 %r145, label %b1977, label %b3617

b3628:
  %r156 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r155 = call i32 @inb(i32 1021)
  %r154 = and i32 %r155, 96
  call void @func_b1206(i32 %r154, i32 0, i32 %r118)
  %r153 = icmp eq i32 %r118, 10
  br i1 %r153, label %b3632, label %b3634

b3639:
  %r162 = phi i32 [%r90, %b3802], [%r158, %b3637]
  %r161 = phi i32 [%r123, %b3802], [%r163, %b3637]
  %r121 = phi i32 [%r93, %b3802], [%r121, %b3637]
  call void @func_b1436(i32 %r162)
  %r159 = inttoptr i32 %r161 to i8*
  %r160 = load i8, i8* %r159
  %r158 = zext i8 %r160 to i32
  %r157 = icmp eq i32 %r158, 0
  br i1 %r157, label %b3626, label %b3637

b3464:
  %r169 = phi i32 [%r138, %b3475], [%r168, %b3471]
  %r166 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r165 = zext i8 %r167 to i32
  %r164 = icmp eq i32 %r165, 0
  br i1 %r164, label %b1379, label %b3466

b3799:
  %r170 = add i32 %r138, 1
  br label %b3471

b3480:
  %r172 = phi i32 [%r142, %b3508], [%r178, %b3478]
  %r177 = phi i32 [%r140, %b3508], [%r176, %b3478]
  %r175 = phi i32 [%r141, %b3508], [%r139, %b3478]
  %r174 = call i32 @inb(i32 1021)
  %r173 = and i32 %r174, 96
  call void @func_b1206(i32 %r173, i32 0, i32 %r172)
  %r171 = icmp eq i32 %r172, 10
  br i1 %r171, label %b3483, label %b3485

b3514:
  %r182 = phi i32 [%r115, %b3521], [%r115, %b3523]
  %r76 = phi i32 [%r113, %b3521], [%r113, %b3523]
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r116 = zext i8 %r181 to i32
  %r179 = icmp eq i32 %r116, 0
  br i1 %r179, label %b3509, label %b3516

b1977:
  %r186 = inttoptr i32 4108 to i32*
  %r75 = load i32, i32* %r186
  %r184 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r185 = load i8, i8* %r184
  %r85 = zext i8 %r185 to i32
  %r183 = icmp eq i32 %r85, 0
  br i1 %r183, label %b3509, label %b3669

b3617:
  %r191 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2915(i32 %r146, i32 %r191)
  %r190 = inttoptr i32 4108 to i32*
  %r74 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r84 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r84, 0
  br i1 %r187, label %b3509, label %b3669

b3632:
  %r197 = call i32 @inb(i32 1021)
  %r196 = and i32 %r197, 96
  call void @func_b1206(i32 %r196, i32 0, i32 13)
  call void @func_b1427(i32 %r118)
  call void @func_b3436(i32 %r156, i32 %r122)
  %r195 = inttoptr i32 4108 to i32*
  %r73 = load i32, i32* %r195
  %r193 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r83 = zext i8 %r194 to i32
  %r192 = icmp eq i32 %r83, 0
  br i1 %r192, label %b3509, label %b3669

b3634:
  call void @func_b1427(i32 %r118)
  call void @func_b3436(i32 %r156, i32 %r122)
  %r201 = inttoptr i32 4108 to i32*
  %r72 = load i32, i32* %r201
  %r199 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r200 = load i8, i8* %r199
  %r82 = zext i8 %r200 to i32
  %r198 = icmp eq i32 %r82, 0
  br i1 %r198, label %b3509, label %b3669

b3637:
  %r163 = add i32 %r161, 1
  br label %b3639

b1379:
  %r206 = phi i32 [%r169, %b3464], [%r211, %b3436]
  %r210 = and i32 %r206, 15
  %r208 = call i32 @func_b1242(i32 %r210, i32 9)
  %r207 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r209 = trunc i32 %r208 to i8
  store i8 %r209, i8* %r207
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r206, i32 32)
  %r204 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b295, label %b3435

b3466:
  %r212 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3440

b3471:
  %r218 = phi i32 [%r135, %b3799], [%r214, %b3469]
  %r217 = phi i32 [%r170, %b3799], [%r219, %b3469]
  %r168 = phi i32 [%r138, %b3799], [%r168, %b3469]
  call void @func_b1436(i32 %r218)
  %r215 = inttoptr i32 %r217 to i8*
  %r216 = load i8, i8* %r215
  %r214 = zext i8 %r216 to i32
  %r213 = icmp eq i32 %r214, 0
  br i1 %r213, label %b3464, label %b3469

b3483:
  %r221 = call i32 @inb(i32 1021)
  %r220 = and i32 %r221, 96
  call void @func_b1206(i32 %r220, i32 0, i32 13)
  call void @func_b1427(i32 %r172)
  br label %b3476

b3485:
  call void @func_b1427(i32 %r172)
  br label %b3476

b3516:
  %r114 = add i32 %r182, 1
  br label %b3518

b295:
  ret void

b3435:
  %r222 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c531

b3440:
  %r224 = phi i32 [%r165, %b3466], [%r230, %b3438]
  %r229 = phi i32 [%r212, %b3466], [%r228, %b3438]
  %r227 = phi i32 [%r169, %b3466], [%r211, %b3438]
  %r226 = call i32 @inb(i32 1021)
  %r225 = and i32 %r226, 96
  call void @func_b1206(i32 %r225, i32 0, i32 %r224)
  %r223 = icmp eq i32 %r224, 10
  br i1 %r223, label %b3443, label %b3445

b3469:
  %r219 = add i32 %r217, 1
  br label %b3471

b3476:
  %r234 = phi i32 [%r177, %b3483], [%r177, %b3485]
  %r139 = phi i32 [%r175, %b3483], [%r175, %b3485]
  %r232 = inttoptr i32 %r234 to i8*
  %r233 = load i8, i8* %r232
  %r178 = zext i8 %r233 to i32
  %r231 = icmp eq i32 %r178, 0
  br i1 %r231, label %b3475, label %b3478

c531:
  tail call void @func_b2915(i32 %r203, i32 %r222)
  ret void

b3443:
  %r236 = call i32 @inb(i32 1021)
  %r235 = and i32 %r236, 96
  call void @func_b1206(i32 %r235, i32 0, i32 13)
  call void @func_b1427(i32 %r224)
  br label %b3436

b3445:
  call void @func_b1427(i32 %r224)
  br label %b3436

b3478:
  %r176 = add i32 %r234, 1
  br label %b3480

b3436:
  %r240 = phi i32 [%r229, %b3443], [%r229, %b3445]
  %r211 = phi i32 [%r227, %b3443], [%r227, %b3445]
  %r238 = inttoptr i32 %r240 to i8*
  %r239 = load i8, i8* %r238
  %r230 = zext i8 %r239 to i32
  %r237 = icmp eq i32 %r230, 0
  br i1 %r237, label %b1379, label %b3438

b3438:
  %r228 = add i32 %r240, 1
  br label %b3440
}

define internal void @func_b3232(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3232

b3232:
  %r4 = phi i32 [%r0, %0], [%r11, %b3230]
  %r10 = phi i32 [%r1, %0], [%r9, %b3230]
  %r8 = phi i32 [%r2, %0], [%r7, %b3230]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1206(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3235, label %b3237

b3235:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1206(i32 %r12, i32 0, i32 13)
  call void @func_b1427(i32 %r4)
  br label %b3228

b3237:
  call void @func_b1427(i32 %r4)
  br label %b3228

b3228:
  %r17 = phi i32 [%r10, %b3235], [%r10, %b3237]
  %r7 = phi i32 [%r8, %b3235], [%r8, %b3237]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1565, label %b3230

b1565:
  %r19 = add i32 ptrtoint(i8* @users to i32), 52
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b3230:
  %r9 = add i32 %r17, 1
  br label %b3232
}

define internal void @func_b3281(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3281

b3281:
  %r4 = phi i32 [%r0, %0], [%r11, %b3274]
  %r10 = phi i32 [%r1, %0], [%r9, %b3274]
  %r8 = phi i32 [%r2, %0], [%r7, %b3274]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1206(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3809, label %b3810

b3809:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1206(i32 %r12, i32 0, i32 13)
  call void @func_b1427(i32 %r4)
  br label %b3272

b3810:
  call void @func_b1427(i32 %r4)
  br label %b3272

b3272:
  %r17 = phi i32 [%r10, %b3809], [%r10, %b3810]
  %r7 = phi i32 [%r8, %b3809], [%r8, %b3810]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1561, label %b3274

b1561:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1242(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1565, label %b3266

b3274:
  %r9 = add i32 %r17, 1
  br label %b3281

b1565:
  %r27 = add i32 ptrtoint(i8* @users to i32), 52
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b3266:
  %r28 = add i32 ptrtoint(i8* @str53 to i32), 1
  br label %c553

c553:
  tail call void @func_b3232(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define internal void @func_b3242(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3242

b3242:
  %r4 = phi i32 [%r0, %0], [%r11, %b3240]
  %r10 = phi i32 [%r1, %0], [%r9, %b3240]
  %r8 = phi i32 [%r2, %0], [%r7, %b3240]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1206(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3245, label %b3247

b3245:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1206(i32 %r12, i32 0, i32 13)
  call void @func_b1427(i32 %r4)
  br label %b3238

b3247:
  call void @func_b1427(i32 %r4)
  br label %b3238

b3238:
  %r17 = phi i32 [%r10, %b3245], [%r10, %b3247]
  %r7 = phi i32 [%r8, %b3245], [%r8, %b3247]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1576, label %b3240

b1576:
  %r19 = add i32 ptrtoint(i8* @users to i32), 124
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b3240:
  %r9 = add i32 %r17, 1
  br label %b3242
}

define internal void @func_b3263(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3263

b3263:
  %r4 = phi i32 [%r0, %0], [%r11, %b3256]
  %r10 = phi i32 [%r1, %0], [%r9, %b3256]
  %r8 = phi i32 [%r2, %0], [%r7, %b3256]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1206(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3811, label %b3812

b3811:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1206(i32 %r12, i32 0, i32 13)
  call void @func_b1427(i32 %r4)
  br label %b3254

b3812:
  call void @func_b1427(i32 %r4)
  br label %b3254

b3254:
  %r17 = phi i32 [%r10, %b3811], [%r10, %b3812]
  %r7 = phi i32 [%r8, %b3811], [%r8, %b3812]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1572, label %b3256

b1572:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1242(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1576, label %b3253

b3256:
  %r9 = add i32 %r17, 1
  br label %b3263

b1576:
  %r27 = add i32 ptrtoint(i8* @users to i32), 124
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b3253:
  %r28 = add i32 ptrtoint(i8* @str53 to i32), 1
  br label %c570

c570:
  tail call void @func_b3242(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define void @kernel() {
  %r0 = load i32, i32* @keyb_layout
  br label %initialize

initialize:
  %r139 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r139
  %r138 = inttoptr i32 ptrtoint(i8* @users to i32) to i32*
  store i32 0, i32* %r138
  %r137 = add i32 ptrtoint(i8* @users to i32), 4
  %r136 = inttoptr i32 %r137 to i32*
  store i32 0, i32* %r136
  %r135 = add i32 ptrtoint(i8* @users to i32), 8
  %r134 = inttoptr i32 %r135 to i32*
  store i32 0, i32* %r134
  %r133 = add i32 ptrtoint(i8* @users to i32), 12
  %r132 = inttoptr i32 %r133 to i32*
  store i32 0, i32* %r132
  %r131 = add i32 ptrtoint(i8* @users to i32), 16
  %r130 = inttoptr i32 %r131 to i32*
  store i32 0, i32* %r130
  %r129 = add i32 ptrtoint(i8* @users to i32), 20
  %r128 = inttoptr i32 %r129 to i32*
  store i32 0, i32* %r128
  %r127 = add i32 ptrtoint(i8* @users to i32), 24
  %r126 = inttoptr i32 %r127 to i32*
  store i32 0, i32* %r126
  %r125 = add i32 ptrtoint(i8* @users to i32), 28
  %r124 = inttoptr i32 %r125 to i32*
  store i32 0, i32* %r124
  %r123 = add i32 ptrtoint(i8* @users to i32), 32
  %r122 = inttoptr i32 %r123 to i32*
  store i32 59, i32* %r122
  %r121 = add i32 ptrtoint(i8* @users to i32), 36
  %r120 = inttoptr i32 %r121 to i32*
  store i32 59, i32* %r120
  %r119 = add i32 ptrtoint(i8* @users to i32), 40
  %r118 = inttoptr i32 %r119 to i32*
  store i32 59, i32* %r118
  %r117 = add i32 ptrtoint(i8* @users to i32), 44
  %r116 = inttoptr i32 %r117 to i32*
  store i32 59, i32* %r116
  %r115 = add i32 ptrtoint(i8* @users to i32), 48
  %r114 = inttoptr i32 %r115 to i32*
  store i32 0, i32* %r114
  %r113 = add i32 ptrtoint(i8* @users to i32), 52
  %r112 = inttoptr i32 %r113 to i32*
  store i32 0, i32* %r112
  %r111 = add i32 ptrtoint(i8* @users to i32), 56
  %r110 = inttoptr i32 %r111 to i32*
  store i32 51, i32* %r110
  %r109 = add i32 ptrtoint(i8* @users to i32), 60
  %r108 = inttoptr i32 %r109 to i32*
  store i32 12802, i32* %r108
  %r107 = add i32 ptrtoint(i8* @users to i32), 64
  %r106 = inttoptr i32 %r107 to i32*
  store i32 0, i32* %r106
  %r105 = add i32 ptrtoint(i8* @users to i32), 68
  %r104 = inttoptr i32 %r105 to i32*
  store i32 59, i32* %r104
  %r103 = add i32 ptrtoint(i8* @users to i32), 72
  %r102 = inttoptr i32 %r103 to i32*
  store i32 0, i32* %r102
  %r101 = add i32 ptrtoint(i8* @users to i32), 76
  %r100 = inttoptr i32 %r101 to i32*
  store i32 0, i32* %r100
  %r99 = add i32 ptrtoint(i8* @users to i32), 80
  %r98 = inttoptr i32 %r99 to i32*
  store i32 0, i32* %r98
  %r97 = add i32 ptrtoint(i8* @users to i32), 84
  %r96 = inttoptr i32 %r97 to i32*
  store i32 0, i32* %r96
  %r95 = add i32 ptrtoint(i8* @users to i32), 88
  %r94 = inttoptr i32 %r95 to i32*
  store i32 0, i32* %r94
  %r93 = add i32 ptrtoint(i8* @users to i32), 92
  %r92 = inttoptr i32 %r93 to i32*
  store i32 0, i32* %r92
  %r91 = add i32 ptrtoint(i8* @users to i32), 96
  %r90 = inttoptr i32 %r91 to i32*
  store i32 0, i32* %r90
  %r89 = add i32 ptrtoint(i8* @users to i32), 100
  %r88 = inttoptr i32 %r89 to i32*
  store i32 0, i32* %r88
  %r87 = add i32 ptrtoint(i8* @users to i32), 104
  %r86 = inttoptr i32 %r87 to i32*
  store i32 59, i32* %r86
  %r85 = add i32 ptrtoint(i8* @users to i32), 108
  %r84 = inttoptr i32 %r85 to i32*
  store i32 59, i32* %r84
  %r83 = add i32 ptrtoint(i8* @users to i32), 112
  %r82 = inttoptr i32 %r83 to i32*
  store i32 59, i32* %r82
  %r81 = add i32 ptrtoint(i8* @users to i32), 116
  %r80 = inttoptr i32 %r81 to i32*
  store i32 59, i32* %r80
  %r79 = add i32 ptrtoint(i8* @users to i32), 120
  %r78 = inttoptr i32 %r79 to i32*
  store i32 0, i32* %r78
  %r77 = add i32 ptrtoint(i8* @users to i32), 124
  %r76 = inttoptr i32 %r77 to i32*
  store i32 0, i32* %r76
  %r75 = add i32 ptrtoint(i8* @users to i32), 128
  %r74 = inttoptr i32 %r75 to i32*
  store i32 51, i32* %r74
  %r73 = add i32 ptrtoint(i8* @users to i32), 132
  %r72 = inttoptr i32 %r73 to i32*
  store i32 12802, i32* %r72
  %r71 = add i32 ptrtoint(i8* @users to i32), 136
  %r70 = inttoptr i32 %r71 to i32*
  store i32 0, i32* %r70
  %r69 = add i32 ptrtoint(i8* @users to i32), 140
  %r68 = inttoptr i32 %r69 to i32*
  store i32 59, i32* %r68
  %r66 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r67 = trunc i32 0 to i8
  store i8 %r67, i8* %r66
  %r27 = add i32 ptrtoint(i8* @console to i32), 1
  %r64 = inttoptr i32 %r27 to i8*
  %r65 = trunc i32 0 to i8
  store i8 %r65, i8* %r64
  %r18 = add i32 ptrtoint(i8* @console to i32), 2
  %r62 = inttoptr i32 %r18 to i8*
  %r63 = trunc i32 24 to i8
  store i8 %r63, i8* %r62
  %r15 = add i32 ptrtoint(i8* @console to i32), 3
  %r60 = inttoptr i32 %r15 to i8*
  %r61 = trunc i32 79 to i8
  store i8 %r61, i8* %r60
  %r24 = add i32 ptrtoint(i8* @console to i32), 4
  %r58 = inttoptr i32 %r24 to i8*
  %r59 = trunc i32 0 to i8
  store i8 %r59, i8* %r58
  %r21 = add i32 ptrtoint(i8* @console to i32), 5
  %r56 = inttoptr i32 %r21 to i8*
  %r57 = trunc i32 0 to i8
  store i8 %r57, i8* %r56
  %r12 = add i32 ptrtoint(i8* @console to i32), 6
  %r54 = inttoptr i32 %r12 to i8*
  %r55 = trunc i32 10 to i8
  store i8 %r55, i8* %r54
  %r52 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r53 = trunc i32 0 to i8
  store i8 %r53, i8* %r52
  %r51 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  store i32 1, i32* %r51
  %r49 = inttoptr i32 ptrtoint(i8* @spinner to i32) to i8*
  %r50 = trunc i32 45 to i8
  store i8 %r50, i8* %r49
  %r48 = add i32 ptrtoint(i8* @spinner to i32), 1
  %r46 = inttoptr i32 %r48 to i8*
  %r47 = trunc i32 92 to i8
  store i8 %r47, i8* %r46
  %r45 = add i32 ptrtoint(i8* @spinner to i32), 2
  %r43 = inttoptr i32 %r45 to i8*
  %r44 = trunc i32 124 to i8
  store i8 %r44, i8* %r43
  %r42 = add i32 ptrtoint(i8* @spinner to i32), 3
  %r40 = inttoptr i32 %r42 to i8*
  %r41 = trunc i32 47 to i8
  store i8 %r41, i8* %r40
  %r38 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r39 = trunc i32 0 to i8
  store i8 %r39, i8* %r38
  %r36 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r37 = trunc i32 55 to i8
  store i8 %r37, i8* %r36
  %r35 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r35
  %r33 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r34 = trunc i32 0 to i8
  store i8 %r34, i8* %r33
  %r32 = add i32 ptrtoint(i8* @itoaBuf to i32), 1
  call void @func_b2553(i32 %r32, i32 1)
  %r30 = inttoptr i32 %r12 to i8*
  %r31 = trunc i32 32 to i8
  store i8 %r31, i8* %r30
  %r28 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r29 = load i8, i8* %r28
  %r5 = zext i8 %r29 to i32
  %r25 = inttoptr i32 %r27 to i8*
  %r26 = load i8, i8* %r25
  %r7 = zext i8 %r26 to i32
  %r22 = inttoptr i32 %r24 to i8*
  %r23 = trunc i32 %r5 to i8
  store i8 %r23, i8* %r22
  %r19 = inttoptr i32 %r21 to i8*
  %r20 = trunc i32 %r7 to i8
  store i8 %r20, i8* %r19
  %r16 = inttoptr i32 %r18 to i8*
  %r17 = load i8, i8* %r16
  %r6 = zext i8 %r17 to i32
  %r13 = inttoptr i32 %r15 to i8*
  %r14 = load i8, i8* %r13
  %r8 = zext i8 %r14 to i32
  %r10 = inttoptr i32 %r12 to i8*
  %r11 = load i8, i8* %r10
  %r9 = zext i8 %r11 to i32
  call void @func_b1280(i32 %r7, i32 %r8, i32 %r9, i32 %r5)
  call void @func_b3972(i32 1, i32 %r5, i32 %r6, i32 %r7, i32 %r8, i32 %r9)
  %r3 = inttoptr i32 ptrtoint(i8* @str44 to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b1407, label %b3738

b1407:
  %r181 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r182 = trunc i32 1 to i8
  store i8 %r182, i8* %r181
  %r166 = add i32 ptrtoint(i8* @console to i32), 1
  %r179 = inttoptr i32 %r166 to i8*
  %r180 = trunc i32 1 to i8
  store i8 %r180, i8* %r179
  %r157 = add i32 ptrtoint(i8* @console to i32), 2
  %r177 = inttoptr i32 %r157 to i8*
  %r178 = trunc i32 23 to i8
  store i8 %r178, i8* %r177
  %r154 = add i32 ptrtoint(i8* @console to i32), 3
  %r175 = inttoptr i32 %r154 to i8*
  %r176 = trunc i32 45 to i8
  store i8 %r176, i8* %r175
  %r163 = add i32 ptrtoint(i8* @console to i32), 4
  %r173 = inttoptr i32 %r163 to i8*
  %r174 = trunc i32 1 to i8
  store i8 %r174, i8* %r173
  %r160 = add i32 ptrtoint(i8* @console to i32), 5
  %r171 = inttoptr i32 %r160 to i8*
  %r172 = trunc i32 1 to i8
  store i8 %r172, i8* %r171
  %r151 = add i32 ptrtoint(i8* @console to i32), 6
  %r169 = inttoptr i32 %r151 to i8*
  %r170 = trunc i32 15 to i8
  store i8 %r170, i8* %r169
  %r167 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r168 = load i8, i8* %r167
  %r144 = zext i8 %r168 to i32
  %r164 = inttoptr i32 %r166 to i8*
  %r165 = load i8, i8* %r164
  %r146 = zext i8 %r165 to i32
  %r161 = inttoptr i32 %r163 to i8*
  %r162 = trunc i32 %r144 to i8
  store i8 %r162, i8* %r161
  %r158 = inttoptr i32 %r160 to i8*
  %r159 = trunc i32 %r146 to i8
  store i8 %r159, i8* %r158
  %r155 = inttoptr i32 %r157 to i8*
  %r156 = load i8, i8* %r155
  %r145 = zext i8 %r156 to i32
  %r152 = inttoptr i32 %r154 to i8*
  %r153 = load i8, i8* %r152
  %r147 = zext i8 %r153 to i32
  %r149 = inttoptr i32 %r151 to i8*
  %r150 = load i8, i8* %r149
  %r148 = zext i8 %r150 to i32
  call void @func_b1280(i32 %r146, i32 %r147, i32 %r148, i32 %r144)
  call void @func_b3972(i32 1, i32 %r144, i32 %r145, i32 %r146, i32 %r147, i32 %r148)
  %r142 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r143 = load i8, i8* %r142
  %r141 = zext i8 %r143 to i32
  %r140 = icmp eq i32 %r141, 0
  br i1 %r140, label %b1967, label %b3723

b3738:
  %r183 = add i32 ptrtoint(i8* @str44 to i32), 1
  br label %b3730

b1967:
  %r193 = inttoptr i32 4096 to i32*
  %r191 = load i32, i32* %r193
  %r192 = inttoptr i32 %r191 to i32*
  %r189 = load i32, i32* %r192
  %r190 = add i32 %r191, 4
  %r188 = call i32 @func_b3049(i32 %r189, i32 %r190, i32 12, i32 0)
  %r186 = inttoptr i32 ptrtoint(i8* @str12 to i32) to i8*
  %r187 = load i8, i8* %r186
  %r185 = zext i8 %r187 to i32
  %r184 = icmp eq i32 %r185, 0
  br i1 %r184, label %b1968, label %b3705

b3723:
  %r200 = add i32 ptrtoint(i8* @str10 to i32), 1
  call void @func_b3720(i32 %r141, i32 %r200)
  %r199 = inttoptr i32 4096 to i32*
  %r197 = load i32, i32* %r199
  %r198 = inttoptr i32 %r197 to i32*
  %r195 = load i32, i32* %r198
  %r196 = add i32 %r197, 4
  %r194 = icmp eq i32 %r195, 0
  br i1 %r194, label %b3212, label %b3425

b3730:
  %r202 = phi i32 [%r2, %b3738], [%r207, %b3728]
  %r206 = phi i32 [%r183, %b3738], [%r205, %b3728]
  %r204 = call i32 @inb(i32 1021)
  %r203 = and i32 %r204, 96
  call void @func_b1206(i32 %r203, i32 0, i32 %r202)
  %r201 = icmp eq i32 %r202, 10
  br i1 %r201, label %b3733, label %b3735

b1968:
  %r217 = inttoptr i32 4100 to i32*
  %r215 = load i32, i32* %r217
  %r216 = inttoptr i32 %r215 to i32*
  %r213 = load i32, i32* %r216
  %r214 = add i32 %r215, 4
  %r212 = call i32 @func_b3187(i32 %r213, i32 %r214, i32 8, i32 0)
  %r210 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r211 = load i8, i8* %r210
  %r209 = zext i8 %r211 to i32
  %r208 = icmp eq i32 %r209, 0
  br i1 %r208, label %b1969, label %b3687

b3705:
  %r224 = add i32 ptrtoint(i8* @str12 to i32), 1
  call void @func_b3702(i32 %r185, i32 %r224)
  %r223 = inttoptr i32 4096 to i32*
  %r221 = load i32, i32* %r223
  %r222 = inttoptr i32 %r221 to i32*
  %r219 = load i32, i32* %r222
  %r220 = add i32 %r221, 4
  %r218 = icmp eq i32 %r219, 0
  br i1 %r218, label %b3212, label %b3425

b3212:
  %r227 = inttoptr i32 ptrtoint(i8* @str51 to i32) to i8*
  %r228 = load i8, i8* %r227
  %r226 = zext i8 %r228 to i32
  %r225 = icmp eq i32 %r226, 0
  br i1 %r225, label %b3199, label %b3214

b3425:
  %r233 = phi i32 [%r195, %b3723], [%r219, %b3705], [%r254, %b3687], [%r232, %b3423], [%r253, %b3530], [%r252, %b3532], [%r251, %b3492], [%r250, %b3494], [%r249, %b2075], [%r248, %b3430], [%r247, %b3452], [%r246, %b3454]
  %r235 = phi i32 [%r196, %b3723], [%r220, %b3705], [%r245, %b3687], [%r234, %b3423], [%r244, %b3530], [%r243, %b3532], [%r242, %b3492], [%r241, %b3494], [%r240, %b2075], [%r239, %b3430], [%r238, %b3452], [%r237, %b3454]
  %r236 = phi i32 [12, %b3723], [12, %b3705], [12, %b3687], [12, %b3423], [12, %b3530], [12, %b3532], [12, %b3492], [12, %b3494], [12, %b2075], [12, %b3430], [12, %b3452], [12, %b3454]
  %r231 = phi i32 [2, %b3723], [2, %b3705], [2, %b3687], [%r230, %b3423], [2, %b3530], [2, %b3532], [2, %b3492], [2, %b3494], [2, %b2075], [2, %b3430], [2, %b3452], [2, %b3454]
  %r234 = add i32 %r235, %r236
  %r232 = add i32 %r233, -1
  %r230 = add i32 %r231, -1
  %r229 = icmp eq i32 %r230, 0
  br i1 %r229, label %b3360, label %b3423

b3733:
  %r260 = call i32 @inb(i32 1021)
  %r259 = and i32 %r260, 96
  call void @func_b1206(i32 %r259, i32 0, i32 13)
  call void @func_b1427(i32 %r202)
  %r257 = inttoptr i32 %r206 to i8*
  %r258 = load i8, i8* %r257
  %r256 = zext i8 %r258 to i32
  %r255 = icmp eq i32 %r256, 0
  br i1 %r255, label %b1407, label %b3728

b3735:
  call void @func_b1427(i32 %r202)
  %r263 = inttoptr i32 %r206 to i8*
  %r264 = load i8, i8* %r263
  %r262 = zext i8 %r264 to i32
  %r261 = icmp eq i32 %r262, 0
  br i1 %r261, label %b1407, label %b3728

b1969:
  %r270 = inttoptr i32 4104 to i32*
  %r269 = load i32, i32* %r270
  %r267 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r268 = load i8, i8* %r267
  %r266 = zext i8 %r268 to i32
  %r265 = icmp eq i32 %r266, 0
  br i1 %r265, label %b3583, label %b3606

b3687:
  %r275 = add i32 ptrtoint(i8* @str14 to i32), 1
  call void @func_b3684(i32 %r209, i32 %r275)
  %r274 = inttoptr i32 4096 to i32*
  %r272 = load i32, i32* %r274
  %r273 = inttoptr i32 %r272 to i32*
  %r254 = load i32, i32* %r273
  %r245 = add i32 %r272, 4
  %r271 = icmp eq i32 %r254, 0
  br i1 %r271, label %b3212, label %b3425

b3199:
  %r278 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r279 = load i8, i8* %r278
  %r277 = zext i8 %r279 to i32
  %r276 = icmp eq i32 %r277, 0
  br i1 %r276, label %b295, label %b3201

b3214:
  %r280 = add i32 ptrtoint(i8* @str51 to i32), 1
  br label %b3206

b3360:
  %r281 = icmp eq i32 %r232, 0
  br i1 %r281, label %b3212, label %b3362

b3423:
  %r282 = icmp eq i32 %r232, 0
  br i1 %r282, label %b3212, label %b3425

b3728:
  %r207 = phi i32 [%r256, %b3733], [%r262, %b3735]
  %r283 = phi i32 [%r206, %b3733], [%r206, %b3735]
  %r205 = add i32 %r283, 1
  br label %b3730

b3583:
  %r286 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r287 = load i8, i8* %r286
  %r285 = zext i8 %r287 to i32
  %r284 = icmp eq i32 %r285, 0
  br i1 %r284, label %b3571, label %b3585

b3606:
  %r294 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3600(i32 %r266, i32 %r294, i32 %r269)
  %r293 = inttoptr i32 4108 to i32*
  %r292 = load i32, i32* %r293
  %r290 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r291 = load i8, i8* %r290
  %r289 = zext i8 %r291 to i32
  %r288 = icmp eq i32 %r289, 0
  br i1 %r288, label %b3498, label %b3603

b295:
  ret void

b3201:
  %r297 = phi i32 [%r277, %b3199], [%r296, %b1663]
  %r295 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %c601

b3206:
  %r299 = phi i32 [%r226, %b3214], [%r304, %b3204]
  %r303 = phi i32 [%r280, %b3214], [%r302, %b3204]
  %r301 = call i32 @inb(i32 1021)
  %r300 = and i32 %r301, 96
  call void @func_b1206(i32 %r300, i32 0, i32 %r299)
  %r298 = icmp eq i32 %r299, 10
  br i1 %r298, label %b3209, label %b3211

b3362:
  %r310 = add i32 %r234, 12
  %r309 = add i32 %r232, -1
  %r307 = inttoptr i32 ptrtoint(i8* @str46 to i32) to i8*
  %r308 = load i8, i8* %r307
  %r306 = zext i8 %r308 to i32
  %r305 = icmp eq i32 %r306, 0
  br i1 %r305, label %b3368, label %b3414

b3571:
  %r313 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r314 = load i8, i8* %r313
  %r312 = zext i8 %r314 to i32
  %r311 = icmp eq i32 %r312, 0
  br i1 %r311, label %b3564, label %b3582

b3585:
  %r319 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2915(i32 %r285, i32 %r319)
  %r317 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r318 = load i8, i8* %r317
  %r316 = zext i8 %r318 to i32
  %r315 = icmp eq i32 %r316, 0
  br i1 %r315, label %b3564, label %b3582

b3498:
  %r330 = phi i32 [%r292, %b3606], [%r329, %b3577], [%r328, %b3579], [%r327, %b2138], [%r326, %b3538], [%r325, %b3553], [%r324, %b3555]
  %r322 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r323 = load i8, i8* %r322
  %r321 = zext i8 %r323 to i32
  %r320 = icmp eq i32 %r321, 0
  br i1 %r320, label %b3486, label %b3500

b3603:
  %r332 = phi i32 [%r289, %b3606], [%r342, %b3577], [%r341, %b3579], [%r340, %b2138], [%r339, %b3538], [%r338, %b3553], [%r337, %b3555]
  %r336 = phi i32 [%r292, %b3606], [%r329, %b3577], [%r328, %b3579], [%r327, %b2138], [%r326, %b3538], [%r325, %b3553], [%r324, %b3555]
  %r335 = add i32 ptrtoint(i8* @str17 to i32), 1
  %r334 = call i32 @inb(i32 1021)
  %r333 = and i32 %r334, 96
  call void @func_b1206(i32 %r333, i32 0, i32 %r332)
  %r331 = icmp eq i32 %r332, 10
  br i1 %r331, label %b3530, label %b3532

c601:
  tail call void @func_b2915(i32 %r297, i32 %r295)
  ret void

b3209:
  %r348 = call i32 @inb(i32 1021)
  %r347 = and i32 %r348, 96
  call void @func_b1206(i32 %r347, i32 0, i32 13)
  call void @func_b1427(i32 %r299)
  %r345 = inttoptr i32 %r303 to i8*
  %r346 = load i8, i8* %r345
  %r344 = zext i8 %r346 to i32
  %r343 = icmp eq i32 %r344, 0
  br i1 %r343, label %b3199, label %b3204

b3211:
  call void @func_b1427(i32 %r299)
  %r351 = inttoptr i32 %r303 to i8*
  %r352 = load i8, i8* %r351
  %r350 = zext i8 %r352 to i32
  %r349 = icmp eq i32 %r350, 0
  br i1 %r349, label %b3199, label %b3204

b3368:
  %r357 = phi i32 [%r234, %b3362], [%r362, %b3416], [%r362, %b3422]
  %r361 = phi i32 [%r309, %b3362], [%r360, %b3416], [%r360, %b3422]
  %r359 = phi i32 [%r310, %b3362], [%r358, %b3416], [%r358, %b3422]
  call void @func_b2994(i32 %r357)
  %r355 = inttoptr i32 ptrtoint(i8* @str47 to i32) to i8*
  %r356 = load i8, i8* %r355
  %r354 = zext i8 %r356 to i32
  %r353 = icmp eq i32 %r354, 0
  br i1 %r353, label %b3404, label %b3405

b3414:
  %r363 = add i32 ptrtoint(i8* @str46 to i32), 1
  br label %b3415

b3564:
  %r368 = phi i32 [%r269, %b3571], [%r269, %b3585]
  %r366 = inttoptr i32 %r368 to i8*
  %r367 = load i8, i8* %r366
  %r365 = zext i8 %r367 to i32
  %r364 = icmp eq i32 %r365, 0
  br i1 %r364, label %b3547, label %b3823

b3582:
  %r370 = phi i32 [%r312, %b3571], [%r316, %b3585]
  %r374 = phi i32 [%r269, %b3571], [%r269, %b3585]
  %r373 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r372 = call i32 @inb(i32 1021)
  %r371 = and i32 %r372, 96
  call void @func_b1206(i32 %r371, i32 0, i32 %r370)
  %r369 = icmp eq i32 %r370, 10
  br i1 %r369, label %b3577, label %b3579

b3486:
  %r377 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r378 = load i8, i8* %r377
  %r376 = zext i8 %r378 to i32
  %r375 = icmp eq i32 %r376, 0
  br i1 %r375, label %b3463, label %b3497

b3500:
  %r383 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2915(i32 %r321, i32 %r383)
  %r381 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r382 = load i8, i8* %r381
  %r380 = zext i8 %r382 to i32
  %r379 = icmp eq i32 %r380, 0
  br i1 %r379, label %b3463, label %b3497

b3530:
  %r389 = call i32 @inb(i32 1021)
  %r388 = and i32 %r389, 96
  call void @func_b1206(i32 %r388, i32 0, i32 13)
  call void @func_b1427(i32 %r332)
  call void @func_b3514(i32 %r335, i32 %r336)
  %r387 = inttoptr i32 4096 to i32*
  %r385 = load i32, i32* %r387
  %r386 = inttoptr i32 %r385 to i32*
  %r253 = load i32, i32* %r386
  %r244 = add i32 %r385, 4
  %r384 = icmp eq i32 %r253, 0
  br i1 %r384, label %b3212, label %b3425

b3532:
  call void @func_b1427(i32 %r332)
  call void @func_b3514(i32 %r335, i32 %r336)
  %r393 = inttoptr i32 4096 to i32*
  %r391 = load i32, i32* %r393
  %r392 = inttoptr i32 %r391 to i32*
  %r252 = load i32, i32* %r392
  %r243 = add i32 %r391, 4
  %r390 = icmp eq i32 %r252, 0
  br i1 %r390, label %b3212, label %b3425

b3204:
  %r304 = phi i32 [%r344, %b3209], [%r350, %b3211]
  %r394 = phi i32 [%r303, %b3209], [%r303, %b3211]
  %r302 = add i32 %r394, 1
  br label %b3206

b3404:
  %r396 = phi i32 [%r361, %b3368], [%r402, %b3407], [%r402, %b3413]
  %r401 = phi i32 [%r359, %b3368], [%r400, %b3407], [%r400, %b3413]
  %r399 = phi i32 [12, %b3368], [12, %b3407], [12, %b3413]
  %r398 = phi i32 [%r357, %b3368], [%r397, %b3407], [%r397, %b3413]
  %r395 = icmp eq i32 %r396, 0
  br i1 %r395, label %b3225, label %b3821

b3405:
  %r403 = add i32 ptrtoint(i8* @str47 to i32), 1
  br label %b3406

b3415:
  %r405 = phi i32 [%r306, %b3414], [%r413, %b3421]
  %r412 = phi i32 [%r363, %b3414], [%r411, %b3421]
  %r362 = phi i32 [%r234, %b3414], [%r410, %b3421]
  %r360 = phi i32 [%r309, %b3414], [%r409, %b3421]
  %r358 = phi i32 [%r310, %b3414], [%r408, %b3421]
  %r407 = call i32 @inb(i32 1021)
  %r406 = and i32 %r407, 96
  call void @func_b1206(i32 %r406, i32 0, i32 %r405)
  %r404 = icmp eq i32 %r405, 10
  br i1 %r404, label %b3416, label %b3422

b3547:
  %r419 = phi i32 [%r368, %b3564], [%r418, %b3560]
  %r416 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r417 = load i8, i8* %r416
  %r415 = zext i8 %r417 to i32
  %r414 = icmp eq i32 %r415, 0
  br i1 %r414, label %b2137, label %b3549

b3823:
  %r420 = add i32 %r368, 1
  br label %b3560

b3577:
  %r426 = call i32 @inb(i32 1021)
  %r425 = and i32 %r426, 96
  call void @func_b1206(i32 %r425, i32 0, i32 13)
  call void @func_b1427(i32 %r370)
  call void @func_b3476(i32 %r373, i32 %r374)
  %r424 = inttoptr i32 4108 to i32*
  %r329 = load i32, i32* %r424
  %r422 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r423 = load i8, i8* %r422
  %r342 = zext i8 %r423 to i32
  %r421 = icmp eq i32 %r342, 0
  br i1 %r421, label %b3498, label %b3603

b3579:
  call void @func_b1427(i32 %r370)
  call void @func_b3476(i32 %r373, i32 %r374)
  %r430 = inttoptr i32 4108 to i32*
  %r328 = load i32, i32* %r430
  %r428 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r429 = load i8, i8* %r428
  %r341 = zext i8 %r429 to i32
  %r427 = icmp eq i32 %r341, 0
  br i1 %r427, label %b3498, label %b3603

b3463:
  %r435 = phi i32 [%r330, %b3486], [%r330, %b3500]
  %r433 = inttoptr i32 %r435 to i8*
  %r434 = load i8, i8* %r433
  %r432 = zext i8 %r434 to i32
  %r431 = icmp eq i32 %r432, 0
  br i1 %r431, label %b3446, label %b3822

b3497:
  %r437 = phi i32 [%r376, %b3486], [%r380, %b3500]
  %r441 = phi i32 [%r330, %b3486], [%r330, %b3500]
  %r440 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r439 = call i32 @inb(i32 1021)
  %r438 = and i32 %r439, 96
  call void @func_b1206(i32 %r438, i32 0, i32 %r437)
  %r436 = icmp eq i32 %r437, 10
  br i1 %r436, label %b3492, label %b3494

b3225:
  %r444 = inttoptr i32 ptrtoint(i8* @str50 to i32) to i8*
  %r445 = load i8, i8* %r444
  %r443 = zext i8 %r445 to i32
  %r442 = icmp eq i32 %r443, 0
  br i1 %r442, label %b3199, label %b3227

b3821:
  %r451 = add i32 %r401, %r399
  %r450 = add i32 %r396, -1
  %r448 = inttoptr i32 ptrtoint(i8* @str48 to i32) to i8*
  %r449 = load i8, i8* %r448
  %r447 = zext i8 %r449 to i32
  %r446 = icmp eq i32 %r447, 0
  br i1 %r446, label %b3991, label %b3992

b3406:
  %r453 = phi i32 [%r354, %b3405], [%r461, %b3412]
  %r460 = phi i32 [%r403, %b3405], [%r459, %b3412]
  %r397 = phi i32 [%r357, %b3405], [%r458, %b3412]
  %r402 = phi i32 [%r361, %b3405], [%r457, %b3412]
  %r400 = phi i32 [%r359, %b3405], [%r456, %b3412]
  %r455 = call i32 @inb(i32 1021)
  %r454 = and i32 %r455, 96
  call void @func_b1206(i32 %r454, i32 0, i32 %r453)
  %r452 = icmp eq i32 %r453, 10
  br i1 %r452, label %b3407, label %b3413

b3416:
  %r467 = call i32 @inb(i32 1021)
  %r466 = and i32 %r467, 96
  call void @func_b1206(i32 %r466, i32 0, i32 13)
  call void @func_b1427(i32 %r405)
  %r464 = inttoptr i32 %r412 to i8*
  %r465 = load i8, i8* %r464
  %r463 = zext i8 %r465 to i32
  %r462 = icmp eq i32 %r463, 0
  br i1 %r462, label %b3368, label %b3421

b3422:
  call void @func_b1427(i32 %r405)
  %r470 = inttoptr i32 %r412 to i8*
  %r471 = load i8, i8* %r470
  %r469 = zext i8 %r471 to i32
  %r468 = icmp eq i32 %r469, 0
  br i1 %r468, label %b3368, label %b3421

b2137:
  %r479 = and i32 %r419, 15
  %r477 = call i32 @func_b1242(i32 %r479, i32 9)
  %r476 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r478 = trunc i32 %r477 to i8
  store i8 %r478, i8* %r476
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r419, i32 32)
  %r474 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r475 = load i8, i8* %r474
  %r473 = zext i8 %r475 to i32
  %r472 = icmp eq i32 %r473, 0
  br i1 %r472, label %b2138, label %b3538

b3549:
  %r483 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r482 = call i32 @inb(i32 1021)
  %r481 = and i32 %r482, 96
  call void @func_b1206(i32 %r481, i32 0, i32 %r415)
  %r480 = icmp eq i32 %r415, 10
  br i1 %r480, label %b3553, label %b3555

b3560:
  %r489 = phi i32 [%r365, %b3823], [%r485, %b3558]
  %r488 = phi i32 [%r420, %b3823], [%r490, %b3558]
  %r418 = phi i32 [%r368, %b3823], [%r418, %b3558]
  call void @func_b1436(i32 %r489)
  %r486 = inttoptr i32 %r488 to i8*
  %r487 = load i8, i8* %r486
  %r485 = zext i8 %r487 to i32
  %r484 = icmp eq i32 %r485, 0
  br i1 %r484, label %b3547, label %b3558

b3446:
  %r496 = phi i32 [%r435, %b3463], [%r495, %b3459]
  %r493 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r494 = load i8, i8* %r493
  %r492 = zext i8 %r494 to i32
  %r491 = icmp eq i32 %r492, 0
  br i1 %r491, label %b2143, label %b3448

b3822:
  %r497 = add i32 %r435, 1
  br label %b3459

b3492:
  %r503 = call i32 @inb(i32 1021)
  %r502 = and i32 %r503, 96
  call void @func_b1206(i32 %r502, i32 0, i32 13)
  call void @func_b1427(i32 %r437)
  call void @func_b3476(i32 %r440, i32 %r441)
  %r501 = inttoptr i32 4096 to i32*
  %r499 = load i32, i32* %r501
  %r500 = inttoptr i32 %r499 to i32*
  %r251 = load i32, i32* %r500
  %r242 = add i32 %r499, 4
  %r498 = icmp eq i32 %r251, 0
  br i1 %r498, label %b3212, label %b3425

b3494:
  call void @func_b1427(i32 %r437)
  call void @func_b3476(i32 %r440, i32 %r441)
  %r507 = inttoptr i32 4096 to i32*
  %r505 = load i32, i32* %r507
  %r506 = inttoptr i32 %r505 to i32*
  %r250 = load i32, i32* %r506
  %r241 = add i32 %r505, 4
  %r504 = icmp eq i32 %r250, 0
  br i1 %r504, label %b3212, label %b3425

b3227:
  %r508 = add i32 ptrtoint(i8* @str50 to i32), 1
  br label %b3219

b3991:
  %r513 = phi i32 [%r401, %b3821], [%r527, %b3996], [%r526, %b3997]
  %r525 = phi i32 [%r450, %b3821], [%r524, %b3996], [%r523, %b3997]
  %r522 = phi i32 [%r451, %b3821], [%r521, %b3996], [%r520, %b3997]
  %r519 = phi i32 [%r398, %b3821], [%r518, %b3996], [%r517, %b3997]
  %r516 = phi i32 [%r396, %b3821], [%r515, %b3996], [%r514, %b3997]
  call void @func_b2994(i32 %r513)
  %r511 = inttoptr i32 ptrtoint(i8* @str49 to i32) to i8*
  %r512 = load i8, i8* %r511
  %r510 = zext i8 %r512 to i32
  %r509 = icmp eq i32 %r510, 0
  br i1 %r509, label %b3994, label %b3995

b3992:
  %r531 = add i32 ptrtoint(i8* @str48 to i32), 1
  %r530 = call i32 @inb(i32 1021)
  %r529 = and i32 %r530, 96
  call void @func_b1206(i32 %r529, i32 0, i32 %r447)
  %r528 = icmp eq i32 %r447, 10
  br i1 %r528, label %b3996, label %b3997

b3407:
  %r537 = call i32 @inb(i32 1021)
  %r536 = and i32 %r537, 96
  call void @func_b1206(i32 %r536, i32 0, i32 13)
  call void @func_b1427(i32 %r453)
  %r534 = inttoptr i32 %r460 to i8*
  %r535 = load i8, i8* %r534
  %r533 = zext i8 %r535 to i32
  %r532 = icmp eq i32 %r533, 0
  br i1 %r532, label %b3404, label %b3412

b3413:
  call void @func_b1427(i32 %r453)
  %r540 = inttoptr i32 %r460 to i8*
  %r541 = load i8, i8* %r540
  %r539 = zext i8 %r541 to i32
  %r538 = icmp eq i32 %r539, 0
  br i1 %r538, label %b3404, label %b3412

b3421:
  %r413 = phi i32 [%r463, %b3416], [%r469, %b3422]
  %r542 = phi i32 [%r412, %b3416], [%r412, %b3422]
  %r410 = phi i32 [%r362, %b3416], [%r362, %b3422]
  %r409 = phi i32 [%r360, %b3416], [%r360, %b3422]
  %r408 = phi i32 [%r358, %b3416], [%r358, %b3422]
  %r411 = add i32 %r542, 1
  br label %b3415

b2138:
  %r546 = inttoptr i32 4108 to i32*
  %r327 = load i32, i32* %r546
  %r544 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r545 = load i8, i8* %r544
  %r340 = zext i8 %r545 to i32
  %r543 = icmp eq i32 %r340, 0
  br i1 %r543, label %b3498, label %b3603

b3538:
  %r551 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2915(i32 %r473, i32 %r551)
  %r550 = inttoptr i32 4108 to i32*
  %r326 = load i32, i32* %r550
  %r548 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r549 = load i8, i8* %r548
  %r339 = zext i8 %r549 to i32
  %r547 = icmp eq i32 %r339, 0
  br i1 %r547, label %b3498, label %b3603

b3553:
  %r557 = call i32 @inb(i32 1021)
  %r556 = and i32 %r557, 96
  call void @func_b1206(i32 %r556, i32 0, i32 13)
  call void @func_b1427(i32 %r415)
  call void @func_b3436(i32 %r483, i32 %r419)
  %r555 = inttoptr i32 4108 to i32*
  %r325 = load i32, i32* %r555
  %r553 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r554 = load i8, i8* %r553
  %r338 = zext i8 %r554 to i32
  %r552 = icmp eq i32 %r338, 0
  br i1 %r552, label %b3498, label %b3603

b3555:
  call void @func_b1427(i32 %r415)
  call void @func_b3436(i32 %r483, i32 %r419)
  %r561 = inttoptr i32 4108 to i32*
  %r324 = load i32, i32* %r561
  %r559 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r560 = load i8, i8* %r559
  %r337 = zext i8 %r560 to i32
  %r558 = icmp eq i32 %r337, 0
  br i1 %r558, label %b3498, label %b3603

b3558:
  %r490 = add i32 %r488, 1
  br label %b3560

b2143:
  %r569 = and i32 %r496, 15
  %r567 = call i32 @func_b1242(i32 %r569, i32 9)
  %r566 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r568 = trunc i32 %r567 to i8
  store i8 %r568, i8* %r566
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r496, i32 32)
  %r564 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r565 = load i8, i8* %r564
  %r563 = zext i8 %r565 to i32
  %r562 = icmp eq i32 %r563, 0
  br i1 %r562, label %b2075, label %b3430

b3448:
  %r573 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r572 = call i32 @inb(i32 1021)
  %r571 = and i32 %r572, 96
  call void @func_b1206(i32 %r571, i32 0, i32 %r492)
  %r570 = icmp eq i32 %r492, 10
  br i1 %r570, label %b3452, label %b3454

b3459:
  %r579 = phi i32 [%r432, %b3822], [%r575, %b3457]
  %r578 = phi i32 [%r497, %b3822], [%r580, %b3457]
  %r495 = phi i32 [%r435, %b3822], [%r495, %b3457]
  call void @func_b1436(i32 %r579)
  %r576 = inttoptr i32 %r578 to i8*
  %r577 = load i8, i8* %r576
  %r575 = zext i8 %r577 to i32
  %r574 = icmp eq i32 %r575, 0
  br i1 %r574, label %b3446, label %b3457

b3219:
  %r582 = phi i32 [%r443, %b3227], [%r587, %b3217]
  %r586 = phi i32 [%r508, %b3227], [%r585, %b3217]
  %r584 = call i32 @inb(i32 1021)
  %r583 = and i32 %r584, 96
  call void @func_b1206(i32 %r583, i32 0, i32 %r582)
  %r581 = icmp eq i32 %r582, 10
  br i1 %r581, label %b3222, label %b3224

b3994:
  %r595 = phi i32 [%r519, %b3991], [%r603, %b4000], [%r602, %b4001]
  %r601 = phi i32 [%r516, %b3991], [%r600, %b4000], [%r599, %b4001]
  %r598 = phi i32 [%r513, %b3991], [%r597, %b4000], [%r596, %b4001]
  %r594 = add i32 %r595, 8
  %r593 = inttoptr i32 %r594 to i32*
  %r592 = load i32, i32* %r593
  %r590 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r591 = load i8, i8* %r590
  %r589 = zext i8 %r591 to i32
  %r588 = icmp eq i32 %r589, 0
  br i1 %r588, label %b1775, label %b3287

b3995:
  %r607 = add i32 ptrtoint(i8* @str49 to i32), 1
  %r606 = call i32 @inb(i32 1021)
  %r605 = and i32 %r606, 96
  call void @func_b1206(i32 %r605, i32 0, i32 %r510)
  %r604 = icmp eq i32 %r510, 10
  br i1 %r604, label %b4000, label %b4001

b3996:
  %r613 = phi i32 [%r447, %b3992], [%r622, %b3999]
  %r612 = phi i32 [%r531, %b3992], [%r621, %b3999]
  %r518 = phi i32 [%r398, %b3992], [%r620, %b3999]
  %r515 = phi i32 [%r396, %b3992], [%r619, %b3999]
  %r527 = phi i32 [%r401, %b3992], [%r618, %b3999]
  %r524 = phi i32 [%r450, %b3992], [%r617, %b3999]
  %r521 = phi i32 [%r451, %b3992], [%r616, %b3999]
  %r615 = call i32 @inb(i32 1021)
  %r614 = and i32 %r615, 96
  call void @func_b1206(i32 %r614, i32 0, i32 13)
  call void @func_b1427(i32 %r613)
  %r610 = inttoptr i32 %r612 to i8*
  %r611 = load i8, i8* %r610
  %r609 = zext i8 %r611 to i32
  %r608 = icmp eq i32 %r609, 0
  br i1 %r608, label %b3991, label %b3999

b3997:
  %r628 = phi i32 [%r447, %b3992], [%r622, %b3999]
  %r627 = phi i32 [%r531, %b3992], [%r621, %b3999]
  %r517 = phi i32 [%r398, %b3992], [%r620, %b3999]
  %r514 = phi i32 [%r396, %b3992], [%r619, %b3999]
  %r526 = phi i32 [%r401, %b3992], [%r618, %b3999]
  %r523 = phi i32 [%r450, %b3992], [%r617, %b3999]
  %r520 = phi i32 [%r451, %b3992], [%r616, %b3999]
  call void @func_b1427(i32 %r628)
  %r625 = inttoptr i32 %r627 to i8*
  %r626 = load i8, i8* %r625
  %r624 = zext i8 %r626 to i32
  %r623 = icmp eq i32 %r624, 0
  br i1 %r623, label %b3991, label %b3999

b3412:
  %r461 = phi i32 [%r533, %b3407], [%r539, %b3413]
  %r629 = phi i32 [%r460, %b3407], [%r460, %b3413]
  %r458 = phi i32 [%r397, %b3407], [%r397, %b3413]
  %r457 = phi i32 [%r402, %b3407], [%r402, %b3413]
  %r456 = phi i32 [%r400, %b3407], [%r400, %b3413]
  %r459 = add i32 %r629, 1
  br label %b3406

b2075:
  %r633 = inttoptr i32 4096 to i32*
  %r631 = load i32, i32* %r633
  %r632 = inttoptr i32 %r631 to i32*
  %r249 = load i32, i32* %r632
  %r240 = add i32 %r631, 4
  %r630 = icmp eq i32 %r249, 0
  br i1 %r630, label %b3212, label %b3425

b3430:
  %r638 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2915(i32 %r563, i32 %r638)
  %r637 = inttoptr i32 4096 to i32*
  %r635 = load i32, i32* %r637
  %r636 = inttoptr i32 %r635 to i32*
  %r248 = load i32, i32* %r636
  %r239 = add i32 %r635, 4
  %r634 = icmp eq i32 %r248, 0
  br i1 %r634, label %b3212, label %b3425

b3452:
  %r644 = call i32 @inb(i32 1021)
  %r643 = and i32 %r644, 96
  call void @func_b1206(i32 %r643, i32 0, i32 13)
  call void @func_b1427(i32 %r492)
  call void @func_b3436(i32 %r573, i32 %r496)
  %r642 = inttoptr i32 4096 to i32*
  %r640 = load i32, i32* %r642
  %r641 = inttoptr i32 %r640 to i32*
  %r247 = load i32, i32* %r641
  %r238 = add i32 %r640, 4
  %r639 = icmp eq i32 %r247, 0
  br i1 %r639, label %b3212, label %b3425

b3454:
  call void @func_b1427(i32 %r492)
  call void @func_b3436(i32 %r573, i32 %r496)
  %r648 = inttoptr i32 4096 to i32*
  %r646 = load i32, i32* %r648
  %r647 = inttoptr i32 %r646 to i32*
  %r246 = load i32, i32* %r647
  %r237 = add i32 %r646, 4
  %r645 = icmp eq i32 %r246, 0
  br i1 %r645, label %b3212, label %b3425

b3457:
  %r580 = add i32 %r578, 1
  br label %b3459

b3222:
  %r654 = call i32 @inb(i32 1021)
  %r653 = and i32 %r654, 96
  call void @func_b1206(i32 %r653, i32 0, i32 13)
  call void @func_b1427(i32 %r582)
  %r651 = inttoptr i32 %r586 to i8*
  %r652 = load i8, i8* %r651
  %r650 = zext i8 %r652 to i32
  %r649 = icmp eq i32 %r650, 0
  br i1 %r649, label %b3199, label %b3217

b3224:
  call void @func_b1427(i32 %r582)
  %r657 = inttoptr i32 %r586 to i8*
  %r658 = load i8, i8* %r657
  %r656 = zext i8 %r658 to i32
  %r655 = icmp eq i32 %r656, 0
  br i1 %r655, label %b3199, label %b3217

b1775:
  %r666 = and i32 %r592, 15
  %r664 = call i32 @func_b1242(i32 %r666, i32 9)
  %r663 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r665 = trunc i32 %r664 to i8
  store i8 %r665, i8* %r663
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r592, i32 32)
  %r661 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r662 = load i8, i8* %r661
  %r660 = zext i8 %r662 to i32
  %r659 = icmp eq i32 %r660, 0
  br i1 %r659, label %b3989, label %b3990

b3287:
  %r674 = add i32 ptrtoint(i8* @str52 to i32), 1
  call void @func_b3281(i32 %r589, i32 %r674, i32 %r592)
  %r673 = add i32 %r598, 8
  %r672 = inttoptr i32 %r673 to i32*
  %r671 = load i32, i32* %r672
  %r669 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r670 = load i8, i8* %r669
  %r668 = zext i8 %r670 to i32
  %r667 = icmp eq i32 %r668, 0
  br i1 %r667, label %b1763, label %b3284

b4000:
  %r680 = phi i32 [%r510, %b3995], [%r687, %b4002]
  %r679 = phi i32 [%r607, %b3995], [%r686, %b4002]
  %r597 = phi i32 [%r513, %b3995], [%r685, %b4002]
  %r603 = phi i32 [%r519, %b3995], [%r684, %b4002]
  %r600 = phi i32 [%r516, %b3995], [%r683, %b4002]
  %r682 = call i32 @inb(i32 1021)
  %r681 = and i32 %r682, 96
  call void @func_b1206(i32 %r681, i32 0, i32 13)
  call void @func_b1427(i32 %r680)
  %r677 = inttoptr i32 %r679 to i8*
  %r678 = load i8, i8* %r677
  %r676 = zext i8 %r678 to i32
  %r675 = icmp eq i32 %r676, 0
  br i1 %r675, label %b3994, label %b4002

b4001:
  %r693 = phi i32 [%r510, %b3995], [%r687, %b4002]
  %r692 = phi i32 [%r607, %b3995], [%r686, %b4002]
  %r596 = phi i32 [%r513, %b3995], [%r685, %b4002]
  %r602 = phi i32 [%r519, %b3995], [%r684, %b4002]
  %r599 = phi i32 [%r516, %b3995], [%r683, %b4002]
  call void @func_b1427(i32 %r693)
  %r690 = inttoptr i32 %r692 to i8*
  %r691 = load i8, i8* %r690
  %r689 = zext i8 %r691 to i32
  %r688 = icmp eq i32 %r689, 0
  br i1 %r688, label %b3994, label %b4002

b3999:
  %r622 = phi i32 [%r609, %b3996], [%r624, %b3997]
  %r697 = phi i32 [%r612, %b3996], [%r627, %b3997]
  %r620 = phi i32 [%r518, %b3996], [%r517, %b3997]
  %r619 = phi i32 [%r515, %b3996], [%r514, %b3997]
  %r618 = phi i32 [%r527, %b3996], [%r526, %b3997]
  %r617 = phi i32 [%r524, %b3996], [%r523, %b3997]
  %r616 = phi i32 [%r521, %b3996], [%r520, %b3997]
  %r621 = add i32 %r697, 1
  %r696 = call i32 @inb(i32 1021)
  %r695 = and i32 %r696, 96
  call void @func_b1206(i32 %r695, i32 0, i32 %r622)
  %r694 = icmp eq i32 %r622, 10
  br i1 %r694, label %b3996, label %b3997

b3217:
  %r587 = phi i32 [%r650, %b3222], [%r656, %b3224]
  %r698 = phi i32 [%r586, %b3222], [%r586, %b3224]
  %r585 = add i32 %r698, 1
  br label %b3219

b3989:
  %r707 = add i32 ptrtoint(i8* @users to i32), 52
  %r706 = inttoptr i32 %r707 to i32*
  store i32 %r592, i32* %r706
  %r705 = add i32 %r598, 8
  %r704 = inttoptr i32 %r705 to i32*
  %r703 = load i32, i32* %r704
  %r701 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r702 = load i8, i8* %r701
  %r700 = zext i8 %r702 to i32
  %r699 = icmp eq i32 %r700, 0
  br i1 %r699, label %b1763, label %b3284

b3990:
  %r715 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b3232(i32 %r660, i32 %r715, i32 %r592)
  %r714 = add i32 %r598, 8
  %r713 = inttoptr i32 %r714 to i32*
  %r712 = load i32, i32* %r713
  %r710 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r711 = load i8, i8* %r710
  %r709 = zext i8 %r711 to i32
  %r708 = icmp eq i32 %r709, 0
  br i1 %r708, label %b1763, label %b3284

b1763:
  %r720 = phi i32 [%r671, %b3287], [%r703, %b3989], [%r712, %b3990]
  %r724 = and i32 %r720, 15
  %r722 = call i32 @func_b1242(i32 %r724, i32 9)
  %r721 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r723 = trunc i32 %r722 to i8
  store i8 %r723, i8* %r721
  call void @func_b3934(i32 1, i32 0, i32 31, i32 %r720, i32 32)
  %r718 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r719 = load i8, i8* %r718
  %r717 = zext i8 %r719 to i32
  %r716 = icmp eq i32 %r717, 0
  br i1 %r716, label %b3986, label %b3987

b3284:
  %r725 = phi i32 [%r668, %b3287], [%r700, %b3989], [%r709, %b3990]
  %r727 = phi i32 [%r671, %b3287], [%r703, %b3989], [%r712, %b3990]
  %r726 = add i32 ptrtoint(i8* @str52 to i32), 1
  call void @func_b3263(i32 %r725, i32 %r726, i32 %r727)
  br label %b1663

b4002:
  %r687 = phi i32 [%r676, %b4000], [%r689, %b4001]
  %r731 = phi i32 [%r679, %b4000], [%r692, %b4001]
  %r685 = phi i32 [%r597, %b4000], [%r596, %b4001]
  %r684 = phi i32 [%r603, %b4000], [%r602, %b4001]
  %r683 = phi i32 [%r600, %b4000], [%r599, %b4001]
  %r686 = add i32 %r731, 1
  %r730 = call i32 @inb(i32 1021)
  %r729 = and i32 %r730, 96
  call void @func_b1206(i32 %r729, i32 0, i32 %r687)
  %r728 = icmp eq i32 %r687, 10
  br i1 %r728, label %b4000, label %b4001

b3986:
  %r733 = add i32 ptrtoint(i8* @users to i32), 124
  %r732 = inttoptr i32 %r733 to i32*
  store i32 %r720, i32* %r732
  br label %b1663

b3987:
  %r734 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b3242(i32 %r717, i32 %r734, i32 %r720)
  br label %b1663

b1663:
  %r747 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r747
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
  %r746 = call i32 @inb(i32 33)
  %r745 = and i32 %r746, -2
  call void @outb(i32 33, i32 %r745)
  %r744 = call i32 @inb(i32 33)
  %r743 = and i32 %r744, -3
  call void @outb(i32 33, i32 %r743)
  %r742 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r741 = load i1, i1* %r742
  %r740 = zext i1 %r741 to i32
  %r739 = mul i32 %r740, 72
  %r738 = add i32 ptrtoint(i8* @users to i32), %r739
  call void @returnTo(i32 %r738)
  %r736 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r737 = load i8, i8* %r736
  %r296 = zext i8 %r737 to i32
  %r735 = icmp eq i32 %r296, 0
  br i1 %r735, label %b295, label %b3201
}

