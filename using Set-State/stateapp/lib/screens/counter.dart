import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

List<int> nums = [0];

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter app"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            int last = nums.last;

            nums.add(last + 1);
          });
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("last index of index" + nums.last.toString()),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: nums.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(nums[index].toString()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
