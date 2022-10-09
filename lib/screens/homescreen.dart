import 'package:ecom_with_admin/widgets/CustomAppbar.dart';
import 'package:ecom_with_admin/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppbar(text: 'Home'),
      ),
      bottomNavigationBar: MainNavigationBar(),
    );
  }
}
