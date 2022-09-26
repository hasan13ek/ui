import 'package:flutter/material.dart';

class Set_location extends StatefulWidget {
  const Set_location({Key? key}) : super(key: key);

  @override
  State<Set_location> createState() => _Set_locationState();
}

class _Set_locationState extends State<Set_location> {
  @override
  final ButtonStyle raisedButtonStyle1 = ElevatedButton.styleFrom(
    onPrimary: Colors.blue,
    elevation: 0,
    primary: Color(0xFFF6F6F6),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 6,bottom: 7),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
    ),
  );
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.blue,
    elevation: 0,
    primary: Color(0xFF53E88B),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 6,bottom: 7),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: InkWell(
            onTap: (){},
            onLongPress: (){},
            child: Container(child: Image.asset("assets/images/img.png"),width: 45,height: 45,)
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/burger.png"),)),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Container(child: Text("Set Your Location",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25),),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("This data will be displayed in your account\nprofile for security",style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Container(width: 342,height: 147,
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.white,),
                 child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.account_balance,color: Colors.yellowAccent,size: 35,)),
                          ),
                          SizedBox(width: 14,),
                          Container(child: Text("Your Location",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),),),
                        ],
                      ),


                      SizedBox(height: 25,),
                      Container(
                        child: ElevatedButton(
                          style: raisedButtonStyle1,
                          onPressed: () {},
                          child: Text("Set Location",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16),),
                        ),
                        width: 300,
                        height: 57,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 150,),
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
    backgroundColor: Colors.grey[200],);
  }
}
