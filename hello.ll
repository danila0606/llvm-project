; ModuleID = './hello.c'
source_filename = "./hello.c"
target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "sim"

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %width = alloca i32, align 4
  %heigth = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1920, i32* %width, align 4
  store i32 1080, i32* %heigth, align 4
  %0 = load i32, i32* %width, align 4
  %1 = load i32, i32* %heigth, align 4
  call void bitcast (void (...)* @init to void (i32, i32)*)(i32 noundef %0, i32 noundef %1)
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 bitcast (i32 (...)* @is_window_opened to i32 ()*)()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  call void @put_pixel(i32 noundef %2, i32 noundef %3, i32 noundef 255, i32 noundef 0, i32 noundef 0, i32 noundef 255)
  call void bitcast (void (...)* @flush to void ()*)()
  %4 = load i32, i32* %x, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %x, align 4
  %5 = load i32, i32* %y, align 4
  %inc1 = add nsw i32 %5, 1
  store i32 %inc1, i32* %y, align 4
  br label %while.cond, !llvm.loop !3

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local void @init(...) #1

declare dso_local i32 @is_window_opened(...) #1

declare dso_local void @put_pixel(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @flush(...) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 15.0.0 (https://github.com/danila0606/llvm-project c69a3b8df2127fd32cb10711cd5b5375208ca337)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
