import 'package:flutter/material.dart';
import 'package:project/Data.dart';
import 'package:http/http.dart' as http;
class ccList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PageListState();
  }
}

class PageListState extends State<ccList>{
  List<ccData> data = [
    ccData(name: 'Bitcoin', symbol: 'BTC', price: 29544),
    ccData(name: 'Etherium', symbol: 'ETH', price: 2762),
    ccData(name: 'Stellar', symbol: 'XLM', price: 0.234),
  ];
  int _step = 0;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Hmmm'),
        ),
        body: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color:Colors.white,
              child: Stepper(
                steps: [
                  Step(title: Text('Why crypto?'), content: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Bitcoin fell drastically during Asian trading hours earlier today to a 24-hour low of 25,402. This also notched a 52-week low, and matched December 2020 levels before BTC rebounded above the 29,000 line. Despite Bitcoin’s midday bounce, the original crypto is still down more than 5% the last 24 hours.', style: TextStyle(fontSize: 16)),
                  )),
                  Step(title: Text('Risks'), content: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Experts critical of the Terra ecosystem say the mechanism behind TerraUSD was fundamentally flawed, and don’t see its unraveling as much of a surprise. In efforts to save the stablecoin, the Luna Foundation Guard (LFG), the nonprofit that supports the Terra network, moved all its reserves on Bitcoin exchanges to protect UST’s dollar peg.  LFG’s bitcoin reserve balance is now zero.', style: TextStyle(fontSize: 16)),
                  )),
                  Step(title: Text('Should You Buy the Dip in Crypto?'), content: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Using your imagination, you should understand that catching a falling knife—aka “buying the dip”—nearly always ends painfully. That’s not to say that skillful investors can’t make a quick buck trading on heightened market volatility. But the point here is that big, fast market moves can be unsettling for the typical retail investor.', style: TextStyle(fontSize: 16)),
                  )),
                ],
                onStepTapped: (int Index){
                  setState((){
                    _step = Index;
                  });
                },
              currentStep: _step,
                onStepContinue: (){
                  if(_step != 2) {
                    setState(() {
                      _step += 1;
                    });
                  }
                },
                onStepCancel: (){
                  if(_step != 0){
                    setState(() {
                      _step -= 1;
                    });
                  }
                },
              ),
            ),
            Container(
              color:Colors.white70,
              child: Center(
                child: ListView(
                  children: _buildList(),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {},
          child: Icon(Icons.adb_outlined),)
      );
    }


    List<ListTile> _buildList(){
      return data.map((ccData p) => ListTile(
        title: Text(p.symbol.toString()),
        subtitle: Text(p.name.toString()),
        leading: CircleAvatar(child: Icon(Icons.account_balance_wallet_outlined)),
        trailing: Text('\$${p.price.toString()}'),
      )).toList();
    }
  }
