import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    List notes=[
       {"text":"Don't forget to buy a book","color":Colors.cyan,"time":"10.09 am"}
      ,{"text":"Brush my teeth","color":Colors.purple,"time":"12.10 pm"},
      {"text":"Our exam tomorrow at 9 am ","color":Colors.orange,"time":"02.00 am"},
      {"text":"finish our study","color":Colors.deepPurple,"time":"07.19 am"},
       {"text":"playing football at 10 pm","color":Colors.deepPurpleAccent,"time":"09.09 pm"},
      {"text":"Our exam tomorrow at 9 am ","color":Colors.lightGreen,"time":"12.15 pm"},
      {"text":"Don't forget to buy a book","color":Colors.deepOrange,"time":"01.30 am"},
      {"text":"finish our study","color":Colors.deepPurple,"time":"03.02 am"},
     {"text":"Brush my teeth","color":Colors.blueAccent,"time":"05.19 pm"},

    ];
    return Scaffold(
     backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Your Notes!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add,color: Colors.white,),backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: Column(
            children: [
        SizedBox(height: 20.h,),
        Container(
          height:540.h ,
          width: 400.w,
          margin: EdgeInsets.all(5),
          child: GridView.builder(
            scrollDirection: Axis.vertical,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,childAspectRatio: 1,crossAxisSpacing: 30,mainAxisExtent: 150) ,
              itemCount: notes.length,
              itemBuilder:(context,count){
               return Container(
                 padding: EdgeInsets.all(7),
                  width: 150.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: notes[count]['color'],
                    border: Border.all( color: notes[count]['color'],width: 1.w),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Stack(children:
                  [
                    Text("${notes[count]['text']}",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.normal),)
                  ,Positioned(child: Text("${notes[count]['time']}",style: TextStyle(color: Colors.black45,fontSize: 15.sp,fontWeight: FontWeight.normal),),bottom: 0,right: 0,)
                  ]),
                );
              }),
        )
         ],
            )
        ),
      )
    );
  }
}
