import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Now i am creating a stateful widget and how work this stateful widget and given the answer of the widget
/// Life cycle of stateful widget and how to works this stateful widget
///  constructor
///  State
///  initstate
///  didUpdatedependences
///  build
///  did update widget dependencies
///  deactivate
///  dispose
/******
 * flutter inspector----------------widget tree
 * structure of this flutter project---------
 */
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: HomeScreen(),
   );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageView();
  }
}
class _HomePageView extends State<HomeScreen>{
  var sum=0;
  @override
  void initState() {
    print('First step of stateful widget:-------------1');
    ///Screen start howar somoy emon kaj kora lagbe aitar jonno initState
    super.initState();
  }
  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
  @override
  void didChangeDependencies() {
   ///Jokon amar kuno ekta page er dependencey change hoi
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    ///Stateless widget er moddhe ekta build method take sudu build korlo and ter kaj sesh.
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$sum'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            sum++;
          });
        }, child: Icon(Icons.add)
      ),
    );
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}