import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

import 'githubModel.dart';

class Homestanskiy extends StatefulWidget {
  const Homestanskiy({Key? key}) : super(key: key);

  @override
  State<Homestanskiy> createState() => _HomestanskiyState();
}


Future<GithubModel?> getData() async{
  String url = "https://api.github.com/users/hasan13ek";
  var response = await http.get(Uri.parse(url));

  if(response.statusCode==200){
    var json = jsonDecode(response.body)as Map<String,dynamic>;
    return GithubModel.fromJson(json);
  }
  return null;
}

class _HomestanskiyState extends State<Homestanskiy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.drag_handle_sharp,
          size: 34,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.notification_add_rounded,
            size: 26,
            color: Colors.white,
          )
        ],
        title: Center(
            child: Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.r),
              image: DecorationImage(
                  image: AssetImage(
                "assets/images/github.png",
              ))),
        )),
      ),
      body: FutureBuilder<GithubModel?>(
        future: getData(),
        builder: (BuildContext contex,AsyncSnapshot<GithubModel?> snapshot){
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if(snapshot.hasData){
            GithubModel? githubModel = snapshot.data;
            return Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*1,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 20.h,),
                  Row(
                    children: [Padding(padding: EdgeInsets.only(left: 20.r)),
                      Container(width: 80.w,height: 80.h,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("${githubModel?.avatar_url}"),fit: BoxFit.cover),borderRadius: BorderRadius.circular(50.r),color: Colors.red),),
                      SizedBox(width: 20.w,),
                      Column(
                        children: [
                          Text("${githubModel?.name}",style: TextStyle(color: Colors.black,fontSize: 24.sp,fontWeight: FontWeight.w700),),
                          Text("${githubModel?.name}",style: TextStyle(fontSize: 22.sp),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  InkWell(
                    onTap: (){},
                    child: Container(padding: EdgeInsets.only(right: 220.r),width: 330.w,height: 34.h,decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(6.r),color: Colors.grey[200]),
                    child: Center(child: Text("🎯   Focusing",style: TextStyle(color: Colors.black),)),),
                  ),
                  SizedBox(height: 10.h,),
                  InkWell(
                    onTap: (){},
                    child: Container(width: 330.w,height: 34.h,decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(6.r),color: Colors.grey[200]),
                      child: Center(child: TextButton(onPressed: (){}, child: Center(child: Text("Edit Profil",style: TextStyle(color: Colors.black),)))),),
                  ),
                  SizedBox(height: 18.h,),
                  Container(margin: EdgeInsets.only(right: 100.r),child: Text("🔗 ${githubModel?.html_url}",style: TextStyle(fontSize: 16.sp),)),
                  SizedBox(height: 14.h,),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 37.r)),
                      Icon(Icons.supervised_user_circle,color: Colors.grey,),
                      SizedBox(width: 4.w,),
                      Text("${githubModel?.followers}",style: TextStyle(fontSize: 19.sp,fontWeight: FontWeight.w700),),
                      SizedBox(width: 4.h,),
                      Text("followers",style: TextStyle(fontSize: 16),),
                      SizedBox(width: 12.w,),
                      Text("${githubModel?.following}",style: TextStyle(fontSize: 19.sp,fontWeight: FontWeight.w700),),
                      SizedBox(width: 4.w,),
                      Text("following",style: TextStyle(fontSize: 16),),
                      SizedBox(width: 10.w,),
                      Text("Repositories",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16.sp),),
                      SizedBox(width: 4.w,),
                      Container(width: 16,height: 16,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),color: Colors.grey[200]),child: Center(child: Text("${githubModel?.public_repos}",style: TextStyle(fontWeight: FontWeight.w500),)),)

                    ],
                  )
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}