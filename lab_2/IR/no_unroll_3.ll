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
  %8 = getelementptr i32, i32* %7, i64 1048576
  %9 = getelementptr i32, i32* %3, i64 1048576
  %10 = getelementptr i32, i32* %5, i64 1048576
  %11 = icmp ult i32* %7, %9
  %12 = icmp ult i32* %3, %8
  %13 = and i1 %11, %12
  %14 = icmp ult i32* %7, %10
  %15 = icmp ult i32* %5, %8
  %16 = and i1 %14, %15
  %17 = or i1 %13, %16
  br i1 %17, label %32, label %18

18:                                               ; preds = %1, %18
  %19 = phi i64 [ %29, %18 ], [ 0, %1 ]
  %20 = getelementptr inbounds i32, i32* %3, i64 %19
  %21 = bitcast i32* %20 to <4 x i32>*
  %22 = load <4 x i32>, <4 x i32>* %21, align 4, !tbaa !7, !alias.scope !9
  %23 = getelementptr inbounds i32, i32* %5, i64 %19
  %24 = bitcast i32* %23 to <4 x i32>*
  %25 = load <4 x i32>, <4 x i32>* %24, align 4, !tbaa !7, !alias.scope !12
  %26 = mul nsw <4 x i32> %25, %22
  %27 = getelementptr inbounds i32, i32* %7, i64 %19
  %28 = bitcast i32* %27 to <4 x i32>*
  store <4 x i32> %26, <4 x i32>* %28, align 4, !tbaa !7, !alias.scope !14, !noalias !16
  %29 = add i64 %19, 4
  %30 = icmp eq i64 %29, 1048576
  br i1 %30, label %31, label %18, !llvm.loop !17

31:                                               ; preds = %18, %32
  ret void

32:                                               ; preds = %1, %32
  %33 = phi i64 [ %40, %32 ], [ 0, %1 ]
  %34 = getelementptr inbounds i32, i32* %3, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !7
  %36 = getelementptr inbounds i32, i32* %5, i64 %33
  %37 = load i32, i32* %36, align 4, !tbaa !7
  %38 = mul nsw i32 %37, %35
  %39 = getelementptr inbounds i32, i32* %7, i64 %33
  store i32 %38, i32* %39, align 4, !tbaa !7
  %40 = add nuw nsw i64 %33, 1
  %41 = icmp eq i64 %40, 1048576
  br i1 %41, label %31, label %32, !llvm.loop !20
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
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = !{!15}
!15 = distinct !{!15, !11}
!16 = !{!10, !13}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = distinct !{!20, !18, !19}
