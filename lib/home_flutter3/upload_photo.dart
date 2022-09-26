import 'package:flutter/material.dart';

class Upload_photo extends StatefulWidget {
  const Upload_photo({Key? key}) : super(key: key);

  @override
  State<Upload_photo> createState() => _Upload_photoState();
}

class _Upload_photoState extends State<Upload_photo> {
  @override
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.green,
    elevation: 0,
    primary: Color(0xFF53E88B),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 18,bottom: 18),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18)),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: Container(margin: EdgeInsets.only(left: 10),
            child: Image.asset("assets/images/img.png")),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(child: Text("Upload Your Photo\nProfile",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),)),
              SizedBox(height: 10.0,),
              Container(child: Text("This data will be displayed in your account\nprofile for security"),),
              SizedBox(height: 18,),
                  Container(
                    width: 325,
                    height: 129,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Container(padding: EdgeInsets.only(top: 1,bottom: 1),child: Center(child: Image.asset("assets/images/galarey.png")),width: 80,height: 60,),
                        SizedBox(height: 4,),
                        Container(child: Padding(
                          padding: EdgeInsets.only(top: 13),
                          child: Text("From Gallarey",style: TextStyle(fontWeight: FontWeight.w800),),
                        ),)
                      ],
                    ),
                  ),
              SizedBox(height: 18,),
              Container(
                width: 325,
                height: 129,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(padding: EdgeInsets.only(top: 1,bottom: 1),child: Center(child: Image.asset("assets/images/fotaprat.png")),width: 80,height: 60,),
                    SizedBox(height: 4,),
                    Container(child: Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text("Take Photo",style: TextStyle(fontWeight: FontWeight.w800),),
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 29,),
              Column(
                children: [
                  Center(
                    child:
                    Expanded(
                      child: Container(
                        child: ElevatedButton(
                          style: raisedButtonStyle3,
                          onPressed: () {},
                          child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                        ),
                        width: 157,
                        height: 57,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    backgroundColor: Colors.grey[100],);
  }
}
