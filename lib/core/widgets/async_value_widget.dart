import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import '../../shared/widgets/error_widget.dart';
import '../../shared/widgets/loading_widget.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.loading,
    this.error,
    this.skipLoadingOnRefresh = true,
    this.skipLoadingOnReload = false,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final bool skipLoadingOnRefresh;
  final bool skipLoadingOnReload;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
      data: data,
      loading: () => loading?.call() ?? const AppLoadingWidget(),
      error: (e, st) => error?.call(e, st) ?? AppErrorWidget(
        message: e.toString(),
        onRetry: null,
      ),
    );
  }
}

class AsyncValueSliver<T> extends StatelessWidget {
  const AsyncValueSliver({
    super.key,
    required this.value,
    required this.data,
    this.loading,
    this.error,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      loading: () => SliverToBoxAdapter(
        child: loading?.call() ?? const AppLoadingWidget(),
      ),
      error: (e, st) => SliverToBoxAdapter(
        child: error?.call(e, st) ?? AppErrorWidget(
          message: e.toString(),
          onRetry: null,
        ),
      ),
    );
  }
}

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
  });

  final double? width;
  final double? height;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
      ),
    );
  }
}