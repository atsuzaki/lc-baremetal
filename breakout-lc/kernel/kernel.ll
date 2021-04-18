target triple = "i386-pc-linux-gnu"

@raw.0 = internal global [1 x i8] zeroinitializer, align 1

@current = internal alias i8, i8* bitcast([1 x i8]* @raw.0 to i8*)

@raw.1 = internal global [144 x i8] zeroinitializer, align 4

@users = internal alias i8, i8* bitcast([144 x i8]* @raw.1 to i8*)

@raw.2 = internal global [7 x i8] zeroinitializer, align 8

@console = internal alias i8, i8* bitcast([7 x i8]* @raw.2 to i8*)

@str.3 = private unnamed_addr constant [32 x i8] c"got keyboard interrupt, key: 0x\00"

@str57 = internal alias i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.3, i32 0, i32 0)

@raw.4 = internal global [32 x i8] zeroinitializer, align 1

@itoaBuf = internal alias i8, i8* bitcast([32 x i8]* @raw.4 to i8*)

@raw.5 = internal global [4 x i8] zeroinitializer, align 4

@ticks = internal alias i8, i8* bitcast([4 x i8]* @raw.5 to i8*)

@raw.6 = internal global [4 x i8] zeroinitializer, align 1

@spinner = internal alias i8, i8* bitcast([4 x i8]* @raw.6 to i8*)

@raw.7 = internal global [1 x i8] zeroinitializer, align 1

@spinpos = internal alias i8, i8* bitcast([1 x i8]* @raw.7 to i8*)

@raw.8 = internal global [1 x i8] zeroinitializer, align 1

@pos = internal alias i8, i8* bitcast([1 x i8]* @raw.8 to i8*)

@raw.9 = internal global [1 x i8] zeroinitializer, align 1

@dir = internal alias i8, i8* bitcast([1 x i8]* @raw.9 to i8*)

@str.10 = private unnamed_addr constant [13 x i8] c"Exception 0x\00"

@str54 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.10, i32 0, i32 0)

@str.11 = private unnamed_addr constant [11 x i8] c", frame=0x\00"

@str55 = internal alias i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.11, i32 0, i32 0)

@str.12 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str56 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.12, i32 0, i32 0)

@str.13 = private unnamed_addr constant [38 x i8] c" Context switching kernel has booted!\00"

@str44 = internal alias i8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.13, i32 0, i32 0)

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
  br label %b982

b982:
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

define internal void @func_b1179(i32 %r0, i32 %r1, i32 %r2) {
  br label %b1179

b1179:
  %r4 = phi i32 [%r0, %0], [%r7, %b258]
  %r5 = phi i32 [%r1, %0], [0, %b258]
  %r6 = phi i32 [%r2, %0], [%r6, %b258]
  %r3 = icmp eq i32 %r4, %r5
  br i1 %r3, label %b258, label %b2547

b258:
  %r8 = call i32 @inb(i32 1021)
  %r7 = and i32 %r8, 96
  br label %b1179

b2547:
  tail call void @outb(i32 1016, i32 %r6)
  ret void
}

define internal void @func_b1187(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1187

b1187:
  %r7 = phi i32 [%r0, %0], [%r5, %b1187]
  %r6 = phi i32 [%r1, %0], [%r6, %b1187]
  %r18 = phi i32 [%r2, %0], [%r18, %b1187]
  %r21 = phi i32 [%r3, %0], [%r21, %b1187]
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
  br i1 %r4, label %b1187, label %b295

b295:
  ret void
}

define internal void @func_b1400(i32 %r0) {
  br label %b1400

b1400:
  %r5 = add i32 ptrtoint(i8* @console to i32), 4
  %r3 = inttoptr i32 %r5 to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r0, 13
  br i1 %r1, label %b1402, label %b1405

b1402:
  %r9 = phi i32 [%r2, %b1400], [%r2, %b1405], [%r2, %b1407]
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
  br i1 %r6, label %b3901, label %b1404

b1405:
  %r20 = icmp eq i32 %r0, 10
  br i1 %r20, label %b1402, label %b1407

b3901:
  %r23 = add i32 ptrtoint(i8* @console to i32), 4
  %r21 = inttoptr i32 %r23 to i8*
  %r22 = trunc i32 %r7 to i8
  store i8 %r22, i8* %r21
  ret void

b1404:
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
  br i1 %r24, label %b3892, label %b1185

b1407:
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
  br i1 %r45, label %b3905, label %b1402

b3892:
  %r71 = phi i32 [%r25, %b1404], [%r69, %b3892]
  %r74 = phi i32 [%r27, %b1404], [%r71, %b3892]
  %r70 = phi i32 [%r26, %b1404], [%r70, %b3892]
  %r73 = phi i32 [%r32, %b1404], [%r73, %b3892]
  %r72 = phi i32 [%r39, %b1404], [%r72, %b3892]
  %r75 = phi i32 [%r28, %b1404], [%r75, %b3892]
  call void @func_b1187(i32 %r72, i32 %r73, i32 %r74, i32 %r71)
  %r69 = add i32 %r71, 1
  %r68 = icmp ule i32 %r69, %r70
  br i1 %r68, label %b3892, label %b1185

b1185:
  %r79 = phi i32 [%r39, %b1404], [%r72, %b3892], [%r77, %b1185]
  %r78 = phi i32 [%r32, %b1404], [%r73, %b3892], [%r78, %b1185]
  %r85 = phi i32 [%r28, %b1404], [%r75, %b3892], [%r85, %b1185]
  %r89 = phi i32 [%r26, %b1404], [%r70, %b3892], [%r89, %b1185]
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
  br i1 %r76, label %b1185, label %b295

b3905:
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
  call void @func_b1179(i32 %r2, i32 0, i32 %r1)
  %r0 = icmp eq i32 %r1, 10
  br i1 %r0, label %b1710, label %b1711

b1710:
  %r12 = call i32 @inb(i32 1021)
  %r11 = and i32 %r12, 96
  call void @func_b1179(i32 %r11, i32 0, i32 13)
  call void @func_b1400(i32 %r1)
  tail call void @returnTo(i32 %r6)
  ret void

b1711:
  call void @func_b1400(i32 %r1)
  tail call void @returnTo(i32 %r6)
  ret void
}

define internal i32 @func_b1215(i32 %r0, i32 %r1) {
  br label %b1215

b1215:
  %r2 = icmp ule i32 %r0, %r1
  br i1 %r2, label %b888, label %b889

b888:
  %r4 = add i32 %r0, 48
  %r3 = and i32 %r4, 255
  ret i32 %r3

b889:
  %r6 = add i32 %r0, 87
  %r5 = and i32 %r6, 255
  ret i32 %r5
}

define internal void @func_b1409(i32 %r0) {
  br label %b1409

b1409:
  %r3 = call i32 @inb(i32 1021)
  %r2 = and i32 %r3, 96
  call void @func_b1179(i32 %r2, i32 0, i32 %r0)
  %r1 = icmp eq i32 %r0, 10
  br i1 %r1, label %b1397, label %c32

b1397:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1179(i32 %r9, i32 0, i32 13)
  %r8 = add i32 ptrtoint(i8* @console to i32), 4
  %r6 = inttoptr i32 %r8 to i8*
  %r7 = load i8, i8* %r6
  %r5 = zext i8 %r7 to i32
  %r4 = icmp eq i32 %r0, 13
  br i1 %r4, label %b1402, label %b1405

c32:
  tail call void @func_b1400(i32 %r0)
  ret void

b1402:
  %r14 = phi i32 [%r5, %b1397], [%r5, %b1405], [%r5, %b1407]
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
  br i1 %r11, label %b3901, label %b1404

b1405:
  %r25 = icmp eq i32 %r0, 10
  br i1 %r25, label %b1402, label %b1407

b3901:
  %r28 = add i32 ptrtoint(i8* @console to i32), 4
  %r26 = inttoptr i32 %r28 to i8*
  %r27 = trunc i32 %r12 to i8
  store i8 %r27, i8* %r26
  ret void

b1404:
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
  br i1 %r29, label %b3892, label %b1185

b1407:
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
  br i1 %r50, label %b3905, label %b1402

b3892:
  %r76 = phi i32 [%r30, %b1404], [%r74, %b3892]
  %r79 = phi i32 [%r32, %b1404], [%r76, %b3892]
  %r75 = phi i32 [%r31, %b1404], [%r75, %b3892]
  %r78 = phi i32 [%r37, %b1404], [%r78, %b3892]
  %r77 = phi i32 [%r44, %b1404], [%r77, %b3892]
  %r80 = phi i32 [%r33, %b1404], [%r80, %b3892]
  call void @func_b1187(i32 %r77, i32 %r78, i32 %r79, i32 %r76)
  %r74 = add i32 %r76, 1
  %r73 = icmp ule i32 %r74, %r75
  br i1 %r73, label %b3892, label %b1185

b1185:
  %r84 = phi i32 [%r44, %b1404], [%r77, %b3892], [%r82, %b1185]
  %r83 = phi i32 [%r37, %b1404], [%r78, %b3892], [%r83, %b1185]
  %r90 = phi i32 [%r33, %b1404], [%r80, %b3892], [%r90, %b1185]
  %r94 = phi i32 [%r31, %b1404], [%r75, %b3892], [%r94, %b1185]
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
  br i1 %r81, label %b1185, label %b295

b3905:
  %r97 = add i32 ptrtoint(i8* @console to i32), 5
  %r95 = inttoptr i32 %r97 to i8*
  %r96 = trunc i32 %r51 to i8
  store i8 %r96, i8* %r95
  ret void

b295:
  ret void
}

define internal void @func_b3914(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3914

b3914:
  %r8 = phi i32 [%r0, %0], [1, %b3916]
  %r7 = phi i32 [%r1, %0], [%r5, %b3916]
  %r6 = phi i32 [%r2, %0], [0, %b3916]
  %r9 = phi i32 [%r3, %0], [%r9, %b3916]
  %r5 = add i32 %r7, %r8
  %r4 = icmp ule i32 %r5, %r6
  br i1 %r4, label %b3916, label %b295

b3916:
  call void @func_b1409(i32 %r9)
  br label %b3914

b295:
  ret void
}

define internal void @func_b3930(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b3930

b3930:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b3932, label %b3921

b3932:
  %r8 = lshr i32 %r3, 4
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b3921, label %b1984

b3921:
  %r12 = phi i32 [1, %b3930], [1, %b3932]
  %r11 = phi i32 [0, %b3930], [0, %b3932]
  %r13 = phi i32 [%r4, %b3930], [%r4, %b3932]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b3923, label %b2042

b1984:
  %r22 = phi i32 [%r8, %b3932], [%r24, %b3927]
  %r16 = phi i32 [%r6, %b3932], [%r15, %b3927]
  %r23 = phi i32 [%r4, %b3932], [%r23, %b3927]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = and i32 %r22, 15
  %r18 = call i32 @func_b1215(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b3927, label %b1985

b3923:
  call void @func_b1409(i32 %r13)
  call void @func_b3914(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1409(i32 %r25)
  ret void

b2042:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1409(i32 %r28)
  ret void

b3927:
  %r24 = lshr i32 %r22, 4
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b1985, label %b1984

b1985:
  %r33 = phi i32 [%r23, %b1984], [%r23, %b3927]
  %r32 = phi i32 [%r16, %b1984], [%r16, %b3927]
  call void @func_b3914(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b1982

b1982:
  %r36 = phi i32 [%r32, %b1985], [%r35, %b1982]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1409(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b1982, label %b295

b295:
  ret void
}

define void @keyboardInterrupt() {
  br label %keyboardInterrupt

keyboardInterrupt:
  %r8 = call i32 @inb(i32 33)
  %r7 = or i32 %r8, 2
  call void @outb(i32 33, i32 %r7)
  call void @outb(i32 32, i32 97)
  %r6 = call i32 @inb(i32 33)
  %r5 = and i32 %r6, -3
  call void @outb(i32 33, i32 %r5)
  %r4 = call i32 @inb(i32 96)
  %r2 = inttoptr i32 ptrtoint(i8* @str57 to i32) to i8*
  %r3 = load i8, i8* %r2
  %r1 = zext i8 %r3 to i32
  %r0 = icmp eq i32 %r1, 0
  br i1 %r0, label %b1327, label %b2942

b1327:
  %r14 = phi i32 [%r4, %keyboardInterrupt], [%r19, %b2930]
  %r18 = and i32 %r14, 15
  %r16 = call i32 @func_b1215(i32 %r18, i32 9)
  %r15 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r17 = trunc i32 %r16 to i8
  store i8 %r17, i8* %r15
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r14, i32 32)
  %r13 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r12 = load i1, i1* %r13
  %r11 = zext i1 %r12 to i32
  %r10 = mul i32 %r11, 72
  %r9 = add i32 ptrtoint(i8* @users to i32), %r10
  tail call void @returnTo(i32 %r9)
  ret void

b2942:
  %r20 = add i32 ptrtoint(i8* @str57 to i32), 1
  br label %b2934

b2934:
  %r22 = phi i32 [%r1, %b2942], [%r28, %b2932]
  %r27 = phi i32 [%r20, %b2942], [%r26, %b2932]
  %r25 = phi i32 [%r4, %b2942], [%r19, %b2932]
  %r24 = call i32 @inb(i32 1021)
  %r23 = and i32 %r24, 96
  call void @func_b1179(i32 %r23, i32 0, i32 %r22)
  %r21 = icmp eq i32 %r22, 10
  br i1 %r21, label %b2937, label %b2939

b2937:
  %r30 = call i32 @inb(i32 1021)
  %r29 = and i32 %r30, 96
  call void @func_b1179(i32 %r29, i32 0, i32 13)
  call void @func_b1400(i32 %r22)
  br label %b2930

b2939:
  call void @func_b1400(i32 %r22)
  br label %b2930

b2930:
  %r34 = phi i32 [%r27, %b2937], [%r27, %b2939]
  %r19 = phi i32 [%r25, %b2937], [%r25, %b2939]
  %r32 = inttoptr i32 %r34 to i8*
  %r33 = load i8, i8* %r32
  %r28 = zext i8 %r33 to i32
  %r31 = icmp eq i32 %r28, 0
  br i1 %r31, label %b1327, label %b2932

b2932:
  %r26 = add i32 %r34, 1
  br label %b2934
}

define internal void @func_b820(i32 %r0, i32 %r1) {
  br label %b820

b820:
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
  %r15 = call i32 @func_b1215(i32 %r17, i32 9)
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
  %r4 = call i32 @func_b1215(i32 %r6, i32 9)
  %r3 = and i32 %r5, 65280
  %r1 = or i32 %r3, %r4
  %r0 = inttoptr i32 753816 to i16*
  %r2 = trunc i32 %r1 to i16
  store i16 %r2, i16* %r0
  br label %b3950

b3950:
  %r29 = phi i32 [75, %timerInterrupt], [%r28, %b3950]
  %r42 = phi i32 [%r7, %timerInterrupt], [%r38, %b3950]
  %r43 = phi i32 [%r10, %timerInterrupt], [%r43, %b3950]
  %r38 = lshr i32 %r42, 4
  %r41 = mul i32 %r29, 2
  %r33 = add i32 %r41, 753664
  %r39 = inttoptr i32 %r33 to i16*
  %r40 = load i16, i16* %r39
  %r36 = zext i16 %r40 to i32
  %r37 = and i32 %r38, 15
  %r35 = call i32 @func_b1215(i32 %r37, i32 9)
  %r34 = and i32 %r36, 65280
  %r31 = or i32 %r34, %r35
  %r30 = inttoptr i32 %r33 to i16*
  %r32 = trunc i32 %r31 to i16
  store i16 %r32, i16* %r30
  %r28 = add i32 %r29, -1
  %r27 = icmp sle i32 70, %r28
  br i1 %r27, label %b3950, label %b1584

b1584:
  %r45 = and i32 %r43, 3
  %r44 = icmp eq i32 %r45, 0
  br i1 %r44, label %b1239, label %b857

b1239:
  %r49 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r50 = load i8, i8* %r49
  %r48 = zext i8 %r50 to i32
  call void @func_b820(i32 %r48, i32 32)
  %r47 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  %r46 = load i1, i1* %r47
  br i1 %r46, label %b3947, label %b3942

b857:
  %r52 = and i32 %r43, 15
  %r51 = icmp eq i32 %r52, 0
  br i1 %r51, label %b855, label %b982

b3947:
  %r54 = add i32 %r48, 1
  %r53 = icmp ule i32 %r54, 68
  br i1 %r53, label %b3945, label %b1242

b3942:
  %r56 = sub i32 %r48, 1
  %r55 = icmp sle i32 46, %r56
  br i1 %r55, label %b3940, label %b1245

b855:
  %r61 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r60 = load i1, i1* %r61
  %r59 = zext i1 %r60 to i32
  %r58 = add i32 %r59, 1
  %r57 = icmp ule i32 %r58, 1
  br i1 %r57, label %b3935, label %b2270

b982:
  %r66 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r65 = load i1, i1* %r66
  %r64 = zext i1 %r65 to i32
  %r63 = mul i32 %r64, 72
  %r62 = add i32 ptrtoint(i8* @users to i32), %r63
  tail call void @returnTo(i32 %r62)
  ret void

b3945:
  call void @func_b820(i32 %r54, i32 62)
  %r69 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r70 = trunc i32 %r54 to i8
  store i8 %r70, i8* %r69
  %r68 = and i32 %r43, 15
  %r67 = icmp eq i32 %r68, 0
  br i1 %r67, label %b855, label %b982

b1242:
  call void @func_b820(i32 %r48, i32 124)
  %r73 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 false, i1* %r73
  %r72 = and i32 %r43, 15
  %r71 = icmp eq i32 %r72, 0
  br i1 %r71, label %b855, label %b982

b3940:
  call void @func_b820(i32 %r56, i32 60)
  %r76 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r77 = trunc i32 %r56 to i8
  store i8 %r77, i8* %r76
  %r75 = and i32 %r43, 15
  %r74 = icmp eq i32 %r75, 0
  br i1 %r74, label %b855, label %b982

b1245:
  call void @func_b820(i32 %r48, i32 124)
  %r80 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r80
  %r79 = and i32 %r43, 15
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b855, label %b982

b3935:
  %r82 = trunc i32 %r58 to i1
  %r81 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 %r82, i1* %r81
  br label %b1580

b2270:
  %r83 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r83
  br label %b1580

b1580:
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

define internal void @func_b2898(i32 %r0, i32 %r1) {
  br label %b2898

b2898:
  %r3 = phi i32 [%r0, %0], [%r8, %b2891]
  %r7 = phi i32 [%r1, %0], [%r6, %b2891]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1179(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3776, label %b3777

b3776:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1179(i32 %r9, i32 0, i32 13)
  call void @func_b1400(i32 %r3)
  br label %b2889

b3777:
  call void @func_b1400(i32 %r3)
  br label %b2889

b2889:
  %r14 = phi i32 [%r7, %b3776], [%r7, %b3777]
  %r12 = inttoptr i32 %r14 to i8*
  %r13 = load i8, i8* %r12
  %r8 = zext i8 %r13 to i32
  %r11 = icmp eq i32 %r8, 0
  br i1 %r11, label %b295, label %b2891

b295:
  ret void

b2891:
  %r6 = add i32 %r14, 1
  br label %b2898
}

define void @unhandled(i32 %r0, i32 %r1) {
  br label %unhandled

unhandled:
  %r4 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1321, label %b2927

b1321:
  %r10 = phi i32 [%r0, %unhandled], [%r17, %b2915]
  %r16 = phi i32 [%r1, %unhandled], [%r15, %b2915]
  %r14 = and i32 %r10, 15
  %r12 = call i32 @func_b1215(i32 %r14, i32 9)
  %r11 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r13 = trunc i32 %r12 to i8
  store i8 %r13, i8* %r11
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r10, i32 32)
  %r8 = inttoptr i32 ptrtoint(i8* @str55 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1317, label %b2914

b2927:
  %r18 = add i32 ptrtoint(i8* @str54 to i32), 1
  br label %b2919

b1317:
  %r23 = phi i32 [%r16, %b1321], [%r28, %b2902]
  %r27 = and i32 %r23, 15
  %r25 = call i32 @func_b1215(i32 %r27, i32 9)
  %r24 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r26 = trunc i32 %r25 to i8
  store i8 %r26, i8* %r24
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r23, i32 32)
  %r21 = inttoptr i32 ptrtoint(i8* @str56 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b295, label %b2901

b2914:
  %r29 = add i32 ptrtoint(i8* @str55 to i32), 1
  br label %b2906

b2919:
  %r31 = phi i32 [%r3, %b2927], [%r38, %b2917]
  %r37 = phi i32 [%r18, %b2927], [%r36, %b2917]
  %r35 = phi i32 [%r0, %b2927], [%r17, %b2917]
  %r34 = phi i32 [%r1, %b2927], [%r15, %b2917]
  %r33 = call i32 @inb(i32 1021)
  %r32 = and i32 %r33, 96
  call void @func_b1179(i32 %r32, i32 0, i32 %r31)
  %r30 = icmp eq i32 %r31, 10
  br i1 %r30, label %b2922, label %b2924

b295:
  ret void

b2901:
  %r39 = add i32 ptrtoint(i8* @str56 to i32), 1
  br label %c104

b2906:
  %r41 = phi i32 [%r7, %b2914], [%r47, %b2904]
  %r46 = phi i32 [%r29, %b2914], [%r45, %b2904]
  %r44 = phi i32 [%r16, %b2914], [%r28, %b2904]
  %r43 = call i32 @inb(i32 1021)
  %r42 = and i32 %r43, 96
  call void @func_b1179(i32 %r42, i32 0, i32 %r41)
  %r40 = icmp eq i32 %r41, 10
  br i1 %r40, label %b2909, label %b2911

b2922:
  %r49 = call i32 @inb(i32 1021)
  %r48 = and i32 %r49, 96
  call void @func_b1179(i32 %r48, i32 0, i32 13)
  call void @func_b1400(i32 %r31)
  br label %b2915

b2924:
  call void @func_b1400(i32 %r31)
  br label %b2915

c104:
  tail call void @func_b2898(i32 %r20, i32 %r39)
  ret void

b2909:
  %r51 = call i32 @inb(i32 1021)
  %r50 = and i32 %r51, 96
  call void @func_b1179(i32 %r50, i32 0, i32 13)
  call void @func_b1400(i32 %r41)
  br label %b2902

b2911:
  call void @func_b1400(i32 %r41)
  br label %b2902

b2915:
  %r55 = phi i32 [%r37, %b2922], [%r37, %b2924]
  %r15 = phi i32 [%r34, %b2922], [%r34, %b2924]
  %r17 = phi i32 [%r35, %b2922], [%r35, %b2924]
  %r53 = inttoptr i32 %r55 to i8*
  %r54 = load i8, i8* %r53
  %r38 = zext i8 %r54 to i32
  %r52 = icmp eq i32 %r38, 0
  br i1 %r52, label %b1321, label %b2917

b2902:
  %r59 = phi i32 [%r46, %b2909], [%r46, %b2911]
  %r28 = phi i32 [%r44, %b2909], [%r44, %b2911]
  %r57 = inttoptr i32 %r59 to i8*
  %r58 = load i8, i8* %r57
  %r47 = zext i8 %r58 to i32
  %r56 = icmp eq i32 %r47, 0
  br i1 %r56, label %b1317, label %b2904

b2917:
  %r36 = add i32 %r55, 1
  br label %b2919

b2904:
  %r45 = add i32 %r59, 1
  br label %b2906
}

define internal void @func_b2528(i32 %r0, i32 %r1) {
  br label %b2528

b2528:
  %r6 = phi i32 [%r0, %0], [%r5, %b2529]
  %r3 = phi i32 [%r1, %0], [%r4, %b2529]
  %r2 = icmp ult i32 %r3, 32
  br i1 %r2, label %b2529, label %b2192

b2529:
  %r7 = inttoptr i32 %r6 to i8*
  %r8 = trunc i32 0 to i8
  store i8 %r8, i8* %r7
  %r4 = add i32 %r3, 1
  %r5 = add i32 %r6, 1
  br label %b2528

b2192:
  ret void
}

define internal void @func_b1251(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1251

b1251:
  %r7 = phi i32 [%r0, %0], [%r5, %b1251]
  %r6 = phi i32 [%r1, %0], [%r6, %b1251]
  %r13 = phi i32 [%r2, %0], [%r13, %b1251]
  %r17 = phi i32 [%r3, %0], [%r17, %b1251]
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
  br i1 %r4, label %b1251, label %b295

b295:
  ret void
}

define internal void @func_b3968(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5) {
  br label %b3968

b3968:
  %r10 = phi i32 [%r0, %0], [1, %b1253]
  %r9 = phi i32 [%r1, %0], [%r7, %b1253]
  %r8 = phi i32 [%r2, %0], [%r8, %b1253]
  %r13 = phi i32 [%r3, %0], [%r13, %b1253]
  %r12 = phi i32 [%r4, %0], [%r12, %b1253]
  %r11 = phi i32 [%r5, %0], [%r11, %b1253]
  %r7 = add i32 %r9, %r10
  %r6 = icmp ule i32 %r7, %r8
  br i1 %r6, label %b1253, label %b295

b1253:
  call void @func_b1251(i32 %r13, i32 %r12, i32 %r11, i32 %r7)
  br label %b3968

b295:
  ret void
}

define internal void @func_b3977(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b3977

b3977:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b3979, label %b3921

b3979:
  %r8 = udiv i32 %r3, 10
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b3921, label %b1991

b3921:
  %r12 = phi i32 [1, %b3977], [1, %b3979]
  %r11 = phi i32 [0, %b3977], [0, %b3979]
  %r13 = phi i32 [%r4, %b3977], [%r4, %b3979]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b3923, label %b2042

b1991:
  %r22 = phi i32 [%r8, %b3979], [%r24, %b3971]
  %r16 = phi i32 [%r6, %b3979], [%r15, %b3971]
  %r23 = phi i32 [%r4, %b3979], [%r23, %b3971]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = urem i32 %r22, 10
  %r18 = call i32 @func_b1215(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b3971, label %b1985

b3923:
  call void @func_b1409(i32 %r13)
  call void @func_b3914(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1409(i32 %r25)
  ret void

b2042:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1409(i32 %r28)
  ret void

b3971:
  %r24 = udiv i32 %r22, 10
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b1985, label %b1991

b1985:
  %r33 = phi i32 [%r23, %b1991], [%r23, %b3971]
  %r32 = phi i32 [%r16, %b1991], [%r16, %b3971]
  call void @func_b3914(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b1982

b1982:
  %r36 = phi i32 [%r32, %b1985], [%r35, %b1982]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1409(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b1982, label %b295

b295:
  ret void
}

define internal void @func_b2990(i32 %r0) {
  br label %b2990

b2990:
  %r3 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b1334, label %b2992

b1334:
  %r15 = phi i32 [%r0, %b2990], [%r16, %b2970]
  %r14 = inttoptr i32 %r15 to i32*
  %r9 = load i32, i32* %r14
  %r13 = and i32 %r9, 15
  %r11 = call i32 @func_b1215(i32 %r13, i32 9)
  %r10 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r12 = trunc i32 %r11 to i8
  store i8 %r12, i8* %r10
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r9, i32 32)
  %r7 = inttoptr i32 ptrtoint(i8* @str5 to i32) to i8*
  %r8 = load i8, i8* %r7
  %r6 = zext i8 %r8 to i32
  %r5 = icmp eq i32 %r6, 0
  br i1 %r5, label %b1332, label %b2969

b2992:
  %r17 = add i32 ptrtoint(i8* @str4 to i32), 1
  br label %b2974

b1332:
  %r29 = phi i32 [%r15, %b1334], [%r30, %b2957]
  %r28 = add i32 %r29, 4
  %r27 = inttoptr i32 %r28 to i32*
  %r22 = load i32, i32* %r27
  %r26 = and i32 %r22, 15
  %r24 = call i32 @func_b1215(i32 %r26, i32 9)
  %r23 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r25 = trunc i32 %r24 to i8
  store i8 %r25, i8* %r23
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r22, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str6 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1330, label %b2956

b2969:
  %r31 = add i32 ptrtoint(i8* @str5 to i32), 1
  br label %b2961

b2974:
  %r33 = phi i32 [%r2, %b2992], [%r39, %b2972]
  %r38 = phi i32 [%r17, %b2992], [%r37, %b2972]
  %r36 = phi i32 [%r0, %b2992], [%r16, %b2972]
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1179(i32 %r34, i32 0, i32 %r33)
  %r32 = icmp eq i32 %r33, 10
  br i1 %r32, label %b2977, label %b2979

b1330:
  %r49 = phi i32 [%r29, %b1332], [%r50, %b2944]
  %r48 = add i32 %r49, 8
  %r47 = inttoptr i32 %r48 to i32*
  %r42 = load i32, i32* %r47
  %r46 = and i32 %r42, 15
  %r44 = call i32 @func_b1215(i32 %r46, i32 9)
  %r43 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r45 = trunc i32 %r44 to i8
  store i8 %r45, i8* %r43
  %r41 = lshr i32 %r42, 4
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b3921, label %b1984

b2956:
  %r51 = add i32 ptrtoint(i8* @str6 to i32), 1
  br label %b2948

b2961:
  %r53 = phi i32 [%r6, %b2969], [%r59, %b2959]
  %r58 = phi i32 [%r31, %b2969], [%r57, %b2959]
  %r56 = phi i32 [%r15, %b2969], [%r30, %b2959]
  %r55 = call i32 @inb(i32 1021)
  %r54 = and i32 %r55, 96
  call void @func_b1179(i32 %r54, i32 0, i32 %r53)
  %r52 = icmp eq i32 %r53, 10
  br i1 %r52, label %b2964, label %b2966

b2977:
  %r61 = call i32 @inb(i32 1021)
  %r60 = and i32 %r61, 96
  call void @func_b1179(i32 %r60, i32 0, i32 13)
  call void @func_b1400(i32 %r33)
  br label %b2970

b2979:
  call void @func_b1400(i32 %r33)
  br label %b2970

b3921:
  %r63 = add i32 0, 1
  %r62 = icmp ule i32 %r63, 0
  br i1 %r62, label %b3923, label %b2042

b1984:
  %r72 = phi i32 [%r41, %b1330], [%r74, %b3927]
  %r66 = phi i32 [1, %b1330], [%r65, %b3927]
  %r73 = phi i32 [32, %b1330], [%r73, %b3927]
  %r70 = add i32 ptrtoint(i8* @itoaBuf to i32), %r66
  %r71 = and i32 %r72, 15
  %r68 = call i32 @func_b1215(i32 %r71, i32 9)
  %r67 = inttoptr i32 %r70 to i8*
  %r69 = trunc i32 %r68 to i8
  store i8 %r69, i8* %r67
  %r65 = add i32 %r66, 1
  %r64 = icmp ule i32 %r65, 31
  br i1 %r64, label %b3927, label %b1985

b2948:
  %r76 = phi i32 [%r19, %b2956], [%r82, %b2946]
  %r81 = phi i32 [%r51, %b2956], [%r80, %b2946]
  %r79 = phi i32 [%r29, %b2956], [%r50, %b2946]
  %r78 = call i32 @inb(i32 1021)
  %r77 = and i32 %r78, 96
  call void @func_b1179(i32 %r77, i32 0, i32 %r76)
  %r75 = icmp eq i32 %r76, 10
  br i1 %r75, label %b2951, label %b2953

b2964:
  %r84 = call i32 @inb(i32 1021)
  %r83 = and i32 %r84, 96
  call void @func_b1179(i32 %r83, i32 0, i32 13)
  call void @func_b1400(i32 %r53)
  br label %b2957

b2966:
  call void @func_b1400(i32 %r53)
  br label %b2957

b2970:
  %r88 = phi i32 [%r38, %b2977], [%r38, %b2979]
  %r16 = phi i32 [%r36, %b2977], [%r36, %b2979]
  %r86 = inttoptr i32 %r88 to i8*
  %r87 = load i8, i8* %r86
  %r39 = zext i8 %r87 to i32
  %r85 = icmp eq i32 %r39, 0
  br i1 %r85, label %b1334, label %b2972

b3923:
  call void @func_b1409(i32 32)
  call void @func_b3914(i32 1, i32 %r63, i32 0, i32 32)
  %r90 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r91 = load i8, i8* %r90
  %r89 = zext i8 %r91 to i32
  call void @func_b1409(i32 %r89)
  ret void

b2042:
  %r93 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r94 = load i8, i8* %r93
  %r92 = zext i8 %r94 to i32
  call void @func_b1409(i32 %r92)
  ret void

b3927:
  %r74 = lshr i32 %r72, 4
  %r95 = icmp eq i32 %r74, 0
  br i1 %r95, label %b1985, label %b1984

b1985:
  %r97 = phi i32 [%r73, %b1984], [%r73, %b3927]
  %r96 = phi i32 [%r66, %b1984], [%r66, %b3927]
  call void @func_b3914(i32 1, i32 %r96, i32 0, i32 %r97)
  br label %b1982

b2951:
  %r99 = call i32 @inb(i32 1021)
  %r98 = and i32 %r99, 96
  call void @func_b1179(i32 %r98, i32 0, i32 13)
  call void @func_b1400(i32 %r76)
  br label %b2944

b2953:
  call void @func_b1400(i32 %r76)
  br label %b2944

b2957:
  %r103 = phi i32 [%r58, %b2964], [%r58, %b2966]
  %r30 = phi i32 [%r56, %b2964], [%r56, %b2966]
  %r101 = inttoptr i32 %r103 to i8*
  %r102 = load i8, i8* %r101
  %r59 = zext i8 %r102 to i32
  %r100 = icmp eq i32 %r59, 0
  br i1 %r100, label %b1332, label %b2959

b2972:
  %r37 = add i32 %r88, 1
  br label %b2974

b1982:
  %r106 = phi i32 [%r96, %b1985], [%r105, %b1982]
  %r110 = add i32 ptrtoint(i8* @itoaBuf to i32), %r106
  %r108 = inttoptr i32 %r110 to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  call void @func_b1409(i32 %r107)
  %r105 = add i32 %r106, -1
  %r104 = icmp sle i32 0, %r105
  br i1 %r104, label %b1982, label %b295

b2944:
  %r114 = phi i32 [%r81, %b2951], [%r81, %b2953]
  %r50 = phi i32 [%r79, %b2951], [%r79, %b2953]
  %r112 = inttoptr i32 %r114 to i8*
  %r113 = load i8, i8* %r112
  %r82 = zext i8 %r113 to i32
  %r111 = icmp eq i32 %r82, 0
  br i1 %r111, label %b1330, label %b2946

b2959:
  %r57 = add i32 %r103, 1
  br label %b2961

b295:
  ret void

b2946:
  %r80 = add i32 %r114, 1
  br label %b2948
}

define internal i32 @func_b3027(i32 %r0, i32 %r1) {
  br label %b3027

b3027:
  %r4 = inttoptr i32 ptrtoint(i8* @str11 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3019, label %b3029

b3019:
  %r13 = phi i32 [%r1, %b3027], [%r12, %b3026]
  %r11 = phi i32 [%r0, %b3027], [%r10, %b3026]
  %r8 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1813, label %b3021

b3029:
  %r14 = add i32 ptrtoint(i8* @str11 to i32), 1
  br label %b3026

b1813:
  %r19 = phi i32 [%r11, %b3019], [%r26, %b3009]
  %r25 = phi i32 [%r13, %b3019], [%r24, %b3009]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1215(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b3977(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1814, label %b3008

b3021:
  %r27 = add i32 ptrtoint(i8* @str1 to i32), 1
  br label %b3013

b3026:
  %r33 = phi i32 [%r3, %b3029], [%r29, %b3024]
  %r32 = phi i32 [%r14, %b3029], [%r34, %b3024]
  %r12 = phi i32 [%r1, %b3029], [%r12, %b3024]
  %r10 = phi i32 [%r0, %b3029], [%r10, %b3024]
  call void @func_b1409(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b3019, label %b3024

b1814:
  %r39 = phi i32 [%r25, %b1813], [%r42, %b2996]
  %r41 = phi i32 [%r19, %b1813], [%r40, %b2996]
  call void @func_b2990(i32 %r39)
  %r37 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b1336, label %b2995

b3008:
  %r43 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b3000

b3013:
  %r45 = phi i32 [%r7, %b3021], [%r52, %b3011]
  %r51 = phi i32 [%r27, %b3021], [%r50, %b3011]
  %r49 = phi i32 [%r11, %b3021], [%r26, %b3011]
  %r48 = phi i32 [%r13, %b3021], [%r24, %b3011]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1179(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3016, label %b3018

b3024:
  %r34 = add i32 %r32, 1
  br label %b3026

b1336:
  %r54 = phi i32 [%r41, %b1814], [%r55, %b2980]
  %r53 = add i32 %r54, 1
  ret i32 %r53

b2995:
  %r56 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b2984

b3000:
  %r58 = phi i32 [%r16, %b3008], [%r65, %b2998]
  %r64 = phi i32 [%r43, %b3008], [%r63, %b2998]
  %r62 = phi i32 [%r25, %b3008], [%r42, %b2998]
  %r61 = phi i32 [%r19, %b3008], [%r40, %b2998]
  %r60 = call i32 @inb(i32 1021)
  %r59 = and i32 %r60, 96
  call void @func_b1179(i32 %r59, i32 0, i32 %r58)
  %r57 = icmp eq i32 %r58, 10
  br i1 %r57, label %b3003, label %b3005

b3016:
  %r67 = call i32 @inb(i32 1021)
  %r66 = and i32 %r67, 96
  call void @func_b1179(i32 %r66, i32 0, i32 13)
  call void @func_b1400(i32 %r45)
  br label %b3009

b3018:
  call void @func_b1400(i32 %r45)
  br label %b3009

b2984:
  %r69 = phi i32 [%r36, %b2995], [%r75, %b2982]
  %r74 = phi i32 [%r56, %b2995], [%r73, %b2982]
  %r72 = phi i32 [%r41, %b2995], [%r55, %b2982]
  %r71 = call i32 @inb(i32 1021)
  %r70 = and i32 %r71, 96
  call void @func_b1179(i32 %r70, i32 0, i32 %r69)
  %r68 = icmp eq i32 %r69, 10
  br i1 %r68, label %b2987, label %b2989

b3003:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1179(i32 %r76, i32 0, i32 13)
  call void @func_b1400(i32 %r58)
  br label %b2996

b3005:
  call void @func_b1400(i32 %r58)
  br label %b2996

b3009:
  %r81 = phi i32 [%r51, %b3016], [%r51, %b3018]
  %r24 = phi i32 [%r48, %b3016], [%r48, %b3018]
  %r26 = phi i32 [%r49, %b3016], [%r49, %b3018]
  %r79 = inttoptr i32 %r81 to i8*
  %r80 = load i8, i8* %r79
  %r52 = zext i8 %r80 to i32
  %r78 = icmp eq i32 %r52, 0
  br i1 %r78, label %b1813, label %b3011

b2987:
  %r83 = call i32 @inb(i32 1021)
  %r82 = and i32 %r83, 96
  call void @func_b1179(i32 %r82, i32 0, i32 13)
  call void @func_b1400(i32 %r69)
  br label %b2980

b2989:
  call void @func_b1400(i32 %r69)
  br label %b2980

b2996:
  %r87 = phi i32 [%r64, %b3003], [%r64, %b3005]
  %r40 = phi i32 [%r61, %b3003], [%r61, %b3005]
  %r42 = phi i32 [%r62, %b3003], [%r62, %b3005]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r65 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r65, 0
  br i1 %r84, label %b1814, label %b2998

b3011:
  %r50 = add i32 %r81, 1
  br label %b3013

b2980:
  %r91 = phi i32 [%r74, %b2987], [%r74, %b2989]
  %r55 = phi i32 [%r72, %b2987], [%r72, %b2989]
  %r89 = inttoptr i32 %r91 to i8*
  %r90 = load i8, i8* %r89
  %r75 = zext i8 %r90 to i32
  %r88 = icmp eq i32 %r75, 0
  br i1 %r88, label %b1336, label %b2982

b2998:
  %r63 = add i32 %r87, 1
  br label %b3000

b2982:
  %r73 = add i32 %r91, 1
  br label %b2984
}

define internal i32 @func_b3039(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3039

b3039:
  %r5 = phi i32 [%r0, %0], [%r14, %b3032]
  %r13 = phi i32 [%r1, %0], [%r12, %b3032]
  %r11 = phi i32 [%r2, %0], [%r10, %b3032]
  %r9 = phi i32 [%r3, %0], [%r8, %b3032]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1179(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b3783, label %b3784

b3783:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1179(i32 %r15, i32 0, i32 13)
  call void @func_b1400(i32 %r5)
  br label %b3030

b3784:
  call void @func_b1400(i32 %r5)
  br label %b3030

b3030:
  %r20 = phi i32 [%r13, %b3783], [%r13, %b3784]
  %r10 = phi i32 [%r11, %b3783], [%r11, %b3784]
  %r8 = phi i32 [%r9, %b3783], [%r9, %b3784]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c196, label %b3032

c196:
  %r21 = tail call i32 @func_b3027(i32 %r10, i32 %r8)
  ret i32 %r21

b3032:
  %r12 = add i32 %r20, 1
  br label %b3039
}

define internal i32 @func_b3045(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3045

b3045:
  %r5 = phi i32 [%r0, %0], [%r12, %b3787], [%r12, %b3788]
  %r11 = phi i32 [%r1, %0], [%r10, %b3787], [%r10, %b3788]
  %r9 = phi i32 [%r2, %0], [12, %b3787], [12, %b3788]
  %r8 = phi i32 [%r3, %0], [%r7, %b3787], [%r6, %b3788]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b417, label %b3047

b417:
  ret i32 %r8

b3047:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str0 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3787, label %b3788

b3787:
  %r7 = call i32 @func_b3027(i32 %r8, i32 %r11)
  br label %b3045

b3788:
  %r17 = add i32 ptrtoint(i8* @str0 to i32), 1
  %r6 = call i32 @func_b3039(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b3045
}

define internal void @func_b3081(i32 %r0, i32 %r1) {
  br label %b3081

b3081:
  %r6 = phi i32 [%r0, %0], [%r8, %b3088], [%r8, %b3090]
  %r7 = phi i32 [%r1, %0], [%r7, %b3088], [%r7, %b3090]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1344, label %b3083

b1344:
  %r19 = add i32 %r7, 4
  %r18 = inttoptr i32 %r19 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1215(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b295, label %b3080

b3083:
  %r8 = add i32 %r6, 1
  br label %b3085

b295:
  ret void

b3080:
  %r20 = add i32 ptrtoint(i8* @str9 to i32), 1
  br label %c211

b3085:
  %r23 = call i32 @inb(i32 1021)
  %r22 = and i32 %r23, 96
  call void @func_b1179(i32 %r22, i32 0, i32 %r3)
  %r21 = icmp eq i32 %r3, 10
  br i1 %r21, label %b3088, label %b3090

c211:
  tail call void @func_b2898(i32 %r10, i32 %r20)
  ret void

b3088:
  %r25 = call i32 @inb(i32 1021)
  %r24 = and i32 %r25, 96
  call void @func_b1179(i32 %r24, i32 0, i32 13)
  call void @func_b1400(i32 %r3)
  br label %b3081

b3090:
  call void @func_b1400(i32 %r3)
  br label %b3081
}

define internal void @func_b3109(i32 %r0, i32 %r1) {
  br label %b3109

b3109:
  %r6 = phi i32 [%r0, %0], [%r8, %b3116], [%r8, %b3118]
  %r7 = phi i32 [%r1, %0], [%r7, %b3116], [%r7, %b3118]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1346, label %b3111

b1346:
  %r18 = inttoptr i32 %r7 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1215(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str8 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1344, label %b3108

b3111:
  %r8 = add i32 %r6, 1
  %r21 = call i32 @inb(i32 1021)
  %r20 = and i32 %r21, 96
  call void @func_b1179(i32 %r20, i32 0, i32 %r3)
  %r19 = icmp eq i32 %r3, 10
  br i1 %r19, label %b3116, label %b3118

b1344:
  %r33 = phi i32 [%r7, %b1346], [%r34, %b3081]
  %r32 = add i32 %r33, 4
  %r31 = inttoptr i32 %r32 to i32*
  %r26 = load i32, i32* %r31
  %r30 = and i32 %r26, 15
  %r28 = call i32 @func_b1215(i32 %r30, i32 9)
  %r27 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r29 = trunc i32 %r28 to i8
  store i8 %r29, i8* %r27
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r26, i32 32)
  %r24 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b295, label %b3080

b3108:
  %r35 = add i32 ptrtoint(i8* @str8 to i32), 1
  br label %b3085

b3116:
  %r37 = call i32 @inb(i32 1021)
  %r36 = and i32 %r37, 96
  call void @func_b1179(i32 %r36, i32 0, i32 13)
  call void @func_b1400(i32 %r3)
  br label %b3109

b3118:
  call void @func_b1400(i32 %r3)
  br label %b3109

b295:
  ret void

b3080:
  %r38 = add i32 ptrtoint(i8* @str9 to i32), 1
  br label %c225

b3085:
  %r40 = phi i32 [%r10, %b3108], [%r46, %b3083]
  %r45 = phi i32 [%r35, %b3108], [%r44, %b3083]
  %r43 = phi i32 [%r7, %b3108], [%r34, %b3083]
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1179(i32 %r41, i32 0, i32 %r40)
  %r39 = icmp eq i32 %r40, 10
  br i1 %r39, label %b3088, label %b3090

c225:
  tail call void @func_b2898(i32 %r23, i32 %r38)
  ret void

b3088:
  %r48 = call i32 @inb(i32 1021)
  %r47 = and i32 %r48, 96
  call void @func_b1179(i32 %r47, i32 0, i32 13)
  call void @func_b1400(i32 %r40)
  br label %b3081

b3090:
  call void @func_b1400(i32 %r40)
  br label %b3081

b3081:
  %r52 = phi i32 [%r45, %b3088], [%r45, %b3090]
  %r34 = phi i32 [%r43, %b3088], [%r43, %b3090]
  %r50 = inttoptr i32 %r52 to i8*
  %r51 = load i8, i8* %r50
  %r46 = zext i8 %r51 to i32
  %r49 = icmp eq i32 %r46, 0
  br i1 %r49, label %b1344, label %b3083

b3083:
  %r44 = add i32 %r52, 1
  br label %b3085
}

define internal i32 @func_b3165(i32 %r0, i32 %r1) {
  br label %b3165

b3165:
  %r4 = inttoptr i32 ptrtoint(i8* @str13 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3157, label %b3167

b3157:
  %r13 = phi i32 [%r1, %b3165], [%r12, %b3164]
  %r11 = phi i32 [%r0, %b3165], [%r10, %b3164]
  %r8 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1877, label %b3159

b3167:
  %r14 = add i32 ptrtoint(i8* @str13 to i32), 1
  br label %b3164

b1877:
  %r19 = phi i32 [%r11, %b3157], [%r26, %b3147]
  %r25 = phi i32 [%r13, %b3157], [%r24, %b3147]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1215(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b3977(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b3125, label %b3146

b3159:
  %r27 = add i32 ptrtoint(i8* @str1 to i32), 1
  br label %b3151

b3164:
  %r33 = phi i32 [%r3, %b3167], [%r29, %b3162]
  %r32 = phi i32 [%r14, %b3167], [%r34, %b3162]
  %r12 = phi i32 [%r1, %b3167], [%r12, %b3162]
  %r10 = phi i32 [%r0, %b3167], [%r10, %b3162]
  call void @func_b1409(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b3157, label %b3162

b3125:
  %r42 = phi i32 [%r19, %b1877], [%r41, %b3134]
  %r40 = phi i32 [%r25, %b1877], [%r39, %b3134]
  %r37 = inttoptr i32 ptrtoint(i8* @str7 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b2095, label %b3127

b3146:
  %r43 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b3138

b3151:
  %r45 = phi i32 [%r7, %b3159], [%r52, %b3149]
  %r51 = phi i32 [%r27, %b3159], [%r50, %b3149]
  %r49 = phi i32 [%r11, %b3159], [%r26, %b3149]
  %r48 = phi i32 [%r13, %b3159], [%r24, %b3149]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1179(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3154, label %b3156

b3162:
  %r34 = add i32 %r32, 1
  br label %b3164

b2095:
  %r62 = inttoptr i32 %r40 to i32*
  %r57 = load i32, i32* %r62
  %r61 = and i32 %r57, 15
  %r59 = call i32 @func_b1215(i32 %r61, i32 9)
  %r58 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r60 = trunc i32 %r59 to i8
  store i8 %r60, i8* %r58
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r57, i32 32)
  %r55 = inttoptr i32 ptrtoint(i8* @str8 to i32) to i8*
  %r56 = load i8, i8* %r55
  %r54 = zext i8 %r56 to i32
  %r53 = icmp eq i32 %r54, 0
  br i1 %r53, label %b2096, label %b3099

b3127:
  %r66 = add i32 ptrtoint(i8* @str7 to i32), 1
  %r65 = call i32 @inb(i32 1021)
  %r64 = and i32 %r65, 96
  call void @func_b1179(i32 %r64, i32 0, i32 %r36)
  %r63 = icmp eq i32 %r36, 10
  br i1 %r63, label %b3131, label %b3133

b3138:
  %r68 = phi i32 [%r16, %b3146], [%r75, %b3136]
  %r74 = phi i32 [%r43, %b3146], [%r73, %b3136]
  %r72 = phi i32 [%r25, %b3146], [%r39, %b3136]
  %r71 = phi i32 [%r19, %b3146], [%r41, %b3136]
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1179(i32 %r69, i32 0, i32 %r68)
  %r67 = icmp eq i32 %r68, 10
  br i1 %r67, label %b3141, label %b3143

b3154:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1179(i32 %r76, i32 0, i32 13)
  call void @func_b1400(i32 %r45)
  br label %b3147

b3156:
  call void @func_b1400(i32 %r45)
  br label %b3147

b2096:
  %r88 = add i32 %r40, 4
  %r87 = inttoptr i32 %r88 to i32*
  %r82 = load i32, i32* %r87
  %r86 = and i32 %r82, 15
  %r84 = call i32 @func_b1215(i32 %r86, i32 9)
  %r83 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r85 = trunc i32 %r84 to i8
  store i8 %r85, i8* %r83
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r82, i32 32)
  %r80 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3067, label %b3075

b3099:
  %r92 = add i32 ptrtoint(i8* @str8 to i32), 1
  %r91 = call i32 @inb(i32 1021)
  %r90 = and i32 %r91, 96
  call void @func_b1179(i32 %r90, i32 0, i32 %r54)
  %r89 = icmp eq i32 %r54, 10
  br i1 %r89, label %b3103, label %b3105

b3131:
  %r98 = call i32 @inb(i32 1021)
  %r97 = and i32 %r98, 96
  call void @func_b1179(i32 %r97, i32 0, i32 13)
  call void @func_b1400(i32 %r36)
  call void @func_b3109(i32 %r66, i32 %r40)
  %r95 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b1336, label %b3121

b3133:
  call void @func_b1400(i32 %r36)
  call void @func_b3109(i32 %r66, i32 %r40)
  %r101 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r102 = load i8, i8* %r101
  %r100 = zext i8 %r102 to i32
  %r99 = icmp eq i32 %r100, 0
  br i1 %r99, label %b1336, label %b3121

b3141:
  %r104 = call i32 @inb(i32 1021)
  %r103 = and i32 %r104, 96
  call void @func_b1179(i32 %r103, i32 0, i32 13)
  call void @func_b1400(i32 %r68)
  br label %b3134

b3143:
  call void @func_b1400(i32 %r68)
  br label %b3134

b3147:
  %r108 = phi i32 [%r51, %b3154], [%r51, %b3156]
  %r24 = phi i32 [%r48, %b3154], [%r48, %b3156]
  %r26 = phi i32 [%r49, %b3154], [%r49, %b3156]
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r52 = zext i8 %r107 to i32
  %r105 = icmp eq i32 %r52, 0
  br i1 %r105, label %b1877, label %b3149

b3067:
  %r111 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r112 = load i8, i8* %r111
  %r110 = zext i8 %r112 to i32
  %r109 = icmp eq i32 %r110, 0
  br i1 %r109, label %b1336, label %b3121

b3075:
  %r117 = add i32 ptrtoint(i8* @str9 to i32), 1
  call void @func_b2898(i32 %r79, i32 %r117)
  %r115 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r116 = load i8, i8* %r115
  %r114 = zext i8 %r116 to i32
  %r113 = icmp eq i32 %r114, 0
  br i1 %r113, label %b1336, label %b3121

b3103:
  %r123 = call i32 @inb(i32 1021)
  %r122 = and i32 %r123, 96
  call void @func_b1179(i32 %r122, i32 0, i32 13)
  call void @func_b1400(i32 %r54)
  call void @func_b3081(i32 %r92, i32 %r40)
  %r120 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r119 = zext i8 %r121 to i32
  %r118 = icmp eq i32 %r119, 0
  br i1 %r118, label %b1336, label %b3121

b3105:
  call void @func_b1400(i32 %r54)
  call void @func_b3081(i32 %r92, i32 %r40)
  %r126 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r127 = load i8, i8* %r126
  %r125 = zext i8 %r127 to i32
  %r124 = icmp eq i32 %r125, 0
  br i1 %r124, label %b1336, label %b3121

b1336:
  %r129 = phi i32 [%r42, %b3131], [%r42, %b3133], [%r42, %b3067], [%r42, %b3075], [%r42, %b3103], [%r42, %b3105], [%r130, %b3057]
  %r128 = add i32 %r129, 1
  ret i32 %r128

b3121:
  %r133 = phi i32 [%r94, %b3131], [%r100, %b3133], [%r110, %b3067], [%r114, %b3075], [%r119, %b3103], [%r125, %b3105]
  %r132 = phi i32 [%r42, %b3131], [%r42, %b3133], [%r42, %b3067], [%r42, %b3075], [%r42, %b3103], [%r42, %b3105]
  %r131 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b3061

b3134:
  %r137 = phi i32 [%r74, %b3141], [%r74, %b3143]
  %r41 = phi i32 [%r71, %b3141], [%r71, %b3143]
  %r39 = phi i32 [%r72, %b3141], [%r72, %b3143]
  %r135 = inttoptr i32 %r137 to i8*
  %r136 = load i8, i8* %r135
  %r75 = zext i8 %r136 to i32
  %r134 = icmp eq i32 %r75, 0
  br i1 %r134, label %b3125, label %b3136

b3149:
  %r50 = add i32 %r108, 1
  br label %b3151

b3061:
  %r139 = phi i32 [%r133, %b3121], [%r145, %b3059]
  %r144 = phi i32 [%r131, %b3121], [%r143, %b3059]
  %r142 = phi i32 [%r132, %b3121], [%r130, %b3059]
  %r141 = call i32 @inb(i32 1021)
  %r140 = and i32 %r141, 96
  call void @func_b1179(i32 %r140, i32 0, i32 %r139)
  %r138 = icmp eq i32 %r139, 10
  br i1 %r138, label %b3064, label %b3066

b3136:
  %r73 = add i32 %r137, 1
  br label %b3138

b3064:
  %r147 = call i32 @inb(i32 1021)
  %r146 = and i32 %r147, 96
  call void @func_b1179(i32 %r146, i32 0, i32 13)
  call void @func_b1400(i32 %r139)
  br label %b3057

b3066:
  call void @func_b1400(i32 %r139)
  br label %b3057

b3057:
  %r151 = phi i32 [%r144, %b3064], [%r144, %b3066]
  %r130 = phi i32 [%r142, %b3064], [%r142, %b3066]
  %r149 = inttoptr i32 %r151 to i8*
  %r150 = load i8, i8* %r149
  %r145 = zext i8 %r150 to i32
  %r148 = icmp eq i32 %r145, 0
  br i1 %r148, label %b1336, label %b3059

b3059:
  %r143 = add i32 %r151, 1
  br label %b3061
}

define internal i32 @func_b3177(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3177

b3177:
  %r5 = phi i32 [%r0, %0], [%r14, %b3170]
  %r13 = phi i32 [%r1, %0], [%r12, %b3170]
  %r11 = phi i32 [%r2, %0], [%r10, %b3170]
  %r9 = phi i32 [%r3, %0], [%r8, %b3170]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1179(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b3789, label %b3790

b3789:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1179(i32 %r15, i32 0, i32 13)
  call void @func_b1400(i32 %r5)
  br label %b3168

b3790:
  call void @func_b1400(i32 %r5)
  br label %b3168

b3168:
  %r20 = phi i32 [%r13, %b3789], [%r13, %b3790]
  %r10 = phi i32 [%r11, %b3789], [%r11, %b3790]
  %r8 = phi i32 [%r9, %b3789], [%r9, %b3790]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c272, label %b3170

c272:
  %r21 = tail call i32 @func_b3165(i32 %r10, i32 %r8)
  ret i32 %r21

b3170:
  %r12 = add i32 %r20, 1
  br label %b3177
}

define internal i32 @func_b3183(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3183

b3183:
  %r5 = phi i32 [%r0, %0], [%r12, %b3793], [%r12, %b3794]
  %r11 = phi i32 [%r1, %0], [%r10, %b3793], [%r10, %b3794]
  %r9 = phi i32 [%r2, %0], [8, %b3793], [8, %b3794]
  %r8 = phi i32 [%r3, %0], [%r7, %b3793], [%r6, %b3794]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b417, label %b3185

b417:
  ret i32 %r8

b3185:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str0 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3793, label %b3794

b3793:
  %r7 = call i32 @func_b3165(i32 %r8, i32 %r11)
  br label %b3183

b3794:
  %r17 = add i32 ptrtoint(i8* @str0 to i32), 1
  %r6 = call i32 @func_b3177(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b3183
}

define internal void @func_b3432(i32 %r0, i32 %r1) {
  br label %b3432

b3432:
  %r6 = phi i32 [%r0, %0], [%r8, %b3439], [%r8, %b3441]
  %r7 = phi i32 [%r1, %0], [%r7, %b3439], [%r7, %b3441]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1352, label %b3434

b1352:
  %r16 = and i32 %r7, 15
  %r14 = call i32 @func_b1215(i32 %r16, i32 9)
  %r13 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r15 = trunc i32 %r14 to i8
  store i8 %r15, i8* %r13
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b295, label %b3431

b3434:
  %r8 = add i32 %r6, 1
  br label %b3436

b295:
  ret void

b3431:
  %r17 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c287

b3436:
  %r20 = call i32 @inb(i32 1021)
  %r19 = and i32 %r20, 96
  call void @func_b1179(i32 %r19, i32 0, i32 %r3)
  %r18 = icmp eq i32 %r3, 10
  br i1 %r18, label %b3439, label %b3441

c287:
  tail call void @func_b2898(i32 %r10, i32 %r17)
  ret void

b3439:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1179(i32 %r21, i32 0, i32 13)
  call void @func_b1400(i32 %r3)
  br label %b3432

b3441:
  call void @func_b1400(i32 %r3)
  br label %b3432
}

define internal void @func_b3472(i32 %r0, i32 %r1) {
  br label %b3472

b3472:
  %r6 = phi i32 [%r0, %0], [%r8, %b3479], [%r8, %b3481]
  %r7 = phi i32 [%r1, %0], [%r7, %b3479], [%r7, %b3481]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3471, label %b3474

b3471:
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b3460, label %b3795

b3474:
  %r8 = add i32 %r6, 1
  br label %b3476

b3460:
  %r18 = phi i32 [%r7, %b3471], [%r17, %b3467]
  %r15 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b1352, label %b3462

b3795:
  %r19 = add i32 %r7, 1
  br label %b3467

b3476:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1179(i32 %r21, i32 0, i32 %r3)
  %r20 = icmp eq i32 %r3, 10
  br i1 %r20, label %b3479, label %b3481

b1352:
  %r27 = phi i32 [%r18, %b3460], [%r32, %b3432]
  %r31 = and i32 %r27, 15
  %r29 = call i32 @func_b1215(i32 %r31, i32 9)
  %r28 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = trunc i32 %r29 to i8
  store i8 %r30, i8* %r28
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r27, i32 32)
  %r25 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r26 = load i8, i8* %r25
  %r24 = zext i8 %r26 to i32
  %r23 = icmp eq i32 %r24, 0
  br i1 %r23, label %b295, label %b3431

b3462:
  %r33 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3436

b3467:
  %r39 = phi i32 [%r10, %b3795], [%r35, %b3465]
  %r38 = phi i32 [%r19, %b3795], [%r40, %b3465]
  %r17 = phi i32 [%r7, %b3795], [%r17, %b3465]
  call void @func_b1409(i32 %r39)
  %r36 = inttoptr i32 %r38 to i8*
  %r37 = load i8, i8* %r36
  %r35 = zext i8 %r37 to i32
  %r34 = icmp eq i32 %r35, 0
  br i1 %r34, label %b3460, label %b3465

b3479:
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1179(i32 %r41, i32 0, i32 13)
  call void @func_b1400(i32 %r3)
  br label %b3472

b3481:
  call void @func_b1400(i32 %r3)
  br label %b3472

b295:
  ret void

b3431:
  %r43 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c306

b3436:
  %r45 = phi i32 [%r14, %b3462], [%r51, %b3434]
  %r50 = phi i32 [%r33, %b3462], [%r49, %b3434]
  %r48 = phi i32 [%r18, %b3462], [%r32, %b3434]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1179(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3439, label %b3441

b3465:
  %r40 = add i32 %r38, 1
  br label %b3467

c306:
  tail call void @func_b2898(i32 %r24, i32 %r43)
  ret void

b3439:
  %r53 = call i32 @inb(i32 1021)
  %r52 = and i32 %r53, 96
  call void @func_b1179(i32 %r52, i32 0, i32 13)
  call void @func_b1400(i32 %r45)
  br label %b3432

b3441:
  call void @func_b1400(i32 %r45)
  br label %b3432

b3432:
  %r57 = phi i32 [%r50, %b3439], [%r50, %b3441]
  %r32 = phi i32 [%r48, %b3439], [%r48, %b3441]
  %r55 = inttoptr i32 %r57 to i8*
  %r56 = load i8, i8* %r55
  %r51 = zext i8 %r56 to i32
  %r54 = icmp eq i32 %r51, 0
  br i1 %r54, label %b1352, label %b3434

b3434:
  %r49 = add i32 %r57, 1
  br label %b3436
}

define internal void @func_b3596(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3596

b3596:
  %r4 = phi i32 [%r0, %0], [%r11, %b3589]
  %r10 = phi i32 [%r1, %0], [%r9, %b3589]
  %r8 = phi i32 [%r2, %0], [%r7, %b3589]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1179(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3796, label %b3797

b3796:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1179(i32 %r12, i32 0, i32 13)
  call void @func_b1400(i32 %r4)
  br label %b3587

b3797:
  call void @func_b1400(i32 %r4)
  br label %b3587

b3587:
  %r17 = phi i32 [%r10, %b3796], [%r10, %b3797]
  %r7 = phi i32 [%r8, %b3796], [%r8, %b3797]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b3584, label %b3589

b3584:
  %r20 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b3499, label %b3586

b3589:
  %r9 = add i32 %r17, 1
  br label %b3596

b3499:
  %r24 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b3471, label %b3504

b3586:
  %r30 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2898(i32 %r19, i32 %r30)
  %r28 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b3471, label %b3504

b3471:
  %r35 = phi i32 [%r7, %b3499], [%r7, %b3586], [%r36, %b3472]
  %r33 = inttoptr i32 %r35 to i8*
  %r34 = load i8, i8* %r33
  %r32 = zext i8 %r34 to i32
  %r31 = icmp eq i32 %r32, 0
  br i1 %r31, label %b3460, label %b3795

b3504:
  %r39 = phi i32 [%r23, %b3499], [%r27, %b3586]
  %r38 = phi i32 [%r7, %b3499], [%r7, %b3586]
  %r37 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3476

b3460:
  %r45 = phi i32 [%r35, %b3471], [%r44, %b3467]
  %r42 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r43 = load i8, i8* %r42
  %r41 = zext i8 %r43 to i32
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b1352, label %b3462

b3795:
  %r46 = add i32 %r35, 1
  br label %b3467

b3476:
  %r48 = phi i32 [%r39, %b3504], [%r54, %b3474]
  %r53 = phi i32 [%r37, %b3504], [%r52, %b3474]
  %r51 = phi i32 [%r38, %b3504], [%r36, %b3474]
  %r50 = call i32 @inb(i32 1021)
  %r49 = and i32 %r50, 96
  call void @func_b1179(i32 %r49, i32 0, i32 %r48)
  %r47 = icmp eq i32 %r48, 10
  br i1 %r47, label %b3479, label %b3481

b1352:
  %r59 = phi i32 [%r45, %b3460], [%r64, %b3432]
  %r63 = and i32 %r59, 15
  %r61 = call i32 @func_b1215(i32 %r63, i32 9)
  %r60 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r62 = trunc i32 %r61 to i8
  store i8 %r62, i8* %r60
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r59, i32 32)
  %r57 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r58 = load i8, i8* %r57
  %r56 = zext i8 %r58 to i32
  %r55 = icmp eq i32 %r56, 0
  br i1 %r55, label %b295, label %b3431

b3462:
  %r65 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3436

b3467:
  %r71 = phi i32 [%r32, %b3795], [%r67, %b3465]
  %r70 = phi i32 [%r46, %b3795], [%r72, %b3465]
  %r44 = phi i32 [%r35, %b3795], [%r44, %b3465]
  call void @func_b1409(i32 %r71)
  %r68 = inttoptr i32 %r70 to i8*
  %r69 = load i8, i8* %r68
  %r67 = zext i8 %r69 to i32
  %r66 = icmp eq i32 %r67, 0
  br i1 %r66, label %b3460, label %b3465

b3479:
  %r74 = call i32 @inb(i32 1021)
  %r73 = and i32 %r74, 96
  call void @func_b1179(i32 %r73, i32 0, i32 13)
  call void @func_b1400(i32 %r48)
  br label %b3472

b3481:
  call void @func_b1400(i32 %r48)
  br label %b3472

b295:
  ret void

b3431:
  %r75 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c335

b3436:
  %r77 = phi i32 [%r41, %b3462], [%r83, %b3434]
  %r82 = phi i32 [%r65, %b3462], [%r81, %b3434]
  %r80 = phi i32 [%r45, %b3462], [%r64, %b3434]
  %r79 = call i32 @inb(i32 1021)
  %r78 = and i32 %r79, 96
  call void @func_b1179(i32 %r78, i32 0, i32 %r77)
  %r76 = icmp eq i32 %r77, 10
  br i1 %r76, label %b3439, label %b3441

b3465:
  %r72 = add i32 %r70, 1
  br label %b3467

b3472:
  %r87 = phi i32 [%r53, %b3479], [%r53, %b3481]
  %r36 = phi i32 [%r51, %b3479], [%r51, %b3481]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r54 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r54, 0
  br i1 %r84, label %b3471, label %b3474

c335:
  tail call void @func_b2898(i32 %r56, i32 %r75)
  ret void

b3439:
  %r89 = call i32 @inb(i32 1021)
  %r88 = and i32 %r89, 96
  call void @func_b1179(i32 %r88, i32 0, i32 13)
  call void @func_b1400(i32 %r77)
  br label %b3432

b3441:
  call void @func_b1400(i32 %r77)
  br label %b3432

b3474:
  %r52 = add i32 %r87, 1
  br label %b3476

b3432:
  %r93 = phi i32 [%r82, %b3439], [%r82, %b3441]
  %r64 = phi i32 [%r80, %b3439], [%r80, %b3441]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r83 = zext i8 %r92 to i32
  %r90 = icmp eq i32 %r83, 0
  br i1 %r90, label %b1352, label %b3434

b3434:
  %r81 = add i32 %r93, 1
  br label %b3436
}

define internal void @func_b3510(i32 %r0, i32 %r1) {
  br label %b3510

b3510:
  %r6 = phi i32 [%r0, %0], [%r8, %b3517], [%r8, %b3519]
  %r7 = phi i32 [%r1, %0], [%r7, %b3517], [%r7, %b3519]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3505, label %b3512

b3505:
  %r11 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b3499, label %b3507

b3512:
  %r8 = add i32 %r6, 1
  br label %b3514

b3499:
  %r15 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3471, label %b3504

b3507:
  %r21 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2898(i32 %r10, i32 %r21)
  %r19 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r20 = load i8, i8* %r19
  %r18 = zext i8 %r20 to i32
  %r17 = icmp eq i32 %r18, 0
  br i1 %r17, label %b3471, label %b3504

b3514:
  %r24 = call i32 @inb(i32 1021)
  %r23 = and i32 %r24, 96
  call void @func_b1179(i32 %r23, i32 0, i32 %r3)
  %r22 = icmp eq i32 %r3, 10
  br i1 %r22, label %b3517, label %b3519

b3471:
  %r29 = phi i32 [%r7, %b3499], [%r7, %b3507], [%r30, %b3472]
  %r27 = inttoptr i32 %r29 to i8*
  %r28 = load i8, i8* %r27
  %r26 = zext i8 %r28 to i32
  %r25 = icmp eq i32 %r26, 0
  br i1 %r25, label %b3460, label %b3795

b3504:
  %r33 = phi i32 [%r14, %b3499], [%r18, %b3507]
  %r32 = phi i32 [%r7, %b3499], [%r7, %b3507]
  %r31 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3476

b3517:
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1179(i32 %r34, i32 0, i32 13)
  call void @func_b1400(i32 %r3)
  br label %b3510

b3519:
  call void @func_b1400(i32 %r3)
  br label %b3510

b3460:
  %r41 = phi i32 [%r29, %b3471], [%r40, %b3467]
  %r38 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  %r36 = icmp eq i32 %r37, 0
  br i1 %r36, label %b1352, label %b3462

b3795:
  %r42 = add i32 %r29, 1
  br label %b3467

b3476:
  %r44 = phi i32 [%r33, %b3504], [%r50, %b3474]
  %r49 = phi i32 [%r31, %b3504], [%r48, %b3474]
  %r47 = phi i32 [%r32, %b3504], [%r30, %b3474]
  %r46 = call i32 @inb(i32 1021)
  %r45 = and i32 %r46, 96
  call void @func_b1179(i32 %r45, i32 0, i32 %r44)
  %r43 = icmp eq i32 %r44, 10
  br i1 %r43, label %b3479, label %b3481

b1352:
  %r55 = phi i32 [%r41, %b3460], [%r60, %b3432]
  %r59 = and i32 %r55, 15
  %r57 = call i32 @func_b1215(i32 %r59, i32 9)
  %r56 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r58 = trunc i32 %r57 to i8
  store i8 %r58, i8* %r56
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r55, i32 32)
  %r53 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r54 = load i8, i8* %r53
  %r52 = zext i8 %r54 to i32
  %r51 = icmp eq i32 %r52, 0
  br i1 %r51, label %b295, label %b3431

b3462:
  %r61 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3436

b3467:
  %r67 = phi i32 [%r26, %b3795], [%r63, %b3465]
  %r66 = phi i32 [%r42, %b3795], [%r68, %b3465]
  %r40 = phi i32 [%r29, %b3795], [%r40, %b3465]
  call void @func_b1409(i32 %r67)
  %r64 = inttoptr i32 %r66 to i8*
  %r65 = load i8, i8* %r64
  %r63 = zext i8 %r65 to i32
  %r62 = icmp eq i32 %r63, 0
  br i1 %r62, label %b3460, label %b3465

b3479:
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1179(i32 %r69, i32 0, i32 13)
  call void @func_b1400(i32 %r44)
  br label %b3472

b3481:
  call void @func_b1400(i32 %r44)
  br label %b3472

b295:
  ret void

b3431:
  %r71 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c365

b3436:
  %r73 = phi i32 [%r37, %b3462], [%r79, %b3434]
  %r78 = phi i32 [%r61, %b3462], [%r77, %b3434]
  %r76 = phi i32 [%r41, %b3462], [%r60, %b3434]
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1179(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b3439, label %b3441

b3465:
  %r68 = add i32 %r66, 1
  br label %b3467

b3472:
  %r83 = phi i32 [%r49, %b3479], [%r49, %b3481]
  %r30 = phi i32 [%r47, %b3479], [%r47, %b3481]
  %r81 = inttoptr i32 %r83 to i8*
  %r82 = load i8, i8* %r81
  %r50 = zext i8 %r82 to i32
  %r80 = icmp eq i32 %r50, 0
  br i1 %r80, label %b3471, label %b3474

c365:
  tail call void @func_b2898(i32 %r52, i32 %r71)
  ret void

b3439:
  %r85 = call i32 @inb(i32 1021)
  %r84 = and i32 %r85, 96
  call void @func_b1179(i32 %r84, i32 0, i32 13)
  call void @func_b1400(i32 %r73)
  br label %b3432

b3441:
  call void @func_b1400(i32 %r73)
  br label %b3432

b3474:
  %r48 = add i32 %r83, 1
  br label %b3476

b3432:
  %r89 = phi i32 [%r78, %b3439], [%r78, %b3441]
  %r60 = phi i32 [%r76, %b3439], [%r76, %b3441]
  %r87 = inttoptr i32 %r89 to i8*
  %r88 = load i8, i8* %r87
  %r79 = zext i8 %r88 to i32
  %r86 = icmp eq i32 %r79, 0
  br i1 %r86, label %b1352, label %b3434

b3434:
  %r77 = add i32 %r89, 1
  br label %b3436
}

define internal void @func_b3680(i32 %r0, i32 %r1) {
  br label %b3680

b3680:
  %r3 = phi i32 [%r0, %0], [%r8, %b3673]
  %r7 = phi i32 [%r1, %0], [%r6, %b3673]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1179(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3799, label %b3800

b3799:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1179(i32 %r13, i32 0, i32 13)
  call void @func_b1400(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1358, label %b3673

b3800:
  call void @func_b1400(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1358, label %b3673

b1358:
  %r24 = inttoptr i32 4104 to i32*
  %r23 = load i32, i32* %r24
  %r21 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b3658, label %b3668

b3673:
  %r8 = phi i32 [%r10, %b3799], [%r16, %b3800]
  %r25 = phi i32 [%r7, %b3799], [%r7, %b3800]
  %r6 = add i32 %r25, 1
  br label %b3680

b3658:
  %r28 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b3646, label %b3660

b3668:
  %r36 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3596(i32 %r20, i32 %r36, i32 %r23)
  %r35 = inttoptr i32 4108 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b3505, label %b3665

b3646:
  %r39 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b3639, label %b3657

b3660:
  %r45 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2898(i32 %r27, i32 %r45)
  %r43 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3639, label %b3657

b3505:
  %r57 = phi i32 [%r34, %b3668], [%r56, %b3652], [%r55, %b3654], [%r54, %b3510], [%r53, %b1958], [%r52, %b3613], [%r51, %b3628], [%r50, %b3630]
  %r48 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r49 = load i8, i8* %r48
  %r47 = zext i8 %r49 to i32
  %r46 = icmp eq i32 %r47, 0
  br i1 %r46, label %b3499, label %b3507

b3665:
  %r66 = phi i32 [%r31, %b3668], [%r65, %b3652], [%r64, %b3654], [%r63, %b1958], [%r62, %b3613], [%r61, %b3628], [%r60, %b3630]
  %r59 = phi i32 [%r34, %b3668], [%r56, %b3652], [%r55, %b3654], [%r53, %b1958], [%r52, %b3613], [%r51, %b3628], [%r50, %b3630]
  %r58 = add i32 ptrtoint(i8* @str17 to i32), 1
  br label %b3514

b3639:
  %r71 = phi i32 [%r23, %b3646], [%r23, %b3660]
  %r69 = inttoptr i32 %r71 to i8*
  %r70 = load i8, i8* %r69
  %r68 = zext i8 %r70 to i32
  %r67 = icmp eq i32 %r68, 0
  br i1 %r67, label %b3622, label %b3798

b3657:
  %r73 = phi i32 [%r38, %b3646], [%r42, %b3660]
  %r77 = phi i32 [%r23, %b3646], [%r23, %b3660]
  %r76 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1179(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b3652, label %b3654

b3499:
  %r80 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3471, label %b3504

b3507:
  %r86 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2898(i32 %r47, i32 %r86)
  %r84 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r85 = load i8, i8* %r84
  %r83 = zext i8 %r85 to i32
  %r82 = icmp eq i32 %r83, 0
  br i1 %r82, label %b3471, label %b3504

b3514:
  %r88 = phi i32 [%r66, %b3665], [%r94, %b3512]
  %r93 = phi i32 [%r58, %b3665], [%r92, %b3512]
  %r91 = phi i32 [%r59, %b3665], [%r54, %b3512]
  %r90 = call i32 @inb(i32 1021)
  %r89 = and i32 %r90, 96
  call void @func_b1179(i32 %r89, i32 0, i32 %r88)
  %r87 = icmp eq i32 %r88, 10
  br i1 %r87, label %b3517, label %b3519

b3622:
  %r100 = phi i32 [%r71, %b3639], [%r99, %b3635]
  %r97 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r98 = load i8, i8* %r97
  %r96 = zext i8 %r98 to i32
  %r95 = icmp eq i32 %r96, 0
  br i1 %r95, label %b2023, label %b3624

b3798:
  %r101 = add i32 %r71, 1
  br label %b3635

b3652:
  %r107 = call i32 @inb(i32 1021)
  %r106 = and i32 %r107, 96
  call void @func_b1179(i32 %r106, i32 0, i32 13)
  call void @func_b1400(i32 %r73)
  call void @func_b3472(i32 %r76, i32 %r77)
  %r105 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r105
  %r103 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r104 = load i8, i8* %r103
  %r65 = zext i8 %r104 to i32
  %r102 = icmp eq i32 %r65, 0
  br i1 %r102, label %b3505, label %b3665

b3654:
  call void @func_b1400(i32 %r73)
  call void @func_b3472(i32 %r76, i32 %r77)
  %r111 = inttoptr i32 4108 to i32*
  %r55 = load i32, i32* %r111
  %r109 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r110 = load i8, i8* %r109
  %r64 = zext i8 %r110 to i32
  %r108 = icmp eq i32 %r64, 0
  br i1 %r108, label %b3505, label %b3665

b3471:
  %r116 = phi i32 [%r57, %b3499], [%r57, %b3507], [%r117, %b3472]
  %r114 = inttoptr i32 %r116 to i8*
  %r115 = load i8, i8* %r114
  %r113 = zext i8 %r115 to i32
  %r112 = icmp eq i32 %r113, 0
  br i1 %r112, label %b3460, label %b3795

b3504:
  %r120 = phi i32 [%r79, %b3499], [%r83, %b3507]
  %r119 = phi i32 [%r57, %b3499], [%r57, %b3507]
  %r118 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3476

b3517:
  %r122 = call i32 @inb(i32 1021)
  %r121 = and i32 %r122, 96
  call void @func_b1179(i32 %r121, i32 0, i32 13)
  call void @func_b1400(i32 %r88)
  br label %b3510

b3519:
  call void @func_b1400(i32 %r88)
  br label %b3510

b2023:
  %r130 = and i32 %r100, 15
  %r128 = call i32 @func_b1215(i32 %r130, i32 9)
  %r127 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r129 = trunc i32 %r128 to i8
  store i8 %r129, i8* %r127
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r100, i32 32)
  %r125 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b1958, label %b3613

b3624:
  %r134 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1179(i32 %r132, i32 0, i32 %r96)
  %r131 = icmp eq i32 %r96, 10
  br i1 %r131, label %b3628, label %b3630

b3635:
  %r140 = phi i32 [%r68, %b3798], [%r136, %b3633]
  %r139 = phi i32 [%r101, %b3798], [%r141, %b3633]
  %r99 = phi i32 [%r71, %b3798], [%r99, %b3633]
  call void @func_b1409(i32 %r140)
  %r137 = inttoptr i32 %r139 to i8*
  %r138 = load i8, i8* %r137
  %r136 = zext i8 %r138 to i32
  %r135 = icmp eq i32 %r136, 0
  br i1 %r135, label %b3622, label %b3633

b3460:
  %r147 = phi i32 [%r116, %b3471], [%r146, %b3467]
  %r144 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r145 = load i8, i8* %r144
  %r143 = zext i8 %r145 to i32
  %r142 = icmp eq i32 %r143, 0
  br i1 %r142, label %b1352, label %b3462

b3795:
  %r148 = add i32 %r116, 1
  br label %b3467

b3476:
  %r150 = phi i32 [%r120, %b3504], [%r156, %b3474]
  %r155 = phi i32 [%r118, %b3504], [%r154, %b3474]
  %r153 = phi i32 [%r119, %b3504], [%r117, %b3474]
  %r152 = call i32 @inb(i32 1021)
  %r151 = and i32 %r152, 96
  call void @func_b1179(i32 %r151, i32 0, i32 %r150)
  %r149 = icmp eq i32 %r150, 10
  br i1 %r149, label %b3479, label %b3481

b3510:
  %r160 = phi i32 [%r93, %b3517], [%r93, %b3519]
  %r54 = phi i32 [%r91, %b3517], [%r91, %b3519]
  %r158 = inttoptr i32 %r160 to i8*
  %r159 = load i8, i8* %r158
  %r94 = zext i8 %r159 to i32
  %r157 = icmp eq i32 %r94, 0
  br i1 %r157, label %b3505, label %b3512

b1958:
  %r164 = inttoptr i32 4108 to i32*
  %r53 = load i32, i32* %r164
  %r162 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r163 = load i8, i8* %r162
  %r63 = zext i8 %r163 to i32
  %r161 = icmp eq i32 %r63, 0
  br i1 %r161, label %b3505, label %b3665

b3613:
  %r169 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2898(i32 %r124, i32 %r169)
  %r168 = inttoptr i32 4108 to i32*
  %r52 = load i32, i32* %r168
  %r166 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r62 = zext i8 %r167 to i32
  %r165 = icmp eq i32 %r62, 0
  br i1 %r165, label %b3505, label %b3665

b3628:
  %r175 = call i32 @inb(i32 1021)
  %r174 = and i32 %r175, 96
  call void @func_b1179(i32 %r174, i32 0, i32 13)
  call void @func_b1400(i32 %r96)
  call void @func_b3432(i32 %r134, i32 %r100)
  %r173 = inttoptr i32 4108 to i32*
  %r51 = load i32, i32* %r173
  %r171 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r172 = load i8, i8* %r171
  %r61 = zext i8 %r172 to i32
  %r170 = icmp eq i32 %r61, 0
  br i1 %r170, label %b3505, label %b3665

b3630:
  call void @func_b1400(i32 %r96)
  call void @func_b3432(i32 %r134, i32 %r100)
  %r179 = inttoptr i32 4108 to i32*
  %r50 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r60 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r60, 0
  br i1 %r176, label %b3505, label %b3665

b3633:
  %r141 = add i32 %r139, 1
  br label %b3635

b1352:
  %r184 = phi i32 [%r147, %b3460], [%r189, %b3432]
  %r188 = and i32 %r184, 15
  %r186 = call i32 @func_b1215(i32 %r188, i32 9)
  %r185 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r187 = trunc i32 %r186 to i8
  store i8 %r187, i8* %r185
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r184, i32 32)
  %r182 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r181 = zext i8 %r183 to i32
  %r180 = icmp eq i32 %r181, 0
  br i1 %r180, label %b295, label %b3431

b3462:
  %r190 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3436

b3467:
  %r196 = phi i32 [%r113, %b3795], [%r192, %b3465]
  %r195 = phi i32 [%r148, %b3795], [%r197, %b3465]
  %r146 = phi i32 [%r116, %b3795], [%r146, %b3465]
  call void @func_b1409(i32 %r196)
  %r193 = inttoptr i32 %r195 to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b3460, label %b3465

b3479:
  %r199 = call i32 @inb(i32 1021)
  %r198 = and i32 %r199, 96
  call void @func_b1179(i32 %r198, i32 0, i32 13)
  call void @func_b1400(i32 %r150)
  br label %b3472

b3481:
  call void @func_b1400(i32 %r150)
  br label %b3472

b3512:
  %r92 = add i32 %r160, 1
  br label %b3514

b295:
  ret void

b3431:
  %r200 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c419

b3436:
  %r202 = phi i32 [%r143, %b3462], [%r208, %b3434]
  %r207 = phi i32 [%r190, %b3462], [%r206, %b3434]
  %r205 = phi i32 [%r147, %b3462], [%r189, %b3434]
  %r204 = call i32 @inb(i32 1021)
  %r203 = and i32 %r204, 96
  call void @func_b1179(i32 %r203, i32 0, i32 %r202)
  %r201 = icmp eq i32 %r202, 10
  br i1 %r201, label %b3439, label %b3441

b3465:
  %r197 = add i32 %r195, 1
  br label %b3467

b3472:
  %r212 = phi i32 [%r155, %b3479], [%r155, %b3481]
  %r117 = phi i32 [%r153, %b3479], [%r153, %b3481]
  %r210 = inttoptr i32 %r212 to i8*
  %r211 = load i8, i8* %r210
  %r156 = zext i8 %r211 to i32
  %r209 = icmp eq i32 %r156, 0
  br i1 %r209, label %b3471, label %b3474

c419:
  tail call void @func_b2898(i32 %r181, i32 %r200)
  ret void

b3439:
  %r214 = call i32 @inb(i32 1021)
  %r213 = and i32 %r214, 96
  call void @func_b1179(i32 %r213, i32 0, i32 13)
  call void @func_b1400(i32 %r202)
  br label %b3432

b3441:
  call void @func_b1400(i32 %r202)
  br label %b3432

b3474:
  %r154 = add i32 %r212, 1
  br label %b3476

b3432:
  %r218 = phi i32 [%r207, %b3439], [%r207, %b3441]
  %r189 = phi i32 [%r205, %b3439], [%r205, %b3441]
  %r216 = inttoptr i32 %r218 to i8*
  %r217 = load i8, i8* %r216
  %r208 = zext i8 %r217 to i32
  %r215 = icmp eq i32 %r208, 0
  br i1 %r215, label %b1352, label %b3434

b3434:
  %r206 = add i32 %r218, 1
  br label %b3436
}

define internal void @func_b3698(i32 %r0, i32 %r1) {
  br label %b3698

b3698:
  %r3 = phi i32 [%r0, %0], [%r8, %b3691]
  %r7 = phi i32 [%r1, %0], [%r6, %b3691]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1179(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3801, label %b3802

b3801:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1179(i32 %r13, i32 0, i32 13)
  call void @func_b1400(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1360, label %b3691

b3802:
  call void @func_b1400(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1360, label %b3691

b1360:
  %r28 = inttoptr i32 4100 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b3183(i32 %r24, i32 %r25, i32 8, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1358, label %b3688

b3691:
  %r8 = phi i32 [%r10, %b3801], [%r16, %b3802]
  %r29 = phi i32 [%r7, %b3801], [%r7, %b3802]
  %r6 = add i32 %r29, 1
  br label %b3698

b1358:
  %r35 = inttoptr i32 4104 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b3658, label %b3668

b3688:
  %r36 = add i32 ptrtoint(i8* @str14 to i32), 1
  br label %c435

b3658:
  %r39 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b3646, label %b3660

b3668:
  %r47 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3596(i32 %r31, i32 %r47, i32 %r34)
  %r46 = inttoptr i32 4108 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3505, label %b3665

c435:
  tail call void @func_b3680(i32 %r20, i32 %r36)
  ret void

b3646:
  %r50 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b3639, label %b3657

b3660:
  %r56 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2898(i32 %r38, i32 %r56)
  %r54 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b3639, label %b3657

b3505:
  %r68 = phi i32 [%r45, %b3668], [%r67, %b3652], [%r66, %b3654], [%r65, %b3510], [%r64, %b1958], [%r63, %b3613], [%r62, %b3628], [%r61, %b3630]
  %r59 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r60 = load i8, i8* %r59
  %r58 = zext i8 %r60 to i32
  %r57 = icmp eq i32 %r58, 0
  br i1 %r57, label %b3499, label %b3507

b3665:
  %r77 = phi i32 [%r42, %b3668], [%r76, %b3652], [%r75, %b3654], [%r74, %b1958], [%r73, %b3613], [%r72, %b3628], [%r71, %b3630]
  %r70 = phi i32 [%r45, %b3668], [%r67, %b3652], [%r66, %b3654], [%r64, %b1958], [%r63, %b3613], [%r62, %b3628], [%r61, %b3630]
  %r69 = add i32 ptrtoint(i8* @str17 to i32), 1
  br label %b3514

b3639:
  %r82 = phi i32 [%r34, %b3646], [%r34, %b3660]
  %r80 = inttoptr i32 %r82 to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3622, label %b3798

b3657:
  %r84 = phi i32 [%r49, %b3646], [%r53, %b3660]
  %r88 = phi i32 [%r34, %b3646], [%r34, %b3660]
  %r87 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r86 = call i32 @inb(i32 1021)
  %r85 = and i32 %r86, 96
  call void @func_b1179(i32 %r85, i32 0, i32 %r84)
  %r83 = icmp eq i32 %r84, 10
  br i1 %r83, label %b3652, label %b3654

b3499:
  %r91 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b3471, label %b3504

b3507:
  %r97 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2898(i32 %r58, i32 %r97)
  %r95 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b3471, label %b3504

b3514:
  %r99 = phi i32 [%r77, %b3665], [%r105, %b3512]
  %r104 = phi i32 [%r69, %b3665], [%r103, %b3512]
  %r102 = phi i32 [%r70, %b3665], [%r65, %b3512]
  %r101 = call i32 @inb(i32 1021)
  %r100 = and i32 %r101, 96
  call void @func_b1179(i32 %r100, i32 0, i32 %r99)
  %r98 = icmp eq i32 %r99, 10
  br i1 %r98, label %b3517, label %b3519

b3622:
  %r111 = phi i32 [%r82, %b3639], [%r110, %b3635]
  %r108 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  %r106 = icmp eq i32 %r107, 0
  br i1 %r106, label %b2023, label %b3624

b3798:
  %r112 = add i32 %r82, 1
  br label %b3635

b3652:
  %r118 = call i32 @inb(i32 1021)
  %r117 = and i32 %r118, 96
  call void @func_b1179(i32 %r117, i32 0, i32 13)
  call void @func_b1400(i32 %r84)
  call void @func_b3472(i32 %r87, i32 %r88)
  %r116 = inttoptr i32 4108 to i32*
  %r67 = load i32, i32* %r116
  %r114 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r115 = load i8, i8* %r114
  %r76 = zext i8 %r115 to i32
  %r113 = icmp eq i32 %r76, 0
  br i1 %r113, label %b3505, label %b3665

b3654:
  call void @func_b1400(i32 %r84)
  call void @func_b3472(i32 %r87, i32 %r88)
  %r122 = inttoptr i32 4108 to i32*
  %r66 = load i32, i32* %r122
  %r120 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r75 = zext i8 %r121 to i32
  %r119 = icmp eq i32 %r75, 0
  br i1 %r119, label %b3505, label %b3665

b3471:
  %r127 = phi i32 [%r68, %b3499], [%r68, %b3507], [%r128, %b3472]
  %r125 = inttoptr i32 %r127 to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b3460, label %b3795

b3504:
  %r131 = phi i32 [%r90, %b3499], [%r94, %b3507]
  %r130 = phi i32 [%r68, %b3499], [%r68, %b3507]
  %r129 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3476

b3517:
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1179(i32 %r132, i32 0, i32 13)
  call void @func_b1400(i32 %r99)
  br label %b3510

b3519:
  call void @func_b1400(i32 %r99)
  br label %b3510

b2023:
  %r141 = and i32 %r111, 15
  %r139 = call i32 @func_b1215(i32 %r141, i32 9)
  %r138 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r140 = trunc i32 %r139 to i8
  store i8 %r140, i8* %r138
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r111, i32 32)
  %r136 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b1958, label %b3613

b3624:
  %r145 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1179(i32 %r143, i32 0, i32 %r107)
  %r142 = icmp eq i32 %r107, 10
  br i1 %r142, label %b3628, label %b3630

b3635:
  %r151 = phi i32 [%r79, %b3798], [%r147, %b3633]
  %r150 = phi i32 [%r112, %b3798], [%r152, %b3633]
  %r110 = phi i32 [%r82, %b3798], [%r110, %b3633]
  call void @func_b1409(i32 %r151)
  %r148 = inttoptr i32 %r150 to i8*
  %r149 = load i8, i8* %r148
  %r147 = zext i8 %r149 to i32
  %r146 = icmp eq i32 %r147, 0
  br i1 %r146, label %b3622, label %b3633

b3460:
  %r158 = phi i32 [%r127, %b3471], [%r157, %b3467]
  %r155 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r156 = load i8, i8* %r155
  %r154 = zext i8 %r156 to i32
  %r153 = icmp eq i32 %r154, 0
  br i1 %r153, label %b1352, label %b3462

b3795:
  %r159 = add i32 %r127, 1
  br label %b3467

b3476:
  %r161 = phi i32 [%r131, %b3504], [%r167, %b3474]
  %r166 = phi i32 [%r129, %b3504], [%r165, %b3474]
  %r164 = phi i32 [%r130, %b3504], [%r128, %b3474]
  %r163 = call i32 @inb(i32 1021)
  %r162 = and i32 %r163, 96
  call void @func_b1179(i32 %r162, i32 0, i32 %r161)
  %r160 = icmp eq i32 %r161, 10
  br i1 %r160, label %b3479, label %b3481

b3510:
  %r171 = phi i32 [%r104, %b3517], [%r104, %b3519]
  %r65 = phi i32 [%r102, %b3517], [%r102, %b3519]
  %r169 = inttoptr i32 %r171 to i8*
  %r170 = load i8, i8* %r169
  %r105 = zext i8 %r170 to i32
  %r168 = icmp eq i32 %r105, 0
  br i1 %r168, label %b3505, label %b3512

b1958:
  %r175 = inttoptr i32 4108 to i32*
  %r64 = load i32, i32* %r175
  %r173 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r174 = load i8, i8* %r173
  %r74 = zext i8 %r174 to i32
  %r172 = icmp eq i32 %r74, 0
  br i1 %r172, label %b3505, label %b3665

b3613:
  %r180 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2898(i32 %r135, i32 %r180)
  %r179 = inttoptr i32 4108 to i32*
  %r63 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r73 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r73, 0
  br i1 %r176, label %b3505, label %b3665

b3628:
  %r186 = call i32 @inb(i32 1021)
  %r185 = and i32 %r186, 96
  call void @func_b1179(i32 %r185, i32 0, i32 13)
  call void @func_b1400(i32 %r107)
  call void @func_b3432(i32 %r145, i32 %r111)
  %r184 = inttoptr i32 4108 to i32*
  %r62 = load i32, i32* %r184
  %r182 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r72 = zext i8 %r183 to i32
  %r181 = icmp eq i32 %r72, 0
  br i1 %r181, label %b3505, label %b3665

b3630:
  call void @func_b1400(i32 %r107)
  call void @func_b3432(i32 %r145, i32 %r111)
  %r190 = inttoptr i32 4108 to i32*
  %r61 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r71 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r71, 0
  br i1 %r187, label %b3505, label %b3665

b3633:
  %r152 = add i32 %r150, 1
  br label %b3635

b1352:
  %r195 = phi i32 [%r158, %b3460], [%r200, %b3432]
  %r199 = and i32 %r195, 15
  %r197 = call i32 @func_b1215(i32 %r199, i32 9)
  %r196 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r198 = trunc i32 %r197 to i8
  store i8 %r198, i8* %r196
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r195, i32 32)
  %r193 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b295, label %b3431

b3462:
  %r201 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3436

b3467:
  %r207 = phi i32 [%r124, %b3795], [%r203, %b3465]
  %r206 = phi i32 [%r159, %b3795], [%r208, %b3465]
  %r157 = phi i32 [%r127, %b3795], [%r157, %b3465]
  call void @func_b1409(i32 %r207)
  %r204 = inttoptr i32 %r206 to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b3460, label %b3465

b3479:
  %r210 = call i32 @inb(i32 1021)
  %r209 = and i32 %r210, 96
  call void @func_b1179(i32 %r209, i32 0, i32 13)
  call void @func_b1400(i32 %r161)
  br label %b3472

b3481:
  call void @func_b1400(i32 %r161)
  br label %b3472

b3512:
  %r103 = add i32 %r171, 1
  br label %b3514

b295:
  ret void

b3431:
  %r211 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c476

b3436:
  %r213 = phi i32 [%r154, %b3462], [%r219, %b3434]
  %r218 = phi i32 [%r201, %b3462], [%r217, %b3434]
  %r216 = phi i32 [%r158, %b3462], [%r200, %b3434]
  %r215 = call i32 @inb(i32 1021)
  %r214 = and i32 %r215, 96
  call void @func_b1179(i32 %r214, i32 0, i32 %r213)
  %r212 = icmp eq i32 %r213, 10
  br i1 %r212, label %b3439, label %b3441

b3465:
  %r208 = add i32 %r206, 1
  br label %b3467

b3472:
  %r223 = phi i32 [%r166, %b3479], [%r166, %b3481]
  %r128 = phi i32 [%r164, %b3479], [%r164, %b3481]
  %r221 = inttoptr i32 %r223 to i8*
  %r222 = load i8, i8* %r221
  %r167 = zext i8 %r222 to i32
  %r220 = icmp eq i32 %r167, 0
  br i1 %r220, label %b3471, label %b3474

c476:
  tail call void @func_b2898(i32 %r192, i32 %r211)
  ret void

b3439:
  %r225 = call i32 @inb(i32 1021)
  %r224 = and i32 %r225, 96
  call void @func_b1179(i32 %r224, i32 0, i32 13)
  call void @func_b1400(i32 %r213)
  br label %b3432

b3441:
  call void @func_b1400(i32 %r213)
  br label %b3432

b3474:
  %r165 = add i32 %r223, 1
  br label %b3476

b3432:
  %r229 = phi i32 [%r218, %b3439], [%r218, %b3441]
  %r200 = phi i32 [%r216, %b3439], [%r216, %b3441]
  %r227 = inttoptr i32 %r229 to i8*
  %r228 = load i8, i8* %r227
  %r219 = zext i8 %r228 to i32
  %r226 = icmp eq i32 %r219, 0
  br i1 %r226, label %b1352, label %b3434

b3434:
  %r217 = add i32 %r229, 1
  br label %b3436
}

define internal void @func_b3716(i32 %r0, i32 %r1) {
  br label %b3716

b3716:
  %r3 = phi i32 [%r0, %0], [%r8, %b3709]
  %r7 = phi i32 [%r1, %0], [%r6, %b3709]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1179(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3803, label %b3804

b3803:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1179(i32 %r13, i32 0, i32 13)
  call void @func_b1400(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1362, label %b3709

b3804:
  call void @func_b1400(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1362, label %b3709

b1362:
  %r28 = inttoptr i32 4096 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b3045(i32 %r24, i32 %r25, i32 12, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str12 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1360, label %b3706

b3709:
  %r8 = phi i32 [%r10, %b3803], [%r16, %b3804]
  %r29 = phi i32 [%r7, %b3803], [%r7, %b3804]
  %r6 = add i32 %r29, 1
  br label %b3716

b1360:
  %r39 = inttoptr i32 4100 to i32*
  %r37 = load i32, i32* %r39
  %r38 = inttoptr i32 %r37 to i32*
  %r35 = load i32, i32* %r38
  %r36 = add i32 %r37, 4
  %r34 = call i32 @func_b3183(i32 %r35, i32 %r36, i32 8, i32 0)
  %r32 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b1358, label %b3688

b3706:
  %r40 = add i32 ptrtoint(i8* @str12 to i32), 1
  br label %c492

b1358:
  %r46 = inttoptr i32 4104 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3658, label %b3668

b3688:
  %r47 = add i32 ptrtoint(i8* @str14 to i32), 1
  br label %c495

c492:
  tail call void @func_b3698(i32 %r20, i32 %r40)
  ret void

b3658:
  %r50 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b3646, label %b3660

b3668:
  %r58 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3596(i32 %r42, i32 %r58, i32 %r45)
  %r57 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r57
  %r54 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b3505, label %b3665

c495:
  tail call void @func_b3680(i32 %r31, i32 %r47)
  ret void

b3646:
  %r61 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r62 = load i8, i8* %r61
  %r60 = zext i8 %r62 to i32
  %r59 = icmp eq i32 %r60, 0
  br i1 %r59, label %b3639, label %b3657

b3660:
  %r67 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2898(i32 %r49, i32 %r67)
  %r65 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r66 = load i8, i8* %r65
  %r64 = zext i8 %r66 to i32
  %r63 = icmp eq i32 %r64, 0
  br i1 %r63, label %b3639, label %b3657

b3505:
  %r79 = phi i32 [%r56, %b3668], [%r78, %b3652], [%r77, %b3654], [%r76, %b3510], [%r75, %b1958], [%r74, %b3613], [%r73, %b3628], [%r72, %b3630]
  %r70 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r71 = load i8, i8* %r70
  %r69 = zext i8 %r71 to i32
  %r68 = icmp eq i32 %r69, 0
  br i1 %r68, label %b3499, label %b3507

b3665:
  %r88 = phi i32 [%r53, %b3668], [%r87, %b3652], [%r86, %b3654], [%r85, %b1958], [%r84, %b3613], [%r83, %b3628], [%r82, %b3630]
  %r81 = phi i32 [%r56, %b3668], [%r78, %b3652], [%r77, %b3654], [%r75, %b1958], [%r74, %b3613], [%r73, %b3628], [%r72, %b3630]
  %r80 = add i32 ptrtoint(i8* @str17 to i32), 1
  br label %b3514

b3639:
  %r93 = phi i32 [%r45, %b3646], [%r45, %b3660]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b3622, label %b3798

b3657:
  %r95 = phi i32 [%r60, %b3646], [%r64, %b3660]
  %r99 = phi i32 [%r45, %b3646], [%r45, %b3660]
  %r98 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r97 = call i32 @inb(i32 1021)
  %r96 = and i32 %r97, 96
  call void @func_b1179(i32 %r96, i32 0, i32 %r95)
  %r94 = icmp eq i32 %r95, 10
  br i1 %r94, label %b3652, label %b3654

b3499:
  %r102 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r103 = load i8, i8* %r102
  %r101 = zext i8 %r103 to i32
  %r100 = icmp eq i32 %r101, 0
  br i1 %r100, label %b3471, label %b3504

b3507:
  %r108 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2898(i32 %r69, i32 %r108)
  %r106 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r107 = load i8, i8* %r106
  %r105 = zext i8 %r107 to i32
  %r104 = icmp eq i32 %r105, 0
  br i1 %r104, label %b3471, label %b3504

b3514:
  %r110 = phi i32 [%r88, %b3665], [%r116, %b3512]
  %r115 = phi i32 [%r80, %b3665], [%r114, %b3512]
  %r113 = phi i32 [%r81, %b3665], [%r76, %b3512]
  %r112 = call i32 @inb(i32 1021)
  %r111 = and i32 %r112, 96
  call void @func_b1179(i32 %r111, i32 0, i32 %r110)
  %r109 = icmp eq i32 %r110, 10
  br i1 %r109, label %b3517, label %b3519

b3622:
  %r122 = phi i32 [%r93, %b3639], [%r121, %b3635]
  %r119 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r120 = load i8, i8* %r119
  %r118 = zext i8 %r120 to i32
  %r117 = icmp eq i32 %r118, 0
  br i1 %r117, label %b2023, label %b3624

b3798:
  %r123 = add i32 %r93, 1
  br label %b3635

b3652:
  %r129 = call i32 @inb(i32 1021)
  %r128 = and i32 %r129, 96
  call void @func_b1179(i32 %r128, i32 0, i32 13)
  call void @func_b1400(i32 %r95)
  call void @func_b3472(i32 %r98, i32 %r99)
  %r127 = inttoptr i32 4108 to i32*
  %r78 = load i32, i32* %r127
  %r125 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r87 = zext i8 %r126 to i32
  %r124 = icmp eq i32 %r87, 0
  br i1 %r124, label %b3505, label %b3665

b3654:
  call void @func_b1400(i32 %r95)
  call void @func_b3472(i32 %r98, i32 %r99)
  %r133 = inttoptr i32 4108 to i32*
  %r77 = load i32, i32* %r133
  %r131 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r132 = load i8, i8* %r131
  %r86 = zext i8 %r132 to i32
  %r130 = icmp eq i32 %r86, 0
  br i1 %r130, label %b3505, label %b3665

b3471:
  %r138 = phi i32 [%r79, %b3499], [%r79, %b3507], [%r139, %b3472]
  %r136 = inttoptr i32 %r138 to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b3460, label %b3795

b3504:
  %r142 = phi i32 [%r101, %b3499], [%r105, %b3507]
  %r141 = phi i32 [%r79, %b3499], [%r79, %b3507]
  %r140 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3476

b3517:
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1179(i32 %r143, i32 0, i32 13)
  call void @func_b1400(i32 %r110)
  br label %b3510

b3519:
  call void @func_b1400(i32 %r110)
  br label %b3510

b2023:
  %r152 = and i32 %r122, 15
  %r150 = call i32 @func_b1215(i32 %r152, i32 9)
  %r149 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r151 = trunc i32 %r150 to i8
  store i8 %r151, i8* %r149
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r122, i32 32)
  %r147 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r148 = load i8, i8* %r147
  %r146 = zext i8 %r148 to i32
  %r145 = icmp eq i32 %r146, 0
  br i1 %r145, label %b1958, label %b3613

b3624:
  %r156 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r155 = call i32 @inb(i32 1021)
  %r154 = and i32 %r155, 96
  call void @func_b1179(i32 %r154, i32 0, i32 %r118)
  %r153 = icmp eq i32 %r118, 10
  br i1 %r153, label %b3628, label %b3630

b3635:
  %r162 = phi i32 [%r90, %b3798], [%r158, %b3633]
  %r161 = phi i32 [%r123, %b3798], [%r163, %b3633]
  %r121 = phi i32 [%r93, %b3798], [%r121, %b3633]
  call void @func_b1409(i32 %r162)
  %r159 = inttoptr i32 %r161 to i8*
  %r160 = load i8, i8* %r159
  %r158 = zext i8 %r160 to i32
  %r157 = icmp eq i32 %r158, 0
  br i1 %r157, label %b3622, label %b3633

b3460:
  %r169 = phi i32 [%r138, %b3471], [%r168, %b3467]
  %r166 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r165 = zext i8 %r167 to i32
  %r164 = icmp eq i32 %r165, 0
  br i1 %r164, label %b1352, label %b3462

b3795:
  %r170 = add i32 %r138, 1
  br label %b3467

b3476:
  %r172 = phi i32 [%r142, %b3504], [%r178, %b3474]
  %r177 = phi i32 [%r140, %b3504], [%r176, %b3474]
  %r175 = phi i32 [%r141, %b3504], [%r139, %b3474]
  %r174 = call i32 @inb(i32 1021)
  %r173 = and i32 %r174, 96
  call void @func_b1179(i32 %r173, i32 0, i32 %r172)
  %r171 = icmp eq i32 %r172, 10
  br i1 %r171, label %b3479, label %b3481

b3510:
  %r182 = phi i32 [%r115, %b3517], [%r115, %b3519]
  %r76 = phi i32 [%r113, %b3517], [%r113, %b3519]
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r116 = zext i8 %r181 to i32
  %r179 = icmp eq i32 %r116, 0
  br i1 %r179, label %b3505, label %b3512

b1958:
  %r186 = inttoptr i32 4108 to i32*
  %r75 = load i32, i32* %r186
  %r184 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r185 = load i8, i8* %r184
  %r85 = zext i8 %r185 to i32
  %r183 = icmp eq i32 %r85, 0
  br i1 %r183, label %b3505, label %b3665

b3613:
  %r191 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2898(i32 %r146, i32 %r191)
  %r190 = inttoptr i32 4108 to i32*
  %r74 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r84 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r84, 0
  br i1 %r187, label %b3505, label %b3665

b3628:
  %r197 = call i32 @inb(i32 1021)
  %r196 = and i32 %r197, 96
  call void @func_b1179(i32 %r196, i32 0, i32 13)
  call void @func_b1400(i32 %r118)
  call void @func_b3432(i32 %r156, i32 %r122)
  %r195 = inttoptr i32 4108 to i32*
  %r73 = load i32, i32* %r195
  %r193 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r83 = zext i8 %r194 to i32
  %r192 = icmp eq i32 %r83, 0
  br i1 %r192, label %b3505, label %b3665

b3630:
  call void @func_b1400(i32 %r118)
  call void @func_b3432(i32 %r156, i32 %r122)
  %r201 = inttoptr i32 4108 to i32*
  %r72 = load i32, i32* %r201
  %r199 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r200 = load i8, i8* %r199
  %r82 = zext i8 %r200 to i32
  %r198 = icmp eq i32 %r82, 0
  br i1 %r198, label %b3505, label %b3665

b3633:
  %r163 = add i32 %r161, 1
  br label %b3635

b1352:
  %r206 = phi i32 [%r169, %b3460], [%r211, %b3432]
  %r210 = and i32 %r206, 15
  %r208 = call i32 @func_b1215(i32 %r210, i32 9)
  %r207 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r209 = trunc i32 %r208 to i8
  store i8 %r209, i8* %r207
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r206, i32 32)
  %r204 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b295, label %b3431

b3462:
  %r212 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3436

b3467:
  %r218 = phi i32 [%r135, %b3795], [%r214, %b3465]
  %r217 = phi i32 [%r170, %b3795], [%r219, %b3465]
  %r168 = phi i32 [%r138, %b3795], [%r168, %b3465]
  call void @func_b1409(i32 %r218)
  %r215 = inttoptr i32 %r217 to i8*
  %r216 = load i8, i8* %r215
  %r214 = zext i8 %r216 to i32
  %r213 = icmp eq i32 %r214, 0
  br i1 %r213, label %b3460, label %b3465

b3479:
  %r221 = call i32 @inb(i32 1021)
  %r220 = and i32 %r221, 96
  call void @func_b1179(i32 %r220, i32 0, i32 13)
  call void @func_b1400(i32 %r172)
  br label %b3472

b3481:
  call void @func_b1400(i32 %r172)
  br label %b3472

b3512:
  %r114 = add i32 %r182, 1
  br label %b3514

b295:
  ret void

b3431:
  %r222 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c536

b3436:
  %r224 = phi i32 [%r165, %b3462], [%r230, %b3434]
  %r229 = phi i32 [%r212, %b3462], [%r228, %b3434]
  %r227 = phi i32 [%r169, %b3462], [%r211, %b3434]
  %r226 = call i32 @inb(i32 1021)
  %r225 = and i32 %r226, 96
  call void @func_b1179(i32 %r225, i32 0, i32 %r224)
  %r223 = icmp eq i32 %r224, 10
  br i1 %r223, label %b3439, label %b3441

b3465:
  %r219 = add i32 %r217, 1
  br label %b3467

b3472:
  %r234 = phi i32 [%r177, %b3479], [%r177, %b3481]
  %r139 = phi i32 [%r175, %b3479], [%r175, %b3481]
  %r232 = inttoptr i32 %r234 to i8*
  %r233 = load i8, i8* %r232
  %r178 = zext i8 %r233 to i32
  %r231 = icmp eq i32 %r178, 0
  br i1 %r231, label %b3471, label %b3474

c536:
  tail call void @func_b2898(i32 %r203, i32 %r222)
  ret void

b3439:
  %r236 = call i32 @inb(i32 1021)
  %r235 = and i32 %r236, 96
  call void @func_b1179(i32 %r235, i32 0, i32 13)
  call void @func_b1400(i32 %r224)
  br label %b3432

b3441:
  call void @func_b1400(i32 %r224)
  br label %b3432

b3474:
  %r176 = add i32 %r234, 1
  br label %b3476

b3432:
  %r240 = phi i32 [%r229, %b3439], [%r229, %b3441]
  %r211 = phi i32 [%r227, %b3439], [%r227, %b3441]
  %r238 = inttoptr i32 %r240 to i8*
  %r239 = load i8, i8* %r238
  %r230 = zext i8 %r239 to i32
  %r237 = icmp eq i32 %r230, 0
  br i1 %r237, label %b1352, label %b3434

b3434:
  %r228 = add i32 %r240, 1
  br label %b3436
}

define internal void @func_b3228(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3228

b3228:
  %r4 = phi i32 [%r0, %0], [%r11, %b3226]
  %r10 = phi i32 [%r1, %0], [%r9, %b3226]
  %r8 = phi i32 [%r2, %0], [%r7, %b3226]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1179(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3231, label %b3233

b3231:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1179(i32 %r12, i32 0, i32 13)
  call void @func_b1400(i32 %r4)
  br label %b3224

b3233:
  call void @func_b1400(i32 %r4)
  br label %b3224

b3224:
  %r17 = phi i32 [%r10, %b3231], [%r10, %b3233]
  %r7 = phi i32 [%r8, %b3231], [%r8, %b3233]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1541, label %b3226

b1541:
  %r19 = add i32 ptrtoint(i8* @users to i32), 52
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b3226:
  %r9 = add i32 %r17, 1
  br label %b3228
}

define internal void @func_b3277(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3277

b3277:
  %r4 = phi i32 [%r0, %0], [%r11, %b3270]
  %r10 = phi i32 [%r1, %0], [%r9, %b3270]
  %r8 = phi i32 [%r2, %0], [%r7, %b3270]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1179(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3805, label %b3806

b3805:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1179(i32 %r12, i32 0, i32 13)
  call void @func_b1400(i32 %r4)
  br label %b3268

b3806:
  call void @func_b1400(i32 %r4)
  br label %b3268

b3268:
  %r17 = phi i32 [%r10, %b3805], [%r10, %b3806]
  %r7 = phi i32 [%r8, %b3805], [%r8, %b3806]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1537, label %b3270

b1537:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1215(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1541, label %b3262

b3270:
  %r9 = add i32 %r17, 1
  br label %b3277

b1541:
  %r27 = add i32 ptrtoint(i8* @users to i32), 52
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b3262:
  %r28 = add i32 ptrtoint(i8* @str53 to i32), 1
  br label %c558

c558:
  tail call void @func_b3228(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define internal void @func_b3238(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3238

b3238:
  %r4 = phi i32 [%r0, %0], [%r11, %b3236]
  %r10 = phi i32 [%r1, %0], [%r9, %b3236]
  %r8 = phi i32 [%r2, %0], [%r7, %b3236]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1179(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3241, label %b3243

b3241:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1179(i32 %r12, i32 0, i32 13)
  call void @func_b1400(i32 %r4)
  br label %b3234

b3243:
  call void @func_b1400(i32 %r4)
  br label %b3234

b3234:
  %r17 = phi i32 [%r10, %b3241], [%r10, %b3243]
  %r7 = phi i32 [%r8, %b3241], [%r8, %b3243]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1552, label %b3236

b1552:
  %r19 = add i32 ptrtoint(i8* @users to i32), 124
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b3236:
  %r9 = add i32 %r17, 1
  br label %b3238
}

define internal void @func_b3259(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3259

b3259:
  %r4 = phi i32 [%r0, %0], [%r11, %b3252]
  %r10 = phi i32 [%r1, %0], [%r9, %b3252]
  %r8 = phi i32 [%r2, %0], [%r7, %b3252]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1179(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3807, label %b3808

b3807:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1179(i32 %r12, i32 0, i32 13)
  call void @func_b1400(i32 %r4)
  br label %b3250

b3808:
  call void @func_b1400(i32 %r4)
  br label %b3250

b3250:
  %r17 = phi i32 [%r10, %b3807], [%r10, %b3808]
  %r7 = phi i32 [%r8, %b3807], [%r8, %b3808]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1548, label %b3252

b1548:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1215(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1552, label %b3249

b3252:
  %r9 = add i32 %r17, 1
  br label %b3259

b1552:
  %r27 = add i32 ptrtoint(i8* @users to i32), 124
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b3249:
  %r28 = add i32 ptrtoint(i8* @str53 to i32), 1
  br label %c575

c575:
  tail call void @func_b3238(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define void @kernel() {
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
  %r26 = add i32 ptrtoint(i8* @console to i32), 1
  %r61 = inttoptr i32 %r26 to i8*
  %r62 = trunc i32 0 to i8
  store i8 %r62, i8* %r61
  %r17 = add i32 ptrtoint(i8* @console to i32), 2
  %r59 = inttoptr i32 %r17 to i8*
  %r60 = trunc i32 24 to i8
  store i8 %r60, i8* %r59
  %r14 = add i32 ptrtoint(i8* @console to i32), 3
  %r57 = inttoptr i32 %r14 to i8*
  %r58 = trunc i32 79 to i8
  store i8 %r58, i8* %r57
  %r23 = add i32 ptrtoint(i8* @console to i32), 4
  %r55 = inttoptr i32 %r23 to i8*
  %r56 = trunc i32 0 to i8
  store i8 %r56, i8* %r55
  %r20 = add i32 ptrtoint(i8* @console to i32), 5
  %r53 = inttoptr i32 %r20 to i8*
  %r54 = trunc i32 0 to i8
  store i8 %r54, i8* %r53
  %r11 = add i32 ptrtoint(i8* @console to i32), 6
  %r51 = inttoptr i32 %r11 to i8*
  %r52 = trunc i32 10 to i8
  store i8 %r52, i8* %r51
  %r49 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r50 = trunc i32 0 to i8
  store i8 %r50, i8* %r49
  %r48 = add i32 ptrtoint(i8* @itoaBuf to i32), 1
  call void @func_b2528(i32 %r48, i32 1)
  %r47 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  store i32 1, i32* %r47
  %r45 = inttoptr i32 ptrtoint(i8* @spinner to i32) to i8*
  %r46 = trunc i32 45 to i8
  store i8 %r46, i8* %r45
  %r44 = add i32 ptrtoint(i8* @spinner to i32), 1
  %r42 = inttoptr i32 %r44 to i8*
  %r43 = trunc i32 92 to i8
  store i8 %r43, i8* %r42
  %r41 = add i32 ptrtoint(i8* @spinner to i32), 2
  %r39 = inttoptr i32 %r41 to i8*
  %r40 = trunc i32 124 to i8
  store i8 %r40, i8* %r39
  %r38 = add i32 ptrtoint(i8* @spinner to i32), 3
  %r36 = inttoptr i32 %r38 to i8*
  %r37 = trunc i32 47 to i8
  store i8 %r37, i8* %r36
  %r34 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r35 = trunc i32 0 to i8
  store i8 %r35, i8* %r34
  %r32 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r33 = trunc i32 55 to i8
  store i8 %r33, i8* %r32
  %r31 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r31
  %r29 = inttoptr i32 %r11 to i8*
  %r30 = trunc i32 32 to i8
  store i8 %r30, i8* %r29
  %r27 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r28 = load i8, i8* %r27
  %r4 = zext i8 %r28 to i32
  %r24 = inttoptr i32 %r26 to i8*
  %r25 = load i8, i8* %r24
  %r6 = zext i8 %r25 to i32
  %r21 = inttoptr i32 %r23 to i8*
  %r22 = trunc i32 %r4 to i8
  store i8 %r22, i8* %r21
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r6 to i8
  store i8 %r19, i8* %r18
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r5 = zext i8 %r16 to i32
  %r12 = inttoptr i32 %r14 to i8*
  %r13 = load i8, i8* %r12
  %r7 = zext i8 %r13 to i32
  %r9 = inttoptr i32 %r11 to i8*
  %r10 = load i8, i8* %r9
  %r8 = zext i8 %r10 to i32
  call void @func_b1251(i32 %r6, i32 %r7, i32 %r8, i32 %r4)
  call void @func_b3968(i32 1, i32 %r4, i32 %r5, i32 %r6, i32 %r7, i32 %r8)
  %r2 = inttoptr i32 ptrtoint(i8* @str44 to i32) to i8*
  %r3 = load i8, i8* %r2
  %r1 = zext i8 %r3 to i32
  %r0 = icmp eq i32 %r1, 0
  br i1 %r0, label %b1380, label %b3734

b1380:
  %r178 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r179 = trunc i32 1 to i8
  store i8 %r179, i8* %r178
  %r163 = add i32 ptrtoint(i8* @console to i32), 1
  %r176 = inttoptr i32 %r163 to i8*
  %r177 = trunc i32 1 to i8
  store i8 %r177, i8* %r176
  %r154 = add i32 ptrtoint(i8* @console to i32), 2
  %r174 = inttoptr i32 %r154 to i8*
  %r175 = trunc i32 23 to i8
  store i8 %r175, i8* %r174
  %r151 = add i32 ptrtoint(i8* @console to i32), 3
  %r172 = inttoptr i32 %r151 to i8*
  %r173 = trunc i32 45 to i8
  store i8 %r173, i8* %r172
  %r160 = add i32 ptrtoint(i8* @console to i32), 4
  %r170 = inttoptr i32 %r160 to i8*
  %r171 = trunc i32 1 to i8
  store i8 %r171, i8* %r170
  %r157 = add i32 ptrtoint(i8* @console to i32), 5
  %r168 = inttoptr i32 %r157 to i8*
  %r169 = trunc i32 1 to i8
  store i8 %r169, i8* %r168
  %r148 = add i32 ptrtoint(i8* @console to i32), 6
  %r166 = inttoptr i32 %r148 to i8*
  %r167 = trunc i32 15 to i8
  store i8 %r167, i8* %r166
  %r164 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r165 = load i8, i8* %r164
  %r141 = zext i8 %r165 to i32
  %r161 = inttoptr i32 %r163 to i8*
  %r162 = load i8, i8* %r161
  %r143 = zext i8 %r162 to i32
  %r158 = inttoptr i32 %r160 to i8*
  %r159 = trunc i32 %r141 to i8
  store i8 %r159, i8* %r158
  %r155 = inttoptr i32 %r157 to i8*
  %r156 = trunc i32 %r143 to i8
  store i8 %r156, i8* %r155
  %r152 = inttoptr i32 %r154 to i8*
  %r153 = load i8, i8* %r152
  %r142 = zext i8 %r153 to i32
  %r149 = inttoptr i32 %r151 to i8*
  %r150 = load i8, i8* %r149
  %r144 = zext i8 %r150 to i32
  %r146 = inttoptr i32 %r148 to i8*
  %r147 = load i8, i8* %r146
  %r145 = zext i8 %r147 to i32
  call void @func_b1251(i32 %r143, i32 %r144, i32 %r145, i32 %r141)
  call void @func_b3968(i32 1, i32 %r141, i32 %r142, i32 %r143, i32 %r144, i32 %r145)
  %r139 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r140 = load i8, i8* %r139
  %r138 = zext i8 %r140 to i32
  %r137 = icmp eq i32 %r138, 0
  br i1 %r137, label %b1948, label %b3719

b3734:
  %r180 = add i32 ptrtoint(i8* @str44 to i32), 1
  br label %b3726

b1948:
  %r190 = inttoptr i32 4096 to i32*
  %r188 = load i32, i32* %r190
  %r189 = inttoptr i32 %r188 to i32*
  %r186 = load i32, i32* %r189
  %r187 = add i32 %r188, 4
  %r185 = call i32 @func_b3045(i32 %r186, i32 %r187, i32 12, i32 0)
  %r183 = inttoptr i32 ptrtoint(i8* @str12 to i32) to i8*
  %r184 = load i8, i8* %r183
  %r182 = zext i8 %r184 to i32
  %r181 = icmp eq i32 %r182, 0
  br i1 %r181, label %b1949, label %b3701

b3719:
  %r197 = add i32 ptrtoint(i8* @str10 to i32), 1
  call void @func_b3716(i32 %r138, i32 %r197)
  %r196 = inttoptr i32 4096 to i32*
  %r194 = load i32, i32* %r196
  %r195 = inttoptr i32 %r194 to i32*
  %r192 = load i32, i32* %r195
  %r193 = add i32 %r194, 4
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b3208, label %b3421

b3726:
  %r199 = phi i32 [%r1, %b3734], [%r204, %b3724]
  %r203 = phi i32 [%r180, %b3734], [%r202, %b3724]
  %r201 = call i32 @inb(i32 1021)
  %r200 = and i32 %r201, 96
  call void @func_b1179(i32 %r200, i32 0, i32 %r199)
  %r198 = icmp eq i32 %r199, 10
  br i1 %r198, label %b3729, label %b3731

b1949:
  %r214 = inttoptr i32 4100 to i32*
  %r212 = load i32, i32* %r214
  %r213 = inttoptr i32 %r212 to i32*
  %r210 = load i32, i32* %r213
  %r211 = add i32 %r212, 4
  %r209 = call i32 @func_b3183(i32 %r210, i32 %r211, i32 8, i32 0)
  %r207 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r208 = load i8, i8* %r207
  %r206 = zext i8 %r208 to i32
  %r205 = icmp eq i32 %r206, 0
  br i1 %r205, label %b1950, label %b3683

b3701:
  %r221 = add i32 ptrtoint(i8* @str12 to i32), 1
  call void @func_b3698(i32 %r182, i32 %r221)
  %r220 = inttoptr i32 4096 to i32*
  %r218 = load i32, i32* %r220
  %r219 = inttoptr i32 %r218 to i32*
  %r216 = load i32, i32* %r219
  %r217 = add i32 %r218, 4
  %r215 = icmp eq i32 %r216, 0
  br i1 %r215, label %b3208, label %b3421

b3208:
  %r224 = inttoptr i32 ptrtoint(i8* @str51 to i32) to i8*
  %r225 = load i8, i8* %r224
  %r223 = zext i8 %r225 to i32
  %r222 = icmp eq i32 %r223, 0
  br i1 %r222, label %b3195, label %b3210

b3421:
  %r230 = phi i32 [%r192, %b3719], [%r216, %b3701], [%r251, %b3683], [%r229, %b3419], [%r250, %b3526], [%r249, %b3528], [%r248, %b3488], [%r247, %b3490], [%r246, %b2056], [%r245, %b3426], [%r244, %b3448], [%r243, %b3450]
  %r232 = phi i32 [%r193, %b3719], [%r217, %b3701], [%r242, %b3683], [%r231, %b3419], [%r241, %b3526], [%r240, %b3528], [%r239, %b3488], [%r238, %b3490], [%r237, %b2056], [%r236, %b3426], [%r235, %b3448], [%r234, %b3450]
  %r233 = phi i32 [12, %b3719], [12, %b3701], [12, %b3683], [12, %b3419], [12, %b3526], [12, %b3528], [12, %b3488], [12, %b3490], [12, %b2056], [12, %b3426], [12, %b3448], [12, %b3450]
  %r228 = phi i32 [2, %b3719], [2, %b3701], [2, %b3683], [%r227, %b3419], [2, %b3526], [2, %b3528], [2, %b3488], [2, %b3490], [2, %b2056], [2, %b3426], [2, %b3448], [2, %b3450]
  %r231 = add i32 %r232, %r233
  %r229 = add i32 %r230, -1
  %r227 = add i32 %r228, -1
  %r226 = icmp eq i32 %r227, 0
  br i1 %r226, label %b3356, label %b3419

b3729:
  %r257 = call i32 @inb(i32 1021)
  %r256 = and i32 %r257, 96
  call void @func_b1179(i32 %r256, i32 0, i32 13)
  call void @func_b1400(i32 %r199)
  %r254 = inttoptr i32 %r203 to i8*
  %r255 = load i8, i8* %r254
  %r253 = zext i8 %r255 to i32
  %r252 = icmp eq i32 %r253, 0
  br i1 %r252, label %b1380, label %b3724

b3731:
  call void @func_b1400(i32 %r199)
  %r260 = inttoptr i32 %r203 to i8*
  %r261 = load i8, i8* %r260
  %r259 = zext i8 %r261 to i32
  %r258 = icmp eq i32 %r259, 0
  br i1 %r258, label %b1380, label %b3724

b1950:
  %r267 = inttoptr i32 4104 to i32*
  %r266 = load i32, i32* %r267
  %r264 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r265 = load i8, i8* %r264
  %r263 = zext i8 %r265 to i32
  %r262 = icmp eq i32 %r263, 0
  br i1 %r262, label %b3579, label %b3602

b3683:
  %r272 = add i32 ptrtoint(i8* @str14 to i32), 1
  call void @func_b3680(i32 %r206, i32 %r272)
  %r271 = inttoptr i32 4096 to i32*
  %r269 = load i32, i32* %r271
  %r270 = inttoptr i32 %r269 to i32*
  %r251 = load i32, i32* %r270
  %r242 = add i32 %r269, 4
  %r268 = icmp eq i32 %r251, 0
  br i1 %r268, label %b3208, label %b3421

b3195:
  %r275 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r276 = load i8, i8* %r275
  %r274 = zext i8 %r276 to i32
  %r273 = icmp eq i32 %r274, 0
  br i1 %r273, label %b295, label %b3197

b3210:
  %r277 = add i32 ptrtoint(i8* @str51 to i32), 1
  br label %b3202

b3356:
  %r278 = icmp eq i32 %r229, 0
  br i1 %r278, label %b3208, label %b3358

b3419:
  %r279 = icmp eq i32 %r229, 0
  br i1 %r279, label %b3208, label %b3421

b3724:
  %r204 = phi i32 [%r253, %b3729], [%r259, %b3731]
  %r280 = phi i32 [%r203, %b3729], [%r203, %b3731]
  %r202 = add i32 %r280, 1
  br label %b3726

b3579:
  %r283 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r284 = load i8, i8* %r283
  %r282 = zext i8 %r284 to i32
  %r281 = icmp eq i32 %r282, 0
  br i1 %r281, label %b3567, label %b3581

b3602:
  %r291 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3596(i32 %r263, i32 %r291, i32 %r266)
  %r290 = inttoptr i32 4108 to i32*
  %r289 = load i32, i32* %r290
  %r287 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r288 = load i8, i8* %r287
  %r286 = zext i8 %r288 to i32
  %r285 = icmp eq i32 %r286, 0
  br i1 %r285, label %b3494, label %b3599

b295:
  ret void

b3197:
  %r294 = phi i32 [%r274, %b3195], [%r293, %b1640]
  %r292 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %c606

b3202:
  %r296 = phi i32 [%r223, %b3210], [%r301, %b3200]
  %r300 = phi i32 [%r277, %b3210], [%r299, %b3200]
  %r298 = call i32 @inb(i32 1021)
  %r297 = and i32 %r298, 96
  call void @func_b1179(i32 %r297, i32 0, i32 %r296)
  %r295 = icmp eq i32 %r296, 10
  br i1 %r295, label %b3205, label %b3207

b3358:
  %r307 = add i32 %r231, 12
  %r306 = add i32 %r229, -1
  %r304 = inttoptr i32 ptrtoint(i8* @str46 to i32) to i8*
  %r305 = load i8, i8* %r304
  %r303 = zext i8 %r305 to i32
  %r302 = icmp eq i32 %r303, 0
  br i1 %r302, label %b3364, label %b3410

b3567:
  %r310 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r311 = load i8, i8* %r310
  %r309 = zext i8 %r311 to i32
  %r308 = icmp eq i32 %r309, 0
  br i1 %r308, label %b3560, label %b3578

b3581:
  %r316 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2898(i32 %r282, i32 %r316)
  %r314 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r315 = load i8, i8* %r314
  %r313 = zext i8 %r315 to i32
  %r312 = icmp eq i32 %r313, 0
  br i1 %r312, label %b3560, label %b3578

b3494:
  %r327 = phi i32 [%r289, %b3602], [%r326, %b3573], [%r325, %b3575], [%r324, %b2119], [%r323, %b3534], [%r322, %b3549], [%r321, %b3551]
  %r319 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r320 = load i8, i8* %r319
  %r318 = zext i8 %r320 to i32
  %r317 = icmp eq i32 %r318, 0
  br i1 %r317, label %b3482, label %b3496

b3599:
  %r329 = phi i32 [%r286, %b3602], [%r339, %b3573], [%r338, %b3575], [%r337, %b2119], [%r336, %b3534], [%r335, %b3549], [%r334, %b3551]
  %r333 = phi i32 [%r289, %b3602], [%r326, %b3573], [%r325, %b3575], [%r324, %b2119], [%r323, %b3534], [%r322, %b3549], [%r321, %b3551]
  %r332 = add i32 ptrtoint(i8* @str17 to i32), 1
  %r331 = call i32 @inb(i32 1021)
  %r330 = and i32 %r331, 96
  call void @func_b1179(i32 %r330, i32 0, i32 %r329)
  %r328 = icmp eq i32 %r329, 10
  br i1 %r328, label %b3526, label %b3528

c606:
  tail call void @func_b2898(i32 %r294, i32 %r292)
  ret void

b3205:
  %r345 = call i32 @inb(i32 1021)
  %r344 = and i32 %r345, 96
  call void @func_b1179(i32 %r344, i32 0, i32 13)
  call void @func_b1400(i32 %r296)
  %r342 = inttoptr i32 %r300 to i8*
  %r343 = load i8, i8* %r342
  %r341 = zext i8 %r343 to i32
  %r340 = icmp eq i32 %r341, 0
  br i1 %r340, label %b3195, label %b3200

b3207:
  call void @func_b1400(i32 %r296)
  %r348 = inttoptr i32 %r300 to i8*
  %r349 = load i8, i8* %r348
  %r347 = zext i8 %r349 to i32
  %r346 = icmp eq i32 %r347, 0
  br i1 %r346, label %b3195, label %b3200

b3364:
  %r354 = phi i32 [%r231, %b3358], [%r359, %b3412], [%r359, %b3418]
  %r358 = phi i32 [%r306, %b3358], [%r357, %b3412], [%r357, %b3418]
  %r356 = phi i32 [%r307, %b3358], [%r355, %b3412], [%r355, %b3418]
  call void @func_b2990(i32 %r354)
  %r352 = inttoptr i32 ptrtoint(i8* @str47 to i32) to i8*
  %r353 = load i8, i8* %r352
  %r351 = zext i8 %r353 to i32
  %r350 = icmp eq i32 %r351, 0
  br i1 %r350, label %b3400, label %b3401

b3410:
  %r360 = add i32 ptrtoint(i8* @str46 to i32), 1
  br label %b3411

b3560:
  %r365 = phi i32 [%r266, %b3567], [%r266, %b3581]
  %r363 = inttoptr i32 %r365 to i8*
  %r364 = load i8, i8* %r363
  %r362 = zext i8 %r364 to i32
  %r361 = icmp eq i32 %r362, 0
  br i1 %r361, label %b3543, label %b3819

b3578:
  %r367 = phi i32 [%r309, %b3567], [%r313, %b3581]
  %r371 = phi i32 [%r266, %b3567], [%r266, %b3581]
  %r370 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r369 = call i32 @inb(i32 1021)
  %r368 = and i32 %r369, 96
  call void @func_b1179(i32 %r368, i32 0, i32 %r367)
  %r366 = icmp eq i32 %r367, 10
  br i1 %r366, label %b3573, label %b3575

b3482:
  %r374 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r375 = load i8, i8* %r374
  %r373 = zext i8 %r375 to i32
  %r372 = icmp eq i32 %r373, 0
  br i1 %r372, label %b3459, label %b3493

b3496:
  %r380 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2898(i32 %r318, i32 %r380)
  %r378 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r379 = load i8, i8* %r378
  %r377 = zext i8 %r379 to i32
  %r376 = icmp eq i32 %r377, 0
  br i1 %r376, label %b3459, label %b3493

b3526:
  %r386 = call i32 @inb(i32 1021)
  %r385 = and i32 %r386, 96
  call void @func_b1179(i32 %r385, i32 0, i32 13)
  call void @func_b1400(i32 %r329)
  call void @func_b3510(i32 %r332, i32 %r333)
  %r384 = inttoptr i32 4096 to i32*
  %r382 = load i32, i32* %r384
  %r383 = inttoptr i32 %r382 to i32*
  %r250 = load i32, i32* %r383
  %r241 = add i32 %r382, 4
  %r381 = icmp eq i32 %r250, 0
  br i1 %r381, label %b3208, label %b3421

b3528:
  call void @func_b1400(i32 %r329)
  call void @func_b3510(i32 %r332, i32 %r333)
  %r390 = inttoptr i32 4096 to i32*
  %r388 = load i32, i32* %r390
  %r389 = inttoptr i32 %r388 to i32*
  %r249 = load i32, i32* %r389
  %r240 = add i32 %r388, 4
  %r387 = icmp eq i32 %r249, 0
  br i1 %r387, label %b3208, label %b3421

b3200:
  %r301 = phi i32 [%r341, %b3205], [%r347, %b3207]
  %r391 = phi i32 [%r300, %b3205], [%r300, %b3207]
  %r299 = add i32 %r391, 1
  br label %b3202

b3400:
  %r393 = phi i32 [%r358, %b3364], [%r399, %b3403], [%r399, %b3409]
  %r398 = phi i32 [%r356, %b3364], [%r397, %b3403], [%r397, %b3409]
  %r396 = phi i32 [12, %b3364], [12, %b3403], [12, %b3409]
  %r395 = phi i32 [%r354, %b3364], [%r394, %b3403], [%r394, %b3409]
  %r392 = icmp eq i32 %r393, 0
  br i1 %r392, label %b3221, label %b3817

b3401:
  %r400 = add i32 ptrtoint(i8* @str47 to i32), 1
  br label %b3402

b3411:
  %r402 = phi i32 [%r303, %b3410], [%r410, %b3417]
  %r409 = phi i32 [%r360, %b3410], [%r408, %b3417]
  %r359 = phi i32 [%r231, %b3410], [%r407, %b3417]
  %r357 = phi i32 [%r306, %b3410], [%r406, %b3417]
  %r355 = phi i32 [%r307, %b3410], [%r405, %b3417]
  %r404 = call i32 @inb(i32 1021)
  %r403 = and i32 %r404, 96
  call void @func_b1179(i32 %r403, i32 0, i32 %r402)
  %r401 = icmp eq i32 %r402, 10
  br i1 %r401, label %b3412, label %b3418

b3543:
  %r416 = phi i32 [%r365, %b3560], [%r415, %b3556]
  %r413 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r414 = load i8, i8* %r413
  %r412 = zext i8 %r414 to i32
  %r411 = icmp eq i32 %r412, 0
  br i1 %r411, label %b2118, label %b3545

b3819:
  %r417 = add i32 %r365, 1
  br label %b3556

b3573:
  %r423 = call i32 @inb(i32 1021)
  %r422 = and i32 %r423, 96
  call void @func_b1179(i32 %r422, i32 0, i32 13)
  call void @func_b1400(i32 %r367)
  call void @func_b3472(i32 %r370, i32 %r371)
  %r421 = inttoptr i32 4108 to i32*
  %r326 = load i32, i32* %r421
  %r419 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r420 = load i8, i8* %r419
  %r339 = zext i8 %r420 to i32
  %r418 = icmp eq i32 %r339, 0
  br i1 %r418, label %b3494, label %b3599

b3575:
  call void @func_b1400(i32 %r367)
  call void @func_b3472(i32 %r370, i32 %r371)
  %r427 = inttoptr i32 4108 to i32*
  %r325 = load i32, i32* %r427
  %r425 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r426 = load i8, i8* %r425
  %r338 = zext i8 %r426 to i32
  %r424 = icmp eq i32 %r338, 0
  br i1 %r424, label %b3494, label %b3599

b3459:
  %r432 = phi i32 [%r327, %b3482], [%r327, %b3496]
  %r430 = inttoptr i32 %r432 to i8*
  %r431 = load i8, i8* %r430
  %r429 = zext i8 %r431 to i32
  %r428 = icmp eq i32 %r429, 0
  br i1 %r428, label %b3442, label %b3818

b3493:
  %r434 = phi i32 [%r373, %b3482], [%r377, %b3496]
  %r438 = phi i32 [%r327, %b3482], [%r327, %b3496]
  %r437 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r436 = call i32 @inb(i32 1021)
  %r435 = and i32 %r436, 96
  call void @func_b1179(i32 %r435, i32 0, i32 %r434)
  %r433 = icmp eq i32 %r434, 10
  br i1 %r433, label %b3488, label %b3490

b3221:
  %r441 = inttoptr i32 ptrtoint(i8* @str50 to i32) to i8*
  %r442 = load i8, i8* %r441
  %r440 = zext i8 %r442 to i32
  %r439 = icmp eq i32 %r440, 0
  br i1 %r439, label %b3195, label %b3223

b3817:
  %r448 = add i32 %r398, %r396
  %r447 = add i32 %r393, -1
  %r445 = inttoptr i32 ptrtoint(i8* @str48 to i32) to i8*
  %r446 = load i8, i8* %r445
  %r444 = zext i8 %r446 to i32
  %r443 = icmp eq i32 %r444, 0
  br i1 %r443, label %b3987, label %b3988

b3402:
  %r450 = phi i32 [%r351, %b3401], [%r458, %b3408]
  %r457 = phi i32 [%r400, %b3401], [%r456, %b3408]
  %r394 = phi i32 [%r354, %b3401], [%r455, %b3408]
  %r399 = phi i32 [%r358, %b3401], [%r454, %b3408]
  %r397 = phi i32 [%r356, %b3401], [%r453, %b3408]
  %r452 = call i32 @inb(i32 1021)
  %r451 = and i32 %r452, 96
  call void @func_b1179(i32 %r451, i32 0, i32 %r450)
  %r449 = icmp eq i32 %r450, 10
  br i1 %r449, label %b3403, label %b3409

b3412:
  %r464 = call i32 @inb(i32 1021)
  %r463 = and i32 %r464, 96
  call void @func_b1179(i32 %r463, i32 0, i32 13)
  call void @func_b1400(i32 %r402)
  %r461 = inttoptr i32 %r409 to i8*
  %r462 = load i8, i8* %r461
  %r460 = zext i8 %r462 to i32
  %r459 = icmp eq i32 %r460, 0
  br i1 %r459, label %b3364, label %b3417

b3418:
  call void @func_b1400(i32 %r402)
  %r467 = inttoptr i32 %r409 to i8*
  %r468 = load i8, i8* %r467
  %r466 = zext i8 %r468 to i32
  %r465 = icmp eq i32 %r466, 0
  br i1 %r465, label %b3364, label %b3417

b2118:
  %r476 = and i32 %r416, 15
  %r474 = call i32 @func_b1215(i32 %r476, i32 9)
  %r473 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r475 = trunc i32 %r474 to i8
  store i8 %r475, i8* %r473
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r416, i32 32)
  %r471 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r472 = load i8, i8* %r471
  %r470 = zext i8 %r472 to i32
  %r469 = icmp eq i32 %r470, 0
  br i1 %r469, label %b2119, label %b3534

b3545:
  %r480 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r479 = call i32 @inb(i32 1021)
  %r478 = and i32 %r479, 96
  call void @func_b1179(i32 %r478, i32 0, i32 %r412)
  %r477 = icmp eq i32 %r412, 10
  br i1 %r477, label %b3549, label %b3551

b3556:
  %r486 = phi i32 [%r362, %b3819], [%r482, %b3554]
  %r485 = phi i32 [%r417, %b3819], [%r487, %b3554]
  %r415 = phi i32 [%r365, %b3819], [%r415, %b3554]
  call void @func_b1409(i32 %r486)
  %r483 = inttoptr i32 %r485 to i8*
  %r484 = load i8, i8* %r483
  %r482 = zext i8 %r484 to i32
  %r481 = icmp eq i32 %r482, 0
  br i1 %r481, label %b3543, label %b3554

b3442:
  %r493 = phi i32 [%r432, %b3459], [%r492, %b3455]
  %r490 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r491 = load i8, i8* %r490
  %r489 = zext i8 %r491 to i32
  %r488 = icmp eq i32 %r489, 0
  br i1 %r488, label %b2124, label %b3444

b3818:
  %r494 = add i32 %r432, 1
  br label %b3455

b3488:
  %r500 = call i32 @inb(i32 1021)
  %r499 = and i32 %r500, 96
  call void @func_b1179(i32 %r499, i32 0, i32 13)
  call void @func_b1400(i32 %r434)
  call void @func_b3472(i32 %r437, i32 %r438)
  %r498 = inttoptr i32 4096 to i32*
  %r496 = load i32, i32* %r498
  %r497 = inttoptr i32 %r496 to i32*
  %r248 = load i32, i32* %r497
  %r239 = add i32 %r496, 4
  %r495 = icmp eq i32 %r248, 0
  br i1 %r495, label %b3208, label %b3421

b3490:
  call void @func_b1400(i32 %r434)
  call void @func_b3472(i32 %r437, i32 %r438)
  %r504 = inttoptr i32 4096 to i32*
  %r502 = load i32, i32* %r504
  %r503 = inttoptr i32 %r502 to i32*
  %r247 = load i32, i32* %r503
  %r238 = add i32 %r502, 4
  %r501 = icmp eq i32 %r247, 0
  br i1 %r501, label %b3208, label %b3421

b3223:
  %r505 = add i32 ptrtoint(i8* @str50 to i32), 1
  br label %b3215

b3987:
  %r510 = phi i32 [%r398, %b3817], [%r524, %b3992], [%r523, %b3993]
  %r522 = phi i32 [%r447, %b3817], [%r521, %b3992], [%r520, %b3993]
  %r519 = phi i32 [%r448, %b3817], [%r518, %b3992], [%r517, %b3993]
  %r516 = phi i32 [%r395, %b3817], [%r515, %b3992], [%r514, %b3993]
  %r513 = phi i32 [%r393, %b3817], [%r512, %b3992], [%r511, %b3993]
  call void @func_b2990(i32 %r510)
  %r508 = inttoptr i32 ptrtoint(i8* @str49 to i32) to i8*
  %r509 = load i8, i8* %r508
  %r507 = zext i8 %r509 to i32
  %r506 = icmp eq i32 %r507, 0
  br i1 %r506, label %b3990, label %b3991

b3988:
  %r528 = add i32 ptrtoint(i8* @str48 to i32), 1
  %r527 = call i32 @inb(i32 1021)
  %r526 = and i32 %r527, 96
  call void @func_b1179(i32 %r526, i32 0, i32 %r444)
  %r525 = icmp eq i32 %r444, 10
  br i1 %r525, label %b3992, label %b3993

b3403:
  %r534 = call i32 @inb(i32 1021)
  %r533 = and i32 %r534, 96
  call void @func_b1179(i32 %r533, i32 0, i32 13)
  call void @func_b1400(i32 %r450)
  %r531 = inttoptr i32 %r457 to i8*
  %r532 = load i8, i8* %r531
  %r530 = zext i8 %r532 to i32
  %r529 = icmp eq i32 %r530, 0
  br i1 %r529, label %b3400, label %b3408

b3409:
  call void @func_b1400(i32 %r450)
  %r537 = inttoptr i32 %r457 to i8*
  %r538 = load i8, i8* %r537
  %r536 = zext i8 %r538 to i32
  %r535 = icmp eq i32 %r536, 0
  br i1 %r535, label %b3400, label %b3408

b3417:
  %r410 = phi i32 [%r460, %b3412], [%r466, %b3418]
  %r539 = phi i32 [%r409, %b3412], [%r409, %b3418]
  %r407 = phi i32 [%r359, %b3412], [%r359, %b3418]
  %r406 = phi i32 [%r357, %b3412], [%r357, %b3418]
  %r405 = phi i32 [%r355, %b3412], [%r355, %b3418]
  %r408 = add i32 %r539, 1
  br label %b3411

b2119:
  %r543 = inttoptr i32 4108 to i32*
  %r324 = load i32, i32* %r543
  %r541 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r542 = load i8, i8* %r541
  %r337 = zext i8 %r542 to i32
  %r540 = icmp eq i32 %r337, 0
  br i1 %r540, label %b3494, label %b3599

b3534:
  %r548 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2898(i32 %r470, i32 %r548)
  %r547 = inttoptr i32 4108 to i32*
  %r323 = load i32, i32* %r547
  %r545 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r546 = load i8, i8* %r545
  %r336 = zext i8 %r546 to i32
  %r544 = icmp eq i32 %r336, 0
  br i1 %r544, label %b3494, label %b3599

b3549:
  %r554 = call i32 @inb(i32 1021)
  %r553 = and i32 %r554, 96
  call void @func_b1179(i32 %r553, i32 0, i32 13)
  call void @func_b1400(i32 %r412)
  call void @func_b3432(i32 %r480, i32 %r416)
  %r552 = inttoptr i32 4108 to i32*
  %r322 = load i32, i32* %r552
  %r550 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r551 = load i8, i8* %r550
  %r335 = zext i8 %r551 to i32
  %r549 = icmp eq i32 %r335, 0
  br i1 %r549, label %b3494, label %b3599

b3551:
  call void @func_b1400(i32 %r412)
  call void @func_b3432(i32 %r480, i32 %r416)
  %r558 = inttoptr i32 4108 to i32*
  %r321 = load i32, i32* %r558
  %r556 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r557 = load i8, i8* %r556
  %r334 = zext i8 %r557 to i32
  %r555 = icmp eq i32 %r334, 0
  br i1 %r555, label %b3494, label %b3599

b3554:
  %r487 = add i32 %r485, 1
  br label %b3556

b2124:
  %r566 = and i32 %r493, 15
  %r564 = call i32 @func_b1215(i32 %r566, i32 9)
  %r563 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r565 = trunc i32 %r564 to i8
  store i8 %r565, i8* %r563
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r493, i32 32)
  %r561 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r562 = load i8, i8* %r561
  %r560 = zext i8 %r562 to i32
  %r559 = icmp eq i32 %r560, 0
  br i1 %r559, label %b2056, label %b3426

b3444:
  %r570 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r569 = call i32 @inb(i32 1021)
  %r568 = and i32 %r569, 96
  call void @func_b1179(i32 %r568, i32 0, i32 %r489)
  %r567 = icmp eq i32 %r489, 10
  br i1 %r567, label %b3448, label %b3450

b3455:
  %r576 = phi i32 [%r429, %b3818], [%r572, %b3453]
  %r575 = phi i32 [%r494, %b3818], [%r577, %b3453]
  %r492 = phi i32 [%r432, %b3818], [%r492, %b3453]
  call void @func_b1409(i32 %r576)
  %r573 = inttoptr i32 %r575 to i8*
  %r574 = load i8, i8* %r573
  %r572 = zext i8 %r574 to i32
  %r571 = icmp eq i32 %r572, 0
  br i1 %r571, label %b3442, label %b3453

b3215:
  %r579 = phi i32 [%r440, %b3223], [%r584, %b3213]
  %r583 = phi i32 [%r505, %b3223], [%r582, %b3213]
  %r581 = call i32 @inb(i32 1021)
  %r580 = and i32 %r581, 96
  call void @func_b1179(i32 %r580, i32 0, i32 %r579)
  %r578 = icmp eq i32 %r579, 10
  br i1 %r578, label %b3218, label %b3220

b3990:
  %r592 = phi i32 [%r516, %b3987], [%r600, %b3996], [%r599, %b3997]
  %r598 = phi i32 [%r513, %b3987], [%r597, %b3996], [%r596, %b3997]
  %r595 = phi i32 [%r510, %b3987], [%r594, %b3996], [%r593, %b3997]
  %r591 = add i32 %r592, 8
  %r590 = inttoptr i32 %r591 to i32*
  %r589 = load i32, i32* %r590
  %r587 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r588 = load i8, i8* %r587
  %r586 = zext i8 %r588 to i32
  %r585 = icmp eq i32 %r586, 0
  br i1 %r585, label %b1756, label %b3283

b3991:
  %r604 = add i32 ptrtoint(i8* @str49 to i32), 1
  %r603 = call i32 @inb(i32 1021)
  %r602 = and i32 %r603, 96
  call void @func_b1179(i32 %r602, i32 0, i32 %r507)
  %r601 = icmp eq i32 %r507, 10
  br i1 %r601, label %b3996, label %b3997

b3992:
  %r610 = phi i32 [%r444, %b3988], [%r619, %b3995]
  %r609 = phi i32 [%r528, %b3988], [%r618, %b3995]
  %r515 = phi i32 [%r395, %b3988], [%r617, %b3995]
  %r512 = phi i32 [%r393, %b3988], [%r616, %b3995]
  %r524 = phi i32 [%r398, %b3988], [%r615, %b3995]
  %r521 = phi i32 [%r447, %b3988], [%r614, %b3995]
  %r518 = phi i32 [%r448, %b3988], [%r613, %b3995]
  %r612 = call i32 @inb(i32 1021)
  %r611 = and i32 %r612, 96
  call void @func_b1179(i32 %r611, i32 0, i32 13)
  call void @func_b1400(i32 %r610)
  %r607 = inttoptr i32 %r609 to i8*
  %r608 = load i8, i8* %r607
  %r606 = zext i8 %r608 to i32
  %r605 = icmp eq i32 %r606, 0
  br i1 %r605, label %b3987, label %b3995

b3993:
  %r625 = phi i32 [%r444, %b3988], [%r619, %b3995]
  %r624 = phi i32 [%r528, %b3988], [%r618, %b3995]
  %r514 = phi i32 [%r395, %b3988], [%r617, %b3995]
  %r511 = phi i32 [%r393, %b3988], [%r616, %b3995]
  %r523 = phi i32 [%r398, %b3988], [%r615, %b3995]
  %r520 = phi i32 [%r447, %b3988], [%r614, %b3995]
  %r517 = phi i32 [%r448, %b3988], [%r613, %b3995]
  call void @func_b1400(i32 %r625)
  %r622 = inttoptr i32 %r624 to i8*
  %r623 = load i8, i8* %r622
  %r621 = zext i8 %r623 to i32
  %r620 = icmp eq i32 %r621, 0
  br i1 %r620, label %b3987, label %b3995

b3408:
  %r458 = phi i32 [%r530, %b3403], [%r536, %b3409]
  %r626 = phi i32 [%r457, %b3403], [%r457, %b3409]
  %r455 = phi i32 [%r394, %b3403], [%r394, %b3409]
  %r454 = phi i32 [%r399, %b3403], [%r399, %b3409]
  %r453 = phi i32 [%r397, %b3403], [%r397, %b3409]
  %r456 = add i32 %r626, 1
  br label %b3402

b2056:
  %r630 = inttoptr i32 4096 to i32*
  %r628 = load i32, i32* %r630
  %r629 = inttoptr i32 %r628 to i32*
  %r246 = load i32, i32* %r629
  %r237 = add i32 %r628, 4
  %r627 = icmp eq i32 %r246, 0
  br i1 %r627, label %b3208, label %b3421

b3426:
  %r635 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2898(i32 %r560, i32 %r635)
  %r634 = inttoptr i32 4096 to i32*
  %r632 = load i32, i32* %r634
  %r633 = inttoptr i32 %r632 to i32*
  %r245 = load i32, i32* %r633
  %r236 = add i32 %r632, 4
  %r631 = icmp eq i32 %r245, 0
  br i1 %r631, label %b3208, label %b3421

b3448:
  %r641 = call i32 @inb(i32 1021)
  %r640 = and i32 %r641, 96
  call void @func_b1179(i32 %r640, i32 0, i32 13)
  call void @func_b1400(i32 %r489)
  call void @func_b3432(i32 %r570, i32 %r493)
  %r639 = inttoptr i32 4096 to i32*
  %r637 = load i32, i32* %r639
  %r638 = inttoptr i32 %r637 to i32*
  %r244 = load i32, i32* %r638
  %r235 = add i32 %r637, 4
  %r636 = icmp eq i32 %r244, 0
  br i1 %r636, label %b3208, label %b3421

b3450:
  call void @func_b1400(i32 %r489)
  call void @func_b3432(i32 %r570, i32 %r493)
  %r645 = inttoptr i32 4096 to i32*
  %r643 = load i32, i32* %r645
  %r644 = inttoptr i32 %r643 to i32*
  %r243 = load i32, i32* %r644
  %r234 = add i32 %r643, 4
  %r642 = icmp eq i32 %r243, 0
  br i1 %r642, label %b3208, label %b3421

b3453:
  %r577 = add i32 %r575, 1
  br label %b3455

b3218:
  %r651 = call i32 @inb(i32 1021)
  %r650 = and i32 %r651, 96
  call void @func_b1179(i32 %r650, i32 0, i32 13)
  call void @func_b1400(i32 %r579)
  %r648 = inttoptr i32 %r583 to i8*
  %r649 = load i8, i8* %r648
  %r647 = zext i8 %r649 to i32
  %r646 = icmp eq i32 %r647, 0
  br i1 %r646, label %b3195, label %b3213

b3220:
  call void @func_b1400(i32 %r579)
  %r654 = inttoptr i32 %r583 to i8*
  %r655 = load i8, i8* %r654
  %r653 = zext i8 %r655 to i32
  %r652 = icmp eq i32 %r653, 0
  br i1 %r652, label %b3195, label %b3213

b1756:
  %r663 = and i32 %r589, 15
  %r661 = call i32 @func_b1215(i32 %r663, i32 9)
  %r660 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r662 = trunc i32 %r661 to i8
  store i8 %r662, i8* %r660
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r589, i32 32)
  %r658 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r659 = load i8, i8* %r658
  %r657 = zext i8 %r659 to i32
  %r656 = icmp eq i32 %r657, 0
  br i1 %r656, label %b3985, label %b3986

b3283:
  %r671 = add i32 ptrtoint(i8* @str52 to i32), 1
  call void @func_b3277(i32 %r586, i32 %r671, i32 %r589)
  %r670 = add i32 %r595, 8
  %r669 = inttoptr i32 %r670 to i32*
  %r668 = load i32, i32* %r669
  %r666 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r667 = load i8, i8* %r666
  %r665 = zext i8 %r667 to i32
  %r664 = icmp eq i32 %r665, 0
  br i1 %r664, label %b1744, label %b3280

b3996:
  %r677 = phi i32 [%r507, %b3991], [%r684, %b3998]
  %r676 = phi i32 [%r604, %b3991], [%r683, %b3998]
  %r594 = phi i32 [%r510, %b3991], [%r682, %b3998]
  %r600 = phi i32 [%r516, %b3991], [%r681, %b3998]
  %r597 = phi i32 [%r513, %b3991], [%r680, %b3998]
  %r679 = call i32 @inb(i32 1021)
  %r678 = and i32 %r679, 96
  call void @func_b1179(i32 %r678, i32 0, i32 13)
  call void @func_b1400(i32 %r677)
  %r674 = inttoptr i32 %r676 to i8*
  %r675 = load i8, i8* %r674
  %r673 = zext i8 %r675 to i32
  %r672 = icmp eq i32 %r673, 0
  br i1 %r672, label %b3990, label %b3998

b3997:
  %r690 = phi i32 [%r507, %b3991], [%r684, %b3998]
  %r689 = phi i32 [%r604, %b3991], [%r683, %b3998]
  %r593 = phi i32 [%r510, %b3991], [%r682, %b3998]
  %r599 = phi i32 [%r516, %b3991], [%r681, %b3998]
  %r596 = phi i32 [%r513, %b3991], [%r680, %b3998]
  call void @func_b1400(i32 %r690)
  %r687 = inttoptr i32 %r689 to i8*
  %r688 = load i8, i8* %r687
  %r686 = zext i8 %r688 to i32
  %r685 = icmp eq i32 %r686, 0
  br i1 %r685, label %b3990, label %b3998

b3995:
  %r619 = phi i32 [%r606, %b3992], [%r621, %b3993]
  %r694 = phi i32 [%r609, %b3992], [%r624, %b3993]
  %r617 = phi i32 [%r515, %b3992], [%r514, %b3993]
  %r616 = phi i32 [%r512, %b3992], [%r511, %b3993]
  %r615 = phi i32 [%r524, %b3992], [%r523, %b3993]
  %r614 = phi i32 [%r521, %b3992], [%r520, %b3993]
  %r613 = phi i32 [%r518, %b3992], [%r517, %b3993]
  %r618 = add i32 %r694, 1
  %r693 = call i32 @inb(i32 1021)
  %r692 = and i32 %r693, 96
  call void @func_b1179(i32 %r692, i32 0, i32 %r619)
  %r691 = icmp eq i32 %r619, 10
  br i1 %r691, label %b3992, label %b3993

b3213:
  %r584 = phi i32 [%r647, %b3218], [%r653, %b3220]
  %r695 = phi i32 [%r583, %b3218], [%r583, %b3220]
  %r582 = add i32 %r695, 1
  br label %b3215

b3985:
  %r704 = add i32 ptrtoint(i8* @users to i32), 52
  %r703 = inttoptr i32 %r704 to i32*
  store i32 %r589, i32* %r703
  %r702 = add i32 %r595, 8
  %r701 = inttoptr i32 %r702 to i32*
  %r700 = load i32, i32* %r701
  %r698 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r699 = load i8, i8* %r698
  %r697 = zext i8 %r699 to i32
  %r696 = icmp eq i32 %r697, 0
  br i1 %r696, label %b1744, label %b3280

b3986:
  %r712 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b3228(i32 %r657, i32 %r712, i32 %r589)
  %r711 = add i32 %r595, 8
  %r710 = inttoptr i32 %r711 to i32*
  %r709 = load i32, i32* %r710
  %r707 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r708 = load i8, i8* %r707
  %r706 = zext i8 %r708 to i32
  %r705 = icmp eq i32 %r706, 0
  br i1 %r705, label %b1744, label %b3280

b1744:
  %r717 = phi i32 [%r668, %b3283], [%r700, %b3985], [%r709, %b3986]
  %r721 = and i32 %r717, 15
  %r719 = call i32 @func_b1215(i32 %r721, i32 9)
  %r718 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r720 = trunc i32 %r719 to i8
  store i8 %r720, i8* %r718
  call void @func_b3930(i32 1, i32 0, i32 31, i32 %r717, i32 32)
  %r715 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r716 = load i8, i8* %r715
  %r714 = zext i8 %r716 to i32
  %r713 = icmp eq i32 %r714, 0
  br i1 %r713, label %b3982, label %b3983

b3280:
  %r722 = phi i32 [%r665, %b3283], [%r697, %b3985], [%r706, %b3986]
  %r724 = phi i32 [%r668, %b3283], [%r700, %b3985], [%r709, %b3986]
  %r723 = add i32 ptrtoint(i8* @str52 to i32), 1
  call void @func_b3259(i32 %r722, i32 %r723, i32 %r724)
  br label %b1640

b3998:
  %r684 = phi i32 [%r673, %b3996], [%r686, %b3997]
  %r728 = phi i32 [%r676, %b3996], [%r689, %b3997]
  %r682 = phi i32 [%r594, %b3996], [%r593, %b3997]
  %r681 = phi i32 [%r600, %b3996], [%r599, %b3997]
  %r680 = phi i32 [%r597, %b3996], [%r596, %b3997]
  %r683 = add i32 %r728, 1
  %r727 = call i32 @inb(i32 1021)
  %r726 = and i32 %r727, 96
  call void @func_b1179(i32 %r726, i32 0, i32 %r684)
  %r725 = icmp eq i32 %r684, 10
  br i1 %r725, label %b3996, label %b3997

b3982:
  %r730 = add i32 ptrtoint(i8* @users to i32), 124
  %r729 = inttoptr i32 %r730 to i32*
  store i32 %r717, i32* %r729
  br label %b1640

b3983:
  %r731 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b3238(i32 %r714, i32 %r731, i32 %r717)
  br label %b1640

b1640:
  %r744 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r744
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
  %r743 = call i32 @inb(i32 33)
  %r742 = and i32 %r743, -2
  call void @outb(i32 33, i32 %r742)
  %r741 = call i32 @inb(i32 33)
  %r740 = and i32 %r741, -3
  call void @outb(i32 33, i32 %r740)
  %r739 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r738 = load i1, i1* %r739
  %r737 = zext i1 %r738 to i32
  %r736 = mul i32 %r737, 72
  %r735 = add i32 ptrtoint(i8* @users to i32), %r736
  call void @returnTo(i32 %r735)
  %r733 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r734 = load i8, i8* %r733
  %r293 = zext i8 %r734 to i32
  %r732 = icmp eq i32 %r293, 0
  br i1 %r732, label %b295, label %b3197
}

