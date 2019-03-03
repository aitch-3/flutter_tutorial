import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/products.dart';

import 'package:flutter_tutorial/pages/product_create.dart';
import 'package:flutter_tutorial/pages/product_list.dart';


class ProductsAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
              child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Choose'),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                  title: Text('EasyList'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  })
            ],
          )),
          appBar: AppBar(
              title: Text('Manage Products'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.create),
                    text: 'Create Product',
                  ),
                  Tab(
                    icon: Icon(Icons.list), 
                    text: 'My Product'
                  ),
                ],
              )),
          body: TabBarView(children: <Widget>[
            ProductCreatePage(),
            ProductListPage()
          ],),
        ));
  }
}
