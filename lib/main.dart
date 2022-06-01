import 'package:blocdemo/blocclass.dart';
import 'package:blocdemo/eventclass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    home: test(),
  ));

}

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => eventclass(""),
    child: demo(),);
  }
}


class demo extends StatelessWidget {

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    eventclass e=BlocProvider.of<eventclass>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: t1,),
          TextField(controller: t2,),
          ElevatedButton(onPressed: () {

            e.add(blocclass(a:t1.text, b:t2.text,r: "sum"));

          }, child: Text("+")),

          BlocBuilder<eventclass,String>(builder: (context, state) {
            return Text("${state}");

          },),
          BlocBuilder<eventclass,String>(builder: (context, state) {
            print(state);
            return Radio(value: "inch", groupValue: state, onChanged: (value) {
              e.add(blocclass(val: value as String,r: "radio"));
            },);
          },),
          BlocBuilder<eventclass,String>(builder: (context, state) {
            return Radio(value: "cm", groupValue: state, onChanged: (value) {
              e.add(blocclass(val: value as String,r: "radio"));
            },);
          },),
          BlocBuilder<eventclass,String>(builder: (context, state) {
            return Text("${state}",);

          },)

        ],
      ),
    );
  }
}

