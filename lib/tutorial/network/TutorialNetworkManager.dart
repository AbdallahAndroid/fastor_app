import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

class TutorialNetworkManager extends StatefulWidget {

  @override
  TutorialNetworkManagerState createState() => TutorialNetworkManagerState();
}

class  TutorialNetworkManagerState extends State<TutorialNetworkManager> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await callApiPostWithHeader();
    });
  }


  @override
  Widget build(BuildContext context) {
    return PageFastor( this , content: getContent() );
  }

  String data = "";

  Widget getContent() {
    return ColumnFastor(children:  [
      TextFastor( "response: " + data, fontSize: 40,)
    ]);
  }

  //---------------------------------------------------------------- network

  /**
      example:
      {
      "title": "MacBook OO Pro",
      "description": "2023123123123, 15gb ram",
      "price": "123123",
      "published": 1,
      "media": ["fgfgfghGHGHkjkGHTGThhgf","uy7y7yyy7"]
      }
   */
  Future callApiPostWithHeader() async {
    //request
    String url = "https://testing.marketna.app/api/v1/product";
    String token = "9|mEdO8o6TgcEa6f5xOLFKwsGFgDwyamAcLVosvFAW";
    Map<String, String> headerRequest = NetworkHeaderTools.bearerToken( token );
    Map<String, dynamic> bodyRequest = Map();
    bodyRequest["title"]="Tutorial title";
    bodyRequest["description"]="Tutorial description";
    bodyRequest["price"]="123123";
    bodyRequest["published"]= 1;

    List<String> mediaList = [];
    mediaList.add( "fgfgfghGHGHkjkGHTGThhgfd02");
    bodyRequest["media"]= mediaList ;

    //response
    var response = await NetworkManagerDio().post( url, headers: headerRequest, body: bodyRequest );

    setState(() {
      data  = response.toString();
    });
  }

}

////
