; ModuleID = 'Gfuncs.c'
source_filename = "Gfuncs.c"
target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "sim"

; Function Attrs: noinline nounwind optnone
define dso_local void @init(i32 noundef %width, i32 noundef %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %add = add i32 %0, %1
  store i32 %add, i32* %a, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @put_pixel(i32 noundef %x, i32 noundef %y, i32 noundef %rgba) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %rgba.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %rgba, i32* %rgba.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %add = add i32 %0, %1
  store i32 %add, i32* %a, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @is_window_opened() #0 {
entry:
  %res = alloca i32, align 4
  store i32 171, i32* %res, align 4
  %0 = load i32, i32* %res, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @get_time_milliseconds() #0 {
entry:
  %res = alloca i32, align 4
  store i32 171, i32* %res, align 4
  %0 = load i32, i32* %res, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone
define dso_local void @flush() #0 {
entry:
  %a = alloca i32, align 4
  store i32 171, i32* %a, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @gmul(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 188, i32* %res, align 4
  %0 = load i32, i32* %res, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @gdiv(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 188, i32* %res, align 4
  %0 = load i32, i32* %res, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 15.0.0 (https://github.com/danila0606/llvm-project c69a3b8df2127fd32cb10711cd5b5375208ca337)"}
