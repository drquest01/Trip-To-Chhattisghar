import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("More Detail"),
        backgroundColor: Colors.black,

      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 340,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/place1.jpg"),
                            fit: BoxFit.cover
                        )

                    ),

                  )),

              Positioned(
                top: 315,
                  child:Container(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 20),

                    width: MediaQuery.of(context).size.width,
                    height: 10000,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,



                      children: [

                        Text("Chitrakoot",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 30,
                        ),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.red,),
                            Text("Chhattisghar , India",style: TextStyle(
                              fontSize: 15
                            ),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Wrap(
                          children: List.generate(4, (index) {
                            return Icon(Icons.star,color: Colors.amber,);
                          }),
                        ),
                        SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discription",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),),
                            SizedBox(height: 10,),
                            Text("Chitrakoot waterfalls is considered to be one of the largest waterfalls in India. "
                                "This river is famous in the country and abroad due"
                                " to being the Baramsi river and spreading its beauty.",style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),),


                          ],
                        ),
                        SizedBox(height: 50,),
                        Container(
                          child: Positioned(
                              left: 0,
                              right: 0,
                              child: Container(
                                width: double.maxFinite,
                                height: 340,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("img/raipur.jpg"),
                                        fit: BoxFit.cover
                                    )

                                ),

                              )),



                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,



                            children: [

                            Text("Raipur",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 30,
                          ),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,color: Colors.red,),
                              Text("Capital , Chhattisghar",style: TextStyle(
                                  fontSize: 15,
                              ),)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Wrap(
                            children: List.generate(4, (index) {
                              return Icon(Icons.star,color: Colors.amber,);
                            }),
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discription",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black,
                              ),),
                              SizedBox(height: 10,),
                              Text("Raipur comes with a rich heritage and cultural history which has seen many rulers as the power behind it; thus"
                                  " influencing its journey. A growing industrial powerhouse, this Chhattisgarh capital is primarily a business"
                                  " hub but there are many things to do and places to see in Raipur. The major tourist attractions"
                                  " in Raipur include museums, natural parks, lakes and places of religious importance.",style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),),


                            ],

                          ),
                        ])
                  ),
                        SizedBox(height: 30,),
                        Container(
                          child: Positioned(
                              left: 0,
                              right: 0,
                              child: Container(
                                width: double.maxFinite,
                                height: 340,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("img/tirathgarh.jpg"),
                                        fit: BoxFit.cover
                                    )

                                ),

                              )),



                        ),
                        SizedBox(height: 10,),
                        Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,



                                children: [

                                  Text("Teerathgarh Waterfall",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 30,
                                  ),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.red,),
                                      Text(" Chhattisghar",style: TextStyle(
                                        fontSize: 15,
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Wrap(
                                    children: List.generate(4, (index) {
                                      return Icon(Icons.star,color: Colors.amber,);
                                    }),
                                  ),
                                  SizedBox(height: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Discription",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),),
                                      SizedBox(height: 10,),
                                      Text("Situated 35 kilometers from Jagdalpur, this stunning waterfall attracts tourists’ attention."
                                          " The tourists are so lost in the fascinating shade that they do not feel like going back from here."
                                          " Located on the river Munga bahar, this waterfall "
                                          "falls on the 300 feet below the stilted hillside of natural structures, "
                                          "the natural fountain of milk foam and water droplets made from the fall of the water soothe the"
                                          " tourists. Thousands of years ago, the cliffs of downstream down the river were struck down by a lunar crater with an"
                                          " earthquake, and the staircase made by it, Numa Valley created this panoramic waterfall.",style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                      ),),


                                    ],

                                  ),
                                ])
                        ),
                        SizedBox(height: 30,),
                        Container(
                          child: Positioned(
                              left: 0,
                              right: 0,
                              child: Container(
                                width: double.maxFinite,
                                height: 340,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("img/sirpur.jpg"),
                                        fit: BoxFit.cover
                                    )

                                ),

                              )),



                        ),
                        SizedBox(height: 10,),
                        Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,



                                children: [

                                  Text("Sirpur",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 30,
                                  ),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.red,),
                                      Text(" Chhattisghar",style: TextStyle(
                                        fontSize: 15,
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Wrap(
                                    children: List.generate(4, (index) {
                                      return Icon(Icons.star,color: Colors.amber,);
                                    }),
                                  ),
                                  SizedBox(height: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Discription",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),),
                                      SizedBox(height: 10,),
                                      Text("Sirpur is a small village located in the state of Chhattisgarh, situated on the banks of river Mahanadi."
                                          " It is 35 km away from the Mahasamund district and around 78 km away from the city of Raipur,"
                                          " which is the capital of Chhattisgarh. The village of Sirpur is an archaeological wonder."
                                          " Inspiration to many architects, this village is rich in its temple culture. A quaint hidden gem,"
                                          " it has a deep connection to "
                                          "the Buddhism world and a treasure for archaeological findings from the 8th century.",style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                      ),),


                                    ],

                                  ),
                                ])
                        ),
                      ],
                    ),


                  ) ),



            ],


          ),
        ),

      ),
    );
  }
}
