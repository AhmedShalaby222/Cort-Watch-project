import 'package:cortwatch/components/dateTime.dart';
import 'package:cortwatch/components/ourtext.dart';
import 'package:cortwatch/components/ring.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/animatedFootIndicator.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
          backgroundColor: Colors.grey,
       drawer: Drawer(

         backgroundColor: Colors.grey,
         child: Container(
           width: MediaQuery.of(context).size.width,
           height:MediaQuery.of(context).size.height,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 30.h,),
               Center(child: Container(width: 160.w,height: 32.h,color: Colors.orange,child: Text(" Your Activity! ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25),))),
               SizedBox(height: 40.h,),
               Container(
                   width: 170.w,
                   height: 90.h,
                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     border: Border.all(color: Colors.white30),
                     borderRadius: BorderRadius.circular(20.r),
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("  Daily Score",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25.sp),),
                       SizedBox(height:10.h ,),
                       Row(
                         children: [
                           Text("  210",style: TextStyle(color:Colors.orange.shade700,fontWeight: FontWeight.bold,fontSize: 30.sp ),),
                           Icon(Icons.local_fire_department,color: Colors.red.shade700,size: 50,),
                         ],
                       )
                     ],
                   ),
               ),
               SizedBox(height: 40.h,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                       width: 180.w,
                       height: 100.h,
                       decoration: BoxDecoration(
                         color: Colors.blueGrey,
                         border: Border.all(color: Colors.white30),
                         borderRadius: BorderRadius.circular(20.r),
                       ),
                       child: Column(
                         children: [
                           Text("Weekly Score",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25.sp),),
                           SizedBox(height:10.h ,),
                           Row(
                             children: [
                               Text("  3417",style: TextStyle(color:Colors.orange.shade700,fontWeight: FontWeight.bold,fontSize: 40 ),),
                               Icon(Icons.local_fire_department,color: Colors.red.shade700,size: 50,),
                             ],
                           )
                         ],
                       )
                   ),
                 ],
               ),
               SizedBox(height: 40.h,),
               Container(
                   width: 180.w,
                   height: 100.h,
                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     border: Border.all(color: Colors.white30),
                     borderRadius: BorderRadius.circular(20.r),
                   ),
                   child: Column(
                     children: [
                       Text("Monthly Score",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25.sp),),
                       SizedBox(height:10.h ,),
                       Row(
                         children: [
                           Text(" 13526",style: TextStyle(color:Colors.orange.shade700,fontWeight: FontWeight.bold,fontSize: 40 ),),
                           Icon(Icons.local_fire_department,color: Colors.red.shade700,size: 50,),
                         ],
                       )
                     ],
                   )
               ),
             ],
           ),
         )
       ),
       body: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: Column(
           children: [
              SizedBox(height: 30.h,),
             Container(
               width: MediaQuery.of(context).size.width,
               height: 250.h,
               margin: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.deepOrange),
                 color: Colors.deepOrange,
                 borderRadius: BorderRadius.circular(20.sp),
               ),
               child: Column(
                 children: [
                   SizedBox(height: 10.h,),
                   Row(
                     children: [
                       IconButton(onPressed: (){_scaffoldKey.currentState?.openDrawer();}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,)),
                       Text("210 ", style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                       Text("steps",style:TextStyle(fontSize: 25,fontWeight: FontWeight.normal,color: Colors.black) ,)
                      , SizedBox(width: 70.w,),
                  AnimatedFootIndicator(percentage: 75,),
             ]),
                   SizedBox(height: 20.h,),
                  Ourtext(text: "You have a great work Today !",fontWeight: FontWeight.normal,),
                   SizedBox(height: 10.h,),
                   Divider(
                     thickness: 1,
                     color: Colors.white,
                     indent: 15,
                     endIndent: 15,
                   ),
                   SizedBox(height: 20.h,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                      Ourtext(text: "390 \n Cal"),
                       Ourtext(text: "0.8 \n Km"),
                       Ourtext(text: "160 \nminutes"),
                     ],
                   )
                 ],
               ),
         ),

             Container(
                 height: 150.h,
                 width: 300.w,
                 child: DateTimeWidget()),

             SizedBox(
               height: 180.h,
               width: 200.w,
               child: GlowingRing(),
             ),



    ])) );
  }
}
