import '../core/models/company_model.dart';
import '../services/firebase_service.dart';

abstract interface class CompanyRepo {
  Stream<List<Company>> getAll();
  update(Company company);
}

class CompanyRepoImp extends CompanyRepo {
  final FirebaseService firebaseService;

  CompanyRepoImp(this.firebaseService);

  @override
  Stream<List<Company>> getAll() {
    final respList = firebaseService.findAll();
    return respList;
  }

  @override
  update(Company company) {}
}
