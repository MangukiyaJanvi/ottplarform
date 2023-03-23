import 'package:flutter/material.dart';
import 'package:ottplarform/screens/homescreen/homeprovider/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;
  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context,listen: false).initstate();
  }
  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller:homeProviderTrue!.webViewController! ),
      ),
    );
  }
}
