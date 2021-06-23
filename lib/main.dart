import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/app_widget.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatelessWidget {
 

  @override
 Widget build(BuildContext context) {
    var _initialization;
  try {
    
   _initialization = Firebase.initializeApp();
  } catch (e) {
    print(e.toString());
  }
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
            child: Center(
              child: Text('Não foi possível inicializar o firebase', textDirection: TextDirection.ltr,),
            )
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        }

        return Material(child: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
