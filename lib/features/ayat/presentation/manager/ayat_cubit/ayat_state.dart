part of 'ayat_cubit.dart';

sealed class AyatState extends Equatable {
  const AyatState();

  @override
  List<Object> get props => [];
}

final class AyatInitial extends AyatState {}

final class AyatLoading extends AyatState {}

final class AyatSuccess extends AyatState {
  final List<AyaModel> ayatList;

  const AyatSuccess(this.ayatList);
}

final class AyatFailure extends AyatState {
  final String errMessage;

  const AyatFailure(this.errMessage);
}
