import 'package:flutter/material.dart';

class OrderModalInfo extends StatelessWidget {
  const OrderModalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // for (int index = 0; index < ctlRecherche.imageList.length; index++)

          ListTile(
            title: Text('Paiement'),
            leading: Icon(Icons.payment),
            onTap: () {},
          ),
          ListTile(
            title: Text('Appeller'),
            leading: Icon(Icons.call),
            onTap: () {},
          ),
          ListTile(
            title: Text('Chat'),
            leading: Icon(Icons.message),
            onTap: () {},
          ),
          ListTile(
            title: Text('Détails'),
            leading: Icon(Icons.info),
            onTap: () {},
          ),
        ],
      ),
    ));
  }
}
