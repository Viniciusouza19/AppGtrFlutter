import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:gtr_app/src/core/models/company_model.dart';
import 'package:gtr_app/src/core/utils/async_state.dart';

import '../../../repositories/company_repository.dart';

part 'company_event.dart';
part 'company_state.dart';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  Stream<List<Company>> companies = const Stream.empty();
  final CompanyRepo repo;

  CompanyBloc({required this.repo}) : super(CompanyState.init()) {
    on<CompanyLoad>((event, emit) async {
      switch (event) {
        case CompanySearch():
          break;
        case CompanyLoad():
          try {
            companies = repo.getAll();
            emit(state.copyWith(
                state: AsyncState.loading, companyList: const Stream.empty()));
            emit(
                state.copyWith(state: AsyncState.load, companyList: companies));
          } on FirebaseException catch (e) {
            emit(state.copyWith(
                state: AsyncState.failure,
                failureMsg: "Firebase Exception: $e"));
          } catch (e) {
            emit(state.copyWith(
                state: AsyncState.failure, failureMsg: "Unexpected error: $e"));
          }
          break;
      }
    });
  }
}
