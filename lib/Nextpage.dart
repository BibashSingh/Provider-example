import 'package:flutter/material.dart';
import 'package:prov/Counter_Module.dart';
import 'package:provider/provider.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<countermodel>(builder: (context,value,child)=>Scaffold(
      body: Center(
        child: Text(value.count.toString(),
        style: TextStyle(fontSize: 56),)
      ),
    ));
  }
}