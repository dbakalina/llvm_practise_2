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
  br i1 %17, label %60, label %18

18:                                               ; preds = %1, %18
  %19 = phi i64 [ %57, %18 ], [ 0, %1 ]
  %20 = getelementptr inbounds i32, i32* %3, i64 %19
  %21 = bitcast i32* %20 to <4 x i32>*
  %22 = load <4 x i32>, <4 x i32>* %21, align 4, !tbaa !7, !alias.scope !9
  %23 = getelementptr inbounds i32, i32* %20, i64 4
  %24 = bitcast i32* %23 to <4 x i32>*
  %25 = load <4 x i32>, <4 x i32>* %24, align 4, !tbaa !7, !alias.scope !9
  %26 = getelementptr inbounds i32, i32* %5, i64 %19
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !7, !alias.scope !12
  %29 = getelementptr inbounds i32, i32* %26, i64 4
  %30 = bitcast i32* %29 to <4 x i32>*
  %31 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !7, !alias.scope !12
  %32 = mul nsw <4 x i32> %28, %22
  %33 = mul nsw <4 x i32> %31, %25
  %34 = getelementptr inbounds i32, i32* %7, i64 %19
  %35 = bitcast i32* %34 to <4 x i32>*
  store <4 x i32> %32, <4 x i32>* %35, align 4, !tbaa !7, !alias.scope !14, !noalias !16
  %36 = getelementptr inbounds i32, i32* %34, i64 4
  %37 = bitcast i32* %36 to <4 x i32>*
  store <4 x i32> %33, <4 x i32>* %37, align 4, !tbaa !7, !alias.scope !14, !noalias !16
  %38 = or i64 %19, 8
  %39 = getelementptr inbounds i32, i32* %3, i64 %38
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !7, !alias.scope !9
  %42 = getelementptr inbounds i32, i32* %39, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 4, !tbaa !7, !alias.scope !9
  %45 = getelementptr inbounds i32, i32* %5, i64 %38
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !7, !alias.scope !12
  %48 = getelementptr inbounds i32, i32* %45, i64 4
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !7, !alias.scope !12
  %51 = mul nsw <4 x i32> %47, %41
  %52 = mul nsw <4 x i32> %50, %44
  %53 = getelementptr inbounds i32, i32* %7, i64 %38
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> %51, <4 x i32>* %54, align 4, !tbaa !7, !alias.scope !14, !noalias !16
  %55 = getelementptr inbounds i32, i32* %53, i64 4
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> %52, <4 x i32>* %56, align 4, !tbaa !7, !alias.scope !14, !noalias !16
  %57 = add nuw nsw i64 %19, 16
  %58 = icmp eq i64 %57, 1048576
  br i1 %58, label %59, label %18, !llvm.loop !17

59:                                               ; preds = %18, %60
  ret void

60:                                               ; preds = %1, %60
  %61 = phi i64 [ %89, %60 ], [ 0, %1 ]
  %62 = getelementptr inbounds i32, i32* %3, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !7
  %64 = getelementptr inbounds i32, i32* %5, i64 %61
  %65 = load i32, i32* %64, align 4, !tbaa !7
  %66 = mul nsw i32 %65, %63
  %67 = getelementptr inbounds i32, i32* %7, i64 %61
  store i32 %66, i32* %67, align 4, !tbaa !7
  %68 = or i64 %61, 1
  %69 = getelementptr inbounds i32, i32* %3, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !7
  %71 = getelementptr inbounds i32, i32* %5, i64 %68
  %72 = load i32, i32* %71, align 4, !tbaa !7
  %73 = mul nsw i32 %72, %70
  %74 = getelementptr inbounds i32, i32* %7, i64 %68
  store i32 %73, i32* %74, align 4, !tbaa !7
  %75 = or i64 %61, 2
  %76 = getelementptr inbounds i32, i32* %3, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !7
  %78 = getelementptr inbounds i32, i32* %5, i64 %75
  %79 = load i32, i32* %78, align 4, !tbaa !7
  %80 = mul nsw i32 %79, %77
  %81 = getelementptr inbounds i32, i32* %7, i64 %75
  store i32 %80, i32* %81, align 4, !tbaa !7
  %82 = or i64 %61, 3
  %83 = getelementptr inbounds i32, i32* %3, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !7
  %85 = getelementptr inbounds i32, i32* %5, i64 %82
  %86 = load i32, i32* %85, align 4, !tbaa !7
  %87 = mul nsw i32 %86, %84
  %88 = getelementptr inbounds i32, i32* %7, i64 %82
  store i32 %87, i32* %88, align 4, !tbaa !7
  %89 = add nuw nsw i64 %61, 4
  %90 = icmp eq i64 %89, 1048576
  br i1 %90, label %59, label %60, !llvm.loop !19
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
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = distinct !{!19, !18}
