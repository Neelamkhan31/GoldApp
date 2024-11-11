import 'package:flutter/material.dart';



class GoldAppScreen extends StatefulWidget {
  const GoldAppScreen({super.key});

  @override
  State<GoldAppScreen> createState() => _GoldAppScreenState();
}

class _GoldAppScreenState extends State<GoldAppScreen> {
  double totalPrice=0.0;
  TextEditingController tolaPriceController=TextEditingController();
  TextEditingController tolaQuantityController=TextEditingController();
  TextEditingController MashaQuantityController=TextEditingController();
  TextEditingController rattiQuantityController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.black,titleTextStyle: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
        title: Text('Gold App'),
        centerTitle: true,
      ), //appBar

      body: SingleChildScrollView(
        child: Column(
        children: [
            Padding(padding: EdgeInsets.only(left: 40, right: 40, top: 20),

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text('Enter Tola Price', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),



                Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(top: 20,bottom: 20,),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                  ),


                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white, ),
                      controller:tolaPriceController,
                      keyboardType: TextInputType.number,

                    ),
                  ),



        Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text('Enter tola Quantity', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(top: 20,bottom: 20,),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(5),
              ),


              child: TextFormField(
                style: TextStyle(
                  color: Colors.white, ),
                controller:tolaQuantityController,
                keyboardType: TextInputType.number,

              ),
            ),




            Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text('Enter Masha Quantity', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(top: 20,bottom: 20,),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),


                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,),
                    controller:MashaQuantityController,
                    keyboardType: TextInputType.number,

                  ),
                ),







                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text('Enter Ratti Quantity', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                    Container(
                      padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(top: 20,bottom: 20,),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),


                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,),
                        controller:rattiQuantityController,
                        keyboardType: TextInputType.number,

                      ),
                    ),

         Center(child: Text('Total Price:$totalPrice',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),)),





          ///TODO:calculate button
          GestureDetector(
              onTap: () {
                if (tolaPriceController.text == '') {
                  tolaPriceController.text = '0';

                  setState(() {

                  });
                }


                if (tolaQuantityController.text == '') {
                  tolaQuantityController.text = '0';

                  setState(() {

                  });
                }

                double tolaPrice = double.parse(tolaPriceController.text);
                double tolaQuantity = double.parse(tolaQuantityController.text);
                //Masha Formula

                //to get 1 masha price
                double pricePerMasha=tolaPrice/12;
                //
                double mashaQuantity=double.parse(MashaQuantityController.text);
                //total price of masha quantity entered
                double totalPriceMasha=pricePerMasha*mashaQuantity;

                //Ratti Quantity

                //to fetch ratti quantity from text field

                double rattiQuantity=double.parse(rattiQuantityController.text);

                //to find price of 1 ratti
                double pricePerRatti=tolaPrice/96;
                //to get total price of ratti quantity
                double totalPriceRatti=pricePerRatti*rattiQuantity;

                totalPrice = (tolaPrice * tolaQuantity)+totalPriceMasha+totalPriceRatti;
                tolaPrice=totalPrice+totalPriceMasha;

                setState(() {});
              },

     child: Container(
       margin: EdgeInsets.only(left: 90, top: 15),
       height: 40,
       width: 150,
       decoration: BoxDecoration(
         color: Colors.purple,
          borderRadius: BorderRadius.circular(5),
       ),
         child: Center(child: Text('Calculate',style: TextStyle(fontWeight: FontWeight.bold),),),

             ),
          ),

    ], ),

    ],),
        ], ),//scaffold

    ],
     ),
     ),
    ],
    ),
     ),
     );



  }

}
















