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

@raw.6 = internal global [10 x i8] zeroinitializer, align 4

@ball = internal alias i8, i8* bitcast([10 x i8]* @raw.6 to i8*)

@raw.7 = internal global [4 x i8] zeroinitializer, align 1

@spinner = internal alias i8, i8* bitcast([4 x i8]* @raw.7 to i8*)

@raw.8 = internal global [1 x i8] zeroinitializer, align 1

@spinpos = internal alias i8, i8* bitcast([1 x i8]* @raw.8 to i8*)

@raw.9 = internal global [1 x i8] zeroinitializer, align 1

@pos = internal alias i8, i8* bitcast([1 x i8]* @raw.9 to i8*)

@raw.10 = internal global [1 x i8] zeroinitializer, align 1

@dir = internal alias i8, i8* bitcast([1 x i8]* @raw.10 to i8*)

@str.11 = private unnamed_addr constant [13 x i8] c"Exception 0x\00"

@str54 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.11, i32 0, i32 0)

@raw.12 = internal global [32 x i8] zeroinitializer, align 1

@itoaBuf = internal alias i8, i8* bitcast([32 x i8]* @raw.12 to i8*)

@str.13 = private unnamed_addr constant [11 x i8] c", frame=0x\00"

@str55 = internal alias i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.13, i32 0, i32 0)

@str.14 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str56 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.14, i32 0, i32 0)

@str.15 = private unnamed_addr constant [19 x i8] c" Last key pressed:\00"

@str44 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.15, i32 0, i32 0)

@str.16 = private unnamed_addr constant [10 x i8] c"Headers:\0a\00"

@str10 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.16, i32 0, i32 0)

@str.17 = private unnamed_addr constant [2 x i8] c" \00"

@str0 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.17, i32 0, i32 0)

@str.18 = private unnamed_addr constant [7 x i8] c"header\00"

@str11 = internal alias i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.18, i32 0, i32 0)

@str.19 = private unnamed_addr constant [2 x i8] c"[\00"

@str1 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.19, i32 0, i32 0)

@str.20 = private unnamed_addr constant [4 x i8] c"]: \00"

@str2 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.20, i32 0, i32 0)

@str.21 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str4 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.21, i32 0, i32 0)

@str.22 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str5 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.22, i32 0, i32 0)

@str.23 = private unnamed_addr constant [12 x i8] c"], entry 0x\00"

@str6 = internal alias i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.23, i32 0, i32 0)

@str.24 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str3 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.24, i32 0, i32 0)

@str.25 = private unnamed_addr constant [13 x i8] c"Memory map:\0a\00"

@str12 = internal alias i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.25, i32 0, i32 0)

@str.26 = private unnamed_addr constant [5 x i8] c"mmap\00"

@str13 = internal alias i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str.26, i32 0, i32 0)

@str.27 = private unnamed_addr constant [4 x i8] c"[0x\00"

@str7 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.27, i32 0, i32 0)

@str.28 = private unnamed_addr constant [4 x i8] c"-0x\00"

@str8 = internal alias i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.28, i32 0, i32 0)

@str.29 = private unnamed_addr constant [2 x i8] c"]\00"

@str9 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.29, i32 0, i32 0)

@str.30 = private unnamed_addr constant [10 x i8] c"Strings:\0a\00"

@str14 = internal alias i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.30, i32 0, i32 0)

@str.31 = private unnamed_addr constant [2 x i8] c" \00"

@str17 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.31, i32 0, i32 0)

@str.32 = private unnamed_addr constant [8 x i8] c"cmdline\00"

@str15 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.32, i32 0, i32 0)

@str.33 = private unnamed_addr constant [3 x i8] c": \00"

@str18 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.33, i32 0, i32 0)

@str.34 = private unnamed_addr constant [3 x i8] c" [\00"

@str19 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.34, i32 0, i32 0)

@str.35 = private unnamed_addr constant [3 x i8] c"]\0a\00"

@str20 = internal alias i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.35, i32 0, i32 0)

@str.36 = private unnamed_addr constant [8 x i8] c"imgline\00"

@str16 = internal alias i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.36, i32 0, i32 0)

@str.37 = private unnamed_addr constant [33 x i8] c"Did not find first user program\0a\00"

@str51 = internal alias i8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.37, i32 0, i32 0)

@str.38 = private unnamed_addr constant [40 x i8] c"\0aHalting kernel, returning to mimgload\0a\00"

@str45 = internal alias i8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.38, i32 0, i32 0)

@str.39 = private unnamed_addr constant [38 x i8] c"Found header for first user program:\0a\00"

@str46 = internal alias i8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.39, i32 0, i32 0)

@str.40 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str47 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.40, i32 0, i32 0)

@str.41 = private unnamed_addr constant [39 x i8] c"Found header for second user program:\0a\00"

@str48 = internal alias i8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.41, i32 0, i32 0)

@str.42 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str49 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.42, i32 0, i32 0)

@str.43 = private unnamed_addr constant [19 x i8] c"user code is at 0x\00"

@str52 = internal alias i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.43, i32 0, i32 0)

@str.44 = private unnamed_addr constant [2 x i8] c"\0a\00"

@str53 = internal alias i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.44, i32 0, i32 0)

@str.45 = private unnamed_addr constant [34 x i8] c"Did not find second user program\0a\00"

@str50 = internal alias i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.45, i32 0, i32 0)

declare void @returnTo(i32)

define void @yield() {
  br label %yield

yield:
  br label %b1024

b1024:
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

define internal void @func_b1212(i32 %r0, i32 %r1, i32 %r2) {
  br label %b1212

b1212:
  %r4 = phi i32 [%r0, %0], [%r7, %b258]
  %r5 = phi i32 [%r1, %0], [0, %b258]
  %r6 = phi i32 [%r2, %0], [%r6, %b258]
  %r3 = icmp eq i32 %r4, %r5
  br i1 %r3, label %b258, label %b2593

b258:
  %r8 = call i32 @inb(i32 1021)
  %r7 = and i32 %r8, 96
  br label %b1212

b2593:
  tail call void @outb(i32 1016, i32 %r6)
  ret void
}

define internal void @func_b1220(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1220

b1220:
  %r7 = phi i32 [%r0, %0], [%r5, %b1220]
  %r6 = phi i32 [%r1, %0], [%r6, %b1220]
  %r18 = phi i32 [%r2, %0], [%r18, %b1220]
  %r21 = phi i32 [%r3, %0], [%r21, %b1220]
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
  br i1 %r4, label %b1220, label %b295

b295:
  ret void
}

define internal void @func_b1436(i32 %r0) {
  br label %b1436

b1436:
  %r5 = add i32 ptrtoint(i8* @console to i32), 4
  %r3 = inttoptr i32 %r5 to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r0, 13
  br i1 %r1, label %b1438, label %b1441

b1438:
  %r9 = phi i32 [%r2, %b1436], [%r2, %b1441], [%r2, %b1443]
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
  br i1 %r6, label %b3930, label %b1440

b1441:
  %r20 = icmp eq i32 %r0, 10
  br i1 %r20, label %b1438, label %b1443

b3930:
  %r23 = add i32 ptrtoint(i8* @console to i32), 4
  %r21 = inttoptr i32 %r23 to i8*
  %r22 = trunc i32 %r7 to i8
  store i8 %r22, i8* %r21
  ret void

b1440:
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
  br i1 %r24, label %b3921, label %b1218

b1443:
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
  br i1 %r45, label %b3934, label %b1438

b3921:
  %r71 = phi i32 [%r25, %b1440], [%r69, %b3921]
  %r74 = phi i32 [%r27, %b1440], [%r71, %b3921]
  %r70 = phi i32 [%r26, %b1440], [%r70, %b3921]
  %r73 = phi i32 [%r32, %b1440], [%r73, %b3921]
  %r72 = phi i32 [%r39, %b1440], [%r72, %b3921]
  %r75 = phi i32 [%r28, %b1440], [%r75, %b3921]
  call void @func_b1220(i32 %r72, i32 %r73, i32 %r74, i32 %r71)
  %r69 = add i32 %r71, 1
  %r68 = icmp ule i32 %r69, %r70
  br i1 %r68, label %b3921, label %b1218

b1218:
  %r79 = phi i32 [%r39, %b1440], [%r72, %b3921], [%r77, %b1218]
  %r78 = phi i32 [%r32, %b1440], [%r73, %b3921], [%r78, %b1218]
  %r85 = phi i32 [%r28, %b1440], [%r75, %b3921], [%r85, %b1218]
  %r89 = phi i32 [%r26, %b1440], [%r70, %b3921], [%r89, %b1218]
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
  br i1 %r76, label %b1218, label %b295

b3934:
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
  call void @func_b1212(i32 %r2, i32 0, i32 %r1)
  %r0 = icmp eq i32 %r1, 10
  br i1 %r0, label %b1738, label %b1739

b1738:
  %r12 = call i32 @inb(i32 1021)
  %r11 = and i32 %r12, 96
  call void @func_b1212(i32 %r11, i32 0, i32 13)
  call void @func_b1436(i32 %r1)
  tail call void @returnTo(i32 %r6)
  ret void

b1739:
  call void @func_b1436(i32 %r1)
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
  br i1 %r0, label %b891, label %b890

b891:
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
  br i1 %r7, label %b888, label %b1024

b890:
  %r25 = lshr i32 %r2, 7
  %r24 = icmp eq i32 %r25, 1
  br i1 %r24, label %b888, label %b1024

b888:
  %r38 = phi i32 [%r2, %b891], [%r2, %b890]
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

b1024:
  %r43 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r42 = load i1, i1* %r43
  %r41 = zext i1 %r42 to i32
  %r40 = mul i32 %r41, 72
  %r39 = add i32 ptrtoint(i8* @users to i32), %r40
  tail call void @returnTo(i32 %r39)
  ret void
}

define internal i32 @func_b1248(i32 %r0, i32 %r1) {
  br label %b1248

b1248:
  %r2 = icmp ule i32 %r0, %r1
  br i1 %r2, label %b921, label %b922

b921:
  %r4 = add i32 %r0, 48
  %r3 = and i32 %r4, 255
  ret i32 %r3

b922:
  %r6 = add i32 %r0, 87
  %r5 = and i32 %r6, 255
  ret i32 %r5
}

define internal void @func_b1279(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b1279

b1279:
  %r7 = phi i32 [%r0, %0], [%r5, %b1279]
  %r6 = phi i32 [%r1, %0], [%r6, %b1279]
  %r13 = phi i32 [%r2, %0], [%r13, %b1279]
  %r17 = phi i32 [%r3, %0], [%r17, %b1279]
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
  br i1 %r4, label %b1279, label %b295

b295:
  ret void
}

define internal void @func_b1007() {
  br label %b1007

b1007:
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
  br label %b1281

b1281:
  %r28 = phi i32 [%r17, %b1007], [%r26, %b1281]
  %r27 = phi i32 [%r8, %b1007], [%r27, %b1281]
  %r31 = phi i32 [%r0, %b1007], [%r31, %b1281]
  %r30 = phi i32 [%r4, %b1007], [%r30, %b1281]
  %r29 = phi i32 [%r13, %b1007], [%r29, %b1281]
  call void @func_b1279(i32 %r29, i32 %r30, i32 %r31, i32 %r28)
  %r26 = add i32 %r28, 1
  %r25 = icmp ule i32 %r26, %r27
  br i1 %r25, label %b1281, label %b295

b295:
  ret void
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
  %r15 = call i32 @func_b1248(i32 %r17, i32 9)
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
  %r4 = call i32 @func_b1248(i32 %r6, i32 9)
  %r3 = and i32 %r5, 65280
  %r1 = or i32 %r3, %r4
  %r0 = inttoptr i32 753816 to i16*
  %r2 = trunc i32 %r1 to i16
  store i16 %r2, i16* %r0
  br label %b3989

b3989:
  %r29 = phi i32 [75, %timerInterrupt], [%r28, %b3989]
  %r42 = phi i32 [%r7, %timerInterrupt], [%r38, %b3989]
  %r43 = phi i32 [%r10, %timerInterrupt], [%r43, %b3989]
  %r38 = lshr i32 %r42, 4
  %r41 = mul i32 %r29, 2
  %r33 = add i32 %r41, 753664
  %r39 = inttoptr i32 %r33 to i16*
  %r40 = load i16, i16* %r39
  %r36 = zext i16 %r40 to i32
  %r37 = and i32 %r38, 15
  %r35 = call i32 @func_b1248(i32 %r37, i32 9)
  %r34 = and i32 %r36, 65280
  %r31 = or i32 %r34, %r35
  %r30 = inttoptr i32 %r33 to i16*
  %r32 = trunc i32 %r31 to i16
  store i16 %r32, i16* %r30
  %r28 = add i32 %r29, -1
  %r27 = icmp sle i32 70, %r28
  br i1 %r27, label %b3989, label %b1617

b1617:
  call void @func_b1007()
  %r59 = add i32 ptrtoint(i8* @ball to i32), 8
  %r57 = inttoptr i32 %r59 to i8*
  %r58 = load i8, i8* %r57
  %r53 = zext i8 %r58 to i32
  %r56 = add i32 ptrtoint(i8* @ball to i32), 9
  %r54 = inttoptr i32 %r56 to i8*
  %r55 = load i8, i8* %r54
  %r52 = zext i8 %r55 to i32
  %r50 = mul i32 %r53, 160
  %r51 = mul i32 %r52, 2
  %r49 = add i32 %r50, %r51
  %r48 = add i32 %r49, 753664
  %r46 = inttoptr i32 %r48 to i16*
  %r47 = trunc i32 28704 to i16
  store i16 %r47, i16* %r46
  %r45 = and i32 %r43, 3
  %r44 = icmp eq i32 %r45, 0
  br i1 %r44, label %b1272, label %b882

b1272:
  %r63 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r64 = load i8, i8* %r63
  %r62 = zext i8 %r64 to i32
  call void @func_b829(i32 %r62, i32 32)
  %r61 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  %r60 = load i1, i1* %r61
  br i1 %r60, label %b3986, label %b3981

b882:
  %r66 = and i32 %r43, 15
  %r65 = icmp eq i32 %r66, 0
  br i1 %r65, label %b880, label %b1024

b3986:
  %r68 = add i32 %r62, 1
  %r67 = icmp ule i32 %r68, 68
  br i1 %r67, label %b3984, label %b1275

b3981:
  %r70 = sub i32 %r62, 1
  %r69 = icmp sle i32 46, %r70
  br i1 %r69, label %b3979, label %b1278

b880:
  %r75 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r74 = load i1, i1* %r75
  %r73 = zext i1 %r74 to i32
  %r72 = add i32 %r73, 1
  %r71 = icmp ule i32 %r72, 1
  br i1 %r71, label %b3974, label %b2302

b1024:
  %r80 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r79 = load i1, i1* %r80
  %r78 = zext i1 %r79 to i32
  %r77 = mul i32 %r78, 72
  %r76 = add i32 ptrtoint(i8* @users to i32), %r77
  tail call void @returnTo(i32 %r76)
  ret void

b3984:
  call void @func_b829(i32 %r68, i32 62)
  %r83 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r84 = trunc i32 %r68 to i8
  store i8 %r84, i8* %r83
  %r82 = and i32 %r43, 15
  %r81 = icmp eq i32 %r82, 0
  br i1 %r81, label %b880, label %b1024

b1275:
  call void @func_b829(i32 %r62, i32 124)
  %r87 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 false, i1* %r87
  %r86 = and i32 %r43, 15
  %r85 = icmp eq i32 %r86, 0
  br i1 %r85, label %b880, label %b1024

b3979:
  call void @func_b829(i32 %r70, i32 60)
  %r90 = inttoptr i32 ptrtoint(i8* @pos to i32) to i8*
  %r91 = trunc i32 %r70 to i8
  store i8 %r91, i8* %r90
  %r89 = and i32 %r43, 15
  %r88 = icmp eq i32 %r89, 0
  br i1 %r88, label %b880, label %b1024

b1278:
  call void @func_b829(i32 %r62, i32 124)
  %r94 = inttoptr i32 ptrtoint(i8* @dir to i32) to i1*
  store i1 true, i1* %r94
  %r93 = and i32 %r43, 15
  %r92 = icmp eq i32 %r93, 0
  br i1 %r92, label %b880, label %b1024

b3974:
  %r96 = trunc i32 %r72 to i1
  %r95 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 %r96, i1* %r95
  br label %b1613

b2302:
  %r97 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r97
  br label %b1613

b1613:
  %r119 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r120 = load i8, i8* %r119
  %r115 = zext i8 %r120 to i32
  %r118 = add i32 ptrtoint(i8* @spinner to i32), %r115
  %r116 = inttoptr i32 %r118 to i8*
  %r117 = load i8, i8* %r116
  %r107 = zext i8 %r117 to i32
  %r114 = add i32 %r115, 1
  %r112 = and i32 %r114, 3
  %r111 = inttoptr i32 ptrtoint(i8* @spinpos to i32) to i8*
  %r113 = trunc i32 %r112 to i8
  store i8 %r113, i8* %r111
  %r109 = inttoptr i32 753822 to i16*
  %r110 = load i16, i16* %r109
  %r108 = zext i16 %r110 to i32
  %r106 = and i32 %r108, 65280
  %r104 = or i32 %r106, %r107
  %r103 = inttoptr i32 753822 to i16*
  %r105 = trunc i32 %r104 to i16
  store i16 %r105, i16* %r103
  %r102 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r101 = load i1, i1* %r102
  %r100 = zext i1 %r101 to i32
  %r99 = mul i32 %r100, 72
  %r98 = add i32 ptrtoint(i8* @users to i32), %r99
  tail call void @returnTo(i32 %r98)
  ret void
}

define internal void @func_b1445(i32 %r0) {
  br label %b1445

b1445:
  %r3 = call i32 @inb(i32 1021)
  %r2 = and i32 %r3, 96
  call void @func_b1212(i32 %r2, i32 0, i32 %r0)
  %r1 = icmp eq i32 %r0, 10
  br i1 %r1, label %b1433, label %c64

b1433:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1212(i32 %r9, i32 0, i32 13)
  %r8 = add i32 ptrtoint(i8* @console to i32), 4
  %r6 = inttoptr i32 %r8 to i8*
  %r7 = load i8, i8* %r6
  %r5 = zext i8 %r7 to i32
  %r4 = icmp eq i32 %r0, 13
  br i1 %r4, label %b1438, label %b1441

c64:
  tail call void @func_b1436(i32 %r0)
  ret void

b1438:
  %r14 = phi i32 [%r5, %b1433], [%r5, %b1441], [%r5, %b1443]
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
  br i1 %r11, label %b3930, label %b1440

b1441:
  %r25 = icmp eq i32 %r0, 10
  br i1 %r25, label %b1438, label %b1443

b3930:
  %r28 = add i32 ptrtoint(i8* @console to i32), 4
  %r26 = inttoptr i32 %r28 to i8*
  %r27 = trunc i32 %r12 to i8
  store i8 %r27, i8* %r26
  ret void

b1440:
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
  br i1 %r29, label %b3921, label %b1218

b1443:
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
  br i1 %r50, label %b3934, label %b1438

b3921:
  %r76 = phi i32 [%r30, %b1440], [%r74, %b3921]
  %r79 = phi i32 [%r32, %b1440], [%r76, %b3921]
  %r75 = phi i32 [%r31, %b1440], [%r75, %b3921]
  %r78 = phi i32 [%r37, %b1440], [%r78, %b3921]
  %r77 = phi i32 [%r44, %b1440], [%r77, %b3921]
  %r80 = phi i32 [%r33, %b1440], [%r80, %b3921]
  call void @func_b1220(i32 %r77, i32 %r78, i32 %r79, i32 %r76)
  %r74 = add i32 %r76, 1
  %r73 = icmp ule i32 %r74, %r75
  br i1 %r73, label %b3921, label %b1218

b1218:
  %r84 = phi i32 [%r44, %b1440], [%r77, %b3921], [%r82, %b1218]
  %r83 = phi i32 [%r37, %b1440], [%r78, %b3921], [%r83, %b1218]
  %r90 = phi i32 [%r33, %b1440], [%r80, %b3921], [%r90, %b1218]
  %r94 = phi i32 [%r31, %b1440], [%r75, %b3921], [%r94, %b1218]
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
  br i1 %r81, label %b1218, label %b295

b3934:
  %r97 = add i32 ptrtoint(i8* @console to i32), 5
  %r95 = inttoptr i32 %r97 to i8*
  %r96 = trunc i32 %r51 to i8
  store i8 %r96, i8* %r95
  ret void

b295:
  ret void
}

define internal void @func_b3943(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3943

b3943:
  %r8 = phi i32 [%r0, %0], [1, %b3945]
  %r7 = phi i32 [%r1, %0], [%r5, %b3945]
  %r6 = phi i32 [%r2, %0], [0, %b3945]
  %r9 = phi i32 [%r3, %0], [%r9, %b3945]
  %r5 = add i32 %r7, %r8
  %r4 = icmp ule i32 %r5, %r6
  br i1 %r4, label %b3945, label %b295

b3945:
  call void @func_b1445(i32 %r9)
  br label %b3943

b295:
  ret void
}

define internal void @func_b3959(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b3959

b3959:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b3961, label %b3950

b3961:
  %r8 = lshr i32 %r3, 4
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b3950, label %b2012

b3950:
  %r12 = phi i32 [1, %b3959], [1, %b3961]
  %r11 = phi i32 [0, %b3959], [0, %b3961]
  %r13 = phi i32 [%r4, %b3959], [%r4, %b3961]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b3952, label %b2070

b2012:
  %r22 = phi i32 [%r8, %b3961], [%r24, %b3956]
  %r16 = phi i32 [%r6, %b3961], [%r15, %b3956]
  %r23 = phi i32 [%r4, %b3961], [%r23, %b3956]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = and i32 %r22, 15
  %r18 = call i32 @func_b1248(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b3956, label %b2013

b3952:
  call void @func_b1445(i32 %r13)
  call void @func_b3943(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1445(i32 %r25)
  ret void

b2070:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1445(i32 %r28)
  ret void

b3956:
  %r24 = lshr i32 %r22, 4
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b2013, label %b2012

b2013:
  %r33 = phi i32 [%r23, %b2012], [%r23, %b3956]
  %r32 = phi i32 [%r16, %b2012], [%r16, %b3956]
  call void @func_b3943(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b2010

b2010:
  %r36 = phi i32 [%r32, %b2013], [%r35, %b2010]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1445(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b2010, label %b295

b295:
  ret void
}

define internal void @func_b2940(i32 %r0, i32 %r1) {
  br label %b2940

b2940:
  %r3 = phi i32 [%r0, %0], [%r8, %b2933]
  %r7 = phi i32 [%r1, %0], [%r6, %b2933]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1212(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3805, label %b3806

b3805:
  %r10 = call i32 @inb(i32 1021)
  %r9 = and i32 %r10, 96
  call void @func_b1212(i32 %r9, i32 0, i32 13)
  call void @func_b1436(i32 %r3)
  br label %b2931

b3806:
  call void @func_b1436(i32 %r3)
  br label %b2931

b2931:
  %r14 = phi i32 [%r7, %b3805], [%r7, %b3806]
  %r12 = inttoptr i32 %r14 to i8*
  %r13 = load i8, i8* %r12
  %r8 = zext i8 %r13 to i32
  %r11 = icmp eq i32 %r8, 0
  br i1 %r11, label %b295, label %b2933

b295:
  ret void

b2933:
  %r6 = add i32 %r14, 1
  br label %b2940
}

define void @unhandled(i32 %r0, i32 %r1) {
  br label %unhandled

unhandled:
  %r4 = inttoptr i32 ptrtoint(i8* @str54 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1359, label %b2969

b1359:
  %r10 = phi i32 [%r0, %unhandled], [%r17, %b2957]
  %r16 = phi i32 [%r1, %unhandled], [%r15, %b2957]
  %r14 = and i32 %r10, 15
  %r12 = call i32 @func_b1248(i32 %r14, i32 9)
  %r11 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r13 = trunc i32 %r12 to i8
  store i8 %r13, i8* %r11
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r10, i32 32)
  %r8 = inttoptr i32 ptrtoint(i8* @str55 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1355, label %b2956

b2969:
  %r18 = add i32 ptrtoint(i8* @str54 to i32), 1
  br label %b2961

b1355:
  %r23 = phi i32 [%r16, %b1359], [%r28, %b2944]
  %r27 = and i32 %r23, 15
  %r25 = call i32 @func_b1248(i32 %r27, i32 9)
  %r24 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r26 = trunc i32 %r25 to i8
  store i8 %r26, i8* %r24
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r23, i32 32)
  %r21 = inttoptr i32 ptrtoint(i8* @str56 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b295, label %b2943

b2956:
  %r29 = add i32 ptrtoint(i8* @str55 to i32), 1
  br label %b2948

b2961:
  %r31 = phi i32 [%r3, %b2969], [%r38, %b2959]
  %r37 = phi i32 [%r18, %b2969], [%r36, %b2959]
  %r35 = phi i32 [%r0, %b2969], [%r17, %b2959]
  %r34 = phi i32 [%r1, %b2969], [%r15, %b2959]
  %r33 = call i32 @inb(i32 1021)
  %r32 = and i32 %r33, 96
  call void @func_b1212(i32 %r32, i32 0, i32 %r31)
  %r30 = icmp eq i32 %r31, 10
  br i1 %r30, label %b2964, label %b2966

b295:
  ret void

b2943:
  %r39 = add i32 ptrtoint(i8* @str56 to i32), 1
  br label %c108

b2948:
  %r41 = phi i32 [%r7, %b2956], [%r47, %b2946]
  %r46 = phi i32 [%r29, %b2956], [%r45, %b2946]
  %r44 = phi i32 [%r16, %b2956], [%r28, %b2946]
  %r43 = call i32 @inb(i32 1021)
  %r42 = and i32 %r43, 96
  call void @func_b1212(i32 %r42, i32 0, i32 %r41)
  %r40 = icmp eq i32 %r41, 10
  br i1 %r40, label %b2951, label %b2953

b2964:
  %r49 = call i32 @inb(i32 1021)
  %r48 = and i32 %r49, 96
  call void @func_b1212(i32 %r48, i32 0, i32 13)
  call void @func_b1436(i32 %r31)
  br label %b2957

b2966:
  call void @func_b1436(i32 %r31)
  br label %b2957

c108:
  tail call void @func_b2940(i32 %r20, i32 %r39)
  ret void

b2951:
  %r51 = call i32 @inb(i32 1021)
  %r50 = and i32 %r51, 96
  call void @func_b1212(i32 %r50, i32 0, i32 13)
  call void @func_b1436(i32 %r41)
  br label %b2944

b2953:
  call void @func_b1436(i32 %r41)
  br label %b2944

b2957:
  %r55 = phi i32 [%r37, %b2964], [%r37, %b2966]
  %r15 = phi i32 [%r34, %b2964], [%r34, %b2966]
  %r17 = phi i32 [%r35, %b2964], [%r35, %b2966]
  %r53 = inttoptr i32 %r55 to i8*
  %r54 = load i8, i8* %r53
  %r38 = zext i8 %r54 to i32
  %r52 = icmp eq i32 %r38, 0
  br i1 %r52, label %b1359, label %b2959

b2944:
  %r59 = phi i32 [%r46, %b2951], [%r46, %b2953]
  %r28 = phi i32 [%r44, %b2951], [%r44, %b2953]
  %r57 = inttoptr i32 %r59 to i8*
  %r58 = load i8, i8* %r57
  %r47 = zext i8 %r58 to i32
  %r56 = icmp eq i32 %r47, 0
  br i1 %r56, label %b1355, label %b2946

b2959:
  %r36 = add i32 %r55, 1
  br label %b2961

b2946:
  %r45 = add i32 %r59, 1
  br label %b2948
}

define internal void @func_b2577(i32 %r0, i32 %r1) {
  br label %b2577

b2577:
  %r6 = phi i32 [%r0, %0], [%r5, %b2578]
  %r3 = phi i32 [%r1, %0], [%r4, %b2578]
  %r2 = icmp ult i32 %r3, 32
  br i1 %r2, label %b2578, label %b2234

b2578:
  %r7 = inttoptr i32 %r6 to i8*
  %r8 = trunc i32 0 to i8
  store i8 %r8, i8* %r7
  %r4 = add i32 %r3, 1
  %r5 = add i32 %r6, 1
  br label %b2577

b2234:
  ret void
}

define internal void @func_b4006(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) {
  br label %b4006

b4006:
  %r6 = add i32 %r1, %r0
  %r5 = icmp ule i32 %r6, %r2
  br i1 %r5, label %b4008, label %b3950

b4008:
  %r8 = udiv i32 %r3, 10
  %r7 = icmp eq i32 %r8, 0
  br i1 %r7, label %b3950, label %b2019

b3950:
  %r12 = phi i32 [1, %b4006], [1, %b4008]
  %r11 = phi i32 [0, %b4006], [0, %b4008]
  %r13 = phi i32 [%r4, %b4006], [%r4, %b4008]
  %r10 = add i32 %r11, %r12
  %r9 = icmp ule i32 %r10, %r11
  br i1 %r9, label %b3952, label %b2070

b2019:
  %r22 = phi i32 [%r8, %b4008], [%r24, %b4000]
  %r16 = phi i32 [%r6, %b4008], [%r15, %b4000]
  %r23 = phi i32 [%r4, %b4008], [%r23, %b4000]
  %r20 = add i32 ptrtoint(i8* @itoaBuf to i32), %r16
  %r21 = urem i32 %r22, 10
  %r18 = call i32 @func_b1248(i32 %r21, i32 9)
  %r17 = inttoptr i32 %r20 to i8*
  %r19 = trunc i32 %r18 to i8
  store i8 %r19, i8* %r17
  %r15 = add i32 %r16, 1
  %r14 = icmp ule i32 %r15, 31
  br i1 %r14, label %b4000, label %b2013

b3952:
  call void @func_b1445(i32 %r13)
  call void @func_b3943(i32 1, i32 %r10, i32 0, i32 %r13)
  %r26 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r27 = load i8, i8* %r26
  %r25 = zext i8 %r27 to i32
  call void @func_b1445(i32 %r25)
  ret void

b2070:
  %r29 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = load i8, i8* %r29
  %r28 = zext i8 %r30 to i32
  call void @func_b1445(i32 %r28)
  ret void

b4000:
  %r24 = udiv i32 %r22, 10
  %r31 = icmp eq i32 %r24, 0
  br i1 %r31, label %b2013, label %b2019

b2013:
  %r33 = phi i32 [%r23, %b2019], [%r23, %b4000]
  %r32 = phi i32 [%r16, %b2019], [%r16, %b4000]
  call void @func_b3943(i32 1, i32 %r32, i32 0, i32 %r33)
  br label %b2010

b2010:
  %r36 = phi i32 [%r32, %b2013], [%r35, %b2010]
  %r40 = add i32 ptrtoint(i8* @itoaBuf to i32), %r36
  %r38 = inttoptr i32 %r40 to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  call void @func_b1445(i32 %r37)
  %r35 = add i32 %r36, -1
  %r34 = icmp sle i32 0, %r35
  br i1 %r34, label %b2010, label %b295

b295:
  ret void
}

define internal void @func_b3019(i32 %r0) {
  br label %b3019

b3019:
  %r3 = inttoptr i32 ptrtoint(i8* @str4 to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b1370, label %b3021

b1370:
  %r15 = phi i32 [%r0, %b3019], [%r16, %b2999]
  %r14 = inttoptr i32 %r15 to i32*
  %r9 = load i32, i32* %r14
  %r13 = and i32 %r9, 15
  %r11 = call i32 @func_b1248(i32 %r13, i32 9)
  %r10 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r12 = trunc i32 %r11 to i8
  store i8 %r12, i8* %r10
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r9, i32 32)
  %r7 = inttoptr i32 ptrtoint(i8* @str5 to i32) to i8*
  %r8 = load i8, i8* %r7
  %r6 = zext i8 %r8 to i32
  %r5 = icmp eq i32 %r6, 0
  br i1 %r5, label %b1368, label %b2998

b3021:
  %r17 = add i32 ptrtoint(i8* @str4 to i32), 1
  br label %b3003

b1368:
  %r29 = phi i32 [%r15, %b1370], [%r30, %b2986]
  %r28 = add i32 %r29, 4
  %r27 = inttoptr i32 %r28 to i32*
  %r22 = load i32, i32* %r27
  %r26 = and i32 %r22, 15
  %r24 = call i32 @func_b1248(i32 %r26, i32 9)
  %r23 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r25 = trunc i32 %r24 to i8
  store i8 %r25, i8* %r23
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r22, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str6 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1366, label %b2985

b2998:
  %r31 = add i32 ptrtoint(i8* @str5 to i32), 1
  br label %b2990

b3003:
  %r33 = phi i32 [%r2, %b3021], [%r39, %b3001]
  %r38 = phi i32 [%r17, %b3021], [%r37, %b3001]
  %r36 = phi i32 [%r0, %b3021], [%r16, %b3001]
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1212(i32 %r34, i32 0, i32 %r33)
  %r32 = icmp eq i32 %r33, 10
  br i1 %r32, label %b3006, label %b3008

b1366:
  %r49 = phi i32 [%r29, %b1368], [%r50, %b2973]
  %r48 = add i32 %r49, 8
  %r47 = inttoptr i32 %r48 to i32*
  %r42 = load i32, i32* %r47
  %r46 = and i32 %r42, 15
  %r44 = call i32 @func_b1248(i32 %r46, i32 9)
  %r43 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r45 = trunc i32 %r44 to i8
  store i8 %r45, i8* %r43
  %r41 = lshr i32 %r42, 4
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b3950, label %b2012

b2985:
  %r51 = add i32 ptrtoint(i8* @str6 to i32), 1
  br label %b2977

b2990:
  %r53 = phi i32 [%r6, %b2998], [%r59, %b2988]
  %r58 = phi i32 [%r31, %b2998], [%r57, %b2988]
  %r56 = phi i32 [%r15, %b2998], [%r30, %b2988]
  %r55 = call i32 @inb(i32 1021)
  %r54 = and i32 %r55, 96
  call void @func_b1212(i32 %r54, i32 0, i32 %r53)
  %r52 = icmp eq i32 %r53, 10
  br i1 %r52, label %b2993, label %b2995

b3006:
  %r61 = call i32 @inb(i32 1021)
  %r60 = and i32 %r61, 96
  call void @func_b1212(i32 %r60, i32 0, i32 13)
  call void @func_b1436(i32 %r33)
  br label %b2999

b3008:
  call void @func_b1436(i32 %r33)
  br label %b2999

b3950:
  %r63 = add i32 0, 1
  %r62 = icmp ule i32 %r63, 0
  br i1 %r62, label %b3952, label %b2070

b2012:
  %r72 = phi i32 [%r41, %b1366], [%r74, %b3956]
  %r66 = phi i32 [1, %b1366], [%r65, %b3956]
  %r73 = phi i32 [32, %b1366], [%r73, %b3956]
  %r70 = add i32 ptrtoint(i8* @itoaBuf to i32), %r66
  %r71 = and i32 %r72, 15
  %r68 = call i32 @func_b1248(i32 %r71, i32 9)
  %r67 = inttoptr i32 %r70 to i8*
  %r69 = trunc i32 %r68 to i8
  store i8 %r69, i8* %r67
  %r65 = add i32 %r66, 1
  %r64 = icmp ule i32 %r65, 31
  br i1 %r64, label %b3956, label %b2013

b2977:
  %r76 = phi i32 [%r19, %b2985], [%r82, %b2975]
  %r81 = phi i32 [%r51, %b2985], [%r80, %b2975]
  %r79 = phi i32 [%r29, %b2985], [%r50, %b2975]
  %r78 = call i32 @inb(i32 1021)
  %r77 = and i32 %r78, 96
  call void @func_b1212(i32 %r77, i32 0, i32 %r76)
  %r75 = icmp eq i32 %r76, 10
  br i1 %r75, label %b2980, label %b2982

b2993:
  %r84 = call i32 @inb(i32 1021)
  %r83 = and i32 %r84, 96
  call void @func_b1212(i32 %r83, i32 0, i32 13)
  call void @func_b1436(i32 %r53)
  br label %b2986

b2995:
  call void @func_b1436(i32 %r53)
  br label %b2986

b2999:
  %r88 = phi i32 [%r38, %b3006], [%r38, %b3008]
  %r16 = phi i32 [%r36, %b3006], [%r36, %b3008]
  %r86 = inttoptr i32 %r88 to i8*
  %r87 = load i8, i8* %r86
  %r39 = zext i8 %r87 to i32
  %r85 = icmp eq i32 %r39, 0
  br i1 %r85, label %b1370, label %b3001

b3952:
  call void @func_b1445(i32 32)
  call void @func_b3943(i32 1, i32 %r63, i32 0, i32 32)
  %r90 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r91 = load i8, i8* %r90
  %r89 = zext i8 %r91 to i32
  call void @func_b1445(i32 %r89)
  ret void

b2070:
  %r93 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r94 = load i8, i8* %r93
  %r92 = zext i8 %r94 to i32
  call void @func_b1445(i32 %r92)
  ret void

b3956:
  %r74 = lshr i32 %r72, 4
  %r95 = icmp eq i32 %r74, 0
  br i1 %r95, label %b2013, label %b2012

b2013:
  %r97 = phi i32 [%r73, %b2012], [%r73, %b3956]
  %r96 = phi i32 [%r66, %b2012], [%r66, %b3956]
  call void @func_b3943(i32 1, i32 %r96, i32 0, i32 %r97)
  br label %b2010

b2980:
  %r99 = call i32 @inb(i32 1021)
  %r98 = and i32 %r99, 96
  call void @func_b1212(i32 %r98, i32 0, i32 13)
  call void @func_b1436(i32 %r76)
  br label %b2973

b2982:
  call void @func_b1436(i32 %r76)
  br label %b2973

b2986:
  %r103 = phi i32 [%r58, %b2993], [%r58, %b2995]
  %r30 = phi i32 [%r56, %b2993], [%r56, %b2995]
  %r101 = inttoptr i32 %r103 to i8*
  %r102 = load i8, i8* %r101
  %r59 = zext i8 %r102 to i32
  %r100 = icmp eq i32 %r59, 0
  br i1 %r100, label %b1368, label %b2988

b3001:
  %r37 = add i32 %r88, 1
  br label %b3003

b2010:
  %r106 = phi i32 [%r96, %b2013], [%r105, %b2010]
  %r110 = add i32 ptrtoint(i8* @itoaBuf to i32), %r106
  %r108 = inttoptr i32 %r110 to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  call void @func_b1445(i32 %r107)
  %r105 = add i32 %r106, -1
  %r104 = icmp sle i32 0, %r105
  br i1 %r104, label %b2010, label %b295

b2973:
  %r114 = phi i32 [%r81, %b2980], [%r81, %b2982]
  %r50 = phi i32 [%r79, %b2980], [%r79, %b2982]
  %r112 = inttoptr i32 %r114 to i8*
  %r113 = load i8, i8* %r112
  %r82 = zext i8 %r113 to i32
  %r111 = icmp eq i32 %r82, 0
  br i1 %r111, label %b1366, label %b2975

b2988:
  %r57 = add i32 %r103, 1
  br label %b2990

b295:
  ret void

b2975:
  %r80 = add i32 %r114, 1
  br label %b2977
}

define internal i32 @func_b3056(i32 %r0, i32 %r1) {
  br label %b3056

b3056:
  %r4 = inttoptr i32 ptrtoint(i8* @str11 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3048, label %b3058

b3048:
  %r13 = phi i32 [%r1, %b3056], [%r12, %b3055]
  %r11 = phi i32 [%r0, %b3056], [%r10, %b3055]
  %r8 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1841, label %b3050

b3058:
  %r14 = add i32 ptrtoint(i8* @str11 to i32), 1
  br label %b3055

b1841:
  %r19 = phi i32 [%r11, %b3048], [%r26, %b3038]
  %r25 = phi i32 [%r13, %b3048], [%r24, %b3038]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1248(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b4006(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1842, label %b3037

b3050:
  %r27 = add i32 ptrtoint(i8* @str1 to i32), 1
  br label %b3042

b3055:
  %r33 = phi i32 [%r3, %b3058], [%r29, %b3053]
  %r32 = phi i32 [%r14, %b3058], [%r34, %b3053]
  %r12 = phi i32 [%r1, %b3058], [%r12, %b3053]
  %r10 = phi i32 [%r0, %b3058], [%r10, %b3053]
  call void @func_b1445(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b3048, label %b3053

b1842:
  %r39 = phi i32 [%r25, %b1841], [%r42, %b3025]
  %r41 = phi i32 [%r19, %b1841], [%r40, %b3025]
  call void @func_b3019(i32 %r39)
  %r37 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b1372, label %b3024

b3037:
  %r43 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b3029

b3042:
  %r45 = phi i32 [%r7, %b3050], [%r52, %b3040]
  %r51 = phi i32 [%r27, %b3050], [%r50, %b3040]
  %r49 = phi i32 [%r11, %b3050], [%r26, %b3040]
  %r48 = phi i32 [%r13, %b3050], [%r24, %b3040]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1212(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3045, label %b3047

b3053:
  %r34 = add i32 %r32, 1
  br label %b3055

b1372:
  %r54 = phi i32 [%r41, %b1842], [%r55, %b3009]
  %r53 = add i32 %r54, 1
  ret i32 %r53

b3024:
  %r56 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b3013

b3029:
  %r58 = phi i32 [%r16, %b3037], [%r65, %b3027]
  %r64 = phi i32 [%r43, %b3037], [%r63, %b3027]
  %r62 = phi i32 [%r25, %b3037], [%r42, %b3027]
  %r61 = phi i32 [%r19, %b3037], [%r40, %b3027]
  %r60 = call i32 @inb(i32 1021)
  %r59 = and i32 %r60, 96
  call void @func_b1212(i32 %r59, i32 0, i32 %r58)
  %r57 = icmp eq i32 %r58, 10
  br i1 %r57, label %b3032, label %b3034

b3045:
  %r67 = call i32 @inb(i32 1021)
  %r66 = and i32 %r67, 96
  call void @func_b1212(i32 %r66, i32 0, i32 13)
  call void @func_b1436(i32 %r45)
  br label %b3038

b3047:
  call void @func_b1436(i32 %r45)
  br label %b3038

b3013:
  %r69 = phi i32 [%r36, %b3024], [%r75, %b3011]
  %r74 = phi i32 [%r56, %b3024], [%r73, %b3011]
  %r72 = phi i32 [%r41, %b3024], [%r55, %b3011]
  %r71 = call i32 @inb(i32 1021)
  %r70 = and i32 %r71, 96
  call void @func_b1212(i32 %r70, i32 0, i32 %r69)
  %r68 = icmp eq i32 %r69, 10
  br i1 %r68, label %b3016, label %b3018

b3032:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1212(i32 %r76, i32 0, i32 13)
  call void @func_b1436(i32 %r58)
  br label %b3025

b3034:
  call void @func_b1436(i32 %r58)
  br label %b3025

b3038:
  %r81 = phi i32 [%r51, %b3045], [%r51, %b3047]
  %r24 = phi i32 [%r48, %b3045], [%r48, %b3047]
  %r26 = phi i32 [%r49, %b3045], [%r49, %b3047]
  %r79 = inttoptr i32 %r81 to i8*
  %r80 = load i8, i8* %r79
  %r52 = zext i8 %r80 to i32
  %r78 = icmp eq i32 %r52, 0
  br i1 %r78, label %b1841, label %b3040

b3016:
  %r83 = call i32 @inb(i32 1021)
  %r82 = and i32 %r83, 96
  call void @func_b1212(i32 %r82, i32 0, i32 13)
  call void @func_b1436(i32 %r69)
  br label %b3009

b3018:
  call void @func_b1436(i32 %r69)
  br label %b3009

b3025:
  %r87 = phi i32 [%r64, %b3032], [%r64, %b3034]
  %r40 = phi i32 [%r61, %b3032], [%r61, %b3034]
  %r42 = phi i32 [%r62, %b3032], [%r62, %b3034]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r65 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r65, 0
  br i1 %r84, label %b1842, label %b3027

b3040:
  %r50 = add i32 %r81, 1
  br label %b3042

b3009:
  %r91 = phi i32 [%r74, %b3016], [%r74, %b3018]
  %r55 = phi i32 [%r72, %b3016], [%r72, %b3018]
  %r89 = inttoptr i32 %r91 to i8*
  %r90 = load i8, i8* %r89
  %r75 = zext i8 %r90 to i32
  %r88 = icmp eq i32 %r75, 0
  br i1 %r88, label %b1372, label %b3011

b3027:
  %r63 = add i32 %r87, 1
  br label %b3029

b3011:
  %r73 = add i32 %r91, 1
  br label %b3013
}

define internal i32 @func_b3068(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3068

b3068:
  %r5 = phi i32 [%r0, %0], [%r14, %b3061]
  %r13 = phi i32 [%r1, %0], [%r12, %b3061]
  %r11 = phi i32 [%r2, %0], [%r10, %b3061]
  %r9 = phi i32 [%r3, %0], [%r8, %b3061]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1212(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b3812, label %b3813

b3812:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1212(i32 %r15, i32 0, i32 13)
  call void @func_b1436(i32 %r5)
  br label %b3059

b3813:
  call void @func_b1436(i32 %r5)
  br label %b3059

b3059:
  %r20 = phi i32 [%r13, %b3812], [%r13, %b3813]
  %r10 = phi i32 [%r11, %b3812], [%r11, %b3813]
  %r8 = phi i32 [%r9, %b3812], [%r9, %b3813]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c193, label %b3061

c193:
  %r21 = tail call i32 @func_b3056(i32 %r10, i32 %r8)
  ret i32 %r21

b3061:
  %r12 = add i32 %r20, 1
  br label %b3068
}

define internal i32 @func_b3074(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3074

b3074:
  %r5 = phi i32 [%r0, %0], [%r12, %b3816], [%r12, %b3817]
  %r11 = phi i32 [%r1, %0], [%r10, %b3816], [%r10, %b3817]
  %r9 = phi i32 [%r2, %0], [12, %b3816], [12, %b3817]
  %r8 = phi i32 [%r3, %0], [%r7, %b3816], [%r6, %b3817]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b423, label %b3076

b423:
  ret i32 %r8

b3076:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str0 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3816, label %b3817

b3816:
  %r7 = call i32 @func_b3056(i32 %r8, i32 %r11)
  br label %b3074

b3817:
  %r17 = add i32 ptrtoint(i8* @str0 to i32), 1
  %r6 = call i32 @func_b3068(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b3074
}

define internal void @func_b3110(i32 %r0, i32 %r1) {
  br label %b3110

b3110:
  %r6 = phi i32 [%r0, %0], [%r8, %b3117], [%r8, %b3119]
  %r7 = phi i32 [%r1, %0], [%r7, %b3117], [%r7, %b3119]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1380, label %b3112

b1380:
  %r19 = add i32 %r7, 4
  %r18 = inttoptr i32 %r19 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1248(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b295, label %b3109

b3112:
  %r8 = add i32 %r6, 1
  br label %b3114

b295:
  ret void

b3109:
  %r20 = add i32 ptrtoint(i8* @str9 to i32), 1
  br label %c208

b3114:
  %r23 = call i32 @inb(i32 1021)
  %r22 = and i32 %r23, 96
  call void @func_b1212(i32 %r22, i32 0, i32 %r3)
  %r21 = icmp eq i32 %r3, 10
  br i1 %r21, label %b3117, label %b3119

c208:
  tail call void @func_b2940(i32 %r10, i32 %r20)
  ret void

b3117:
  %r25 = call i32 @inb(i32 1021)
  %r24 = and i32 %r25, 96
  call void @func_b1212(i32 %r24, i32 0, i32 13)
  call void @func_b1436(i32 %r3)
  br label %b3110

b3119:
  call void @func_b1436(i32 %r3)
  br label %b3110
}

define internal void @func_b3138(i32 %r0, i32 %r1) {
  br label %b3138

b3138:
  %r6 = phi i32 [%r0, %0], [%r8, %b3145], [%r8, %b3147]
  %r7 = phi i32 [%r1, %0], [%r7, %b3145], [%r7, %b3147]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1382, label %b3140

b1382:
  %r18 = inttoptr i32 %r7 to i32*
  %r13 = load i32, i32* %r18
  %r17 = and i32 %r13, 15
  %r15 = call i32 @func_b1248(i32 %r17, i32 9)
  %r14 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r16 = trunc i32 %r15 to i8
  store i8 %r16, i8* %r14
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r13, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str8 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1380, label %b3137

b3140:
  %r8 = add i32 %r6, 1
  %r21 = call i32 @inb(i32 1021)
  %r20 = and i32 %r21, 96
  call void @func_b1212(i32 %r20, i32 0, i32 %r3)
  %r19 = icmp eq i32 %r3, 10
  br i1 %r19, label %b3145, label %b3147

b1380:
  %r33 = phi i32 [%r7, %b1382], [%r34, %b3110]
  %r32 = add i32 %r33, 4
  %r31 = inttoptr i32 %r32 to i32*
  %r26 = load i32, i32* %r31
  %r30 = and i32 %r26, 15
  %r28 = call i32 @func_b1248(i32 %r30, i32 9)
  %r27 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r29 = trunc i32 %r28 to i8
  store i8 %r29, i8* %r27
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r26, i32 32)
  %r24 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b295, label %b3109

b3137:
  %r35 = add i32 ptrtoint(i8* @str8 to i32), 1
  br label %b3114

b3145:
  %r37 = call i32 @inb(i32 1021)
  %r36 = and i32 %r37, 96
  call void @func_b1212(i32 %r36, i32 0, i32 13)
  call void @func_b1436(i32 %r3)
  br label %b3138

b3147:
  call void @func_b1436(i32 %r3)
  br label %b3138

b295:
  ret void

b3109:
  %r38 = add i32 ptrtoint(i8* @str9 to i32), 1
  br label %c222

b3114:
  %r40 = phi i32 [%r10, %b3137], [%r46, %b3112]
  %r45 = phi i32 [%r35, %b3137], [%r44, %b3112]
  %r43 = phi i32 [%r7, %b3137], [%r34, %b3112]
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1212(i32 %r41, i32 0, i32 %r40)
  %r39 = icmp eq i32 %r40, 10
  br i1 %r39, label %b3117, label %b3119

c222:
  tail call void @func_b2940(i32 %r23, i32 %r38)
  ret void

b3117:
  %r48 = call i32 @inb(i32 1021)
  %r47 = and i32 %r48, 96
  call void @func_b1212(i32 %r47, i32 0, i32 13)
  call void @func_b1436(i32 %r40)
  br label %b3110

b3119:
  call void @func_b1436(i32 %r40)
  br label %b3110

b3110:
  %r52 = phi i32 [%r45, %b3117], [%r45, %b3119]
  %r34 = phi i32 [%r43, %b3117], [%r43, %b3119]
  %r50 = inttoptr i32 %r52 to i8*
  %r51 = load i8, i8* %r50
  %r46 = zext i8 %r51 to i32
  %r49 = icmp eq i32 %r46, 0
  br i1 %r49, label %b1380, label %b3112

b3112:
  %r44 = add i32 %r52, 1
  br label %b3114
}

define internal i32 @func_b3194(i32 %r0, i32 %r1) {
  br label %b3194

b3194:
  %r4 = inttoptr i32 ptrtoint(i8* @str13 to i32) to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3186, label %b3196

b3186:
  %r13 = phi i32 [%r1, %b3194], [%r12, %b3193]
  %r11 = phi i32 [%r0, %b3194], [%r10, %b3193]
  %r8 = inttoptr i32 ptrtoint(i8* @str1 to i32) to i8*
  %r9 = load i8, i8* %r8
  %r7 = zext i8 %r9 to i32
  %r6 = icmp eq i32 %r7, 0
  br i1 %r6, label %b1905, label %b3188

b3196:
  %r14 = add i32 ptrtoint(i8* @str13 to i32), 1
  br label %b3193

b1905:
  %r19 = phi i32 [%r11, %b3186], [%r26, %b3176]
  %r25 = phi i32 [%r13, %b3186], [%r24, %b3176]
  %r23 = urem i32 %r19, 10
  %r21 = call i32 @func_b1248(i32 %r23, i32 9)
  %r20 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r22 = trunc i32 %r21 to i8
  store i8 %r22, i8* %r20
  call void @func_b4006(i32 1, i32 0, i32 31, i32 %r19, i32 32)
  %r17 = inttoptr i32 ptrtoint(i8* @str2 to i32) to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b3154, label %b3175

b3188:
  %r27 = add i32 ptrtoint(i8* @str1 to i32), 1
  br label %b3180

b3193:
  %r33 = phi i32 [%r3, %b3196], [%r29, %b3191]
  %r32 = phi i32 [%r14, %b3196], [%r34, %b3191]
  %r12 = phi i32 [%r1, %b3196], [%r12, %b3191]
  %r10 = phi i32 [%r0, %b3196], [%r10, %b3191]
  call void @func_b1445(i32 %r33)
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = load i8, i8* %r30
  %r29 = zext i8 %r31 to i32
  %r28 = icmp eq i32 %r29, 0
  br i1 %r28, label %b3186, label %b3191

b3154:
  %r42 = phi i32 [%r19, %b1905], [%r41, %b3163]
  %r40 = phi i32 [%r25, %b1905], [%r39, %b3163]
  %r37 = inttoptr i32 ptrtoint(i8* @str7 to i32) to i8*
  %r38 = load i8, i8* %r37
  %r36 = zext i8 %r38 to i32
  %r35 = icmp eq i32 %r36, 0
  br i1 %r35, label %b2123, label %b3156

b3175:
  %r43 = add i32 ptrtoint(i8* @str2 to i32), 1
  br label %b3167

b3180:
  %r45 = phi i32 [%r7, %b3188], [%r52, %b3178]
  %r51 = phi i32 [%r27, %b3188], [%r50, %b3178]
  %r49 = phi i32 [%r11, %b3188], [%r26, %b3178]
  %r48 = phi i32 [%r13, %b3188], [%r24, %b3178]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1212(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3183, label %b3185

b3191:
  %r34 = add i32 %r32, 1
  br label %b3193

b2123:
  %r62 = inttoptr i32 %r40 to i32*
  %r57 = load i32, i32* %r62
  %r61 = and i32 %r57, 15
  %r59 = call i32 @func_b1248(i32 %r61, i32 9)
  %r58 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r60 = trunc i32 %r59 to i8
  store i8 %r60, i8* %r58
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r57, i32 32)
  %r55 = inttoptr i32 ptrtoint(i8* @str8 to i32) to i8*
  %r56 = load i8, i8* %r55
  %r54 = zext i8 %r56 to i32
  %r53 = icmp eq i32 %r54, 0
  br i1 %r53, label %b2124, label %b3128

b3156:
  %r66 = add i32 ptrtoint(i8* @str7 to i32), 1
  %r65 = call i32 @inb(i32 1021)
  %r64 = and i32 %r65, 96
  call void @func_b1212(i32 %r64, i32 0, i32 %r36)
  %r63 = icmp eq i32 %r36, 10
  br i1 %r63, label %b3160, label %b3162

b3167:
  %r68 = phi i32 [%r16, %b3175], [%r75, %b3165]
  %r74 = phi i32 [%r43, %b3175], [%r73, %b3165]
  %r72 = phi i32 [%r25, %b3175], [%r39, %b3165]
  %r71 = phi i32 [%r19, %b3175], [%r41, %b3165]
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1212(i32 %r69, i32 0, i32 %r68)
  %r67 = icmp eq i32 %r68, 10
  br i1 %r67, label %b3170, label %b3172

b3183:
  %r77 = call i32 @inb(i32 1021)
  %r76 = and i32 %r77, 96
  call void @func_b1212(i32 %r76, i32 0, i32 13)
  call void @func_b1436(i32 %r45)
  br label %b3176

b3185:
  call void @func_b1436(i32 %r45)
  br label %b3176

b2124:
  %r88 = add i32 %r40, 4
  %r87 = inttoptr i32 %r88 to i32*
  %r82 = load i32, i32* %r87
  %r86 = and i32 %r82, 15
  %r84 = call i32 @func_b1248(i32 %r86, i32 9)
  %r83 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r85 = trunc i32 %r84 to i8
  store i8 %r85, i8* %r83
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r82, i32 32)
  %r80 = inttoptr i32 ptrtoint(i8* @str9 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3096, label %b3104

b3128:
  %r92 = add i32 ptrtoint(i8* @str8 to i32), 1
  %r91 = call i32 @inb(i32 1021)
  %r90 = and i32 %r91, 96
  call void @func_b1212(i32 %r90, i32 0, i32 %r54)
  %r89 = icmp eq i32 %r54, 10
  br i1 %r89, label %b3132, label %b3134

b3160:
  %r98 = call i32 @inb(i32 1021)
  %r97 = and i32 %r98, 96
  call void @func_b1212(i32 %r97, i32 0, i32 13)
  call void @func_b1436(i32 %r36)
  call void @func_b3138(i32 %r66, i32 %r40)
  %r95 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b1372, label %b3150

b3162:
  call void @func_b1436(i32 %r36)
  call void @func_b3138(i32 %r66, i32 %r40)
  %r101 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r102 = load i8, i8* %r101
  %r100 = zext i8 %r102 to i32
  %r99 = icmp eq i32 %r100, 0
  br i1 %r99, label %b1372, label %b3150

b3170:
  %r104 = call i32 @inb(i32 1021)
  %r103 = and i32 %r104, 96
  call void @func_b1212(i32 %r103, i32 0, i32 13)
  call void @func_b1436(i32 %r68)
  br label %b3163

b3172:
  call void @func_b1436(i32 %r68)
  br label %b3163

b3176:
  %r108 = phi i32 [%r51, %b3183], [%r51, %b3185]
  %r24 = phi i32 [%r48, %b3183], [%r48, %b3185]
  %r26 = phi i32 [%r49, %b3183], [%r49, %b3185]
  %r106 = inttoptr i32 %r108 to i8*
  %r107 = load i8, i8* %r106
  %r52 = zext i8 %r107 to i32
  %r105 = icmp eq i32 %r52, 0
  br i1 %r105, label %b1905, label %b3178

b3096:
  %r111 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r112 = load i8, i8* %r111
  %r110 = zext i8 %r112 to i32
  %r109 = icmp eq i32 %r110, 0
  br i1 %r109, label %b1372, label %b3150

b3104:
  %r117 = add i32 ptrtoint(i8* @str9 to i32), 1
  call void @func_b2940(i32 %r79, i32 %r117)
  %r115 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r116 = load i8, i8* %r115
  %r114 = zext i8 %r116 to i32
  %r113 = icmp eq i32 %r114, 0
  br i1 %r113, label %b1372, label %b3150

b3132:
  %r123 = call i32 @inb(i32 1021)
  %r122 = and i32 %r123, 96
  call void @func_b1212(i32 %r122, i32 0, i32 13)
  call void @func_b1436(i32 %r54)
  call void @func_b3110(i32 %r92, i32 %r40)
  %r120 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r119 = zext i8 %r121 to i32
  %r118 = icmp eq i32 %r119, 0
  br i1 %r118, label %b1372, label %b3150

b3134:
  call void @func_b1436(i32 %r54)
  call void @func_b3110(i32 %r92, i32 %r40)
  %r126 = inttoptr i32 ptrtoint(i8* @str3 to i32) to i8*
  %r127 = load i8, i8* %r126
  %r125 = zext i8 %r127 to i32
  %r124 = icmp eq i32 %r125, 0
  br i1 %r124, label %b1372, label %b3150

b1372:
  %r129 = phi i32 [%r42, %b3160], [%r42, %b3162], [%r42, %b3096], [%r42, %b3104], [%r42, %b3132], [%r42, %b3134], [%r130, %b3086]
  %r128 = add i32 %r129, 1
  ret i32 %r128

b3150:
  %r133 = phi i32 [%r94, %b3160], [%r100, %b3162], [%r110, %b3096], [%r114, %b3104], [%r119, %b3132], [%r125, %b3134]
  %r132 = phi i32 [%r42, %b3160], [%r42, %b3162], [%r42, %b3096], [%r42, %b3104], [%r42, %b3132], [%r42, %b3134]
  %r131 = add i32 ptrtoint(i8* @str3 to i32), 1
  br label %b3090

b3163:
  %r137 = phi i32 [%r74, %b3170], [%r74, %b3172]
  %r41 = phi i32 [%r71, %b3170], [%r71, %b3172]
  %r39 = phi i32 [%r72, %b3170], [%r72, %b3172]
  %r135 = inttoptr i32 %r137 to i8*
  %r136 = load i8, i8* %r135
  %r75 = zext i8 %r136 to i32
  %r134 = icmp eq i32 %r75, 0
  br i1 %r134, label %b3154, label %b3165

b3178:
  %r50 = add i32 %r108, 1
  br label %b3180

b3090:
  %r139 = phi i32 [%r133, %b3150], [%r145, %b3088]
  %r144 = phi i32 [%r131, %b3150], [%r143, %b3088]
  %r142 = phi i32 [%r132, %b3150], [%r130, %b3088]
  %r141 = call i32 @inb(i32 1021)
  %r140 = and i32 %r141, 96
  call void @func_b1212(i32 %r140, i32 0, i32 %r139)
  %r138 = icmp eq i32 %r139, 10
  br i1 %r138, label %b3093, label %b3095

b3165:
  %r73 = add i32 %r137, 1
  br label %b3167

b3093:
  %r147 = call i32 @inb(i32 1021)
  %r146 = and i32 %r147, 96
  call void @func_b1212(i32 %r146, i32 0, i32 13)
  call void @func_b1436(i32 %r139)
  br label %b3086

b3095:
  call void @func_b1436(i32 %r139)
  br label %b3086

b3086:
  %r151 = phi i32 [%r144, %b3093], [%r144, %b3095]
  %r130 = phi i32 [%r142, %b3093], [%r142, %b3095]
  %r149 = inttoptr i32 %r151 to i8*
  %r150 = load i8, i8* %r149
  %r145 = zext i8 %r150 to i32
  %r148 = icmp eq i32 %r145, 0
  br i1 %r148, label %b1372, label %b3088

b3088:
  %r143 = add i32 %r151, 1
  br label %b3090
}

define internal i32 @func_b3206(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3206

b3206:
  %r5 = phi i32 [%r0, %0], [%r14, %b3199]
  %r13 = phi i32 [%r1, %0], [%r12, %b3199]
  %r11 = phi i32 [%r2, %0], [%r10, %b3199]
  %r9 = phi i32 [%r3, %0], [%r8, %b3199]
  %r7 = call i32 @inb(i32 1021)
  %r6 = and i32 %r7, 96
  call void @func_b1212(i32 %r6, i32 0, i32 %r5)
  %r4 = icmp eq i32 %r5, 10
  br i1 %r4, label %b3818, label %b3819

b3818:
  %r16 = call i32 @inb(i32 1021)
  %r15 = and i32 %r16, 96
  call void @func_b1212(i32 %r15, i32 0, i32 13)
  call void @func_b1436(i32 %r5)
  br label %b3197

b3819:
  call void @func_b1436(i32 %r5)
  br label %b3197

b3197:
  %r20 = phi i32 [%r13, %b3818], [%r13, %b3819]
  %r10 = phi i32 [%r11, %b3818], [%r11, %b3819]
  %r8 = phi i32 [%r9, %b3818], [%r9, %b3819]
  %r18 = inttoptr i32 %r20 to i8*
  %r19 = load i8, i8* %r18
  %r14 = zext i8 %r19 to i32
  %r17 = icmp eq i32 %r14, 0
  br i1 %r17, label %c269, label %b3199

c269:
  %r21 = tail call i32 @func_b3194(i32 %r10, i32 %r8)
  ret i32 %r21

b3199:
  %r12 = add i32 %r20, 1
  br label %b3206
}

define internal i32 @func_b3212(i32 %r0, i32 %r1, i32 %r2, i32 %r3) {
  br label %b3212

b3212:
  %r5 = phi i32 [%r0, %0], [%r12, %b3822], [%r12, %b3823]
  %r11 = phi i32 [%r1, %0], [%r10, %b3822], [%r10, %b3823]
  %r9 = phi i32 [%r2, %0], [8, %b3822], [8, %b3823]
  %r8 = phi i32 [%r3, %0], [%r7, %b3822], [%r6, %b3823]
  %r4 = icmp eq i32 %r5, 0
  br i1 %r4, label %b423, label %b3214

b423:
  ret i32 %r8

b3214:
  %r10 = add i32 %r11, %r9
  %r12 = add i32 %r5, -1
  %r15 = inttoptr i32 ptrtoint(i8* @str0 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3822, label %b3823

b3822:
  %r7 = call i32 @func_b3194(i32 %r8, i32 %r11)
  br label %b3212

b3823:
  %r17 = add i32 ptrtoint(i8* @str0 to i32), 1
  %r6 = call i32 @func_b3206(i32 %r14, i32 %r17, i32 %r8, i32 %r11)
  br label %b3212
}

define internal void @func_b3461(i32 %r0, i32 %r1) {
  br label %b3461

b3461:
  %r6 = phi i32 [%r0, %0], [%r8, %b3468], [%r8, %b3470]
  %r7 = phi i32 [%r1, %0], [%r7, %b3468], [%r7, %b3470]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b1388, label %b3463

b1388:
  %r16 = and i32 %r7, 15
  %r14 = call i32 @func_b1248(i32 %r16, i32 9)
  %r13 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r15 = trunc i32 %r14 to i8
  store i8 %r15, i8* %r13
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r11 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b295, label %b3460

b3463:
  %r8 = add i32 %r6, 1
  br label %b3465

b295:
  ret void

b3460:
  %r17 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c284

b3465:
  %r20 = call i32 @inb(i32 1021)
  %r19 = and i32 %r20, 96
  call void @func_b1212(i32 %r19, i32 0, i32 %r3)
  %r18 = icmp eq i32 %r3, 10
  br i1 %r18, label %b3468, label %b3470

c284:
  tail call void @func_b2940(i32 %r10, i32 %r17)
  ret void

b3468:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1212(i32 %r21, i32 0, i32 13)
  call void @func_b1436(i32 %r3)
  br label %b3461

b3470:
  call void @func_b1436(i32 %r3)
  br label %b3461
}

define internal void @func_b3501(i32 %r0, i32 %r1) {
  br label %b3501

b3501:
  %r6 = phi i32 [%r0, %0], [%r8, %b3508], [%r8, %b3510]
  %r7 = phi i32 [%r1, %0], [%r7, %b3508], [%r7, %b3510]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3500, label %b3503

b3500:
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b3489, label %b3824

b3503:
  %r8 = add i32 %r6, 1
  br label %b3505

b3489:
  %r18 = phi i32 [%r7, %b3500], [%r17, %b3496]
  %r15 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b1388, label %b3491

b3824:
  %r19 = add i32 %r7, 1
  br label %b3496

b3505:
  %r22 = call i32 @inb(i32 1021)
  %r21 = and i32 %r22, 96
  call void @func_b1212(i32 %r21, i32 0, i32 %r3)
  %r20 = icmp eq i32 %r3, 10
  br i1 %r20, label %b3508, label %b3510

b1388:
  %r27 = phi i32 [%r18, %b3489], [%r32, %b3461]
  %r31 = and i32 %r27, 15
  %r29 = call i32 @func_b1248(i32 %r31, i32 9)
  %r28 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r30 = trunc i32 %r29 to i8
  store i8 %r30, i8* %r28
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r27, i32 32)
  %r25 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r26 = load i8, i8* %r25
  %r24 = zext i8 %r26 to i32
  %r23 = icmp eq i32 %r24, 0
  br i1 %r23, label %b295, label %b3460

b3491:
  %r33 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3465

b3496:
  %r39 = phi i32 [%r10, %b3824], [%r35, %b3494]
  %r38 = phi i32 [%r19, %b3824], [%r40, %b3494]
  %r17 = phi i32 [%r7, %b3824], [%r17, %b3494]
  call void @func_b1445(i32 %r39)
  %r36 = inttoptr i32 %r38 to i8*
  %r37 = load i8, i8* %r36
  %r35 = zext i8 %r37 to i32
  %r34 = icmp eq i32 %r35, 0
  br i1 %r34, label %b3489, label %b3494

b3508:
  %r42 = call i32 @inb(i32 1021)
  %r41 = and i32 %r42, 96
  call void @func_b1212(i32 %r41, i32 0, i32 13)
  call void @func_b1436(i32 %r3)
  br label %b3501

b3510:
  call void @func_b1436(i32 %r3)
  br label %b3501

b295:
  ret void

b3460:
  %r43 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c303

b3465:
  %r45 = phi i32 [%r14, %b3491], [%r51, %b3463]
  %r50 = phi i32 [%r33, %b3491], [%r49, %b3463]
  %r48 = phi i32 [%r18, %b3491], [%r32, %b3463]
  %r47 = call i32 @inb(i32 1021)
  %r46 = and i32 %r47, 96
  call void @func_b1212(i32 %r46, i32 0, i32 %r45)
  %r44 = icmp eq i32 %r45, 10
  br i1 %r44, label %b3468, label %b3470

b3494:
  %r40 = add i32 %r38, 1
  br label %b3496

c303:
  tail call void @func_b2940(i32 %r24, i32 %r43)
  ret void

b3468:
  %r53 = call i32 @inb(i32 1021)
  %r52 = and i32 %r53, 96
  call void @func_b1212(i32 %r52, i32 0, i32 13)
  call void @func_b1436(i32 %r45)
  br label %b3461

b3470:
  call void @func_b1436(i32 %r45)
  br label %b3461

b3461:
  %r57 = phi i32 [%r50, %b3468], [%r50, %b3470]
  %r32 = phi i32 [%r48, %b3468], [%r48, %b3470]
  %r55 = inttoptr i32 %r57 to i8*
  %r56 = load i8, i8* %r55
  %r51 = zext i8 %r56 to i32
  %r54 = icmp eq i32 %r51, 0
  br i1 %r54, label %b1388, label %b3463

b3463:
  %r49 = add i32 %r57, 1
  br label %b3465
}

define internal void @func_b3625(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3625

b3625:
  %r4 = phi i32 [%r0, %0], [%r11, %b3618]
  %r10 = phi i32 [%r1, %0], [%r9, %b3618]
  %r8 = phi i32 [%r2, %0], [%r7, %b3618]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1212(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3825, label %b3826

b3825:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1212(i32 %r12, i32 0, i32 13)
  call void @func_b1436(i32 %r4)
  br label %b3616

b3826:
  call void @func_b1436(i32 %r4)
  br label %b3616

b3616:
  %r17 = phi i32 [%r10, %b3825], [%r10, %b3826]
  %r7 = phi i32 [%r8, %b3825], [%r8, %b3826]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b3613, label %b3618

b3613:
  %r20 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b3528, label %b3615

b3618:
  %r9 = add i32 %r17, 1
  br label %b3625

b3528:
  %r24 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r25 = load i8, i8* %r24
  %r23 = zext i8 %r25 to i32
  %r22 = icmp eq i32 %r23, 0
  br i1 %r22, label %b3500, label %b3533

b3615:
  %r30 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2940(i32 %r19, i32 %r30)
  %r28 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b3500, label %b3533

b3500:
  %r35 = phi i32 [%r7, %b3528], [%r7, %b3615], [%r36, %b3501]
  %r33 = inttoptr i32 %r35 to i8*
  %r34 = load i8, i8* %r33
  %r32 = zext i8 %r34 to i32
  %r31 = icmp eq i32 %r32, 0
  br i1 %r31, label %b3489, label %b3824

b3533:
  %r39 = phi i32 [%r23, %b3528], [%r27, %b3615]
  %r38 = phi i32 [%r7, %b3528], [%r7, %b3615]
  %r37 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3505

b3489:
  %r45 = phi i32 [%r35, %b3500], [%r44, %b3496]
  %r42 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r43 = load i8, i8* %r42
  %r41 = zext i8 %r43 to i32
  %r40 = icmp eq i32 %r41, 0
  br i1 %r40, label %b1388, label %b3491

b3824:
  %r46 = add i32 %r35, 1
  br label %b3496

b3505:
  %r48 = phi i32 [%r39, %b3533], [%r54, %b3503]
  %r53 = phi i32 [%r37, %b3533], [%r52, %b3503]
  %r51 = phi i32 [%r38, %b3533], [%r36, %b3503]
  %r50 = call i32 @inb(i32 1021)
  %r49 = and i32 %r50, 96
  call void @func_b1212(i32 %r49, i32 0, i32 %r48)
  %r47 = icmp eq i32 %r48, 10
  br i1 %r47, label %b3508, label %b3510

b1388:
  %r59 = phi i32 [%r45, %b3489], [%r64, %b3461]
  %r63 = and i32 %r59, 15
  %r61 = call i32 @func_b1248(i32 %r63, i32 9)
  %r60 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r62 = trunc i32 %r61 to i8
  store i8 %r62, i8* %r60
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r59, i32 32)
  %r57 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r58 = load i8, i8* %r57
  %r56 = zext i8 %r58 to i32
  %r55 = icmp eq i32 %r56, 0
  br i1 %r55, label %b295, label %b3460

b3491:
  %r65 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3465

b3496:
  %r71 = phi i32 [%r32, %b3824], [%r67, %b3494]
  %r70 = phi i32 [%r46, %b3824], [%r72, %b3494]
  %r44 = phi i32 [%r35, %b3824], [%r44, %b3494]
  call void @func_b1445(i32 %r71)
  %r68 = inttoptr i32 %r70 to i8*
  %r69 = load i8, i8* %r68
  %r67 = zext i8 %r69 to i32
  %r66 = icmp eq i32 %r67, 0
  br i1 %r66, label %b3489, label %b3494

b3508:
  %r74 = call i32 @inb(i32 1021)
  %r73 = and i32 %r74, 96
  call void @func_b1212(i32 %r73, i32 0, i32 13)
  call void @func_b1436(i32 %r48)
  br label %b3501

b3510:
  call void @func_b1436(i32 %r48)
  br label %b3501

b295:
  ret void

b3460:
  %r75 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c332

b3465:
  %r77 = phi i32 [%r41, %b3491], [%r83, %b3463]
  %r82 = phi i32 [%r65, %b3491], [%r81, %b3463]
  %r80 = phi i32 [%r45, %b3491], [%r64, %b3463]
  %r79 = call i32 @inb(i32 1021)
  %r78 = and i32 %r79, 96
  call void @func_b1212(i32 %r78, i32 0, i32 %r77)
  %r76 = icmp eq i32 %r77, 10
  br i1 %r76, label %b3468, label %b3470

b3494:
  %r72 = add i32 %r70, 1
  br label %b3496

b3501:
  %r87 = phi i32 [%r53, %b3508], [%r53, %b3510]
  %r36 = phi i32 [%r51, %b3508], [%r51, %b3510]
  %r85 = inttoptr i32 %r87 to i8*
  %r86 = load i8, i8* %r85
  %r54 = zext i8 %r86 to i32
  %r84 = icmp eq i32 %r54, 0
  br i1 %r84, label %b3500, label %b3503

c332:
  tail call void @func_b2940(i32 %r56, i32 %r75)
  ret void

b3468:
  %r89 = call i32 @inb(i32 1021)
  %r88 = and i32 %r89, 96
  call void @func_b1212(i32 %r88, i32 0, i32 13)
  call void @func_b1436(i32 %r77)
  br label %b3461

b3470:
  call void @func_b1436(i32 %r77)
  br label %b3461

b3503:
  %r52 = add i32 %r87, 1
  br label %b3505

b3461:
  %r93 = phi i32 [%r82, %b3468], [%r82, %b3470]
  %r64 = phi i32 [%r80, %b3468], [%r80, %b3470]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r83 = zext i8 %r92 to i32
  %r90 = icmp eq i32 %r83, 0
  br i1 %r90, label %b1388, label %b3463

b3463:
  %r81 = add i32 %r93, 1
  br label %b3465
}

define internal void @func_b3539(i32 %r0, i32 %r1) {
  br label %b3539

b3539:
  %r6 = phi i32 [%r0, %0], [%r8, %b3546], [%r8, %b3548]
  %r7 = phi i32 [%r1, %0], [%r7, %b3546], [%r7, %b3548]
  %r4 = inttoptr i32 %r6 to i8*
  %r5 = load i8, i8* %r4
  %r3 = zext i8 %r5 to i32
  %r2 = icmp eq i32 %r3, 0
  br i1 %r2, label %b3534, label %b3541

b3534:
  %r11 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b3528, label %b3536

b3541:
  %r8 = add i32 %r6, 1
  br label %b3543

b3528:
  %r15 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r16 = load i8, i8* %r15
  %r14 = zext i8 %r16 to i32
  %r13 = icmp eq i32 %r14, 0
  br i1 %r13, label %b3500, label %b3533

b3536:
  %r21 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2940(i32 %r10, i32 %r21)
  %r19 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r20 = load i8, i8* %r19
  %r18 = zext i8 %r20 to i32
  %r17 = icmp eq i32 %r18, 0
  br i1 %r17, label %b3500, label %b3533

b3543:
  %r24 = call i32 @inb(i32 1021)
  %r23 = and i32 %r24, 96
  call void @func_b1212(i32 %r23, i32 0, i32 %r3)
  %r22 = icmp eq i32 %r3, 10
  br i1 %r22, label %b3546, label %b3548

b3500:
  %r29 = phi i32 [%r7, %b3528], [%r7, %b3536], [%r30, %b3501]
  %r27 = inttoptr i32 %r29 to i8*
  %r28 = load i8, i8* %r27
  %r26 = zext i8 %r28 to i32
  %r25 = icmp eq i32 %r26, 0
  br i1 %r25, label %b3489, label %b3824

b3533:
  %r33 = phi i32 [%r14, %b3528], [%r18, %b3536]
  %r32 = phi i32 [%r7, %b3528], [%r7, %b3536]
  %r31 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3505

b3546:
  %r35 = call i32 @inb(i32 1021)
  %r34 = and i32 %r35, 96
  call void @func_b1212(i32 %r34, i32 0, i32 13)
  call void @func_b1436(i32 %r3)
  br label %b3539

b3548:
  call void @func_b1436(i32 %r3)
  br label %b3539

b3489:
  %r41 = phi i32 [%r29, %b3500], [%r40, %b3496]
  %r38 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r39 = load i8, i8* %r38
  %r37 = zext i8 %r39 to i32
  %r36 = icmp eq i32 %r37, 0
  br i1 %r36, label %b1388, label %b3491

b3824:
  %r42 = add i32 %r29, 1
  br label %b3496

b3505:
  %r44 = phi i32 [%r33, %b3533], [%r50, %b3503]
  %r49 = phi i32 [%r31, %b3533], [%r48, %b3503]
  %r47 = phi i32 [%r32, %b3533], [%r30, %b3503]
  %r46 = call i32 @inb(i32 1021)
  %r45 = and i32 %r46, 96
  call void @func_b1212(i32 %r45, i32 0, i32 %r44)
  %r43 = icmp eq i32 %r44, 10
  br i1 %r43, label %b3508, label %b3510

b1388:
  %r55 = phi i32 [%r41, %b3489], [%r60, %b3461]
  %r59 = and i32 %r55, 15
  %r57 = call i32 @func_b1248(i32 %r59, i32 9)
  %r56 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r58 = trunc i32 %r57 to i8
  store i8 %r58, i8* %r56
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r55, i32 32)
  %r53 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r54 = load i8, i8* %r53
  %r52 = zext i8 %r54 to i32
  %r51 = icmp eq i32 %r52, 0
  br i1 %r51, label %b295, label %b3460

b3491:
  %r61 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3465

b3496:
  %r67 = phi i32 [%r26, %b3824], [%r63, %b3494]
  %r66 = phi i32 [%r42, %b3824], [%r68, %b3494]
  %r40 = phi i32 [%r29, %b3824], [%r40, %b3494]
  call void @func_b1445(i32 %r67)
  %r64 = inttoptr i32 %r66 to i8*
  %r65 = load i8, i8* %r64
  %r63 = zext i8 %r65 to i32
  %r62 = icmp eq i32 %r63, 0
  br i1 %r62, label %b3489, label %b3494

b3508:
  %r70 = call i32 @inb(i32 1021)
  %r69 = and i32 %r70, 96
  call void @func_b1212(i32 %r69, i32 0, i32 13)
  call void @func_b1436(i32 %r44)
  br label %b3501

b3510:
  call void @func_b1436(i32 %r44)
  br label %b3501

b295:
  ret void

b3460:
  %r71 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c362

b3465:
  %r73 = phi i32 [%r37, %b3491], [%r79, %b3463]
  %r78 = phi i32 [%r61, %b3491], [%r77, %b3463]
  %r76 = phi i32 [%r41, %b3491], [%r60, %b3463]
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1212(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b3468, label %b3470

b3494:
  %r68 = add i32 %r66, 1
  br label %b3496

b3501:
  %r83 = phi i32 [%r49, %b3508], [%r49, %b3510]
  %r30 = phi i32 [%r47, %b3508], [%r47, %b3510]
  %r81 = inttoptr i32 %r83 to i8*
  %r82 = load i8, i8* %r81
  %r50 = zext i8 %r82 to i32
  %r80 = icmp eq i32 %r50, 0
  br i1 %r80, label %b3500, label %b3503

c362:
  tail call void @func_b2940(i32 %r52, i32 %r71)
  ret void

b3468:
  %r85 = call i32 @inb(i32 1021)
  %r84 = and i32 %r85, 96
  call void @func_b1212(i32 %r84, i32 0, i32 13)
  call void @func_b1436(i32 %r73)
  br label %b3461

b3470:
  call void @func_b1436(i32 %r73)
  br label %b3461

b3503:
  %r48 = add i32 %r83, 1
  br label %b3505

b3461:
  %r89 = phi i32 [%r78, %b3468], [%r78, %b3470]
  %r60 = phi i32 [%r76, %b3468], [%r76, %b3470]
  %r87 = inttoptr i32 %r89 to i8*
  %r88 = load i8, i8* %r87
  %r79 = zext i8 %r88 to i32
  %r86 = icmp eq i32 %r79, 0
  br i1 %r86, label %b1388, label %b3463

b3463:
  %r77 = add i32 %r89, 1
  br label %b3465
}

define internal void @func_b3709(i32 %r0, i32 %r1) {
  br label %b3709

b3709:
  %r3 = phi i32 [%r0, %0], [%r8, %b3702]
  %r7 = phi i32 [%r1, %0], [%r6, %b3702]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1212(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3828, label %b3829

b3828:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1212(i32 %r13, i32 0, i32 13)
  call void @func_b1436(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1394, label %b3702

b3829:
  call void @func_b1436(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1394, label %b3702

b1394:
  %r24 = inttoptr i32 4104 to i32*
  %r23 = load i32, i32* %r24
  %r21 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b3687, label %b3697

b3702:
  %r8 = phi i32 [%r10, %b3828], [%r16, %b3829]
  %r25 = phi i32 [%r7, %b3828], [%r7, %b3829]
  %r6 = add i32 %r25, 1
  br label %b3709

b3687:
  %r28 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r29 = load i8, i8* %r28
  %r27 = zext i8 %r29 to i32
  %r26 = icmp eq i32 %r27, 0
  br i1 %r26, label %b3675, label %b3689

b3697:
  %r36 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3625(i32 %r20, i32 %r36, i32 %r23)
  %r35 = inttoptr i32 4108 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b3534, label %b3694

b3675:
  %r39 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b3668, label %b3686

b3689:
  %r45 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2940(i32 %r27, i32 %r45)
  %r43 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3668, label %b3686

b3534:
  %r57 = phi i32 [%r34, %b3697], [%r56, %b3681], [%r55, %b3683], [%r54, %b3539], [%r53, %b1986], [%r52, %b3642], [%r51, %b3657], [%r50, %b3659]
  %r48 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r49 = load i8, i8* %r48
  %r47 = zext i8 %r49 to i32
  %r46 = icmp eq i32 %r47, 0
  br i1 %r46, label %b3528, label %b3536

b3694:
  %r66 = phi i32 [%r31, %b3697], [%r65, %b3681], [%r64, %b3683], [%r63, %b1986], [%r62, %b3642], [%r61, %b3657], [%r60, %b3659]
  %r59 = phi i32 [%r34, %b3697], [%r56, %b3681], [%r55, %b3683], [%r53, %b1986], [%r52, %b3642], [%r51, %b3657], [%r50, %b3659]
  %r58 = add i32 ptrtoint(i8* @str17 to i32), 1
  br label %b3543

b3668:
  %r71 = phi i32 [%r23, %b3675], [%r23, %b3689]
  %r69 = inttoptr i32 %r71 to i8*
  %r70 = load i8, i8* %r69
  %r68 = zext i8 %r70 to i32
  %r67 = icmp eq i32 %r68, 0
  br i1 %r67, label %b3651, label %b3827

b3686:
  %r73 = phi i32 [%r38, %b3675], [%r42, %b3689]
  %r77 = phi i32 [%r23, %b3675], [%r23, %b3689]
  %r76 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r75 = call i32 @inb(i32 1021)
  %r74 = and i32 %r75, 96
  call void @func_b1212(i32 %r74, i32 0, i32 %r73)
  %r72 = icmp eq i32 %r73, 10
  br i1 %r72, label %b3681, label %b3683

b3528:
  %r80 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3500, label %b3533

b3536:
  %r86 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2940(i32 %r47, i32 %r86)
  %r84 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r85 = load i8, i8* %r84
  %r83 = zext i8 %r85 to i32
  %r82 = icmp eq i32 %r83, 0
  br i1 %r82, label %b3500, label %b3533

b3543:
  %r88 = phi i32 [%r66, %b3694], [%r94, %b3541]
  %r93 = phi i32 [%r58, %b3694], [%r92, %b3541]
  %r91 = phi i32 [%r59, %b3694], [%r54, %b3541]
  %r90 = call i32 @inb(i32 1021)
  %r89 = and i32 %r90, 96
  call void @func_b1212(i32 %r89, i32 0, i32 %r88)
  %r87 = icmp eq i32 %r88, 10
  br i1 %r87, label %b3546, label %b3548

b3651:
  %r100 = phi i32 [%r71, %b3668], [%r99, %b3664]
  %r97 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r98 = load i8, i8* %r97
  %r96 = zext i8 %r98 to i32
  %r95 = icmp eq i32 %r96, 0
  br i1 %r95, label %b2051, label %b3653

b3827:
  %r101 = add i32 %r71, 1
  br label %b3664

b3681:
  %r107 = call i32 @inb(i32 1021)
  %r106 = and i32 %r107, 96
  call void @func_b1212(i32 %r106, i32 0, i32 13)
  call void @func_b1436(i32 %r73)
  call void @func_b3501(i32 %r76, i32 %r77)
  %r105 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r105
  %r103 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r104 = load i8, i8* %r103
  %r65 = zext i8 %r104 to i32
  %r102 = icmp eq i32 %r65, 0
  br i1 %r102, label %b3534, label %b3694

b3683:
  call void @func_b1436(i32 %r73)
  call void @func_b3501(i32 %r76, i32 %r77)
  %r111 = inttoptr i32 4108 to i32*
  %r55 = load i32, i32* %r111
  %r109 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r110 = load i8, i8* %r109
  %r64 = zext i8 %r110 to i32
  %r108 = icmp eq i32 %r64, 0
  br i1 %r108, label %b3534, label %b3694

b3500:
  %r116 = phi i32 [%r57, %b3528], [%r57, %b3536], [%r117, %b3501]
  %r114 = inttoptr i32 %r116 to i8*
  %r115 = load i8, i8* %r114
  %r113 = zext i8 %r115 to i32
  %r112 = icmp eq i32 %r113, 0
  br i1 %r112, label %b3489, label %b3824

b3533:
  %r120 = phi i32 [%r79, %b3528], [%r83, %b3536]
  %r119 = phi i32 [%r57, %b3528], [%r57, %b3536]
  %r118 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3505

b3546:
  %r122 = call i32 @inb(i32 1021)
  %r121 = and i32 %r122, 96
  call void @func_b1212(i32 %r121, i32 0, i32 13)
  call void @func_b1436(i32 %r88)
  br label %b3539

b3548:
  call void @func_b1436(i32 %r88)
  br label %b3539

b2051:
  %r130 = and i32 %r100, 15
  %r128 = call i32 @func_b1248(i32 %r130, i32 9)
  %r127 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r129 = trunc i32 %r128 to i8
  store i8 %r129, i8* %r127
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r100, i32 32)
  %r125 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b1986, label %b3642

b3653:
  %r134 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1212(i32 %r132, i32 0, i32 %r96)
  %r131 = icmp eq i32 %r96, 10
  br i1 %r131, label %b3657, label %b3659

b3664:
  %r140 = phi i32 [%r68, %b3827], [%r136, %b3662]
  %r139 = phi i32 [%r101, %b3827], [%r141, %b3662]
  %r99 = phi i32 [%r71, %b3827], [%r99, %b3662]
  call void @func_b1445(i32 %r140)
  %r137 = inttoptr i32 %r139 to i8*
  %r138 = load i8, i8* %r137
  %r136 = zext i8 %r138 to i32
  %r135 = icmp eq i32 %r136, 0
  br i1 %r135, label %b3651, label %b3662

b3489:
  %r147 = phi i32 [%r116, %b3500], [%r146, %b3496]
  %r144 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r145 = load i8, i8* %r144
  %r143 = zext i8 %r145 to i32
  %r142 = icmp eq i32 %r143, 0
  br i1 %r142, label %b1388, label %b3491

b3824:
  %r148 = add i32 %r116, 1
  br label %b3496

b3505:
  %r150 = phi i32 [%r120, %b3533], [%r156, %b3503]
  %r155 = phi i32 [%r118, %b3533], [%r154, %b3503]
  %r153 = phi i32 [%r119, %b3533], [%r117, %b3503]
  %r152 = call i32 @inb(i32 1021)
  %r151 = and i32 %r152, 96
  call void @func_b1212(i32 %r151, i32 0, i32 %r150)
  %r149 = icmp eq i32 %r150, 10
  br i1 %r149, label %b3508, label %b3510

b3539:
  %r160 = phi i32 [%r93, %b3546], [%r93, %b3548]
  %r54 = phi i32 [%r91, %b3546], [%r91, %b3548]
  %r158 = inttoptr i32 %r160 to i8*
  %r159 = load i8, i8* %r158
  %r94 = zext i8 %r159 to i32
  %r157 = icmp eq i32 %r94, 0
  br i1 %r157, label %b3534, label %b3541

b1986:
  %r164 = inttoptr i32 4108 to i32*
  %r53 = load i32, i32* %r164
  %r162 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r163 = load i8, i8* %r162
  %r63 = zext i8 %r163 to i32
  %r161 = icmp eq i32 %r63, 0
  br i1 %r161, label %b3534, label %b3694

b3642:
  %r169 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2940(i32 %r124, i32 %r169)
  %r168 = inttoptr i32 4108 to i32*
  %r52 = load i32, i32* %r168
  %r166 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r62 = zext i8 %r167 to i32
  %r165 = icmp eq i32 %r62, 0
  br i1 %r165, label %b3534, label %b3694

b3657:
  %r175 = call i32 @inb(i32 1021)
  %r174 = and i32 %r175, 96
  call void @func_b1212(i32 %r174, i32 0, i32 13)
  call void @func_b1436(i32 %r96)
  call void @func_b3461(i32 %r134, i32 %r100)
  %r173 = inttoptr i32 4108 to i32*
  %r51 = load i32, i32* %r173
  %r171 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r172 = load i8, i8* %r171
  %r61 = zext i8 %r172 to i32
  %r170 = icmp eq i32 %r61, 0
  br i1 %r170, label %b3534, label %b3694

b3659:
  call void @func_b1436(i32 %r96)
  call void @func_b3461(i32 %r134, i32 %r100)
  %r179 = inttoptr i32 4108 to i32*
  %r50 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r60 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r60, 0
  br i1 %r176, label %b3534, label %b3694

b3662:
  %r141 = add i32 %r139, 1
  br label %b3664

b1388:
  %r184 = phi i32 [%r147, %b3489], [%r189, %b3461]
  %r188 = and i32 %r184, 15
  %r186 = call i32 @func_b1248(i32 %r188, i32 9)
  %r185 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r187 = trunc i32 %r186 to i8
  store i8 %r187, i8* %r185
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r184, i32 32)
  %r182 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r181 = zext i8 %r183 to i32
  %r180 = icmp eq i32 %r181, 0
  br i1 %r180, label %b295, label %b3460

b3491:
  %r190 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3465

b3496:
  %r196 = phi i32 [%r113, %b3824], [%r192, %b3494]
  %r195 = phi i32 [%r148, %b3824], [%r197, %b3494]
  %r146 = phi i32 [%r116, %b3824], [%r146, %b3494]
  call void @func_b1445(i32 %r196)
  %r193 = inttoptr i32 %r195 to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b3489, label %b3494

b3508:
  %r199 = call i32 @inb(i32 1021)
  %r198 = and i32 %r199, 96
  call void @func_b1212(i32 %r198, i32 0, i32 13)
  call void @func_b1436(i32 %r150)
  br label %b3501

b3510:
  call void @func_b1436(i32 %r150)
  br label %b3501

b3541:
  %r92 = add i32 %r160, 1
  br label %b3543

b295:
  ret void

b3460:
  %r200 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c416

b3465:
  %r202 = phi i32 [%r143, %b3491], [%r208, %b3463]
  %r207 = phi i32 [%r190, %b3491], [%r206, %b3463]
  %r205 = phi i32 [%r147, %b3491], [%r189, %b3463]
  %r204 = call i32 @inb(i32 1021)
  %r203 = and i32 %r204, 96
  call void @func_b1212(i32 %r203, i32 0, i32 %r202)
  %r201 = icmp eq i32 %r202, 10
  br i1 %r201, label %b3468, label %b3470

b3494:
  %r197 = add i32 %r195, 1
  br label %b3496

b3501:
  %r212 = phi i32 [%r155, %b3508], [%r155, %b3510]
  %r117 = phi i32 [%r153, %b3508], [%r153, %b3510]
  %r210 = inttoptr i32 %r212 to i8*
  %r211 = load i8, i8* %r210
  %r156 = zext i8 %r211 to i32
  %r209 = icmp eq i32 %r156, 0
  br i1 %r209, label %b3500, label %b3503

c416:
  tail call void @func_b2940(i32 %r181, i32 %r200)
  ret void

b3468:
  %r214 = call i32 @inb(i32 1021)
  %r213 = and i32 %r214, 96
  call void @func_b1212(i32 %r213, i32 0, i32 13)
  call void @func_b1436(i32 %r202)
  br label %b3461

b3470:
  call void @func_b1436(i32 %r202)
  br label %b3461

b3503:
  %r154 = add i32 %r212, 1
  br label %b3505

b3461:
  %r218 = phi i32 [%r207, %b3468], [%r207, %b3470]
  %r189 = phi i32 [%r205, %b3468], [%r205, %b3470]
  %r216 = inttoptr i32 %r218 to i8*
  %r217 = load i8, i8* %r216
  %r208 = zext i8 %r217 to i32
  %r215 = icmp eq i32 %r208, 0
  br i1 %r215, label %b1388, label %b3463

b3463:
  %r206 = add i32 %r218, 1
  br label %b3465
}

define internal void @func_b3727(i32 %r0, i32 %r1) {
  br label %b3727

b3727:
  %r3 = phi i32 [%r0, %0], [%r8, %b3720]
  %r7 = phi i32 [%r1, %0], [%r6, %b3720]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1212(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3830, label %b3831

b3830:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1212(i32 %r13, i32 0, i32 13)
  call void @func_b1436(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1396, label %b3720

b3831:
  call void @func_b1436(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1396, label %b3720

b1396:
  %r28 = inttoptr i32 4100 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b3212(i32 %r24, i32 %r25, i32 8, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1394, label %b3717

b3720:
  %r8 = phi i32 [%r10, %b3830], [%r16, %b3831]
  %r29 = phi i32 [%r7, %b3830], [%r7, %b3831]
  %r6 = add i32 %r29, 1
  br label %b3727

b1394:
  %r35 = inttoptr i32 4104 to i32*
  %r34 = load i32, i32* %r35
  %r32 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b3687, label %b3697

b3717:
  %r36 = add i32 ptrtoint(i8* @str14 to i32), 1
  br label %c432

b3687:
  %r39 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r40 = load i8, i8* %r39
  %r38 = zext i8 %r40 to i32
  %r37 = icmp eq i32 %r38, 0
  br i1 %r37, label %b3675, label %b3689

b3697:
  %r47 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3625(i32 %r31, i32 %r47, i32 %r34)
  %r46 = inttoptr i32 4108 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3534, label %b3694

c432:
  tail call void @func_b3709(i32 %r20, i32 %r36)
  ret void

b3675:
  %r50 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b3668, label %b3686

b3689:
  %r56 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2940(i32 %r38, i32 %r56)
  %r54 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b3668, label %b3686

b3534:
  %r68 = phi i32 [%r45, %b3697], [%r67, %b3681], [%r66, %b3683], [%r65, %b3539], [%r64, %b1986], [%r63, %b3642], [%r62, %b3657], [%r61, %b3659]
  %r59 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r60 = load i8, i8* %r59
  %r58 = zext i8 %r60 to i32
  %r57 = icmp eq i32 %r58, 0
  br i1 %r57, label %b3528, label %b3536

b3694:
  %r77 = phi i32 [%r42, %b3697], [%r76, %b3681], [%r75, %b3683], [%r74, %b1986], [%r73, %b3642], [%r72, %b3657], [%r71, %b3659]
  %r70 = phi i32 [%r45, %b3697], [%r67, %b3681], [%r66, %b3683], [%r64, %b1986], [%r63, %b3642], [%r62, %b3657], [%r61, %b3659]
  %r69 = add i32 ptrtoint(i8* @str17 to i32), 1
  br label %b3543

b3668:
  %r82 = phi i32 [%r34, %b3675], [%r34, %b3689]
  %r80 = inttoptr i32 %r82 to i8*
  %r81 = load i8, i8* %r80
  %r79 = zext i8 %r81 to i32
  %r78 = icmp eq i32 %r79, 0
  br i1 %r78, label %b3651, label %b3827

b3686:
  %r84 = phi i32 [%r49, %b3675], [%r53, %b3689]
  %r88 = phi i32 [%r34, %b3675], [%r34, %b3689]
  %r87 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r86 = call i32 @inb(i32 1021)
  %r85 = and i32 %r86, 96
  call void @func_b1212(i32 %r85, i32 0, i32 %r84)
  %r83 = icmp eq i32 %r84, 10
  br i1 %r83, label %b3681, label %b3683

b3528:
  %r91 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b3500, label %b3533

b3536:
  %r97 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2940(i32 %r58, i32 %r97)
  %r95 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r96 = load i8, i8* %r95
  %r94 = zext i8 %r96 to i32
  %r93 = icmp eq i32 %r94, 0
  br i1 %r93, label %b3500, label %b3533

b3543:
  %r99 = phi i32 [%r77, %b3694], [%r105, %b3541]
  %r104 = phi i32 [%r69, %b3694], [%r103, %b3541]
  %r102 = phi i32 [%r70, %b3694], [%r65, %b3541]
  %r101 = call i32 @inb(i32 1021)
  %r100 = and i32 %r101, 96
  call void @func_b1212(i32 %r100, i32 0, i32 %r99)
  %r98 = icmp eq i32 %r99, 10
  br i1 %r98, label %b3546, label %b3548

b3651:
  %r111 = phi i32 [%r82, %b3668], [%r110, %b3664]
  %r108 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r109 = load i8, i8* %r108
  %r107 = zext i8 %r109 to i32
  %r106 = icmp eq i32 %r107, 0
  br i1 %r106, label %b2051, label %b3653

b3827:
  %r112 = add i32 %r82, 1
  br label %b3664

b3681:
  %r118 = call i32 @inb(i32 1021)
  %r117 = and i32 %r118, 96
  call void @func_b1212(i32 %r117, i32 0, i32 13)
  call void @func_b1436(i32 %r84)
  call void @func_b3501(i32 %r87, i32 %r88)
  %r116 = inttoptr i32 4108 to i32*
  %r67 = load i32, i32* %r116
  %r114 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r115 = load i8, i8* %r114
  %r76 = zext i8 %r115 to i32
  %r113 = icmp eq i32 %r76, 0
  br i1 %r113, label %b3534, label %b3694

b3683:
  call void @func_b1436(i32 %r84)
  call void @func_b3501(i32 %r87, i32 %r88)
  %r122 = inttoptr i32 4108 to i32*
  %r66 = load i32, i32* %r122
  %r120 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r121 = load i8, i8* %r120
  %r75 = zext i8 %r121 to i32
  %r119 = icmp eq i32 %r75, 0
  br i1 %r119, label %b3534, label %b3694

b3500:
  %r127 = phi i32 [%r68, %b3528], [%r68, %b3536], [%r128, %b3501]
  %r125 = inttoptr i32 %r127 to i8*
  %r126 = load i8, i8* %r125
  %r124 = zext i8 %r126 to i32
  %r123 = icmp eq i32 %r124, 0
  br i1 %r123, label %b3489, label %b3824

b3533:
  %r131 = phi i32 [%r90, %b3528], [%r94, %b3536]
  %r130 = phi i32 [%r68, %b3528], [%r68, %b3536]
  %r129 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3505

b3546:
  %r133 = call i32 @inb(i32 1021)
  %r132 = and i32 %r133, 96
  call void @func_b1212(i32 %r132, i32 0, i32 13)
  call void @func_b1436(i32 %r99)
  br label %b3539

b3548:
  call void @func_b1436(i32 %r99)
  br label %b3539

b2051:
  %r141 = and i32 %r111, 15
  %r139 = call i32 @func_b1248(i32 %r141, i32 9)
  %r138 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r140 = trunc i32 %r139 to i8
  store i8 %r140, i8* %r138
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r111, i32 32)
  %r136 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b1986, label %b3642

b3653:
  %r145 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1212(i32 %r143, i32 0, i32 %r107)
  %r142 = icmp eq i32 %r107, 10
  br i1 %r142, label %b3657, label %b3659

b3664:
  %r151 = phi i32 [%r79, %b3827], [%r147, %b3662]
  %r150 = phi i32 [%r112, %b3827], [%r152, %b3662]
  %r110 = phi i32 [%r82, %b3827], [%r110, %b3662]
  call void @func_b1445(i32 %r151)
  %r148 = inttoptr i32 %r150 to i8*
  %r149 = load i8, i8* %r148
  %r147 = zext i8 %r149 to i32
  %r146 = icmp eq i32 %r147, 0
  br i1 %r146, label %b3651, label %b3662

b3489:
  %r158 = phi i32 [%r127, %b3500], [%r157, %b3496]
  %r155 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r156 = load i8, i8* %r155
  %r154 = zext i8 %r156 to i32
  %r153 = icmp eq i32 %r154, 0
  br i1 %r153, label %b1388, label %b3491

b3824:
  %r159 = add i32 %r127, 1
  br label %b3496

b3505:
  %r161 = phi i32 [%r131, %b3533], [%r167, %b3503]
  %r166 = phi i32 [%r129, %b3533], [%r165, %b3503]
  %r164 = phi i32 [%r130, %b3533], [%r128, %b3503]
  %r163 = call i32 @inb(i32 1021)
  %r162 = and i32 %r163, 96
  call void @func_b1212(i32 %r162, i32 0, i32 %r161)
  %r160 = icmp eq i32 %r161, 10
  br i1 %r160, label %b3508, label %b3510

b3539:
  %r171 = phi i32 [%r104, %b3546], [%r104, %b3548]
  %r65 = phi i32 [%r102, %b3546], [%r102, %b3548]
  %r169 = inttoptr i32 %r171 to i8*
  %r170 = load i8, i8* %r169
  %r105 = zext i8 %r170 to i32
  %r168 = icmp eq i32 %r105, 0
  br i1 %r168, label %b3534, label %b3541

b1986:
  %r175 = inttoptr i32 4108 to i32*
  %r64 = load i32, i32* %r175
  %r173 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r174 = load i8, i8* %r173
  %r74 = zext i8 %r174 to i32
  %r172 = icmp eq i32 %r74, 0
  br i1 %r172, label %b3534, label %b3694

b3642:
  %r180 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2940(i32 %r135, i32 %r180)
  %r179 = inttoptr i32 4108 to i32*
  %r63 = load i32, i32* %r179
  %r177 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r178 = load i8, i8* %r177
  %r73 = zext i8 %r178 to i32
  %r176 = icmp eq i32 %r73, 0
  br i1 %r176, label %b3534, label %b3694

b3657:
  %r186 = call i32 @inb(i32 1021)
  %r185 = and i32 %r186, 96
  call void @func_b1212(i32 %r185, i32 0, i32 13)
  call void @func_b1436(i32 %r107)
  call void @func_b3461(i32 %r145, i32 %r111)
  %r184 = inttoptr i32 4108 to i32*
  %r62 = load i32, i32* %r184
  %r182 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r183 = load i8, i8* %r182
  %r72 = zext i8 %r183 to i32
  %r181 = icmp eq i32 %r72, 0
  br i1 %r181, label %b3534, label %b3694

b3659:
  call void @func_b1436(i32 %r107)
  call void @func_b3461(i32 %r145, i32 %r111)
  %r190 = inttoptr i32 4108 to i32*
  %r61 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r71 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r71, 0
  br i1 %r187, label %b3534, label %b3694

b3662:
  %r152 = add i32 %r150, 1
  br label %b3664

b1388:
  %r195 = phi i32 [%r158, %b3489], [%r200, %b3461]
  %r199 = and i32 %r195, 15
  %r197 = call i32 @func_b1248(i32 %r199, i32 9)
  %r196 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r198 = trunc i32 %r197 to i8
  store i8 %r198, i8* %r196
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r195, i32 32)
  %r193 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r192 = zext i8 %r194 to i32
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b295, label %b3460

b3491:
  %r201 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3465

b3496:
  %r207 = phi i32 [%r124, %b3824], [%r203, %b3494]
  %r206 = phi i32 [%r159, %b3824], [%r208, %b3494]
  %r157 = phi i32 [%r127, %b3824], [%r157, %b3494]
  call void @func_b1445(i32 %r207)
  %r204 = inttoptr i32 %r206 to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b3489, label %b3494

b3508:
  %r210 = call i32 @inb(i32 1021)
  %r209 = and i32 %r210, 96
  call void @func_b1212(i32 %r209, i32 0, i32 13)
  call void @func_b1436(i32 %r161)
  br label %b3501

b3510:
  call void @func_b1436(i32 %r161)
  br label %b3501

b3541:
  %r103 = add i32 %r171, 1
  br label %b3543

b295:
  ret void

b3460:
  %r211 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c473

b3465:
  %r213 = phi i32 [%r154, %b3491], [%r219, %b3463]
  %r218 = phi i32 [%r201, %b3491], [%r217, %b3463]
  %r216 = phi i32 [%r158, %b3491], [%r200, %b3463]
  %r215 = call i32 @inb(i32 1021)
  %r214 = and i32 %r215, 96
  call void @func_b1212(i32 %r214, i32 0, i32 %r213)
  %r212 = icmp eq i32 %r213, 10
  br i1 %r212, label %b3468, label %b3470

b3494:
  %r208 = add i32 %r206, 1
  br label %b3496

b3501:
  %r223 = phi i32 [%r166, %b3508], [%r166, %b3510]
  %r128 = phi i32 [%r164, %b3508], [%r164, %b3510]
  %r221 = inttoptr i32 %r223 to i8*
  %r222 = load i8, i8* %r221
  %r167 = zext i8 %r222 to i32
  %r220 = icmp eq i32 %r167, 0
  br i1 %r220, label %b3500, label %b3503

c473:
  tail call void @func_b2940(i32 %r192, i32 %r211)
  ret void

b3468:
  %r225 = call i32 @inb(i32 1021)
  %r224 = and i32 %r225, 96
  call void @func_b1212(i32 %r224, i32 0, i32 13)
  call void @func_b1436(i32 %r213)
  br label %b3461

b3470:
  call void @func_b1436(i32 %r213)
  br label %b3461

b3503:
  %r165 = add i32 %r223, 1
  br label %b3505

b3461:
  %r229 = phi i32 [%r218, %b3468], [%r218, %b3470]
  %r200 = phi i32 [%r216, %b3468], [%r216, %b3470]
  %r227 = inttoptr i32 %r229 to i8*
  %r228 = load i8, i8* %r227
  %r219 = zext i8 %r228 to i32
  %r226 = icmp eq i32 %r219, 0
  br i1 %r226, label %b1388, label %b3463

b3463:
  %r217 = add i32 %r229, 1
  br label %b3465
}

define internal void @func_b3745(i32 %r0, i32 %r1) {
  br label %b3745

b3745:
  %r3 = phi i32 [%r0, %0], [%r8, %b3738]
  %r7 = phi i32 [%r1, %0], [%r6, %b3738]
  %r5 = call i32 @inb(i32 1021)
  %r4 = and i32 %r5, 96
  call void @func_b1212(i32 %r4, i32 0, i32 %r3)
  %r2 = icmp eq i32 %r3, 10
  br i1 %r2, label %b3832, label %b3833

b3832:
  %r14 = call i32 @inb(i32 1021)
  %r13 = and i32 %r14, 96
  call void @func_b1212(i32 %r13, i32 0, i32 13)
  call void @func_b1436(i32 %r3)
  %r11 = inttoptr i32 %r7 to i8*
  %r12 = load i8, i8* %r11
  %r10 = zext i8 %r12 to i32
  %r9 = icmp eq i32 %r10, 0
  br i1 %r9, label %b1398, label %b3738

b3833:
  call void @func_b1436(i32 %r3)
  %r17 = inttoptr i32 %r7 to i8*
  %r18 = load i8, i8* %r17
  %r16 = zext i8 %r18 to i32
  %r15 = icmp eq i32 %r16, 0
  br i1 %r15, label %b1398, label %b3738

b1398:
  %r28 = inttoptr i32 4096 to i32*
  %r26 = load i32, i32* %r28
  %r27 = inttoptr i32 %r26 to i32*
  %r24 = load i32, i32* %r27
  %r25 = add i32 %r26, 4
  %r23 = call i32 @func_b3074(i32 %r24, i32 %r25, i32 12, i32 0)
  %r21 = inttoptr i32 ptrtoint(i8* @str12 to i32) to i8*
  %r22 = load i8, i8* %r21
  %r20 = zext i8 %r22 to i32
  %r19 = icmp eq i32 %r20, 0
  br i1 %r19, label %b1396, label %b3735

b3738:
  %r8 = phi i32 [%r10, %b3832], [%r16, %b3833]
  %r29 = phi i32 [%r7, %b3832], [%r7, %b3833]
  %r6 = add i32 %r29, 1
  br label %b3745

b1396:
  %r39 = inttoptr i32 4100 to i32*
  %r37 = load i32, i32* %r39
  %r38 = inttoptr i32 %r37 to i32*
  %r35 = load i32, i32* %r38
  %r36 = add i32 %r37, 4
  %r34 = call i32 @func_b3212(i32 %r35, i32 %r36, i32 8, i32 0)
  %r32 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r33 = load i8, i8* %r32
  %r31 = zext i8 %r33 to i32
  %r30 = icmp eq i32 %r31, 0
  br i1 %r30, label %b1394, label %b3717

b3735:
  %r40 = add i32 ptrtoint(i8* @str12 to i32), 1
  br label %c489

b1394:
  %r46 = inttoptr i32 4104 to i32*
  %r45 = load i32, i32* %r46
  %r43 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r44 = load i8, i8* %r43
  %r42 = zext i8 %r44 to i32
  %r41 = icmp eq i32 %r42, 0
  br i1 %r41, label %b3687, label %b3697

b3717:
  %r47 = add i32 ptrtoint(i8* @str14 to i32), 1
  br label %c492

c489:
  tail call void @func_b3727(i32 %r20, i32 %r40)
  ret void

b3687:
  %r50 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r51 = load i8, i8* %r50
  %r49 = zext i8 %r51 to i32
  %r48 = icmp eq i32 %r49, 0
  br i1 %r48, label %b3675, label %b3689

b3697:
  %r58 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3625(i32 %r42, i32 %r58, i32 %r45)
  %r57 = inttoptr i32 4108 to i32*
  %r56 = load i32, i32* %r57
  %r54 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r55 = load i8, i8* %r54
  %r53 = zext i8 %r55 to i32
  %r52 = icmp eq i32 %r53, 0
  br i1 %r52, label %b3534, label %b3694

c492:
  tail call void @func_b3709(i32 %r31, i32 %r47)
  ret void

b3675:
  %r61 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r62 = load i8, i8* %r61
  %r60 = zext i8 %r62 to i32
  %r59 = icmp eq i32 %r60, 0
  br i1 %r59, label %b3668, label %b3686

b3689:
  %r67 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2940(i32 %r49, i32 %r67)
  %r65 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r66 = load i8, i8* %r65
  %r64 = zext i8 %r66 to i32
  %r63 = icmp eq i32 %r64, 0
  br i1 %r63, label %b3668, label %b3686

b3534:
  %r79 = phi i32 [%r56, %b3697], [%r78, %b3681], [%r77, %b3683], [%r76, %b3539], [%r75, %b1986], [%r74, %b3642], [%r73, %b3657], [%r72, %b3659]
  %r70 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r71 = load i8, i8* %r70
  %r69 = zext i8 %r71 to i32
  %r68 = icmp eq i32 %r69, 0
  br i1 %r68, label %b3528, label %b3536

b3694:
  %r88 = phi i32 [%r53, %b3697], [%r87, %b3681], [%r86, %b3683], [%r85, %b1986], [%r84, %b3642], [%r83, %b3657], [%r82, %b3659]
  %r81 = phi i32 [%r56, %b3697], [%r78, %b3681], [%r77, %b3683], [%r75, %b1986], [%r74, %b3642], [%r73, %b3657], [%r72, %b3659]
  %r80 = add i32 ptrtoint(i8* @str17 to i32), 1
  br label %b3543

b3668:
  %r93 = phi i32 [%r45, %b3675], [%r45, %b3689]
  %r91 = inttoptr i32 %r93 to i8*
  %r92 = load i8, i8* %r91
  %r90 = zext i8 %r92 to i32
  %r89 = icmp eq i32 %r90, 0
  br i1 %r89, label %b3651, label %b3827

b3686:
  %r95 = phi i32 [%r60, %b3675], [%r64, %b3689]
  %r99 = phi i32 [%r45, %b3675], [%r45, %b3689]
  %r98 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r97 = call i32 @inb(i32 1021)
  %r96 = and i32 %r97, 96
  call void @func_b1212(i32 %r96, i32 0, i32 %r95)
  %r94 = icmp eq i32 %r95, 10
  br i1 %r94, label %b3681, label %b3683

b3528:
  %r102 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r103 = load i8, i8* %r102
  %r101 = zext i8 %r103 to i32
  %r100 = icmp eq i32 %r101, 0
  br i1 %r100, label %b3500, label %b3533

b3536:
  %r108 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2940(i32 %r69, i32 %r108)
  %r106 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r107 = load i8, i8* %r106
  %r105 = zext i8 %r107 to i32
  %r104 = icmp eq i32 %r105, 0
  br i1 %r104, label %b3500, label %b3533

b3543:
  %r110 = phi i32 [%r88, %b3694], [%r116, %b3541]
  %r115 = phi i32 [%r80, %b3694], [%r114, %b3541]
  %r113 = phi i32 [%r81, %b3694], [%r76, %b3541]
  %r112 = call i32 @inb(i32 1021)
  %r111 = and i32 %r112, 96
  call void @func_b1212(i32 %r111, i32 0, i32 %r110)
  %r109 = icmp eq i32 %r110, 10
  br i1 %r109, label %b3546, label %b3548

b3651:
  %r122 = phi i32 [%r93, %b3668], [%r121, %b3664]
  %r119 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r120 = load i8, i8* %r119
  %r118 = zext i8 %r120 to i32
  %r117 = icmp eq i32 %r118, 0
  br i1 %r117, label %b2051, label %b3653

b3827:
  %r123 = add i32 %r93, 1
  br label %b3664

b3681:
  %r129 = call i32 @inb(i32 1021)
  %r128 = and i32 %r129, 96
  call void @func_b1212(i32 %r128, i32 0, i32 13)
  call void @func_b1436(i32 %r95)
  call void @func_b3501(i32 %r98, i32 %r99)
  %r127 = inttoptr i32 4108 to i32*
  %r78 = load i32, i32* %r127
  %r125 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r126 = load i8, i8* %r125
  %r87 = zext i8 %r126 to i32
  %r124 = icmp eq i32 %r87, 0
  br i1 %r124, label %b3534, label %b3694

b3683:
  call void @func_b1436(i32 %r95)
  call void @func_b3501(i32 %r98, i32 %r99)
  %r133 = inttoptr i32 4108 to i32*
  %r77 = load i32, i32* %r133
  %r131 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r132 = load i8, i8* %r131
  %r86 = zext i8 %r132 to i32
  %r130 = icmp eq i32 %r86, 0
  br i1 %r130, label %b3534, label %b3694

b3500:
  %r138 = phi i32 [%r79, %b3528], [%r79, %b3536], [%r139, %b3501]
  %r136 = inttoptr i32 %r138 to i8*
  %r137 = load i8, i8* %r136
  %r135 = zext i8 %r137 to i32
  %r134 = icmp eq i32 %r135, 0
  br i1 %r134, label %b3489, label %b3824

b3533:
  %r142 = phi i32 [%r101, %b3528], [%r105, %b3536]
  %r141 = phi i32 [%r79, %b3528], [%r79, %b3536]
  %r140 = add i32 ptrtoint(i8* @str18 to i32), 1
  br label %b3505

b3546:
  %r144 = call i32 @inb(i32 1021)
  %r143 = and i32 %r144, 96
  call void @func_b1212(i32 %r143, i32 0, i32 13)
  call void @func_b1436(i32 %r110)
  br label %b3539

b3548:
  call void @func_b1436(i32 %r110)
  br label %b3539

b2051:
  %r152 = and i32 %r122, 15
  %r150 = call i32 @func_b1248(i32 %r152, i32 9)
  %r149 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r151 = trunc i32 %r150 to i8
  store i8 %r151, i8* %r149
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r122, i32 32)
  %r147 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r148 = load i8, i8* %r147
  %r146 = zext i8 %r148 to i32
  %r145 = icmp eq i32 %r146, 0
  br i1 %r145, label %b1986, label %b3642

b3653:
  %r156 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r155 = call i32 @inb(i32 1021)
  %r154 = and i32 %r155, 96
  call void @func_b1212(i32 %r154, i32 0, i32 %r118)
  %r153 = icmp eq i32 %r118, 10
  br i1 %r153, label %b3657, label %b3659

b3664:
  %r162 = phi i32 [%r90, %b3827], [%r158, %b3662]
  %r161 = phi i32 [%r123, %b3827], [%r163, %b3662]
  %r121 = phi i32 [%r93, %b3827], [%r121, %b3662]
  call void @func_b1445(i32 %r162)
  %r159 = inttoptr i32 %r161 to i8*
  %r160 = load i8, i8* %r159
  %r158 = zext i8 %r160 to i32
  %r157 = icmp eq i32 %r158, 0
  br i1 %r157, label %b3651, label %b3662

b3489:
  %r169 = phi i32 [%r138, %b3500], [%r168, %b3496]
  %r166 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r167 = load i8, i8* %r166
  %r165 = zext i8 %r167 to i32
  %r164 = icmp eq i32 %r165, 0
  br i1 %r164, label %b1388, label %b3491

b3824:
  %r170 = add i32 %r138, 1
  br label %b3496

b3505:
  %r172 = phi i32 [%r142, %b3533], [%r178, %b3503]
  %r177 = phi i32 [%r140, %b3533], [%r176, %b3503]
  %r175 = phi i32 [%r141, %b3533], [%r139, %b3503]
  %r174 = call i32 @inb(i32 1021)
  %r173 = and i32 %r174, 96
  call void @func_b1212(i32 %r173, i32 0, i32 %r172)
  %r171 = icmp eq i32 %r172, 10
  br i1 %r171, label %b3508, label %b3510

b3539:
  %r182 = phi i32 [%r115, %b3546], [%r115, %b3548]
  %r76 = phi i32 [%r113, %b3546], [%r113, %b3548]
  %r180 = inttoptr i32 %r182 to i8*
  %r181 = load i8, i8* %r180
  %r116 = zext i8 %r181 to i32
  %r179 = icmp eq i32 %r116, 0
  br i1 %r179, label %b3534, label %b3541

b1986:
  %r186 = inttoptr i32 4108 to i32*
  %r75 = load i32, i32* %r186
  %r184 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r185 = load i8, i8* %r184
  %r85 = zext i8 %r185 to i32
  %r183 = icmp eq i32 %r85, 0
  br i1 %r183, label %b3534, label %b3694

b3642:
  %r191 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2940(i32 %r146, i32 %r191)
  %r190 = inttoptr i32 4108 to i32*
  %r74 = load i32, i32* %r190
  %r188 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r189 = load i8, i8* %r188
  %r84 = zext i8 %r189 to i32
  %r187 = icmp eq i32 %r84, 0
  br i1 %r187, label %b3534, label %b3694

b3657:
  %r197 = call i32 @inb(i32 1021)
  %r196 = and i32 %r197, 96
  call void @func_b1212(i32 %r196, i32 0, i32 13)
  call void @func_b1436(i32 %r118)
  call void @func_b3461(i32 %r156, i32 %r122)
  %r195 = inttoptr i32 4108 to i32*
  %r73 = load i32, i32* %r195
  %r193 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r194 = load i8, i8* %r193
  %r83 = zext i8 %r194 to i32
  %r192 = icmp eq i32 %r83, 0
  br i1 %r192, label %b3534, label %b3694

b3659:
  call void @func_b1436(i32 %r118)
  call void @func_b3461(i32 %r156, i32 %r122)
  %r201 = inttoptr i32 4108 to i32*
  %r72 = load i32, i32* %r201
  %r199 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r200 = load i8, i8* %r199
  %r82 = zext i8 %r200 to i32
  %r198 = icmp eq i32 %r82, 0
  br i1 %r198, label %b3534, label %b3694

b3662:
  %r163 = add i32 %r161, 1
  br label %b3664

b1388:
  %r206 = phi i32 [%r169, %b3489], [%r211, %b3461]
  %r210 = and i32 %r206, 15
  %r208 = call i32 @func_b1248(i32 %r210, i32 9)
  %r207 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r209 = trunc i32 %r208 to i8
  store i8 %r209, i8* %r207
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r206, i32 32)
  %r204 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r205 = load i8, i8* %r204
  %r203 = zext i8 %r205 to i32
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b295, label %b3460

b3491:
  %r212 = add i32 ptrtoint(i8* @str19 to i32), 1
  br label %b3465

b3496:
  %r218 = phi i32 [%r135, %b3824], [%r214, %b3494]
  %r217 = phi i32 [%r170, %b3824], [%r219, %b3494]
  %r168 = phi i32 [%r138, %b3824], [%r168, %b3494]
  call void @func_b1445(i32 %r218)
  %r215 = inttoptr i32 %r217 to i8*
  %r216 = load i8, i8* %r215
  %r214 = zext i8 %r216 to i32
  %r213 = icmp eq i32 %r214, 0
  br i1 %r213, label %b3489, label %b3494

b3508:
  %r221 = call i32 @inb(i32 1021)
  %r220 = and i32 %r221, 96
  call void @func_b1212(i32 %r220, i32 0, i32 13)
  call void @func_b1436(i32 %r172)
  br label %b3501

b3510:
  call void @func_b1436(i32 %r172)
  br label %b3501

b3541:
  %r114 = add i32 %r182, 1
  br label %b3543

b295:
  ret void

b3460:
  %r222 = add i32 ptrtoint(i8* @str20 to i32), 1
  br label %c533

b3465:
  %r224 = phi i32 [%r165, %b3491], [%r230, %b3463]
  %r229 = phi i32 [%r212, %b3491], [%r228, %b3463]
  %r227 = phi i32 [%r169, %b3491], [%r211, %b3463]
  %r226 = call i32 @inb(i32 1021)
  %r225 = and i32 %r226, 96
  call void @func_b1212(i32 %r225, i32 0, i32 %r224)
  %r223 = icmp eq i32 %r224, 10
  br i1 %r223, label %b3468, label %b3470

b3494:
  %r219 = add i32 %r217, 1
  br label %b3496

b3501:
  %r234 = phi i32 [%r177, %b3508], [%r177, %b3510]
  %r139 = phi i32 [%r175, %b3508], [%r175, %b3510]
  %r232 = inttoptr i32 %r234 to i8*
  %r233 = load i8, i8* %r232
  %r178 = zext i8 %r233 to i32
  %r231 = icmp eq i32 %r178, 0
  br i1 %r231, label %b3500, label %b3503

c533:
  tail call void @func_b2940(i32 %r203, i32 %r222)
  ret void

b3468:
  %r236 = call i32 @inb(i32 1021)
  %r235 = and i32 %r236, 96
  call void @func_b1212(i32 %r235, i32 0, i32 13)
  call void @func_b1436(i32 %r224)
  br label %b3461

b3470:
  call void @func_b1436(i32 %r224)
  br label %b3461

b3503:
  %r176 = add i32 %r234, 1
  br label %b3505

b3461:
  %r240 = phi i32 [%r229, %b3468], [%r229, %b3470]
  %r211 = phi i32 [%r227, %b3468], [%r227, %b3470]
  %r238 = inttoptr i32 %r240 to i8*
  %r239 = load i8, i8* %r238
  %r230 = zext i8 %r239 to i32
  %r237 = icmp eq i32 %r230, 0
  br i1 %r237, label %b1388, label %b3463

b3463:
  %r228 = add i32 %r240, 1
  br label %b3465
}

define internal void @func_b3257(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3257

b3257:
  %r4 = phi i32 [%r0, %0], [%r11, %b3255]
  %r10 = phi i32 [%r1, %0], [%r9, %b3255]
  %r8 = phi i32 [%r2, %0], [%r7, %b3255]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1212(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3260, label %b3262

b3260:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1212(i32 %r12, i32 0, i32 13)
  call void @func_b1436(i32 %r4)
  br label %b3253

b3262:
  call void @func_b1436(i32 %r4)
  br label %b3253

b3253:
  %r17 = phi i32 [%r10, %b3260], [%r10, %b3262]
  %r7 = phi i32 [%r8, %b3260], [%r8, %b3262]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1574, label %b3255

b1574:
  %r19 = add i32 ptrtoint(i8* @users to i32), 52
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b3255:
  %r9 = add i32 %r17, 1
  br label %b3257
}

define internal void @func_b3306(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3306

b3306:
  %r4 = phi i32 [%r0, %0], [%r11, %b3299]
  %r10 = phi i32 [%r1, %0], [%r9, %b3299]
  %r8 = phi i32 [%r2, %0], [%r7, %b3299]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1212(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3834, label %b3835

b3834:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1212(i32 %r12, i32 0, i32 13)
  call void @func_b1436(i32 %r4)
  br label %b3297

b3835:
  call void @func_b1436(i32 %r4)
  br label %b3297

b3297:
  %r17 = phi i32 [%r10, %b3834], [%r10, %b3835]
  %r7 = phi i32 [%r8, %b3834], [%r8, %b3835]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1570, label %b3299

b1570:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1248(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1574, label %b3291

b3299:
  %r9 = add i32 %r17, 1
  br label %b3306

b1574:
  %r27 = add i32 ptrtoint(i8* @users to i32), 52
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b3291:
  %r28 = add i32 ptrtoint(i8* @str53 to i32), 1
  br label %c555

c555:
  tail call void @func_b3257(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define internal void @func_b3267(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3267

b3267:
  %r4 = phi i32 [%r0, %0], [%r11, %b3265]
  %r10 = phi i32 [%r1, %0], [%r9, %b3265]
  %r8 = phi i32 [%r2, %0], [%r7, %b3265]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1212(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3270, label %b3272

b3270:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1212(i32 %r12, i32 0, i32 13)
  call void @func_b1436(i32 %r4)
  br label %b3263

b3272:
  call void @func_b1436(i32 %r4)
  br label %b3263

b3263:
  %r17 = phi i32 [%r10, %b3270], [%r10, %b3272]
  %r7 = phi i32 [%r8, %b3270], [%r8, %b3272]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1585, label %b3265

b1585:
  %r19 = add i32 ptrtoint(i8* @users to i32), 124
  %r18 = inttoptr i32 %r19 to i32*
  store i32 %r7, i32* %r18
  ret void

b3265:
  %r9 = add i32 %r17, 1
  br label %b3267
}

define internal void @func_b3288(i32 %r0, i32 %r1, i32 %r2) {
  br label %b3288

b3288:
  %r4 = phi i32 [%r0, %0], [%r11, %b3281]
  %r10 = phi i32 [%r1, %0], [%r9, %b3281]
  %r8 = phi i32 [%r2, %0], [%r7, %b3281]
  %r6 = call i32 @inb(i32 1021)
  %r5 = and i32 %r6, 96
  call void @func_b1212(i32 %r5, i32 0, i32 %r4)
  %r3 = icmp eq i32 %r4, 10
  br i1 %r3, label %b3836, label %b3837

b3836:
  %r13 = call i32 @inb(i32 1021)
  %r12 = and i32 %r13, 96
  call void @func_b1212(i32 %r12, i32 0, i32 13)
  call void @func_b1436(i32 %r4)
  br label %b3279

b3837:
  call void @func_b1436(i32 %r4)
  br label %b3279

b3279:
  %r17 = phi i32 [%r10, %b3836], [%r10, %b3837]
  %r7 = phi i32 [%r8, %b3836], [%r8, %b3837]
  %r15 = inttoptr i32 %r17 to i8*
  %r16 = load i8, i8* %r15
  %r11 = zext i8 %r16 to i32
  %r14 = icmp eq i32 %r11, 0
  br i1 %r14, label %b1581, label %b3281

b1581:
  %r25 = and i32 %r7, 15
  %r23 = call i32 @func_b1248(i32 %r25, i32 9)
  %r22 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r24 = trunc i32 %r23 to i8
  store i8 %r24, i8* %r22
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r7, i32 32)
  %r20 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r21 = load i8, i8* %r20
  %r19 = zext i8 %r21 to i32
  %r18 = icmp eq i32 %r19, 0
  br i1 %r18, label %b1585, label %b3278

b3281:
  %r9 = add i32 %r17, 1
  br label %b3288

b1585:
  %r27 = add i32 ptrtoint(i8* @users to i32), 124
  %r26 = inttoptr i32 %r27 to i32*
  store i32 %r7, i32* %r26
  ret void

b3278:
  %r28 = add i32 ptrtoint(i8* @str53 to i32), 1
  br label %c572

c572:
  tail call void @func_b3267(i32 %r19, i32 %r28, i32 %r7)
  ret void
}

define void @kernel() {
  %r0 = load i32, i32* @keyb_layout
  br label %initialize

initialize:
  %r131 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r131
  %r130 = inttoptr i32 ptrtoint(i8* @users to i32) to i32*
  store i32 0, i32* %r130
  %r129 = add i32 ptrtoint(i8* @users to i32), 4
  %r128 = inttoptr i32 %r129 to i32*
  store i32 0, i32* %r128
  %r127 = add i32 ptrtoint(i8* @users to i32), 8
  %r126 = inttoptr i32 %r127 to i32*
  store i32 0, i32* %r126
  %r125 = add i32 ptrtoint(i8* @users to i32), 12
  %r124 = inttoptr i32 %r125 to i32*
  store i32 0, i32* %r124
  %r123 = add i32 ptrtoint(i8* @users to i32), 16
  %r122 = inttoptr i32 %r123 to i32*
  store i32 0, i32* %r122
  %r121 = add i32 ptrtoint(i8* @users to i32), 20
  %r120 = inttoptr i32 %r121 to i32*
  store i32 0, i32* %r120
  %r119 = add i32 ptrtoint(i8* @users to i32), 24
  %r118 = inttoptr i32 %r119 to i32*
  store i32 0, i32* %r118
  %r117 = add i32 ptrtoint(i8* @users to i32), 28
  %r116 = inttoptr i32 %r117 to i32*
  store i32 0, i32* %r116
  %r115 = add i32 ptrtoint(i8* @users to i32), 32
  %r114 = inttoptr i32 %r115 to i32*
  store i32 59, i32* %r114
  %r113 = add i32 ptrtoint(i8* @users to i32), 36
  %r112 = inttoptr i32 %r113 to i32*
  store i32 59, i32* %r112
  %r111 = add i32 ptrtoint(i8* @users to i32), 40
  %r110 = inttoptr i32 %r111 to i32*
  store i32 59, i32* %r110
  %r109 = add i32 ptrtoint(i8* @users to i32), 44
  %r108 = inttoptr i32 %r109 to i32*
  store i32 59, i32* %r108
  %r107 = add i32 ptrtoint(i8* @users to i32), 48
  %r106 = inttoptr i32 %r107 to i32*
  store i32 0, i32* %r106
  %r105 = add i32 ptrtoint(i8* @users to i32), 52
  %r104 = inttoptr i32 %r105 to i32*
  store i32 0, i32* %r104
  %r103 = add i32 ptrtoint(i8* @users to i32), 56
  %r102 = inttoptr i32 %r103 to i32*
  store i32 51, i32* %r102
  %r101 = add i32 ptrtoint(i8* @users to i32), 60
  %r100 = inttoptr i32 %r101 to i32*
  store i32 12802, i32* %r100
  %r99 = add i32 ptrtoint(i8* @users to i32), 64
  %r98 = inttoptr i32 %r99 to i32*
  store i32 0, i32* %r98
  %r97 = add i32 ptrtoint(i8* @users to i32), 68
  %r96 = inttoptr i32 %r97 to i32*
  store i32 59, i32* %r96
  %r95 = add i32 ptrtoint(i8* @users to i32), 72
  %r94 = inttoptr i32 %r95 to i32*
  store i32 0, i32* %r94
  %r93 = add i32 ptrtoint(i8* @users to i32), 76
  %r92 = inttoptr i32 %r93 to i32*
  store i32 0, i32* %r92
  %r91 = add i32 ptrtoint(i8* @users to i32), 80
  %r90 = inttoptr i32 %r91 to i32*
  store i32 0, i32* %r90
  %r89 = add i32 ptrtoint(i8* @users to i32), 84
  %r88 = inttoptr i32 %r89 to i32*
  store i32 0, i32* %r88
  %r87 = add i32 ptrtoint(i8* @users to i32), 88
  %r86 = inttoptr i32 %r87 to i32*
  store i32 0, i32* %r86
  %r85 = add i32 ptrtoint(i8* @users to i32), 92
  %r84 = inttoptr i32 %r85 to i32*
  store i32 0, i32* %r84
  %r83 = add i32 ptrtoint(i8* @users to i32), 96
  %r82 = inttoptr i32 %r83 to i32*
  store i32 0, i32* %r82
  %r81 = add i32 ptrtoint(i8* @users to i32), 100
  %r80 = inttoptr i32 %r81 to i32*
  store i32 0, i32* %r80
  %r79 = add i32 ptrtoint(i8* @users to i32), 104
  %r78 = inttoptr i32 %r79 to i32*
  store i32 59, i32* %r78
  %r77 = add i32 ptrtoint(i8* @users to i32), 108
  %r76 = inttoptr i32 %r77 to i32*
  store i32 59, i32* %r76
  %r75 = add i32 ptrtoint(i8* @users to i32), 112
  %r74 = inttoptr i32 %r75 to i32*
  store i32 59, i32* %r74
  %r73 = add i32 ptrtoint(i8* @users to i32), 116
  %r72 = inttoptr i32 %r73 to i32*
  store i32 59, i32* %r72
  %r71 = add i32 ptrtoint(i8* @users to i32), 120
  %r70 = inttoptr i32 %r71 to i32*
  store i32 0, i32* %r70
  %r69 = add i32 ptrtoint(i8* @users to i32), 124
  %r68 = inttoptr i32 %r69 to i32*
  store i32 0, i32* %r68
  %r67 = add i32 ptrtoint(i8* @users to i32), 128
  %r66 = inttoptr i32 %r67 to i32*
  store i32 51, i32* %r66
  %r65 = add i32 ptrtoint(i8* @users to i32), 132
  %r64 = inttoptr i32 %r65 to i32*
  store i32 12802, i32* %r64
  %r63 = add i32 ptrtoint(i8* @users to i32), 136
  %r62 = inttoptr i32 %r63 to i32*
  store i32 0, i32* %r62
  %r61 = add i32 ptrtoint(i8* @users to i32), 140
  %r60 = inttoptr i32 %r61 to i32*
  store i32 59, i32* %r60
  %r58 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r59 = trunc i32 0 to i8
  store i8 %r59, i8* %r58
  %r57 = add i32 ptrtoint(i8* @console to i32), 1
  %r55 = inttoptr i32 %r57 to i8*
  %r56 = trunc i32 0 to i8
  store i8 %r56, i8* %r55
  %r54 = add i32 ptrtoint(i8* @console to i32), 2
  %r52 = inttoptr i32 %r54 to i8*
  %r53 = trunc i32 24 to i8
  store i8 %r53, i8* %r52
  %r51 = add i32 ptrtoint(i8* @console to i32), 3
  %r49 = inttoptr i32 %r51 to i8*
  %r50 = trunc i32 79 to i8
  store i8 %r50, i8* %r49
  %r48 = add i32 ptrtoint(i8* @console to i32), 4
  %r46 = inttoptr i32 %r48 to i8*
  %r47 = trunc i32 0 to i8
  store i8 %r47, i8* %r46
  %r45 = add i32 ptrtoint(i8* @console to i32), 5
  %r43 = inttoptr i32 %r45 to i8*
  %r44 = trunc i32 0 to i8
  store i8 %r44, i8* %r43
  %r7 = add i32 ptrtoint(i8* @console to i32), 6
  %r41 = inttoptr i32 %r7 to i8*
  %r42 = trunc i32 10 to i8
  store i8 %r42, i8* %r41
  %r39 = inttoptr i32 ptrtoint(i8* @keyUp to i32) to i8*
  %r40 = trunc i32 0 to i8
  store i8 %r40, i8* %r39
  %r37 = inttoptr i32 ptrtoint(i8* @keyDown to i32) to i8*
  %r38 = trunc i32 0 to i8
  store i8 %r38, i8* %r37
  %r36 = inttoptr i32 ptrtoint(i8* @ticks to i32) to i32*
  store i32 1, i32* %r36
  %r35 = inttoptr i32 ptrtoint(i8* @ball to i32) to i32*
  store i32 1, i32* %r35
  %r34 = add i32 ptrtoint(i8* @ball to i32), 4
  %r33 = inttoptr i32 %r34 to i32*
  store i32 1, i32* %r33
  %r32 = add i32 ptrtoint(i8* @ball to i32), 8
  %r30 = inttoptr i32 %r32 to i8*
  %r31 = trunc i32 10 to i8
  store i8 %r31, i8* %r30
  %r29 = add i32 ptrtoint(i8* @ball to i32), 9
  %r27 = inttoptr i32 %r29 to i8*
  %r28 = trunc i32 10 to i8
  store i8 %r28, i8* %r27
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
  call void @func_b2577(i32 %r8, i32 1)
  %r5 = inttoptr i32 %r7 to i8*
  %r6 = trunc i32 32 to i8
  store i8 %r6, i8* %r5
  call void @func_b1007()
  %r3 = inttoptr i32 ptrtoint(i8* @str44 to i32) to i8*
  %r4 = load i8, i8* %r3
  %r2 = zext i8 %r4 to i32
  %r1 = icmp eq i32 %r2, 0
  br i1 %r1, label %b1416, label %b3763

b1416:
  %r154 = inttoptr i32 ptrtoint(i8* @console to i32) to i8*
  %r155 = trunc i32 1 to i8
  store i8 %r155, i8* %r154
  %r153 = add i32 ptrtoint(i8* @console to i32), 1
  %r151 = inttoptr i32 %r153 to i8*
  %r152 = trunc i32 1 to i8
  store i8 %r152, i8* %r151
  %r150 = add i32 ptrtoint(i8* @console to i32), 2
  %r148 = inttoptr i32 %r150 to i8*
  %r149 = trunc i32 23 to i8
  store i8 %r149, i8* %r148
  %r147 = add i32 ptrtoint(i8* @console to i32), 3
  %r145 = inttoptr i32 %r147 to i8*
  %r146 = trunc i32 45 to i8
  store i8 %r146, i8* %r145
  %r144 = add i32 ptrtoint(i8* @console to i32), 4
  %r142 = inttoptr i32 %r144 to i8*
  %r143 = trunc i32 1 to i8
  store i8 %r143, i8* %r142
  %r141 = add i32 ptrtoint(i8* @console to i32), 5
  %r139 = inttoptr i32 %r141 to i8*
  %r140 = trunc i32 1 to i8
  store i8 %r140, i8* %r139
  %r138 = add i32 ptrtoint(i8* @console to i32), 6
  %r136 = inttoptr i32 %r138 to i8*
  %r137 = trunc i32 15 to i8
  store i8 %r137, i8* %r136
  call void @func_b1007()
  %r134 = inttoptr i32 ptrtoint(i8* @str10 to i32) to i8*
  %r135 = load i8, i8* %r134
  %r133 = zext i8 %r135 to i32
  %r132 = icmp eq i32 %r133, 0
  br i1 %r132, label %b1976, label %b3748

b3763:
  %r156 = add i32 ptrtoint(i8* @str44 to i32), 1
  br label %b3755

b1976:
  %r166 = inttoptr i32 4096 to i32*
  %r164 = load i32, i32* %r166
  %r165 = inttoptr i32 %r164 to i32*
  %r162 = load i32, i32* %r165
  %r163 = add i32 %r164, 4
  %r161 = call i32 @func_b3074(i32 %r162, i32 %r163, i32 12, i32 0)
  %r159 = inttoptr i32 ptrtoint(i8* @str12 to i32) to i8*
  %r160 = load i8, i8* %r159
  %r158 = zext i8 %r160 to i32
  %r157 = icmp eq i32 %r158, 0
  br i1 %r157, label %b1977, label %b3730

b3748:
  %r173 = add i32 ptrtoint(i8* @str10 to i32), 1
  call void @func_b3745(i32 %r133, i32 %r173)
  %r172 = inttoptr i32 4096 to i32*
  %r170 = load i32, i32* %r172
  %r171 = inttoptr i32 %r170 to i32*
  %r168 = load i32, i32* %r171
  %r169 = add i32 %r170, 4
  %r167 = icmp eq i32 %r168, 0
  br i1 %r167, label %b3237, label %b3450

b3755:
  %r175 = phi i32 [%r2, %b3763], [%r180, %b3753]
  %r179 = phi i32 [%r156, %b3763], [%r178, %b3753]
  %r177 = call i32 @inb(i32 1021)
  %r176 = and i32 %r177, 96
  call void @func_b1212(i32 %r176, i32 0, i32 %r175)
  %r174 = icmp eq i32 %r175, 10
  br i1 %r174, label %b3758, label %b3760

b1977:
  %r190 = inttoptr i32 4100 to i32*
  %r188 = load i32, i32* %r190
  %r189 = inttoptr i32 %r188 to i32*
  %r186 = load i32, i32* %r189
  %r187 = add i32 %r188, 4
  %r185 = call i32 @func_b3212(i32 %r186, i32 %r187, i32 8, i32 0)
  %r183 = inttoptr i32 ptrtoint(i8* @str14 to i32) to i8*
  %r184 = load i8, i8* %r183
  %r182 = zext i8 %r184 to i32
  %r181 = icmp eq i32 %r182, 0
  br i1 %r181, label %b1978, label %b3712

b3730:
  %r197 = add i32 ptrtoint(i8* @str12 to i32), 1
  call void @func_b3727(i32 %r158, i32 %r197)
  %r196 = inttoptr i32 4096 to i32*
  %r194 = load i32, i32* %r196
  %r195 = inttoptr i32 %r194 to i32*
  %r192 = load i32, i32* %r195
  %r193 = add i32 %r194, 4
  %r191 = icmp eq i32 %r192, 0
  br i1 %r191, label %b3237, label %b3450

b3237:
  %r200 = inttoptr i32 ptrtoint(i8* @str51 to i32) to i8*
  %r201 = load i8, i8* %r200
  %r199 = zext i8 %r201 to i32
  %r198 = icmp eq i32 %r199, 0
  br i1 %r198, label %b3224, label %b3239

b3450:
  %r206 = phi i32 [%r168, %b3748], [%r192, %b3730], [%r227, %b3712], [%r205, %b3448], [%r226, %b3555], [%r225, %b3557], [%r224, %b3517], [%r223, %b3519], [%r222, %b2084], [%r221, %b3455], [%r220, %b3477], [%r219, %b3479]
  %r208 = phi i32 [%r169, %b3748], [%r193, %b3730], [%r218, %b3712], [%r207, %b3448], [%r217, %b3555], [%r216, %b3557], [%r215, %b3517], [%r214, %b3519], [%r213, %b2084], [%r212, %b3455], [%r211, %b3477], [%r210, %b3479]
  %r209 = phi i32 [12, %b3748], [12, %b3730], [12, %b3712], [12, %b3448], [12, %b3555], [12, %b3557], [12, %b3517], [12, %b3519], [12, %b2084], [12, %b3455], [12, %b3477], [12, %b3479]
  %r204 = phi i32 [2, %b3748], [2, %b3730], [2, %b3712], [%r203, %b3448], [2, %b3555], [2, %b3557], [2, %b3517], [2, %b3519], [2, %b2084], [2, %b3455], [2, %b3477], [2, %b3479]
  %r207 = add i32 %r208, %r209
  %r205 = add i32 %r206, -1
  %r203 = add i32 %r204, -1
  %r202 = icmp eq i32 %r203, 0
  br i1 %r202, label %b3385, label %b3448

b3758:
  %r233 = call i32 @inb(i32 1021)
  %r232 = and i32 %r233, 96
  call void @func_b1212(i32 %r232, i32 0, i32 13)
  call void @func_b1436(i32 %r175)
  %r230 = inttoptr i32 %r179 to i8*
  %r231 = load i8, i8* %r230
  %r229 = zext i8 %r231 to i32
  %r228 = icmp eq i32 %r229, 0
  br i1 %r228, label %b1416, label %b3753

b3760:
  call void @func_b1436(i32 %r175)
  %r236 = inttoptr i32 %r179 to i8*
  %r237 = load i8, i8* %r236
  %r235 = zext i8 %r237 to i32
  %r234 = icmp eq i32 %r235, 0
  br i1 %r234, label %b1416, label %b3753

b1978:
  %r243 = inttoptr i32 4104 to i32*
  %r242 = load i32, i32* %r243
  %r240 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r241 = load i8, i8* %r240
  %r239 = zext i8 %r241 to i32
  %r238 = icmp eq i32 %r239, 0
  br i1 %r238, label %b3608, label %b3631

b3712:
  %r248 = add i32 ptrtoint(i8* @str14 to i32), 1
  call void @func_b3709(i32 %r182, i32 %r248)
  %r247 = inttoptr i32 4096 to i32*
  %r245 = load i32, i32* %r247
  %r246 = inttoptr i32 %r245 to i32*
  %r227 = load i32, i32* %r246
  %r218 = add i32 %r245, 4
  %r244 = icmp eq i32 %r227, 0
  br i1 %r244, label %b3237, label %b3450

b3224:
  %r251 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r252 = load i8, i8* %r251
  %r250 = zext i8 %r252 to i32
  %r249 = icmp eq i32 %r250, 0
  br i1 %r249, label %b295, label %b3226

b3239:
  %r253 = add i32 ptrtoint(i8* @str51 to i32), 1
  br label %b3231

b3385:
  %r254 = icmp eq i32 %r205, 0
  br i1 %r254, label %b3237, label %b3387

b3448:
  %r255 = icmp eq i32 %r205, 0
  br i1 %r255, label %b3237, label %b3450

b3753:
  %r180 = phi i32 [%r229, %b3758], [%r235, %b3760]
  %r256 = phi i32 [%r179, %b3758], [%r179, %b3760]
  %r178 = add i32 %r256, 1
  br label %b3755

b3608:
  %r259 = inttoptr i32 ptrtoint(i8* @str15 to i32) to i8*
  %r260 = load i8, i8* %r259
  %r258 = zext i8 %r260 to i32
  %r257 = icmp eq i32 %r258, 0
  br i1 %r257, label %b3596, label %b3610

b3631:
  %r267 = add i32 ptrtoint(i8* @str17 to i32), 1
  call void @func_b3625(i32 %r239, i32 %r267, i32 %r242)
  %r266 = inttoptr i32 4108 to i32*
  %r265 = load i32, i32* %r266
  %r263 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r264 = load i8, i8* %r263
  %r262 = zext i8 %r264 to i32
  %r261 = icmp eq i32 %r262, 0
  br i1 %r261, label %b3523, label %b3628

b295:
  ret void

b3226:
  %r270 = phi i32 [%r250, %b3224], [%r269, %b1672]
  %r268 = add i32 ptrtoint(i8* @str45 to i32), 1
  br label %c603

b3231:
  %r272 = phi i32 [%r199, %b3239], [%r277, %b3229]
  %r276 = phi i32 [%r253, %b3239], [%r275, %b3229]
  %r274 = call i32 @inb(i32 1021)
  %r273 = and i32 %r274, 96
  call void @func_b1212(i32 %r273, i32 0, i32 %r272)
  %r271 = icmp eq i32 %r272, 10
  br i1 %r271, label %b3234, label %b3236

b3387:
  %r283 = add i32 %r207, 12
  %r282 = add i32 %r205, -1
  %r280 = inttoptr i32 ptrtoint(i8* @str46 to i32) to i8*
  %r281 = load i8, i8* %r280
  %r279 = zext i8 %r281 to i32
  %r278 = icmp eq i32 %r279, 0
  br i1 %r278, label %b3393, label %b3439

b3596:
  %r286 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r287 = load i8, i8* %r286
  %r285 = zext i8 %r287 to i32
  %r284 = icmp eq i32 %r285, 0
  br i1 %r284, label %b3589, label %b3607

b3610:
  %r292 = add i32 ptrtoint(i8* @str15 to i32), 1
  call void @func_b2940(i32 %r258, i32 %r292)
  %r290 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r291 = load i8, i8* %r290
  %r289 = zext i8 %r291 to i32
  %r288 = icmp eq i32 %r289, 0
  br i1 %r288, label %b3589, label %b3607

b3523:
  %r303 = phi i32 [%r265, %b3631], [%r302, %b3602], [%r301, %b3604], [%r300, %b2147], [%r299, %b3563], [%r298, %b3578], [%r297, %b3580]
  %r295 = inttoptr i32 ptrtoint(i8* @str16 to i32) to i8*
  %r296 = load i8, i8* %r295
  %r294 = zext i8 %r296 to i32
  %r293 = icmp eq i32 %r294, 0
  br i1 %r293, label %b3511, label %b3525

b3628:
  %r305 = phi i32 [%r262, %b3631], [%r315, %b3602], [%r314, %b3604], [%r313, %b2147], [%r312, %b3563], [%r311, %b3578], [%r310, %b3580]
  %r309 = phi i32 [%r265, %b3631], [%r302, %b3602], [%r301, %b3604], [%r300, %b2147], [%r299, %b3563], [%r298, %b3578], [%r297, %b3580]
  %r308 = add i32 ptrtoint(i8* @str17 to i32), 1
  %r307 = call i32 @inb(i32 1021)
  %r306 = and i32 %r307, 96
  call void @func_b1212(i32 %r306, i32 0, i32 %r305)
  %r304 = icmp eq i32 %r305, 10
  br i1 %r304, label %b3555, label %b3557

c603:
  tail call void @func_b2940(i32 %r270, i32 %r268)
  ret void

b3234:
  %r321 = call i32 @inb(i32 1021)
  %r320 = and i32 %r321, 96
  call void @func_b1212(i32 %r320, i32 0, i32 13)
  call void @func_b1436(i32 %r272)
  %r318 = inttoptr i32 %r276 to i8*
  %r319 = load i8, i8* %r318
  %r317 = zext i8 %r319 to i32
  %r316 = icmp eq i32 %r317, 0
  br i1 %r316, label %b3224, label %b3229

b3236:
  call void @func_b1436(i32 %r272)
  %r324 = inttoptr i32 %r276 to i8*
  %r325 = load i8, i8* %r324
  %r323 = zext i8 %r325 to i32
  %r322 = icmp eq i32 %r323, 0
  br i1 %r322, label %b3224, label %b3229

b3393:
  %r330 = phi i32 [%r207, %b3387], [%r335, %b3441], [%r335, %b3447]
  %r334 = phi i32 [%r282, %b3387], [%r333, %b3441], [%r333, %b3447]
  %r332 = phi i32 [%r283, %b3387], [%r331, %b3441], [%r331, %b3447]
  call void @func_b3019(i32 %r330)
  %r328 = inttoptr i32 ptrtoint(i8* @str47 to i32) to i8*
  %r329 = load i8, i8* %r328
  %r327 = zext i8 %r329 to i32
  %r326 = icmp eq i32 %r327, 0
  br i1 %r326, label %b3429, label %b3430

b3439:
  %r336 = add i32 ptrtoint(i8* @str46 to i32), 1
  br label %b3440

b3589:
  %r341 = phi i32 [%r242, %b3596], [%r242, %b3610]
  %r339 = inttoptr i32 %r341 to i8*
  %r340 = load i8, i8* %r339
  %r338 = zext i8 %r340 to i32
  %r337 = icmp eq i32 %r338, 0
  br i1 %r337, label %b3572, label %b3848

b3607:
  %r343 = phi i32 [%r285, %b3596], [%r289, %b3610]
  %r347 = phi i32 [%r242, %b3596], [%r242, %b3610]
  %r346 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r345 = call i32 @inb(i32 1021)
  %r344 = and i32 %r345, 96
  call void @func_b1212(i32 %r344, i32 0, i32 %r343)
  %r342 = icmp eq i32 %r343, 10
  br i1 %r342, label %b3602, label %b3604

b3511:
  %r350 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r351 = load i8, i8* %r350
  %r349 = zext i8 %r351 to i32
  %r348 = icmp eq i32 %r349, 0
  br i1 %r348, label %b3488, label %b3522

b3525:
  %r356 = add i32 ptrtoint(i8* @str16 to i32), 1
  call void @func_b2940(i32 %r294, i32 %r356)
  %r354 = inttoptr i32 ptrtoint(i8* @str18 to i32) to i8*
  %r355 = load i8, i8* %r354
  %r353 = zext i8 %r355 to i32
  %r352 = icmp eq i32 %r353, 0
  br i1 %r352, label %b3488, label %b3522

b3555:
  %r362 = call i32 @inb(i32 1021)
  %r361 = and i32 %r362, 96
  call void @func_b1212(i32 %r361, i32 0, i32 13)
  call void @func_b1436(i32 %r305)
  call void @func_b3539(i32 %r308, i32 %r309)
  %r360 = inttoptr i32 4096 to i32*
  %r358 = load i32, i32* %r360
  %r359 = inttoptr i32 %r358 to i32*
  %r226 = load i32, i32* %r359
  %r217 = add i32 %r358, 4
  %r357 = icmp eq i32 %r226, 0
  br i1 %r357, label %b3237, label %b3450

b3557:
  call void @func_b1436(i32 %r305)
  call void @func_b3539(i32 %r308, i32 %r309)
  %r366 = inttoptr i32 4096 to i32*
  %r364 = load i32, i32* %r366
  %r365 = inttoptr i32 %r364 to i32*
  %r225 = load i32, i32* %r365
  %r216 = add i32 %r364, 4
  %r363 = icmp eq i32 %r225, 0
  br i1 %r363, label %b3237, label %b3450

b3229:
  %r277 = phi i32 [%r317, %b3234], [%r323, %b3236]
  %r367 = phi i32 [%r276, %b3234], [%r276, %b3236]
  %r275 = add i32 %r367, 1
  br label %b3231

b3429:
  %r369 = phi i32 [%r334, %b3393], [%r375, %b3432], [%r375, %b3438]
  %r374 = phi i32 [%r332, %b3393], [%r373, %b3432], [%r373, %b3438]
  %r372 = phi i32 [12, %b3393], [12, %b3432], [12, %b3438]
  %r371 = phi i32 [%r330, %b3393], [%r370, %b3432], [%r370, %b3438]
  %r368 = icmp eq i32 %r369, 0
  br i1 %r368, label %b3250, label %b3846

b3430:
  %r376 = add i32 ptrtoint(i8* @str47 to i32), 1
  br label %b3431

b3440:
  %r378 = phi i32 [%r279, %b3439], [%r386, %b3446]
  %r385 = phi i32 [%r336, %b3439], [%r384, %b3446]
  %r335 = phi i32 [%r207, %b3439], [%r383, %b3446]
  %r333 = phi i32 [%r282, %b3439], [%r382, %b3446]
  %r331 = phi i32 [%r283, %b3439], [%r381, %b3446]
  %r380 = call i32 @inb(i32 1021)
  %r379 = and i32 %r380, 96
  call void @func_b1212(i32 %r379, i32 0, i32 %r378)
  %r377 = icmp eq i32 %r378, 10
  br i1 %r377, label %b3441, label %b3447

b3572:
  %r392 = phi i32 [%r341, %b3589], [%r391, %b3585]
  %r389 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r390 = load i8, i8* %r389
  %r388 = zext i8 %r390 to i32
  %r387 = icmp eq i32 %r388, 0
  br i1 %r387, label %b2146, label %b3574

b3848:
  %r393 = add i32 %r341, 1
  br label %b3585

b3602:
  %r399 = call i32 @inb(i32 1021)
  %r398 = and i32 %r399, 96
  call void @func_b1212(i32 %r398, i32 0, i32 13)
  call void @func_b1436(i32 %r343)
  call void @func_b3501(i32 %r346, i32 %r347)
  %r397 = inttoptr i32 4108 to i32*
  %r302 = load i32, i32* %r397
  %r395 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r396 = load i8, i8* %r395
  %r315 = zext i8 %r396 to i32
  %r394 = icmp eq i32 %r315, 0
  br i1 %r394, label %b3523, label %b3628

b3604:
  call void @func_b1436(i32 %r343)
  call void @func_b3501(i32 %r346, i32 %r347)
  %r403 = inttoptr i32 4108 to i32*
  %r301 = load i32, i32* %r403
  %r401 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r402 = load i8, i8* %r401
  %r314 = zext i8 %r402 to i32
  %r400 = icmp eq i32 %r314, 0
  br i1 %r400, label %b3523, label %b3628

b3488:
  %r408 = phi i32 [%r303, %b3511], [%r303, %b3525]
  %r406 = inttoptr i32 %r408 to i8*
  %r407 = load i8, i8* %r406
  %r405 = zext i8 %r407 to i32
  %r404 = icmp eq i32 %r405, 0
  br i1 %r404, label %b3471, label %b3847

b3522:
  %r410 = phi i32 [%r349, %b3511], [%r353, %b3525]
  %r414 = phi i32 [%r303, %b3511], [%r303, %b3525]
  %r413 = add i32 ptrtoint(i8* @str18 to i32), 1
  %r412 = call i32 @inb(i32 1021)
  %r411 = and i32 %r412, 96
  call void @func_b1212(i32 %r411, i32 0, i32 %r410)
  %r409 = icmp eq i32 %r410, 10
  br i1 %r409, label %b3517, label %b3519

b3250:
  %r417 = inttoptr i32 ptrtoint(i8* @str50 to i32) to i8*
  %r418 = load i8, i8* %r417
  %r416 = zext i8 %r418 to i32
  %r415 = icmp eq i32 %r416, 0
  br i1 %r415, label %b3224, label %b3252

b3846:
  %r424 = add i32 %r374, %r372
  %r423 = add i32 %r369, -1
  %r421 = inttoptr i32 ptrtoint(i8* @str48 to i32) to i8*
  %r422 = load i8, i8* %r421
  %r420 = zext i8 %r422 to i32
  %r419 = icmp eq i32 %r420, 0
  br i1 %r419, label %b4016, label %b4017

b3431:
  %r426 = phi i32 [%r327, %b3430], [%r434, %b3437]
  %r433 = phi i32 [%r376, %b3430], [%r432, %b3437]
  %r370 = phi i32 [%r330, %b3430], [%r431, %b3437]
  %r375 = phi i32 [%r334, %b3430], [%r430, %b3437]
  %r373 = phi i32 [%r332, %b3430], [%r429, %b3437]
  %r428 = call i32 @inb(i32 1021)
  %r427 = and i32 %r428, 96
  call void @func_b1212(i32 %r427, i32 0, i32 %r426)
  %r425 = icmp eq i32 %r426, 10
  br i1 %r425, label %b3432, label %b3438

b3441:
  %r440 = call i32 @inb(i32 1021)
  %r439 = and i32 %r440, 96
  call void @func_b1212(i32 %r439, i32 0, i32 13)
  call void @func_b1436(i32 %r378)
  %r437 = inttoptr i32 %r385 to i8*
  %r438 = load i8, i8* %r437
  %r436 = zext i8 %r438 to i32
  %r435 = icmp eq i32 %r436, 0
  br i1 %r435, label %b3393, label %b3446

b3447:
  call void @func_b1436(i32 %r378)
  %r443 = inttoptr i32 %r385 to i8*
  %r444 = load i8, i8* %r443
  %r442 = zext i8 %r444 to i32
  %r441 = icmp eq i32 %r442, 0
  br i1 %r441, label %b3393, label %b3446

b2146:
  %r452 = and i32 %r392, 15
  %r450 = call i32 @func_b1248(i32 %r452, i32 9)
  %r449 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r451 = trunc i32 %r450 to i8
  store i8 %r451, i8* %r449
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r392, i32 32)
  %r447 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r448 = load i8, i8* %r447
  %r446 = zext i8 %r448 to i32
  %r445 = icmp eq i32 %r446, 0
  br i1 %r445, label %b2147, label %b3563

b3574:
  %r456 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r455 = call i32 @inb(i32 1021)
  %r454 = and i32 %r455, 96
  call void @func_b1212(i32 %r454, i32 0, i32 %r388)
  %r453 = icmp eq i32 %r388, 10
  br i1 %r453, label %b3578, label %b3580

b3585:
  %r462 = phi i32 [%r338, %b3848], [%r458, %b3583]
  %r461 = phi i32 [%r393, %b3848], [%r463, %b3583]
  %r391 = phi i32 [%r341, %b3848], [%r391, %b3583]
  call void @func_b1445(i32 %r462)
  %r459 = inttoptr i32 %r461 to i8*
  %r460 = load i8, i8* %r459
  %r458 = zext i8 %r460 to i32
  %r457 = icmp eq i32 %r458, 0
  br i1 %r457, label %b3572, label %b3583

b3471:
  %r469 = phi i32 [%r408, %b3488], [%r468, %b3484]
  %r466 = inttoptr i32 ptrtoint(i8* @str19 to i32) to i8*
  %r467 = load i8, i8* %r466
  %r465 = zext i8 %r467 to i32
  %r464 = icmp eq i32 %r465, 0
  br i1 %r464, label %b2152, label %b3473

b3847:
  %r470 = add i32 %r408, 1
  br label %b3484

b3517:
  %r476 = call i32 @inb(i32 1021)
  %r475 = and i32 %r476, 96
  call void @func_b1212(i32 %r475, i32 0, i32 13)
  call void @func_b1436(i32 %r410)
  call void @func_b3501(i32 %r413, i32 %r414)
  %r474 = inttoptr i32 4096 to i32*
  %r472 = load i32, i32* %r474
  %r473 = inttoptr i32 %r472 to i32*
  %r224 = load i32, i32* %r473
  %r215 = add i32 %r472, 4
  %r471 = icmp eq i32 %r224, 0
  br i1 %r471, label %b3237, label %b3450

b3519:
  call void @func_b1436(i32 %r410)
  call void @func_b3501(i32 %r413, i32 %r414)
  %r480 = inttoptr i32 4096 to i32*
  %r478 = load i32, i32* %r480
  %r479 = inttoptr i32 %r478 to i32*
  %r223 = load i32, i32* %r479
  %r214 = add i32 %r478, 4
  %r477 = icmp eq i32 %r223, 0
  br i1 %r477, label %b3237, label %b3450

b3252:
  %r481 = add i32 ptrtoint(i8* @str50 to i32), 1
  br label %b3244

b4016:
  %r486 = phi i32 [%r374, %b3846], [%r500, %b4021], [%r499, %b4022]
  %r498 = phi i32 [%r423, %b3846], [%r497, %b4021], [%r496, %b4022]
  %r495 = phi i32 [%r424, %b3846], [%r494, %b4021], [%r493, %b4022]
  %r492 = phi i32 [%r371, %b3846], [%r491, %b4021], [%r490, %b4022]
  %r489 = phi i32 [%r369, %b3846], [%r488, %b4021], [%r487, %b4022]
  call void @func_b3019(i32 %r486)
  %r484 = inttoptr i32 ptrtoint(i8* @str49 to i32) to i8*
  %r485 = load i8, i8* %r484
  %r483 = zext i8 %r485 to i32
  %r482 = icmp eq i32 %r483, 0
  br i1 %r482, label %b4019, label %b4020

b4017:
  %r504 = add i32 ptrtoint(i8* @str48 to i32), 1
  %r503 = call i32 @inb(i32 1021)
  %r502 = and i32 %r503, 96
  call void @func_b1212(i32 %r502, i32 0, i32 %r420)
  %r501 = icmp eq i32 %r420, 10
  br i1 %r501, label %b4021, label %b4022

b3432:
  %r510 = call i32 @inb(i32 1021)
  %r509 = and i32 %r510, 96
  call void @func_b1212(i32 %r509, i32 0, i32 13)
  call void @func_b1436(i32 %r426)
  %r507 = inttoptr i32 %r433 to i8*
  %r508 = load i8, i8* %r507
  %r506 = zext i8 %r508 to i32
  %r505 = icmp eq i32 %r506, 0
  br i1 %r505, label %b3429, label %b3437

b3438:
  call void @func_b1436(i32 %r426)
  %r513 = inttoptr i32 %r433 to i8*
  %r514 = load i8, i8* %r513
  %r512 = zext i8 %r514 to i32
  %r511 = icmp eq i32 %r512, 0
  br i1 %r511, label %b3429, label %b3437

b3446:
  %r386 = phi i32 [%r436, %b3441], [%r442, %b3447]
  %r515 = phi i32 [%r385, %b3441], [%r385, %b3447]
  %r383 = phi i32 [%r335, %b3441], [%r335, %b3447]
  %r382 = phi i32 [%r333, %b3441], [%r333, %b3447]
  %r381 = phi i32 [%r331, %b3441], [%r331, %b3447]
  %r384 = add i32 %r515, 1
  br label %b3440

b2147:
  %r519 = inttoptr i32 4108 to i32*
  %r300 = load i32, i32* %r519
  %r517 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r518 = load i8, i8* %r517
  %r313 = zext i8 %r518 to i32
  %r516 = icmp eq i32 %r313, 0
  br i1 %r516, label %b3523, label %b3628

b3563:
  %r524 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2940(i32 %r446, i32 %r524)
  %r523 = inttoptr i32 4108 to i32*
  %r299 = load i32, i32* %r523
  %r521 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r522 = load i8, i8* %r521
  %r312 = zext i8 %r522 to i32
  %r520 = icmp eq i32 %r312, 0
  br i1 %r520, label %b3523, label %b3628

b3578:
  %r530 = call i32 @inb(i32 1021)
  %r529 = and i32 %r530, 96
  call void @func_b1212(i32 %r529, i32 0, i32 13)
  call void @func_b1436(i32 %r388)
  call void @func_b3461(i32 %r456, i32 %r392)
  %r528 = inttoptr i32 4108 to i32*
  %r298 = load i32, i32* %r528
  %r526 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r527 = load i8, i8* %r526
  %r311 = zext i8 %r527 to i32
  %r525 = icmp eq i32 %r311, 0
  br i1 %r525, label %b3523, label %b3628

b3580:
  call void @func_b1436(i32 %r388)
  call void @func_b3461(i32 %r456, i32 %r392)
  %r534 = inttoptr i32 4108 to i32*
  %r297 = load i32, i32* %r534
  %r532 = inttoptr i32 ptrtoint(i8* @str17 to i32) to i8*
  %r533 = load i8, i8* %r532
  %r310 = zext i8 %r533 to i32
  %r531 = icmp eq i32 %r310, 0
  br i1 %r531, label %b3523, label %b3628

b3583:
  %r463 = add i32 %r461, 1
  br label %b3585

b2152:
  %r542 = and i32 %r469, 15
  %r540 = call i32 @func_b1248(i32 %r542, i32 9)
  %r539 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r541 = trunc i32 %r540 to i8
  store i8 %r541, i8* %r539
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r469, i32 32)
  %r537 = inttoptr i32 ptrtoint(i8* @str20 to i32) to i8*
  %r538 = load i8, i8* %r537
  %r536 = zext i8 %r538 to i32
  %r535 = icmp eq i32 %r536, 0
  br i1 %r535, label %b2084, label %b3455

b3473:
  %r546 = add i32 ptrtoint(i8* @str19 to i32), 1
  %r545 = call i32 @inb(i32 1021)
  %r544 = and i32 %r545, 96
  call void @func_b1212(i32 %r544, i32 0, i32 %r465)
  %r543 = icmp eq i32 %r465, 10
  br i1 %r543, label %b3477, label %b3479

b3484:
  %r552 = phi i32 [%r405, %b3847], [%r548, %b3482]
  %r551 = phi i32 [%r470, %b3847], [%r553, %b3482]
  %r468 = phi i32 [%r408, %b3847], [%r468, %b3482]
  call void @func_b1445(i32 %r552)
  %r549 = inttoptr i32 %r551 to i8*
  %r550 = load i8, i8* %r549
  %r548 = zext i8 %r550 to i32
  %r547 = icmp eq i32 %r548, 0
  br i1 %r547, label %b3471, label %b3482

b3244:
  %r555 = phi i32 [%r416, %b3252], [%r560, %b3242]
  %r559 = phi i32 [%r481, %b3252], [%r558, %b3242]
  %r557 = call i32 @inb(i32 1021)
  %r556 = and i32 %r557, 96
  call void @func_b1212(i32 %r556, i32 0, i32 %r555)
  %r554 = icmp eq i32 %r555, 10
  br i1 %r554, label %b3247, label %b3249

b4019:
  %r568 = phi i32 [%r492, %b4016], [%r576, %b4025], [%r575, %b4026]
  %r574 = phi i32 [%r489, %b4016], [%r573, %b4025], [%r572, %b4026]
  %r571 = phi i32 [%r486, %b4016], [%r570, %b4025], [%r569, %b4026]
  %r567 = add i32 %r568, 8
  %r566 = inttoptr i32 %r567 to i32*
  %r565 = load i32, i32* %r566
  %r563 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r564 = load i8, i8* %r563
  %r562 = zext i8 %r564 to i32
  %r561 = icmp eq i32 %r562, 0
  br i1 %r561, label %b1784, label %b3312

b4020:
  %r580 = add i32 ptrtoint(i8* @str49 to i32), 1
  %r579 = call i32 @inb(i32 1021)
  %r578 = and i32 %r579, 96
  call void @func_b1212(i32 %r578, i32 0, i32 %r483)
  %r577 = icmp eq i32 %r483, 10
  br i1 %r577, label %b4025, label %b4026

b4021:
  %r586 = phi i32 [%r420, %b4017], [%r595, %b4024]
  %r585 = phi i32 [%r504, %b4017], [%r594, %b4024]
  %r491 = phi i32 [%r371, %b4017], [%r593, %b4024]
  %r488 = phi i32 [%r369, %b4017], [%r592, %b4024]
  %r500 = phi i32 [%r374, %b4017], [%r591, %b4024]
  %r497 = phi i32 [%r423, %b4017], [%r590, %b4024]
  %r494 = phi i32 [%r424, %b4017], [%r589, %b4024]
  %r588 = call i32 @inb(i32 1021)
  %r587 = and i32 %r588, 96
  call void @func_b1212(i32 %r587, i32 0, i32 13)
  call void @func_b1436(i32 %r586)
  %r583 = inttoptr i32 %r585 to i8*
  %r584 = load i8, i8* %r583
  %r582 = zext i8 %r584 to i32
  %r581 = icmp eq i32 %r582, 0
  br i1 %r581, label %b4016, label %b4024

b4022:
  %r601 = phi i32 [%r420, %b4017], [%r595, %b4024]
  %r600 = phi i32 [%r504, %b4017], [%r594, %b4024]
  %r490 = phi i32 [%r371, %b4017], [%r593, %b4024]
  %r487 = phi i32 [%r369, %b4017], [%r592, %b4024]
  %r499 = phi i32 [%r374, %b4017], [%r591, %b4024]
  %r496 = phi i32 [%r423, %b4017], [%r590, %b4024]
  %r493 = phi i32 [%r424, %b4017], [%r589, %b4024]
  call void @func_b1436(i32 %r601)
  %r598 = inttoptr i32 %r600 to i8*
  %r599 = load i8, i8* %r598
  %r597 = zext i8 %r599 to i32
  %r596 = icmp eq i32 %r597, 0
  br i1 %r596, label %b4016, label %b4024

b3437:
  %r434 = phi i32 [%r506, %b3432], [%r512, %b3438]
  %r602 = phi i32 [%r433, %b3432], [%r433, %b3438]
  %r431 = phi i32 [%r370, %b3432], [%r370, %b3438]
  %r430 = phi i32 [%r375, %b3432], [%r375, %b3438]
  %r429 = phi i32 [%r373, %b3432], [%r373, %b3438]
  %r432 = add i32 %r602, 1
  br label %b3431

b2084:
  %r606 = inttoptr i32 4096 to i32*
  %r604 = load i32, i32* %r606
  %r605 = inttoptr i32 %r604 to i32*
  %r222 = load i32, i32* %r605
  %r213 = add i32 %r604, 4
  %r603 = icmp eq i32 %r222, 0
  br i1 %r603, label %b3237, label %b3450

b3455:
  %r611 = add i32 ptrtoint(i8* @str20 to i32), 1
  call void @func_b2940(i32 %r536, i32 %r611)
  %r610 = inttoptr i32 4096 to i32*
  %r608 = load i32, i32* %r610
  %r609 = inttoptr i32 %r608 to i32*
  %r221 = load i32, i32* %r609
  %r212 = add i32 %r608, 4
  %r607 = icmp eq i32 %r221, 0
  br i1 %r607, label %b3237, label %b3450

b3477:
  %r617 = call i32 @inb(i32 1021)
  %r616 = and i32 %r617, 96
  call void @func_b1212(i32 %r616, i32 0, i32 13)
  call void @func_b1436(i32 %r465)
  call void @func_b3461(i32 %r546, i32 %r469)
  %r615 = inttoptr i32 4096 to i32*
  %r613 = load i32, i32* %r615
  %r614 = inttoptr i32 %r613 to i32*
  %r220 = load i32, i32* %r614
  %r211 = add i32 %r613, 4
  %r612 = icmp eq i32 %r220, 0
  br i1 %r612, label %b3237, label %b3450

b3479:
  call void @func_b1436(i32 %r465)
  call void @func_b3461(i32 %r546, i32 %r469)
  %r621 = inttoptr i32 4096 to i32*
  %r619 = load i32, i32* %r621
  %r620 = inttoptr i32 %r619 to i32*
  %r219 = load i32, i32* %r620
  %r210 = add i32 %r619, 4
  %r618 = icmp eq i32 %r219, 0
  br i1 %r618, label %b3237, label %b3450

b3482:
  %r553 = add i32 %r551, 1
  br label %b3484

b3247:
  %r627 = call i32 @inb(i32 1021)
  %r626 = and i32 %r627, 96
  call void @func_b1212(i32 %r626, i32 0, i32 13)
  call void @func_b1436(i32 %r555)
  %r624 = inttoptr i32 %r559 to i8*
  %r625 = load i8, i8* %r624
  %r623 = zext i8 %r625 to i32
  %r622 = icmp eq i32 %r623, 0
  br i1 %r622, label %b3224, label %b3242

b3249:
  call void @func_b1436(i32 %r555)
  %r630 = inttoptr i32 %r559 to i8*
  %r631 = load i8, i8* %r630
  %r629 = zext i8 %r631 to i32
  %r628 = icmp eq i32 %r629, 0
  br i1 %r628, label %b3224, label %b3242

b1784:
  %r639 = and i32 %r565, 15
  %r637 = call i32 @func_b1248(i32 %r639, i32 9)
  %r636 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r638 = trunc i32 %r637 to i8
  store i8 %r638, i8* %r636
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r565, i32 32)
  %r634 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r635 = load i8, i8* %r634
  %r633 = zext i8 %r635 to i32
  %r632 = icmp eq i32 %r633, 0
  br i1 %r632, label %b4014, label %b4015

b3312:
  %r647 = add i32 ptrtoint(i8* @str52 to i32), 1
  call void @func_b3306(i32 %r562, i32 %r647, i32 %r565)
  %r646 = add i32 %r571, 8
  %r645 = inttoptr i32 %r646 to i32*
  %r644 = load i32, i32* %r645
  %r642 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r643 = load i8, i8* %r642
  %r641 = zext i8 %r643 to i32
  %r640 = icmp eq i32 %r641, 0
  br i1 %r640, label %b1772, label %b3309

b4025:
  %r653 = phi i32 [%r483, %b4020], [%r660, %b4027]
  %r652 = phi i32 [%r580, %b4020], [%r659, %b4027]
  %r570 = phi i32 [%r486, %b4020], [%r658, %b4027]
  %r576 = phi i32 [%r492, %b4020], [%r657, %b4027]
  %r573 = phi i32 [%r489, %b4020], [%r656, %b4027]
  %r655 = call i32 @inb(i32 1021)
  %r654 = and i32 %r655, 96
  call void @func_b1212(i32 %r654, i32 0, i32 13)
  call void @func_b1436(i32 %r653)
  %r650 = inttoptr i32 %r652 to i8*
  %r651 = load i8, i8* %r650
  %r649 = zext i8 %r651 to i32
  %r648 = icmp eq i32 %r649, 0
  br i1 %r648, label %b4019, label %b4027

b4026:
  %r666 = phi i32 [%r483, %b4020], [%r660, %b4027]
  %r665 = phi i32 [%r580, %b4020], [%r659, %b4027]
  %r569 = phi i32 [%r486, %b4020], [%r658, %b4027]
  %r575 = phi i32 [%r492, %b4020], [%r657, %b4027]
  %r572 = phi i32 [%r489, %b4020], [%r656, %b4027]
  call void @func_b1436(i32 %r666)
  %r663 = inttoptr i32 %r665 to i8*
  %r664 = load i8, i8* %r663
  %r662 = zext i8 %r664 to i32
  %r661 = icmp eq i32 %r662, 0
  br i1 %r661, label %b4019, label %b4027

b4024:
  %r595 = phi i32 [%r582, %b4021], [%r597, %b4022]
  %r670 = phi i32 [%r585, %b4021], [%r600, %b4022]
  %r593 = phi i32 [%r491, %b4021], [%r490, %b4022]
  %r592 = phi i32 [%r488, %b4021], [%r487, %b4022]
  %r591 = phi i32 [%r500, %b4021], [%r499, %b4022]
  %r590 = phi i32 [%r497, %b4021], [%r496, %b4022]
  %r589 = phi i32 [%r494, %b4021], [%r493, %b4022]
  %r594 = add i32 %r670, 1
  %r669 = call i32 @inb(i32 1021)
  %r668 = and i32 %r669, 96
  call void @func_b1212(i32 %r668, i32 0, i32 %r595)
  %r667 = icmp eq i32 %r595, 10
  br i1 %r667, label %b4021, label %b4022

b3242:
  %r560 = phi i32 [%r623, %b3247], [%r629, %b3249]
  %r671 = phi i32 [%r559, %b3247], [%r559, %b3249]
  %r558 = add i32 %r671, 1
  br label %b3244

b4014:
  %r680 = add i32 ptrtoint(i8* @users to i32), 52
  %r679 = inttoptr i32 %r680 to i32*
  store i32 %r565, i32* %r679
  %r678 = add i32 %r571, 8
  %r677 = inttoptr i32 %r678 to i32*
  %r676 = load i32, i32* %r677
  %r674 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r675 = load i8, i8* %r674
  %r673 = zext i8 %r675 to i32
  %r672 = icmp eq i32 %r673, 0
  br i1 %r672, label %b1772, label %b3309

b4015:
  %r688 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b3257(i32 %r633, i32 %r688, i32 %r565)
  %r687 = add i32 %r571, 8
  %r686 = inttoptr i32 %r687 to i32*
  %r685 = load i32, i32* %r686
  %r683 = inttoptr i32 ptrtoint(i8* @str52 to i32) to i8*
  %r684 = load i8, i8* %r683
  %r682 = zext i8 %r684 to i32
  %r681 = icmp eq i32 %r682, 0
  br i1 %r681, label %b1772, label %b3309

b1772:
  %r693 = phi i32 [%r644, %b3312], [%r676, %b4014], [%r685, %b4015]
  %r697 = and i32 %r693, 15
  %r695 = call i32 @func_b1248(i32 %r697, i32 9)
  %r694 = inttoptr i32 ptrtoint(i8* @itoaBuf to i32) to i8*
  %r696 = trunc i32 %r695 to i8
  store i8 %r696, i8* %r694
  call void @func_b3959(i32 1, i32 0, i32 31, i32 %r693, i32 32)
  %r691 = inttoptr i32 ptrtoint(i8* @str53 to i32) to i8*
  %r692 = load i8, i8* %r691
  %r690 = zext i8 %r692 to i32
  %r689 = icmp eq i32 %r690, 0
  br i1 %r689, label %b4011, label %b4012

b3309:
  %r698 = phi i32 [%r641, %b3312], [%r673, %b4014], [%r682, %b4015]
  %r700 = phi i32 [%r644, %b3312], [%r676, %b4014], [%r685, %b4015]
  %r699 = add i32 ptrtoint(i8* @str52 to i32), 1
  call void @func_b3288(i32 %r698, i32 %r699, i32 %r700)
  br label %b1672

b4027:
  %r660 = phi i32 [%r649, %b4025], [%r662, %b4026]
  %r704 = phi i32 [%r652, %b4025], [%r665, %b4026]
  %r658 = phi i32 [%r570, %b4025], [%r569, %b4026]
  %r657 = phi i32 [%r576, %b4025], [%r575, %b4026]
  %r656 = phi i32 [%r573, %b4025], [%r572, %b4026]
  %r659 = add i32 %r704, 1
  %r703 = call i32 @inb(i32 1021)
  %r702 = and i32 %r703, 96
  call void @func_b1212(i32 %r702, i32 0, i32 %r660)
  %r701 = icmp eq i32 %r660, 10
  br i1 %r701, label %b4025, label %b4026

b4011:
  %r706 = add i32 ptrtoint(i8* @users to i32), 124
  %r705 = inttoptr i32 %r706 to i32*
  store i32 %r693, i32* %r705
  br label %b1672

b4012:
  %r707 = add i32 ptrtoint(i8* @str53 to i32), 1
  call void @func_b3267(i32 %r690, i32 %r707, i32 %r693)
  br label %b1672

b1672:
  %r720 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  store i1 false, i1* %r720
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
  %r719 = call i32 @inb(i32 33)
  %r718 = and i32 %r719, -2
  call void @outb(i32 33, i32 %r718)
  %r717 = call i32 @inb(i32 33)
  %r716 = and i32 %r717, -3
  call void @outb(i32 33, i32 %r716)
  %r715 = inttoptr i32 ptrtoint(i8* @current to i32) to i1*
  %r714 = load i1, i1* %r715
  %r713 = zext i1 %r714 to i32
  %r712 = mul i32 %r713, 72
  %r711 = add i32 ptrtoint(i8* @users to i32), %r712
  call void @returnTo(i32 %r711)
  %r709 = inttoptr i32 ptrtoint(i8* @str45 to i32) to i8*
  %r710 = load i8, i8* %r709
  %r269 = zext i8 %r710 to i32
  %r708 = icmp eq i32 %r269, 0
  br i1 %r708, label %b295, label %b3226
}

