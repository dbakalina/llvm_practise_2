; ModuleID = 'run-fn.bc'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.testFunc = type { %"class.std::vector", %"class.std::vector", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }

$_ZN8testFunc3runEv = comdat any

; Function Attrs: noinline nounwind uwtable
define weak_odr dso_local void @_ZN8testFunc3runEv(%struct.testFunc* %0) local_unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %struct.testFunc, %struct.testFunc* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i32*, i32** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.testFunc, %struct.testFunc* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.testFunc, %struct.testFunc* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8, !tbaa !2
  br label %9

8:                                                ; preds = %9
  ret void

9:                                                ; preds = %9, %1
  %10 = phi i64 [ 0, %1 ], [ %38, %9 ]
  %11 = getelementptr inbounds i32, i32* %3, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !7
  %13 = getelementptr inbounds i32, i32* %5, i64 %10
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %15 = mul nsw i32 %14, %12
  %16 = getelementptr inbounds i32, i32* %7, i64 %10
  store i32 %15, i32* %16, align 4, !tbaa !7
  %17 = or i64 %10, 1
  %18 = getelementptr inbounds i32, i32* %3, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = getelementptr inbounds i32, i32* %5, i64 %17
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = mul nsw i32 %21, %19
  %23 = getelementptr inbounds i32, i32* %7, i64 %17
  store i32 %22, i32* %23, align 4, !tbaa !7
  %24 = or i64 %10, 2
  %25 = getelementptr inbounds i32, i32* %3, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !7
  %27 = getelementptr inbounds i32, i32* %5, i64 %24
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = mul nsw i32 %28, %26
  %30 = getelementptr inbounds i32, i32* %7, i64 %24
  store i32 %29, i32* %30, align 4, !tbaa !7
  %31 = or i64 %10, 3
  %32 = getelementptr inbounds i32, i32* %3, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !7
  %34 = getelementptr inbounds i32, i32* %5, i64 %31
  %35 = load i32, i32* %34, align 4, !tbaa !7
  %36 = mul nsw i32 %35, %33
  %37 = getelementptr inbounds i32, i32* %7, i64 %31
  store i32 %36, i32* %37, align 4, !tbaa !7
  %38 = add nuw nsw i64 %10, 4
  %39 = icmp eq i64 %38, 1048576
  br i1 %39, label %8, label %9
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !4, i64 0, !4, i64 8, !4, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
