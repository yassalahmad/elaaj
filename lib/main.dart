// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elaaj',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ElaajAppWebView(),
    );
  }
}

class ElaajAppWebView extends StatefulWidget {
  @override
  _ElaajAppWebViewState createState() => _ElaajAppWebViewState();
}

class _ElaajAppWebViewState extends State<ElaajAppWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Elaaj',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: InAppWebView(
        initialUrlRequest:
            URLRequest(url: Uri.parse("https://www.e-laaj.com/")),
      ),
    );
  }
}
