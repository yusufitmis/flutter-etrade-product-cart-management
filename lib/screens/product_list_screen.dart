import 'package:bloc_sample/blocs/cart_bloc.dart';
import 'package:bloc_sample/blocs/product_bloc.dart';
import 'package:flutter/material.dart';

import '../models/cart.dart';

class ProductListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ETRADE",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, "/cart"),
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
          )
        ],
      ),
      body: buildProductList(),
    );
  }

  buildProductList() {
    return StreamBuilder(
        initialData: productBloc.getAll(),
        stream: productBloc.getStream,
        builder: (context, snapshot){
          return snapshot.data.length>0?buildProductListItem(snapshot):Center(child: Text("data yok"));
        }
    );
  }

  buildProductListItem(AsyncSnapshot snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (BuildContext context,index){
          final list = snapshot.data;
          return ListTile(
            title: Text(list[index].name),
            subtitle: Text(list[index].price.toString()),
            trailing: IconButton(
                onPressed: (){
                  cartBloc.addToCart(Cart(list[index],1));
                },
                icon: Icon(
                  Icons.add_shopping_cart
                )),
          );
        });
  }



}