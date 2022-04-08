import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/Widgets/AppBarW.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW(),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(top: 40),
           child:  Center(
             child: Column(
               children: [

                 Text(hotelStores.name,style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold)),
                 const SizedBox(height: 4,),
                 Text('Room Number #34', style: TextStyle(color: Colors.grey.shade800)),
                 const SizedBox(height: 4,),

                 Padding(
                   padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       Text('Email',style: GoogleFonts.inter(),),
                       const SizedBox(height: 2,),
                       Container(
                         width: double.infinity,
                         height: 44,
                         child: TextField(

                           decoration: InputDecoration(
                             label: Text('example@example.com',style: GoogleFonts.inter()),
                             suffixIcon: Icon(Icons.mail_outline,size: 20),
                             border: OutlineInputBorder(

                                 borderRadius: BorderRadius.circular(8),
                               ),
                           ),
                         ),
                       ),
                       SizedBox(height: 12,),
                       Text('Card Information',style: GoogleFonts.inter()),
                       Column(
                         children: [
                           Container(
                             width: double.infinity,
                             height: 44,
                             child:  TextField(
                               decoration: InputDecoration(
                                   label: Text('Credit card number',style: GoogleFonts.inter()),
                                   suffixIcon: Icon(Icons.credit_card,size: 20),
                                   border: const OutlineInputBorder(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8))
                                   )
                               ),
                             ),
                           ),
                          const SizedBox(height: 20,),
                          Row(
                               children: [
                                 Expanded(
                                   child: TextField(
                                     decoration: InputDecoration(
                                       label: Text('Expiration date',style: GoogleFonts.inter(fontSize: 15)),
                                         suffixIcon: Icon(Icons.date_range_outlined,size: 20),
                                         contentPadding: EdgeInsets.all(12),

                                         border: const OutlineInputBorder(
                                           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
                                         )
                                     ),
                                   ),
                                 ),
                                 Expanded(
                                   child: TextField(
                                     decoration: InputDecoration(
                                       label: Text('Security Code',style: GoogleFonts.inter()),
                                       suffixIcon: Icon(Icons.password_outlined,size: 20),
                                       contentPadding: EdgeInsets.all(12),
                                         border: const OutlineInputBorder(
                                           borderRadius: BorderRadius.only( bottomRight: Radius.circular(8)),
                                         )
                                     ),

                                   ),
                                 ),
                               ],
                             ),
                         ],
                       ),
                       const SizedBox(height: 10,),
                       Text('Name on card',style: GoogleFonts.inter()),
                       Container(
                         width: double.infinity,
                         height: 44,
                         child: TextField(
                           decoration: InputDecoration(
                             label: Text('Jhon Doe',style: GoogleFonts.inter()),
                             suffixIcon: const Icon(Icons.person,size: 20,),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(8),
                             ),
                           ),
                         ),
                       ),
                       const SizedBox(height: 30,),
                       ElevatedButton(onPressed: ()=>{}, child: Text('Pay \u{0024}200.00US', style:GoogleFonts.inter(color: Colors.white,),),
                         style: ElevatedButton.styleFrom(
                           minimumSize:const Size.fromHeight(46),
                           primary: Colors.deepPurpleAccent,
                           shadowColor: Colors.deepPurple.shade800,
                           elevation: 10,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),

                         ),),
                     ],
                   )
                 )
               ],
             )
           ),
         )
        ],
      ),
    );
  }


}