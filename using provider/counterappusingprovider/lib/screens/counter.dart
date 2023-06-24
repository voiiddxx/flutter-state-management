import 'package:counterappusingprovider/provider/counter-provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterprovidermodel, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              counterprovidermodel.setNewData();
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text("Counter App Using Provier"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Recent Added Item No:" +
                      counterprovidermodel.nums.last.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700)),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: counterprovidermodel.nums.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(counterprovidermodel.nums[index].toString()),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
