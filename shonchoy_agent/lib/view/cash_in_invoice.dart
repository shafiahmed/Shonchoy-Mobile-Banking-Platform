import 'package:flutter/material.dart';
import 'package:shonchoy_agent/model/cash_in.dart';

class CashInInvoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CashInModel invoice = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Invoice',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'CashIn ID',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                Text(
                  invoice.id,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Transaction ID',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                Text(
                  invoice.transactionId,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Personal',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                Text(
                  invoice.receiver,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Amount',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                Text(
                  invoice.amount,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Created At',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                Text(
                  invoice.createdAt,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(24),
            child: RaisedButton(
              elevation: 0,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/home", (r) => false);
              },
              child: Container(
                height: 50,
                child: Center(
                  child: Text(
                    'Back to home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
