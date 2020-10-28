import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Stores in Amritsar')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {

  // backing data
  final europeanCountries = ['Natraj Clothing House', 'Sharda Emporium', "Queen's Coulture", 'Forever 21',
    'H & M', 'Vicky Di Hatti', 'Sanan Store','Bharat Brothers','Bhagwati Jewellers','Amit Cloth House','Bharatwaj Store','ChunMun Store','Ratan Lal Emporium'];

  return ListView.builder(
    itemCount: europeanCountries.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(europeanCountries[index]),
      );
    },
  );

}