import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }

}
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageView();
  }

}
class HomePageView extends State<HomePage>{
  double result=0.0;
  TextEditingController fild1=TextEditingController();
  TextEditingController fild2=TextEditingController();
  GlobalKey <FormState> _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:Text("Sum App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:Form(
          key: _formKey,
    child:Center(
          child: Column(
            children: [
              TextFormField(
                keyboardType:TextInputType.number,
                  textInputAction: TextInputAction.next,
                controller: fild1,
                decoration:InputDecoration(
                  label: Text('Enter first value'),
                  border: OutlineInputBorder(),
                ),
                validator: (String?value){
                  if(value?.isEmpty??true){
                    return 'Please Enter the valid value';
                  }
                  else{
                    return null;
                  }
                }
              ),
              SizedBox(height: 10,),
              TextFormField(
                keyboardType:TextInputType.number,
                  textInputAction: TextInputAction.next,
                  controller: fild2,
                decoration:InputDecoration(
                  label: Text('Enter first value'),
                  border: OutlineInputBorder(),
                ),
                  validator: (String?value){
                    if(value?.isEmpty??true){
                      return 'Please Enter the valid value';
                    }
                   return null;
                  }
              ),
              SizedBox(height: 10,),
              ButtonBar(///Row er moto onek gula button nia kaj kora jai -------onek gula button take ekta rowta
                alignment: MainAxisAlignment.center,
                children: [
                 ElevatedButton.icon(
                     onPressed: (){
                       if(_formKey.currentState!.validate()){
                         setState(() {
                           double num1=double.parse(fild1.text);
                           double num2=double.parse(fild2.text);
                           result=num1+num2;
                         });
                       }
                       else{
                         print('not working');
                       }
                     },
                     icon:Icon(Icons.add),
                   label: Text('Add'),
                 ),
                  ElevatedButton.icon(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        setState(() {
                          double num1=double.parse(fild1.text);
                          double num2=double.parse(fild2.text);
                          result=num1-num2;
                        });
                      }
                      else{
                        print('not working');
                      }
                    },
                    icon:Icon(Icons.remove),
                    label: Text('Sub'),
                  ),
                  /*ElevatedButton(
                    onPressed: (){},
                    child:Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child:Text('Add'),
                  ),*/
                ],
              ),
              SizedBox(height: 10,),
              Text("Result:$result",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
      ),
    );
  }

}
///To Do
///multipli
///division
///modulus