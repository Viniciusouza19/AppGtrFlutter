part of 'company_bloc.dart';

sealed class CompanyEvent extends Equatable {
  const CompanyEvent();
}

class CompanySearch extends CompanyEvent {
  final String search;

  const CompanySearch({required this.search});

  @override
  List<Object?> get props => [search];
}

class CompanyLoad extends CompanyEvent {
  const CompanyLoad();

  @override
  List<Object?> get props => [];
}
