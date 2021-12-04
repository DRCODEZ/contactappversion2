import 'package:contactappversion2/contact_details_view.dart';
import 'package:flutter/material.dart';

import 'contact_model.dart';

//import 'contact_details_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> data = [
    {
      "name": "Reagan Mcknight",
      "phone": "1-565-827-8982",
      "email": "nonummy.ac@outlook.couk",
      "country": "Pakistan",
      "region": "Pays de la Loire"
    },
    {
      "name": "Macy Mcdowell",
      "phone": "434-5712",
      "email": "tempor.diam@aol.edu",
      "country": "Brazil",
      "region": "Huáběi"
    },
    {
      "name": "Carissa Savage",
      "phone": "1-567-743-4341",
      "email": "vel@google.com",
      "country": "India",
      "region": "Loreto"
    },
    {
      "name": "Bruce Cannon",
      "phone": "582-3896",
      "email": "eros.proin.ultrices@hotmail.com",
      "country": "New Zealand",
      "region": "South Island"
    },
    {
      "name": "Brian Ramos",
      "phone": "674-3271",
      "email": "at.egestas@aol.couk",
      "country": "South Korea",
      "region": "Azad Kashmir"
    },
    {
      "name": "Carlos Harper",
      "phone": "1-238-113-6033",
      "email": "proin.nisl@icloud.org",
      "country": "Russian Federation",
      "region": "Guanacaste"
    },
    {
      "name": "Britanney Dorsey",
      "phone": "871-3241",
      "email": "non@yahoo.couk",
      "country": "Indonesia",
      "region": "Jharkhand"
    },
    {
      "name": "William Ortiz",
      "phone": "1-412-819-7163",
      "email": "molestie.in@yahoo.ca",
      "country": "Vietnam",
      "region": "North Island"
    },
    {
      "name": "Shellie Merrill",
      "phone": "1-241-690-5206",
      "email": "non@google.couk",
      "country": "Turkey",
      "region": "Gorontalo"
    },
    {
      "name": "Clinton Mosley",
      "phone": "1-768-578-0868",
      "email": "sagittis.augue@google.edu",
      "country": "Chile",
      "region": "South Chungcheong"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          title: const Text(
            'MY Contacts',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Center(
                    child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/avatar.png'))))
          ],
          bottom: PreferredSize(
            child: Padding(

              //Setting the padding of the Recent TextWidget.
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              child: Material(
                //elevation will add drop shadow
                elevation: 5,
                //This is the shadow color
                shadowColor: Colors.grey,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          /* 
                      borderSide: const BorderSide(
                            color: Colors.grey,
                          ), */
                          borderRadius: BorderRadius.circular(15)),
                      hintText: 'Search by name or number',
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                  //hintText: 'Search by name or number',
                ),
              ),
            ),
            preferredSize: const Size.fromHeight(90),
          ),
        ),
        body: SafeArea(
            child: ListView(
              controller: _scrollController,
               children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Recents',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
                     ListView.separated(
              controller: _scrollController,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return  ListTile(
                   onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ContactDetailsView(
                          contact: Contact(
                              country: 'Ghana',
                              email: 'bright@ghanatechlab.com',
                              name: 'Etornam Bright',
                              phone: '+233 24 54 36 757',
                              region: 'Greater Accra'));
                    }));
                  }, 
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/person_1.png'),
                  ),
                  title: Text(
                    'Etornam Bright',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text('+233 24 54 36 757'),
                  trailing: IconButton(
                      onPressed: null, icon: Icon(Icons.more_horiz)),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  indent: 25,
                  thickness: 2,
                );
              },
              itemCount: 3),
              
            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Contacts',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),


        ])));
  }
}
