part of 'sura_cubit.dart';

sealed class SuraState extends Equatable {
  const SuraState();

  @override
  List<Object> get props => [];
}

final class SuraInitial extends SuraState {}

final class SuraLoading extends SuraState {}

final class SuraSuccess extends SuraState {
  final List<SuraModel> suraList;

  SuraSuccess(this.suraList);
}

final class SuraFailure extends SuraState {
  final String errMessage;
  const SuraFailure(this.errMessage);
}
