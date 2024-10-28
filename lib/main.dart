import 'package:doc_doc_app/views/details_view.dart';
import 'package:doc_doc_app/views/home_view.dart';
import 'package:doc_doc_app/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DocDocApp());
}

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          LoginView.id: (context) => const LoginView(),
          HomeView.id: (context) => const HomeView(),
          DetailsView.id: (context) =>  DetailsView(),
        },
        initialRoute: LoginView.id,
      ),
    );
  }
}
