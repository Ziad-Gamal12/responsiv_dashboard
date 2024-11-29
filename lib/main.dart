import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/Home/presentation/views/HomeView.dart';

void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Montserrat",
          primaryColor: const Color(0xff4EB7F2),
          focusColor: const Color(0xff4EB7F2)),
      home: const Homeview(),
    );
  }
}
