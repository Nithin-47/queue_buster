import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                title: Text('Shreyas',style: TextStyle(

                ),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('abc@gmail.com'),
                    Row(
                      children: <Widget>[
                        Text('View dineline',style: TextStyle(
                          color: Colors.pink,

                        ),),
                        Icon(Icons.arrow_right,color: Colors.pink,)
                      ],
                    ),
                  ],
                ),
                isThreeLine: true,

                trailing: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://avatars1.githubusercontent.com/u/60895972?s=460&v=4'),
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.bookmark),
                      SizedBox(height: 5,),
                      Text('Bookmarks')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.notifications),
                      SizedBox(height: 5,),
                      Text('Notifications')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.settings),
                      SizedBox(height: 5,),
                      Text('Settings')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.payment),
                      SizedBox(height: 5,),
                      Text('Payments')
                    ],
                  ),
                ],
              ),
              Divider(),
              ListTile(
                title: Text('Zomato Gold'),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(),
              Text('Food Orders',style: TextStyle(

              ),),
              ListTile(
                leading: Icon(Icons.shopping_bag,color: Colors.black,),
                title: Text('Your Orders',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.favorite,color: Colors.black,),
                title: Text('Favorite Orders'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.book,color:Colors.black,),
                title: Text('Address Book',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.message,color:Colors.black,),
                title: Text('Online Ordering Help',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(),
              Text('food@word',style: TextStyle(

              ),),
              ListTile(
                leading: Icon(Icons.toggle_off,color: Colors.black),
                title: Text('Enable',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(),
              Text('Table Bookings',style: TextStyle(

              ),),
              ListTile(
                leading: Icon(Icons.calendar_month,color: Colors.black,),
                title: Text('Your Bookings',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.message,color:Colors.black,),
                title: Text('Table Reservation Help',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(),
              ListTile(
                title: Text('About',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(),
              ListTile(
                title: Text('Send Feedback',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text('Report a Safety Emergency',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text('Rate us on the Play Store',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text('Log Out',style: TextStyle(

                ),),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
      ),
    );
  }
}