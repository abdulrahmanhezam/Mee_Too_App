import 'package:flutter/material.dart';
import 'package:me_too_app/screens/invition_page.dart';
import 'package:me_too_app/widgetsFolder/mainscreen/text_field.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class NewMeeting extends StatefulWidget {
  const NewMeeting({super.key});

  @override
  State<NewMeeting> createState() => _NewMeetingState();
}

class _NewMeetingState extends State<NewMeeting> {
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    String _selectedDate = '';
    String _dateCount = '';
    String _range = '';
    String _rangeCount = '';
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 0.12 * screenHeight,
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(0, 122, 255, 1),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const Text(
                        'Back',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 122, 255, 1),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Start a Meeting",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Title",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const MTextField(),
                      const Text(
                        "Date",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Positioned(
                        left: 0,
                        top: 80,
                        right: 0,
                        bottom: 0,
                        child: SfDateRangePicker(
                          onSelectionChanged: _onSelectionChanged,
                          selectionMode: DateRangePickerSelectionMode.range,
                          initialSelectedRange: PickerDateRange(
                              DateTime.now().subtract(const Duration(days: 4)),
                              DateTime.now().add(const Duration(days: 3))),
                        ),
                      ),
                      const Text(
                        "Time",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const MTextField(),
                      const Text(
                        "Members",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const MTextField(),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: SizedBox(
                        height: 35,
                        width: 145,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(107, 191, 236, 0.68),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 4,
                            shadowColor: const Color(0x40000000),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const invition()),
                            );
                          },
                          child: const Text("Invite"),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}