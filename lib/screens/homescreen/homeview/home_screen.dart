import 'package:flutter/material.dart';
import 'package:ottplarform/screens/homescreen/homeprovider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900,
          leading: Icon(
            Icons.menu,
            color: Colors.pink.shade100,
          ),
          title: Text('OTT PLATFORM'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: homeProviderFalse!.m1.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  homeProviderFalse!.changeindex(index);
                  Navigator.pushNamed(context, 'second', arguments: index);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade900,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        boxShadow: [
                          BoxShadow(color: Colors.pink.shade100,blurRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${homeProviderFalse!.m1[index].name}',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
