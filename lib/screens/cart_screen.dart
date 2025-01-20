import 'package:bloc_sample/blocs/cart_bloc.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,
      ),
      body: StreamBuilder(
          stream: cartBloc.getStream,
          initialData: cartBloc.getCart(),
          builder: (context,snapshot){
           return buildCart(snapshot);
      }),
    );
  }

  Widget buildCart(AsyncSnapshot snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (BuildContext context,index){
          final cart=snapshot.data;
          return ListTile(
            title: Text(cart[index].product.name),
            subtitle: Text(cart[index].product.price.toString()),
            trailing: IconButton(
                onPressed: (){
                  cartBloc.removeFromCart(cart[index]);
                },
                icon: Icon(Icons.remove_shopping_cart),
                color: Colors.white,
            ),
          );
        });
  }

}