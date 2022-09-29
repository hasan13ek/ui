import 'package:first_lesson/home_flutter3/set_location.dart';
import 'package:flutter/material.dart';

class Upload_preview extends StatefulWidget {
  const Upload_preview({Key? key}) : super(key: key);

  @override
  State<Upload_preview> createState() => _Upload_previewState();
}

class _Upload_previewState extends State<Upload_preview> {
  @override
  bool isDark = false;
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
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark?Colors.black54:Colors.grey[100],
        leading: InkWell(
          onTap: (){},
          child: Container(margin: EdgeInsets.only(left: 10),
              child: Image.asset("assets/images/img.png")),
        ),
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
            SizedBox(height: 28,),
            Center(child: Container(width: 235,height: 238,decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: isDark?Colors.black:Colors.white,
            image: DecorationImage(image: AssetImage("assets/images/okam.png")),
            ),
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 170,bottom: 170),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.account_circle,color: Colors.white,)),
              ),
            ),
            ),
            ),
            SizedBox(height: 57,),
            Column(
              children: [
                Center(
                  child:
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        style: raisedButtonStyle3,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Set_location()));
                        },
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
      backgroundColor: isDark?Color(0x3D0D0D0D):Colors.grey[100], );
  }
}
