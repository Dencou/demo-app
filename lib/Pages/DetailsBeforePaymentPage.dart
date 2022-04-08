import 'package:demo_app/Pages/PaymentPage.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/Widgets/AppBarW.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';


class DetailsBeforePaymentPage extends StatefulWidget {
  const DetailsBeforePaymentPage({Key? key}) : super(key: key);

  @override
  _DetailsBeforePaymentPageState createState() => _DetailsBeforePaymentPageState();
}

class _DetailsBeforePaymentPageState extends State<DetailsBeforePaymentPage> {

  int currentVal = 0;

  String firstDay = '';
  String lastDay = '';
  String days = '';
  String _range = '';

  datesMatch(){
    if(currentVal.toString() == days){
      Get.to(PaymentPage());


    }else{
      Get.snackbar("Error", "the days you entered doesn't match");

    }
  }
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {

    setState(() {
      if (args.value is PickerDateRange) {
        firstDay = DateFormat('d').format(args.value.startDate);
        lastDay = DateFormat('d').format(args.value.endDate);
        print(firstDay);
        print(lastDay);

        days = ( int.parse(lastDay) - int.parse(firstDay) + 1).toString();
        print(days);

        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      }
    });



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    width: 250,
                    height: 180,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.network('${hotelStores.bannerImage}',fit: BoxFit.cover,),
                    ),
                  ),
                  Text(hotelStores.name,style: GoogleFonts.inter(color: Colors.grey)),
                  const SizedBox(height: 4,),
                  Text("\u{0024} ${hotelStores.price}",style: GoogleFonts.inter(fontSize: 24),),
                  Text('Per night', style: GoogleFonts.inter(color: Colors.grey, fontSize: 12),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child:  Text('How many nights?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),),
            SizedBox(height: 5,),
            Center(
              child: Column(
                children: [
                  NumberPicker(
                    minValue: 0,
                    maxValue: 20,
                    value: currentVal,
                    axis: Axis.horizontal,
                    onChanged: (value) => setState(() => currentVal = value),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black26),
                    ),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: ()=>{setState((){
                        final newValue = currentVal - 1;
                        currentVal = newValue.clamp(0, 20);
                      })}, icon: Icon(Icons.remove)),
                      SizedBox(width: 20,),
                      IconButton(onPressed: ()=>{
                        setState((){
                          final newValue = currentVal + 1;
                          currentVal = newValue.clamp(0, 20);
                        })
                      }, icon: Icon(Icons.add))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text('Select the dates you will stay(first night is inclusive)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            ),
            Center(
              child: Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 2),

                ),
                child: SfDateRangePicker(
                  onSelectionChanged: _onSelectionChanged,
                  selectionMode: DateRangePickerSelectionMode.range,
                  enablePastDates : false,
                  initialSelectedRange: PickerDateRange(
                      DateTime.now().subtract(const Duration(days: 4)),
                      DateTime.now().add(const Duration(days: 3))),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(20),
            child:
            ElevatedButton(onPressed: ()=>{datesMatch()}, child: Text('Continue to payment', style:GoogleFonts.inter(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                minimumSize:const Size.fromHeight(46),
                primary: Colors.deepPurpleAccent,
                shadowColor: Colors.deepPurple.shade800,
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),

              ),),
            )

          ],
        ),
      )

    );
  }
}
