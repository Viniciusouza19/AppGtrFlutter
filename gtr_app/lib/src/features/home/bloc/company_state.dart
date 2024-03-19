part of 'company_bloc.dart';

final class CompanyState extends Equatable {
  final AsyncState status;
  final Stream<List<Company>> companyList;
  final String failureMsg;

  const CompanyState(
      {required this.status,
      required this.companyList,
      required this.failureMsg});

  factory CompanyState.init() {
    return const CompanyState(
        status: AsyncState.initial,
        companyList: Stream.empty(),
        failureMsg: '');
  }

  CompanyState copyWith(
      {AsyncState? state,
      Stream<List<Company>>? companyList,
      String? failureMsg}) {
    return CompanyState(
      status: state ?? status,
      companyList: companyList ?? this.companyList,
      failureMsg: failureMsg ?? this.failureMsg,
    );
  }

  @override
  List<Object> get props => [status, companyList, failureMsg];
}
