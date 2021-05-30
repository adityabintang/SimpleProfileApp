import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
    debugShowCheckedModeBanner: false,
  ));
}

//TODO 1
class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 3
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        //TODO 2
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        //Shadow
        elevation: 0.0,
      ),

      //TODO 4 : make a padding
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          //TODO 6: membuat text menjadi rata kiri
          crossAxisAlignment: CrossAxisAlignment.start,

          //TODO 5 : make a column
          children: <Widget>[
            //TODO 15
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://lh3.googleusercontent.com/NvxKtITJ9isJIssWy2uepB-aw74xNn0CqVe-NeRn1Y7AIPd8nuOPCgGfhEuWpIyDFLJZZEnFL9AfyylSHcL66UgGBBfkwUl9F9VAfchugyR_4VnbzKRl8irg4i1yO6xwdO-MK8q07WOoB-4ZZSvzkhFhhwWFWsrwvre_RSf0sxG_MDaP1V_i5AM1IqlO0_Ew-yoy5_hAeoPL1qhRW0xdJ0zZ5_7wJByU7lbg_5Xo1N1AlDyv-ec8H2Klk4E0mHshkwDv-2EWBEBsMmA4GpF4KoazsCbG0DiHVMPVrhF6GJC526cKcsrl7Y_y_0rkAbsphulVnwZynCxcjVlYRBzYOTCikzH5yG88WrLjh4Z0JWGDNLCEudqjZ3Kom3n72BZiO0wCMt1stNuUA-fMDDqpb-Wnc7B8-FtzowcJ4fd1U5i0mz8PEdeZJQXLYXngwYALUm_jPSUGYz08mHUR011eJ7CcgXQBaKtQh7RlJ4lSEJGGX2bn-ttLXFONaldSR7nhKVc5S5-pMw7wAVRcL3VT58DrjYcy87JZlH_Ov5dnALDwIFF0pspxE3CiTDl9Y-XlgpWJMkbmPo7pg7cM6k4sv7RtPmKhHzFI7lIUdf7pO-3CR1-8soYNgZjMLiGHeWBYPboI_Dv-mYNIdAunLrFkl6XZlVRpclb4z4qgV3mnKzSMaKV_nzFtXacoTzUQJUvWOFdCKMoX-_Ki40hxlKarngyv=w524-h654-no?authuser=0"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),

            //TODO 6: Make two text widget in column
            Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),

            //TODO 7: Memberikan jarak pada text name
            SizedBox(height: 10.0),

            Text(
              "Aditya Bintang",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            //TODO 8
            SizedBox(height: 30.0),

            //TODO 9
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),

            //TODO 10: Memberikan jarak pada text name
            SizedBox(height: 10.0),

            Text(
              "8",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            //TODO 11 : memberikan space pada text dibawahnya
            SizedBox(height: 30.0),

            //TODO 12
            Row(
              children: [
                //TODO 13
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                //TODO 15
                SizedBox(width: 10.0),

                //TODO 14
                Text(
                  "adityabintang149@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
