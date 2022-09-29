import 'package:flutter/material.dart';

class Edit_location extends StatefulWidget {
  const Edit_location({Key? key}) : super(key: key);

  @override
  State<Edit_location> createState() => _Edit_locationState();
}
class _Edit_locationState extends State<Edit_location> {
  @override
  bool isD = false;
  bool bkm = false;
  Widget build(BuildContext context) {
    isD = Theme.of(context).brightness ==Brightness.dark;
    bkm = Theme.of(context).brightness ==Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isD?Colors.black:Colors.grey[200],
        elevation: 0,
        leading: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset("assets/images/img.png"),
          ),
        ),
      ),
   body: Container(
     padding:const EdgeInsets.all(20),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(child: Padding(
           padding: const EdgeInsets.only(left: 10),
           child: const Text("Shipping",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25),),
         ),
         ),
         const SizedBox(height: 20,),
             Container(
               width: 335,height: 107,
               decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: isD?Colors.grey[800]:Colors.white),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Container(child: Padding(
                         padding: const EdgeInsets.only(left: 12,top: 14),
                         child:const Text("Order Location",style: TextStyle(fontSize: 14,color: Colors.grey),),
                       ),),
                     ],
                   ),
                   const SizedBox(height: 12,),
                   Row(
                     children: [
                       Container(child: Image.asset("assets/images/po.png"),width: 33,height: 33,padding: EdgeInsets.only(left: 10),),
                       SizedBox(width: 10,),
                       Container(child: const Text("8502 Preston Rd. Inglewood,\nMaine 98380",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),)
                     ],
                   ),

                 ],
               ),
             ),
         const SizedBox(height: 20,),
         Container(
           width: 335,
           height: 141,
           decoration:const BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(22)),color:Colors.grey,
           ),
                child: Column(
                  children: [
                    Container(child:const Padding(padding: EdgeInsets.only(right: 220,top: 10), child: Text("Deliver To",style: TextStyle(fontSize: 14),),),),
                    const SizedBox(height: 12,),   
                    Container(
                      child: Row(children: [
                        Container(child: Image.asset("assets/images/po.png"),width: 33,height: 33,padding: EdgeInsets.only(left: 10),),
                        const SizedBox(width: 10,),
                        Container(child: const Text("4517 Washington Ave. Manchester,\nKentucky 39495",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),)
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 118),
                      child: Container(child: TextButton(onPressed: (){}, child: const Text("Set Location",style: TextStyle(fontSize: 14,color: Color(0xFF53E88B)),)),),
                    )
                  ],
                ),
         ),
       ],
     ),
   ),
   backgroundColor: isD?Colors.black:Colors.grey[200], );
  }
}
