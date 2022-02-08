import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DivideNumberWidget extends StatefulWidget {
  const DivideNumberWidget({Key key}) : super(key: key);

  @override
  _DivideNumberWidgetState createState() => _DivideNumberWidgetState();
}

class _DivideNumberWidgetState extends State<DivideNumberWidget> {
  String numberMult;
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF4B39EF),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 70, 15, 5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                fillColor: FlutterFlowTheme.tertiaryColor,
                icon: Icon(
                  Icons.chevron_left_sharp,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF00968A),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: TextFormField(
                              onChanged: (_) => EasyDebounce.debounce(
                                'textController1',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              controller: textController1,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter number one...',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                suffixIcon: textController1.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () => setState(
                                          () => textController1.clear(),
                                        ),
                                        child: Icon(
                                          Icons.clear,
                                          color: Color(0xFF757575),
                                          size: 22,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.bodyText1,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF00968A),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: TextFormField(
                              onChanged: (_) => EasyDebounce.debounce(
                                'textController2',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              controller: textController2,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter number two...',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                suffixIcon: textController2.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () => setState(
                                          () => textController2.clear(),
                                        ),
                                        child: Icon(
                                          Icons.clear,
                                          color: Color(0xFF757575),
                                          size: 22,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.bodyText1,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                child: FFButtonWidget(
                  onPressed: () async {
                    numberMult = await actions.divideNumbers(
                      double.parse(textController1.text),
                      double.parse(textController2.text),
                    );

                    setState(() {});
                  },
                  text: '> Do some dividing! <',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 80,
                    color: Color(0xFF00968A),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 5,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Doing some maths stuff, the quotient is ',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1,
                    ),
                    Text(
                      valueOrDefault<String>(
                        numberMult,
                        '...',
                      ),
                      style: FlutterFlowTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
