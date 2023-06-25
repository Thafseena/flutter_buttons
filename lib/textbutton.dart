import 'package:flutter/material.dart';
// https://docs.flutter.dev/release/breaking-changes/buttons look through the link
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('Text Button'),
      ),
      body: Center(
      
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered))
          return Colors.blue.withOpacity(0.04);
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed))
          return Colors.blue.withOpacity(0.12);
        return null; // Defer to the widget's default.
      },
    ),
  ),
  onPressed: () { },
  child: Text('TextButton')
)

          ],
        ),
      ),
 
    );
  }
}
