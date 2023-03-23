import 'package:flutter/cupertino.dart';
import 'package:ottplarform/screens/homescreen/homemodel/home_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier
{
  List<HomeModel> m1=[
    HomeModel(name: 'Netflix',link: 'https://www.netflix.com/'),
    HomeModel(name: 'Amazon',link: 'https://www.primevideo.com/'),
    HomeModel(name: 'Disney+',link: 'https://www.hotstar.com/'),
    HomeModel(name: 'Hotstar+',link: 'https://www.hotstar.com/'),
    HomeModel(name: 'SonyLIV+',link: 'https://www.sonyliv.com/'),
    HomeModel(name: 'JioTV',link: 'https://www.jiotv.com/'),
    HomeModel(name: 'GoogleTV',link: 'https://tv.google/intl/en_in/'),
    HomeModel(name: 'Voot',link: 'https://www.voot.com/'),
    HomeModel(name: 'ZEE5',link: 'https://www.zee5.com/'),
    HomeModel(name: 'Hoichoi',link: 'https://www.hoichoi.tv/'),
  ];
  WebViewController? webViewController;
  int i=0;
  void initstate()
  {
    webViewController=WebViewController();
    webViewController!.loadRequest(Uri.parse('${m1[i].link}'));
  }
  void changeindex(int index)
  {
    i=index;
    notifyListeners();
  }
}