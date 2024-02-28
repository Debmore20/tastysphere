part of 'feeditem_cubit.dart';

@immutable
sealed class FeeditemState {}

final class FeeditemInitial extends FeeditemState {
  final int counterValue;

  FeeditemInitial(this.counterValue);
}
