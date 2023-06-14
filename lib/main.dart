import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:IdCard(),
  ));
}

class IdCard extends StatefulWidget {


  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int inceremant=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("IdCard"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
         floatingActionButton: FloatingActionButton(
           onPressed: (){
             setState(() {
               inceremant+=1;
             });
           }
           ,
           child: Icon(Icons.add),
           backgroundColor: Colors.grey[800],
         ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30,40,30,0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child:
            CircleAvatar(backgroundImage: AssetImage("assets/ben.jpg"), radius: 100,)),
            Divider(height: 90,color: Colors.grey[800],),
            // SizedBox(height: 40,),
            Text("NAME",style: TextStyle(color: Colors.grey,letterSpacing: 2),),
            SizedBox(height: 20,),
            Text("Serhat cetin",style: TextStyle(color: Colors.amberAccent[200],letterSpacing: 2,fontSize: 28,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("POSITION",style: TextStyle(color: Colors.grey,letterSpacing: 2),),
            SizedBox(height: 40,),
            Text("TEACHER",style: TextStyle(color: Colors.amberAccent[200],letterSpacing: 2,fontSize: 28,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("SERVICE YEAR",style: TextStyle(color: Colors.grey,letterSpacing: 2)),
            SizedBox(height: 20,),
            Text("$inceremant",style: TextStyle(color: Colors.amberAccent[200],letterSpacing: 2,fontSize: 28,fontWeight: FontWeight.bold)),
            SizedBox(height: 40,)
            ,Row(
              children: [
                Icon(
                  Icons.email,color: Colors.grey[400],
                ),
                Text("serhat06.sc@gmail.com",style: TextStyle(color: Colors.grey[400],fontSize: 18,),)
              ],
            )
          ],
        ),
      ),

    );
  }
}
