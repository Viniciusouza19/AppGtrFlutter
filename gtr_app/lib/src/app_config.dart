import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gtr_app/src/features/home/bloc/company_bloc.dart';
import 'package:gtr_app/src/repositories/company_repository.dart';
import 'package:gtr_app/src/services/firebase_service.dart';

import 'features/home/home_page.dart';

class AppConfig extends StatelessWidget {
  final state;
  const AppConfig({super.key, this.state});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CompanyBloc(repo: CompanyRepoImp(FirebaseServiceImp()))
            ..add(const CompanyLoad()),
      child: MaterialApp(
        theme: ThemeData(),
        home: const HomePage(),
      ),
    );
  }
}
