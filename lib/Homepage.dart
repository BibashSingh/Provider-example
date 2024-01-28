import 'package:flutter/material.dart';
import 'package:prov/Counter_Module.dart';
import 'package:prov/Nextpage.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Consumer<countermodel>(builder: (context,value,child)=> Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              value.count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Nextpage()));
            }, child: Center(child: Text("Go to the next page",style: TextStyle(fontSize: 36),),))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          final counter =context.read<countermodel>();
          counter.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    ));
  }
}
