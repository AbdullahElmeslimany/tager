part of 'update_list_cubit.dart';

@immutable
sealed class UpdateListState {}

final class UpdateListInitial extends UpdateListState {}

final class AdditemState extends UpdateListState {
  final int item;
  final image;
  final List imagelist;
  AdditemState(
      {required this.imagelist, required this.image, required this.item});
}

final class RemoveitemState extends UpdateListState {
  final image;

  RemoveitemState({required this.image});
}
