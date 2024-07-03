import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newapp/pages/constants.dart';
import 'package:newapp/pages/portofel_widget.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
//import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'q_rtest_model.dart';
export 'q_rtest_model.dart';

class QRtestWidget extends StatefulWidget {
  const QRtestWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QRtestWidgetState createState() => _QRtestWidgetState();
}

class _QRtestWidgetState extends State<QRtestWidget> {
  late QRtestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  int seconds = 15;
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QRtestModel());
    startTimer();
  }

  Timer? timer;
  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        timer.cancel();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const QRtestWidget()));
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }
    final daysago =
        DateTime.now().subtract(const Duration(days: 2, hours: 1, minutes: 3));
    final daysover =
        DateTime.now().add(const Duration(days: 28, hours: -2, minutes: 57));
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF181C22),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderColor: const Color(0x0019DB8A),
                    borderRadius: 25.r,
                    borderWidth: 1.w,
                    buttonSize: 45.sp,
                    fillColor: const Color(0x0019DB8A),
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 25.sp,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PortofelWidget()));
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                    child: VerticalDivider(
                      width: 60.w,
                      thickness: 1.w,
                      color: const Color(0xFF181C22),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/24pay-removebg-preview.png',
                      width: 78.w,
                      height: 45.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    child: VerticalDivider(
                      width: 10.w,
                      thickness: 1.w,
                      color: const Color(0xFF181C22),
                    ),
                  ),
                  Text(
                    'susținut de',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                  ),
                  SizedBox(
                    height: 40.h,
                    child: VerticalDivider(
                      thickness: 1.w,
                      color: const Color(0xFF181C22),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      'assets/bt.png',
                      width: 45.w,
                      height: 35.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 390.w,
                        height: 538.h,
                        decoration: const BoxDecoration(
                          color: Color(0xFF181C22),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 30.h,
                                  child: VerticalDivider(
                                    thickness: 1.w,
                                    color: const Color(0x0014181B),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 365.w,
                                          height: 472.h,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF242D36),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 364.w,
                                                    height: 364.h,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.r),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        const Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Divider(
                                                              thickness: 1,
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                          ],
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.r),
                                                          child: Image.asset(
                                                            'assets/codQR.png',
                                                            width: normalw.w,
                                                            height: normalh.h,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Codul control valabil $seconds',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Colors.white,
                                                        ),
                                                  ),
                                                  Text(
                                                    ' secunde.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Colors.white,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                height: 15.h,
                                                thickness: 1.w,
                                                color: const Color(0x0014181B),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 15.w,
                                                    height: 15.h,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF000FBF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.r),
                                                    ),
                                                  ),
                                                  Text(
                                                    ' Valabilitate:',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Colors.white,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                height: 8.h,
                                                thickness: 1.w,
                                                color: const Color(0x0014181B),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  LinearPercentIndicator(
                                                    percent: 0.2.sp,
                                                    width: 350.w,
                                                    lineHeight: 12.h,
                                                    animation: true,
                                                    animateFromLastPercent:
                                                        true,
                                                    progressColor: Colors.green,
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      dateTimeFormat(
                                                          'dd.MM.y|11.21',
                                                          daysago),
                                                      '20.11.2023|20.53',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xFF828C98),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                    child: VerticalDivider(
                                                      width: 100.w,
                                                      thickness: 1.w,
                                                      color: const Color(
                                                          0x0014181B),
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      dateTimeFormat(
                                                          'dd.MM.y|11.21',
                                                          daysover),
                                                      '20.12.202|20.53',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xFF828C98),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ].addToStart(
                                                    SizedBox(width: 5.w)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ].addToStart(SizedBox(width: 24.w)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 390.w,
                        height: 190.h,
                        decoration: const BoxDecoration(
                          color: Color(0xFF181C22),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 364.w,
                                  height: 184.h,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF242D36),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SizedBox(
                                            height: 5.h,
                                            child: VerticalDivider(
                                              thickness: 1.w,
                                              color: const Color(0xFF242D36),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Tip bilet',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color:
                                                      const Color(0xFF828C98),
                                                  fontSize: 13.sp,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 32.h,
                                            child: VerticalDivider(
                                              thickness: 1.w,
                                              color: const Color(0x0014181B),
                                            ),
                                          ),
                                        ].addToStart(SizedBox(width: 10.w)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            qrpage, //SCHIMBA
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontSize: 14.sp,
                                                  letterSpacing: 0.5.w,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 40.h,
                                            child: VerticalDivider(
                                              thickness: 1.w,
                                              color: const Color(0x0014181B),
                                            ),
                                          ),
                                        ].addToStart(SizedBox(width: 10.w)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Data achiziției',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color:
                                                      const Color(0xFF828C98),
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                            child: VerticalDivider(
                                              width: 170.w,
                                              thickness: 1.w,
                                              color: const Color(0x0014181B),
                                            ),
                                          ),
                                          Text(
                                            'Număr \ncomandă',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color:
                                                      const Color(0xFF828C98),
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ].addToStart(SizedBox(width: 10.w)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              dateTimeFormat(
                                                  'dd.MM.y|11.21', daysago),
                                              '20.11.2023|20.53',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 60.h,
                                            child: VerticalDivider(
                                              width: 135.w,
                                              thickness: 1.w,
                                              color: const Color(0x0014181B),
                                            ),
                                          ),
                                          Text(
                                            '104893503',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.white,
                                                ),
                                          ),
                                        ].addToStart(SizedBox(width: 10.w)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
