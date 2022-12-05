// import 'dart:ui';

// import 'package:calendar_view/calendar_view.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// DateTime get _now => DateTime.now();

// List<CalendarEventData<Event>> _events = [
//   CalendarEventData(
//     date: _now,
//     event: Event(title: "Joe's Birthday"),
//     title: "Project meeting",
//     description: "Today is project meeting.",
//     startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
//     endTime: DateTime(_now.year, _now.month, _now.day, 22),
//   ),
//   CalendarEventData(
//     date: _now.add(Duration(days: 1)),
//     startTime: DateTime(_now.year, _now.month, _now.day, 18),
//     endTime: DateTime(_now.year, _now.month, _now.day, 19),
//     event: Event(title: "Wedding anniversary"),
//     title: "Wedding anniversary",
//     description: "Attend uncle's wedding anniversary.",
//   ),
//   CalendarEventData(
//     date: _now,
//     startTime: DateTime(_now.year, _now.month, _now.day, 14),
//     endTime: DateTime(_now.year, _now.month, _now.day, 17),
//     event: Event(title: "Football Tournament"),
//     title: "Football Tournament",
//     description: "Go to football tournament.",
//   ),
//   CalendarEventData(
//     date: _now.add(Duration(days: 3)),
//     startTime: DateTime(_now.add(Duration(days: 3)).year,
//         _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 10),
//     endTime: DateTime(_now.add(Duration(days: 3)).year,
//         _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 14),
//     event: Event(title: "Sprint Meeting."),
//     title: "Sprint Meeting.",
//     description: "Last day of project submission for last year.",
//   ),
//   CalendarEventData(
//     date: _now.subtract(Duration(days: 2)),
//     startTime: DateTime(
//         _now.subtract(Duration(days: 2)).year,
//         _now.subtract(Duration(days: 2)).month,
//         _now.subtract(Duration(days: 2)).day,
//         14),
//     endTime: DateTime(
//         _now.subtract(Duration(days: 2)).year,
//         _now.subtract(Duration(days: 2)).month,
//         _now.subtract(Duration(days: 2)).day,
//         16),
//     event: Event(title: "Team Meeting"),
//     title: "Team Meeting",
//     description: "Team Meeting",
//   ),
//   CalendarEventData(
//     date: _now.subtract(Duration(days: 2)),
//     startTime: DateTime(
//         _now.subtract(Duration(days: 2)).year,
//         _now.subtract(Duration(days: 2)).month,
//         _now.subtract(Duration(days: 2)).day,
//         10),
//     endTime: DateTime(
//         _now.subtract(Duration(days: 2)).year,
//         _now.subtract(Duration(days: 2)).month,
//         _now.subtract(Duration(days: 2)).day,
//         12),
//     event: Event(title: "Chemistry Viva"),
//     title: "Chemistry Viva",
//     description: "Today is Joe's birthday.",
//   ),
// ];

// @immutable
// class Event {
//   final String title;

//   const Event({this.title = "Title"});

//   @override
//   bool operator ==(Object other) => other is Event && title == other.title;

//   @override
//   int get hashCode => super.hashCode;

//   @override
//   String toString() => title;
// }

// class MobileHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Calendar Page"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MonthViewPageDemo()),
//                 );
//               },
//               child: Text("Month View"),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => DayViewPageDemo()),
//                 );
//               },
//               child: Text("Day View"),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => WeekViewDemo()),
//                 );
//               },
//               child: Text("Week View"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DayViewPageDemo extends StatefulWidget {
//   const DayViewPageDemo({Key? key}) : super(key: key);

//   @override
//   _DayViewPageDemoState createState() => _DayViewPageDemoState();
// }

// class _DayViewPageDemoState extends State<DayViewPageDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         elevation: 8,
//         onPressed: (() {}),

//         // onPressed: () async {
//         //   final event =
//         //       await context.pushRoute<CalendarEventData<Event>>(CreateEventPage(
//         //     withDuration: true,
//         //   ));
//         //   if (event == null) return;
//         //   CalendarControllerProvider.of<Event>(context).controller.add(event);
//         // },
//       ),
//       body: DayViewWidget(),
//     );
//   }
// }

// class MonthViewPageDemo extends StatefulWidget {
//   const MonthViewPageDemo({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _MonthViewPageDemoState createState() => _MonthViewPageDemoState();
// }

// class _MonthViewPageDemoState extends State<MonthViewPageDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         elevation: 8,
//         onPressed: _addEvent,
//       ),
//       body: MonthViewWidget(),
//     );
//   }

//   Future<void> _addEvent() async {
//     // final event = await context.pushRoute<CalendarEventData<Event>>(
//     //   CreateEventPage(
//     //     withDuration: true,
//     //   ),
//     // );
//     // if (event == null) return;
//     // CalendarControllerProvider.of<Event>(context).controller.add(event);
//   }
// }

// class WeekViewDemo extends StatefulWidget {
//   const WeekViewDemo({Key? key}) : super(key: key);

//   @override
//   _WeekViewDemoState createState() => _WeekViewDemoState();
// }

// class _WeekViewDemoState extends State<WeekViewDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         elevation: 8,
//         onPressed: _addEvent,
//       ),
//       body: WeekViewWidget(),
//     );
//   }

//   Future<void> _addEvent() async {
//     // final event =
//     //     await context.pushRoute<CalendarEventData<Event>>(CreateEventPage(
//     //   withDuration: true,
//     // ));
//     // if (event == null) return;
//     // CalendarControllerProvider.of<Event>(context).controller.add(event);
//   }
// }

// class CreateEventPage extends StatefulWidget {
//   final bool withDuration;

//   const CreateEventPage({Key? key, this.withDuration = false})
//       : super(key: key);

//   @override
//   _CreateEventPageState createState() => _CreateEventPageState();
// }

// class _CreateEventPageState extends State<CreateEventPage> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         centerTitle: false,
//         leading: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.black,
//           ),
//         ),
//         title: Text(
//           "Create New Event",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         // child: AddEventWidget(
//         //   onEventAdd: context.pop,
//         // ),
//       ),
//     );
//   }
// }

// class DetailsPage extends StatelessWidget {
//   final CalendarEventData event;

//   const DetailsPage({Key? key, required this.event}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: event.color,
//         elevation: 0,
//         centerTitle: false,
//         title: Text(
//           event.title,
//           style: TextStyle(
//             color: Colors.redAccent,
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         leading: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.amberAccent,
//           ),
//         ),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(20.0),
//         children: [
//           // Text(
//           //   "Date: ${event.date.dateToStringWithFormat(format: "dd/MM/yyyy")}",
//           // ),
//           SizedBox(
//             height: 15.0,
//           ),
//           if (event.startTime != null && event.endTime != null) ...[
//             Row(
//               children: [
//                 Expanded(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("From"),
//                       // Text(
//                       //   event.startTime
//                       //           ?.getTimeInFormat(TimeStampFormat.parse_12) ??
//                       //       "",
//                       // ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("To"),
//                       // Text(
//                       //   event.endTime
//                       //           ?.getTimeInFormat(TimeStampFormat.parse_12) ??
//                       //       "",
//                       // ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//           ],
//           if (event.description != "") ...[
//             Divider(),
//             Text("Description"),
//             SizedBox(
//               height: 10.0,
//             ),
//             Text(event.description),
//           ]
//         ],
//       ),
//     );
//   }
// }

// class DayViewWidget extends StatelessWidget {
//   final GlobalKey<DayViewState>? state;
//   final double? width;

//   const DayViewWidget({
//     Key? key,
//     this.state,
//     this.width,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DayView<Event>(
//       key: state,
//       width: width,
//     );
//   }
// }

// class MonthViewWidget extends StatelessWidget {
//   final GlobalKey<MonthViewState>? state;
//   final double? width;

//   const MonthViewWidget({
//     Key? key,
//     this.state,
//     this.width,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MonthView<Event>(
//       key: state,
//       width: width,
//     );
//   }
// }

// class WeekViewWidget extends StatelessWidget {
//   final GlobalKey<WeekViewState>? state;
//   final double? width;

//   const WeekViewWidget({Key? key, this.state, this.width}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return WeekView<Event>(
//       key: state,
//       width: width,
//     );
//   }
// }

// class AddEventWidget extends StatefulWidget {
//   final void Function(CalendarEventData<Event>)? onEventAdd;

//   const AddEventWidget({
//     Key? key,
//     this.onEventAdd,
//   }) : super(key: key);

//   @override
//   _AddEventWidgetState createState() => _AddEventWidgetState();
// }

// class _AddEventWidgetState extends State<AddEventWidget> {
//   late DateTime _startDate;
//   late DateTime _endDate;

//   DateTime? _startTime;

//   DateTime? _endTime;

//   String _title = "";

//   String _description = "";

//   Color _color = Colors.blue;

//   late FocusNode _titleNode;

//   late FocusNode _descriptionNode;

//   late FocusNode _dateNode;

//   final GlobalKey<FormState> _form = GlobalKey();

//   late TextEditingController _startDateController;
//   late TextEditingController _startTimeController;
//   late TextEditingController _endTimeController;
//   late TextEditingController _endDateController;

//   @override
//   void initState() {
//     super.initState();

//     _titleNode = FocusNode();
//     _descriptionNode = FocusNode();
//     _dateNode = FocusNode();

//     _startDateController = TextEditingController();
//     _endDateController = TextEditingController();
//     _startTimeController = TextEditingController();
//     _endTimeController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     _titleNode.dispose();
//     _descriptionNode.dispose();
//     _dateNode.dispose();

//     _startDateController.dispose();
//     _endDateController.dispose();
//     _startTimeController.dispose();
//     _endTimeController.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _form,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextFormField(
//             decoration: AppConstants.inputDecoration.copyWith(
//               labelText: "Event Title",
//             ),
//             style: TextStyle(
//               color: AppColors.black,
//               fontSize: 17.0,
//             ),
//             onSaved: (value) => _title = value?.trim() ?? "",
//             validator: (value) {
//               if (value == null || value == "")
//                 return "Please enter event title.";

//               return null;
//             },
//             keyboardType: TextInputType.text,
//             textInputAction: TextInputAction.next,
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: DateTimeSelectorFormField(
//                   controller: _startDateController,
//                   decoration: AppConstants.inputDecoration.copyWith(
//                     labelText: "Start Date",
//                   ),
//                   validator: (value) {
//                     if (value == null || value == "")
//                       return "Please select date.";

//                     return null;
//                   },
//                   textStyle: TextStyle(
//                     color: AppColors.black,
//                     fontSize: 17.0,
//                   ),
//                   onSave: (date) => _startDate = date,
//                   type: DateTimeSelectionType.date,
//                 ),
//               ),
//               SizedBox(width: 20.0),
//               Expanded(
//                 child: DateTimeSelectorFormField(
//                   controller: _endDateController,
//                   decoration: AppConstants.inputDecoration.copyWith(
//                     labelText: "End Date",
//                   ),
//                   validator: (value) {
//                     if (value == null || value == "")
//                       return "Please select date.";

//                     return null;
//                   },
//                   textStyle: TextStyle(
//                     color: AppColors.black,
//                     fontSize: 17.0,
//                   ),
//                   onSave: (date) => _endDate = date,
//                   type: DateTimeSelectionType.date,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: DateTimeSelectorFormField(
//                   controller: _startTimeController,
//                   decoration: AppConstants.inputDecoration.copyWith(
//                     labelText: "Start Time",
//                   ),
//                   validator: (value) {
//                     if (value == null || value == "")
//                       return "Please select start time.";

//                     return null;
//                   },
//                   onSave: (date) => _startTime = date,
//                   textStyle: TextStyle(
//                     color: AppColors.black,
//                     fontSize: 17.0,
//                   ),
//                   type: DateTimeSelectionType.time,
//                 ),
//               ),
//               SizedBox(width: 20.0),
//               Expanded(
//                 child: DateTimeSelectorFormField(
//                   controller: _endTimeController,
//                   decoration: AppConstants.inputDecoration.copyWith(
//                     labelText: "End Time",
//                   ),
//                   validator: (value) {
//                     if (value == null || value == "")
//                       return "Please select end time.";

//                     return null;
//                   },
//                   onSave: (date) => _endTime = date,
//                   textStyle: TextStyle(
//                     color: AppColors.black,
//                     fontSize: 17.0,
//                   ),
//                   type: DateTimeSelectionType.time,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           TextFormField(
//             focusNode: _descriptionNode,
//             style: TextStyle(
//               color: AppColors.black,
//               fontSize: 17.0,
//             ),
//             keyboardType: TextInputType.multiline,
//             textInputAction: TextInputAction.newline,
//             selectionControls: MaterialTextSelectionControls(),
//             minLines: 1,
//             maxLines: 10,
//             maxLength: 1000,
//             validator: (value) {
//               if (value == null || value.trim() == "")
//                 return "Please enter event description.";

//               return null;
//             },
//             onSaved: (value) => _description = value?.trim() ?? "",
//             decoration: AppConstants.inputDecoration.copyWith(
//               hintText: "Event Description",
//             ),
//           ),
//           SizedBox(
//             height: 15.0,
//           ),
//           Row(
//             children: [
//               Text(
//                 "Event Color: ",
//                 style: TextStyle(
//                   color: AppColors.black,
//                   fontSize: 17,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: _displayColorPicker,
//                 child: CircleAvatar(
//                   radius: 15,
//                   backgroundColor: _color,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           CustomButton(
//             onTap: _createEvent,
//             title: "Add Event",
//           ),
//         ],
//       ),
//     );
//   }

//   void _createEvent() {
//     if (!(_form.currentState?.validate() ?? true)) return;

//     _form.currentState?.save();

//     final event = CalendarEventData<Event>(
//       date: _startDate,
//       color: _color,
//       endTime: _endTime,
//       startTime: _startTime,
//       description: _description,
//       endDate: _endDate,
//       title: _title,
//       event: Event(
//         title: _title,
//       ),
//     );

//     widget.onEventAdd?.call(event);
//     _resetForm();
//   }

//   void _resetForm() {
//     _form.currentState?.reset();
//     _startDateController.text = "";
//     _endTimeController.text = "";
//     _startTimeController.text = "";
//   }

//   void _displayColorPicker() {
//     var color = _color;
//     showDialog(
//       context: context,
//       useSafeArea: true,
//       barrierColor: Colors.black26,
//       builder: (_) => SimpleDialog(
//         clipBehavior: Clip.hardEdge,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30.0),
//           side: BorderSide(
//             color: AppColors.bluishGrey,
//             width: 2,
//           ),
//         ),
//         contentPadding: EdgeInsets.all(20.0),
//         children: [
//           Text(
//             "Event Color",
//             style: TextStyle(
//               color: AppColors.black,
//               fontSize: 25.0,
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.symmetric(vertical: 20.0),
//             height: 1.0,
//             color: AppColors.bluishGrey,
//           ),
//           // ColorPicker(
//           //   displayThumbColor: true,
//           //   enableAlpha: false,
//           //   pickerColor: _color,
//           //   onColorChanged: (c) {
//           //     color = c;
//           //   },
//           // ),
//           Center(
//             child: Padding(
//               padding: EdgeInsets.only(top: 50.0, bottom: 30.0),
//               child: CustomButton(
//                 title: "Select",
//                 onTap: () {
//                   if (mounted)
//                     setState(() {
//                       _color = color;
//                     });
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class AppConstants {
//   AppConstants._();

//   static OutlineInputBorder inputBorder = OutlineInputBorder(
//     borderRadius: BorderRadius.circular(7),
//     borderSide: BorderSide(
//       width: 2,
//       color: AppColors.lightNavyBlue,
//     ),
//   );

//   static InputDecoration get inputDecoration => InputDecoration(
//         border: inputBorder,
//         disabledBorder: inputBorder,
//         errorBorder: inputBorder.copyWith(
//           borderSide: BorderSide(
//             width: 2,
//             color: AppColors.red,
//           ),
//         ),
//         enabledBorder: inputBorder,
//         focusedBorder: inputBorder,
//         focusedErrorBorder: inputBorder,
//         hintText: "Event Title",
//         hintStyle: TextStyle(
//           color: AppColors.black,
//           fontSize: 17,
//         ),
//         labelStyle: TextStyle(
//           color: AppColors.black,
//           fontSize: 17,
//         ),
//         helperStyle: TextStyle(
//           color: AppColors.black,
//           fontSize: 17,
//         ),
//         errorStyle: TextStyle(
//           color: AppColors.red,
//           fontSize: 12,
//         ),
//         contentPadding: EdgeInsets.symmetric(
//           vertical: 10,
//           horizontal: 20,
//         ),
//       );
// }

// class BreakPoints {
//   static const double web = 8;
// }

// class AppColors {
//   AppColors._();

//   static const Color black = Color(0xff626262);
//   static const Color radiantWhite = Color(0xffffffff);
//   static const Color white = Color(0xfff0f0f0);
//   static const Color bluishGrey = Color(0xffdddee9);
//   static const Color navyBlue = Color(0xff6471e9);
//   static const Color lightNavyBlue = Color(0xffb3b9ed);
//   static const Color red = Color(0xfff96c6c);
//   static const Color grey = Color(0xffe0e0e0);
// }

// typedef Validator = String? Function(String? value);

// enum DateTimeSelectionType { date, time }

// class DateTimeSelectorFormField extends StatefulWidget {
//   final Function(DateTime?)? onSelect;
//   final DateTimeSelectionType? type;
//   final FocusNode? focusNode;
//   final DateTime? minimumDateTime;
//   final Validator? validator;
//   final bool displayDefault;
//   final TextStyle? textStyle;
//   final void Function(DateTime date)? onSave;
//   final InputDecoration? decoration;
//   final TextEditingController controller;

//   const DateTimeSelectorFormField({
//     this.onSelect,
//     this.type,
//     this.onSave,
//     this.decoration,
//     this.focusNode,
//     this.minimumDateTime,
//     this.validator,
//     this.displayDefault = false,
//     this.textStyle,
//     required this.controller,
//   });

//   @override
//   _DateTimeSelectorFormFieldState createState() =>
//       _DateTimeSelectorFormFieldState();
// }

// class _DateTimeSelectorFormFieldState extends State<DateTimeSelectorFormField> {
//   late TextEditingController _textEditingController;
//   late FocusNode _focusNode;

//   late DateTime _selectedDate;

//   @override
//   void initState() {
//     super.initState();

//     _textEditingController = widget.controller;
//     _focusNode = FocusNode();

//     _selectedDate = widget.minimumDateTime ?? DateTime.now();

//     if (widget.displayDefault && widget.minimumDateTime != null) {
//       if (widget.type == DateTimeSelectionType.date) {
//         _textEditingController.text = widget.minimumDateTime
//                 ?.dateToStringWithFormat(format: "dd/MM/yyyy") ??
//             "";
//       } else {
//         _textEditingController.text =
//             widget.minimumDateTime?.getTimeInFormat(TimeStampFormat.parse_12) ??
//                 "";
//       }
//     }
//   }

//   @override
//   void dispose() {
//     _focusNode.dispose();
//     super.dispose();
//   }

//   Future<void> _showSelector() async {
//     DateTime? date;

//     if (widget.type == DateTimeSelectionType.date) {
//       date = await _showDateSelector();
//       _textEditingController.text =
//           (date ?? _selectedDate).dateToStringWithFormat(format: "dd/MM/yyyy");
//     } else {
//       date = await _showTimeSelector();
//       _textEditingController.text =
//           (date ?? _selectedDate).getTimeInFormat(TimeStampFormat.parse_12);
//     }

//     _selectedDate = date ?? DateTime.now();

//     if (mounted) {
//       setState(() {});
//     }

//     widget.onSelect?.call(date);
//   }

//   Future<DateTime?> _showDateSelector() async {
//     final now = widget.minimumDateTime ?? DateTime.now();

//     final date = await showDatePicker(
//       context: context,
//       initialDate: now,
//       firstDate: widget.minimumDateTime ?? now,
//       lastDate: CalendarConstants.maxDate,
//     );

//     if (date == null) return null;

//     return date;
//   }

//   Future<DateTime?> _showTimeSelector() async {
//     final now = widget.minimumDateTime ?? DateTime.now();
//     final time = await showTimePicker(
//       context: context,
//       builder: (context, widget) {
//         return widget ?? Container();
//       },
//       initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
//     );

//     if (time == null) return null;

//     final date = now.copyWith(
//       hour: time.hour,
//       minute: time.minute,
//     );

//     if (widget.minimumDateTime == null) return date;

//     return date;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _showSelector,
//       child: TextFormField(
//         style: widget.textStyle,
//         controller: _textEditingController,
//         validator: widget.validator,
//         minLines: 1,
//         onSaved: (value) => widget.onSave?.call(_selectedDate),
//         enabled: false,
//         decoration: widget.decoration,
//       ),
//     );
//   }
// }

// class CustomButton extends StatelessWidget {
//   final String title;
//   final VoidCallback? onTap;

//   const CustomButton({Key? key, required this.title, this.onTap})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           vertical: 10,
//           horizontal: 40,
//         ),
//         decoration: BoxDecoration(
//           color: AppColors.navyBlue,
//           borderRadius: BorderRadius.circular(7.0),
//           boxShadow: [
//             BoxShadow(
//               color: AppColors.black,
//               offset: Offset(0, 4),
//               blurRadius: 10,
//               spreadRadius: -3,
//             )
//           ],
//         ),
//         child: Text(
//           title,
//           style: TextStyle(
//             color: AppColors.white,
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
//   }
// }

// enum TimeStampFormat { parse_12, parse_24 }

// extension NavigationExtension on State {
//   void pushRoute(Widget page) =>
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
// }

// extension NavigatorExtention on BuildContext {
//   Future<T?> pushRoute<T>(Widget page) =>
//       Navigator.of(this).push<T>(MaterialPageRoute(builder: (context) => page));

//   void pop([dynamic value]) => Navigator.of(this).pop(value);

//   void showSnackBarWithText(String text) => ScaffoldMessenger.of(this)
//     ..hideCurrentSnackBar()
//     ..showSnackBar(SnackBar(content: Text(text)));
// }

// extension DateUtils on DateTime {
//   String get weekdayToFullString {
//     switch (weekday) {
//       case DateTime.monday:
//         return "Monday";
//       case DateTime.tuesday:
//         return "Tuesday";
//       case DateTime.wednesday:
//         return "Wednesday";
//       case DateTime.thursday:
//         return "Thursday";
//       case DateTime.friday:
//         return "Friday";
//       case DateTime.saturday:
//         return "Saturday";
//       case DateTime.sunday:
//         return "Sunday";
//       default:
//         return "Error";
//     }
//   }

//   String get weekdayToAbbreviatedString {
//     switch (weekday) {
//       case DateTime.monday:
//         return "M";
//       case DateTime.tuesday:
//         return "T";
//       case DateTime.wednesday:
//         return "W";
//       case DateTime.thursday:
//         return "T";
//       case DateTime.friday:
//         return "F";
//       case DateTime.saturday:
//         return "S";
//       case DateTime.sunday:
//         return "S";
//       default:
//         return "Err";
//     }
//   }

//   int get totalMinutes => hour * 60 + minute;

//   TimeOfDay get timeOfDay => TimeOfDay(hour: hour, minute: minute);

//   DateTime copyWith({
//     int? year,
//     int? month,
//     int? day,
//     int? hour,
//     int? minute,
//     int? second,
//     int? millisecond,
//     int? microsecond,
//   }) =>
//       DateTime(
//         year ?? this.year,
//         month ?? this.month,
//         day ?? this.day,
//         hour ?? this.hour,
//         minute ?? this.minute,
//         second ?? this.second,
//         millisecond ?? this.millisecond,
//         microsecond ?? this.microsecond,
//       );

//   String dateToStringWithFormat({String format = 'y-M-d'}) {
//     return DateFormat(format).format(this);
//   }

//   DateTime stringToDateWithFormat({
//     required String format,
//     required String dateString,
//   }) =>
//       DateFormat(format).parse(dateString);

//   String getTimeInFormat(TimeStampFormat format) =>
//       DateFormat('h:mm${format == TimeStampFormat.parse_12 ? " a" : ""}')
//           .format(this)
//           .toUpperCase();

//   bool compareWithoutTime(DateTime date) =>
//       day == date.day && month == date.month && year == date.year;

//   bool compareTime(DateTime date) =>
//       hour == date.hour && minute == date.minute && second == date.second;
// }

// extension ColorExtension on Color {
//   Color get accentColor =>
//       (blue / 2 >= 255 / 2 || red / 2 >= 255 / 2 || green / 2 >= 255 / 2)
//           ? AppColors.black
//           : AppColors.white;
// }

// extension StringExt on String {
//   String get capitalized => toBeginningOfSentenceCase(this) ?? "";
// }

// extension ViewNameExt on CalendarView {
//   String get name => toString().split(".").last;
// }

// enum CalendarView {
//   month,
//   day,
//   week,
// }
