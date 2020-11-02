import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: GameAspect(),
    ));

class GameAspect extends StatefulWidget {
  @override
  _GameAspectState createState() => _GameAspectState();
}

class _GameAspectState extends State<GameAspect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("45",style: TextStyle(color: Colors.black,fontSize: 40),),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),
      ),
      ),
      body: SafeArea(
        child: Column(
          children: [

            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                child: Text("SAY SOMETHING INTERESTING",style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),)),

            Container(
              
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                 child: Image(
                   fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://gmsrp.cachefly.net/images/20/02/05/928efae747215dba94d31689997f1ec8/960.jpg"),
              ),
               ),
              height: 430,
              width: 400,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              width: 411,
              child: Row(
                children: [
                  FlatButton(
                      child: Icon(
                    Icons.title,
                    size: 25,
                    color: Colors.black,
                  )),
                  SizedBox(
                    width: 230,
                  ),
                  FlatButton(
                      child: Icon(
                    Icons.mic,
                    size: 25,
                    color: Colors.black,
                  )),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 375,
              margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: FlatButton(
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    18.0,
                  ),
                  side: BorderSide(color: Colors.white),
                ),
                color: Colors.orange,
                onPressed: () {},
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
