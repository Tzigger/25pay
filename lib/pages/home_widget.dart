import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newapp/pages/q_rtest_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:provider/provider.dart';

import 'home_model.dart';
import 'portofel_widget.dart';
export 'home_model.dart';
import 'constants.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/24pay-removebg-preview.png',
                      width: 137.w,
                      height: 60.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: const Color(0xFF2E353F),
                              borderRadius: 25.r,
                              borderWidth: 5.w,
                              buttonSize: 45.sp,
                              fillColor: const Color(0xFF2E353F),
                              hoverColor: const Color(0x6BFFFFFF),
                              icon: Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                                size: 24.sp,
                              ),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PortofelWidget()));
                              },
                            ),
                          ].addToEnd(SizedBox(width: 5.w)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: const Color(0xFF2E353F),
                              borderRadius: 25.r,
                              borderWidth: 5.w,
                              buttonSize: 45.sp,
                              fillColor: const Color(0xFF2E353F),
                              hoverColor: const Color(0x6BFFFFFF),
                              icon: Icon(
                                Icons.settings_sharp,
                                color: Colors.white,
                                size: 24.sp,
                              ),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PortofelWidget()));
                              },
                            ),
                          ].addToEnd(SizedBox(width: 5.w)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.white,
                              borderRadius: 25.r,
                              borderWidth: 0.3.w,
                              buttonSize: 45.sp,
                              fillColor: const Color(0xFF2E353F),
                              hoverColor: const Color(0x6BFFFFFF),
                              icon: Icon(
                                Icons.person_outline,
                                color: Colors.white,
                                size: 24.sp,
                              ),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PortofelWidget()));
                              },
                            ),
                          ],
                        ),
                      ].addToEnd(SizedBox(width: 15.w)),
                    ),
                  ),
                ].addToEnd(SizedBox(width: 1.w)),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            height: 30.h,
                            child: const VerticalDivider(
                              thickness: 1,
                              color: Color(0xFF181C22),
                            ),
                          ),
                        ].addToStart(SizedBox(width: 10.w)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Portofel',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      fontSize: 21.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                              ),
                            ].addToEnd(SizedBox(width: 140.w)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
//
//                                  Navigator.push(
//                                     context,
//                                      MaterialPageRoute(
//                                          builder: (context) =>
//                                              const portofel()));

//
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (_, __, ___) =>
                                          const PortofelWidget(),
                                      transitionDuration:
                                          const Duration(milliseconds: 200),
                                      transitionsBuilder: (_, a, __, c) =>
                                          FadeTransition(opacity: a, child: c),
                                    ),
                                  );
//
                                },
                                child: Text(
                                  'Intră în portofel',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFE8D433),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ]
                            .divide(SizedBox(width: 20.w))
                            .around(SizedBox(width: 20.w)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      const QRtestWidget(),
                                  transitionDuration:
                                      const Duration(milliseconds: 200),
                                  transitionsBuilder: (_, a, __, c) =>
                                      FadeTransition(opacity: a, child: c),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 370.w,
                                  height: 118.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF242D36),
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25.r),
                                          bottomRight: Radius.circular(0.r),
                                          topLeft: Radius.circular(25.r),
                                          topRight: Radius.circular(0.r),
                                        ),
                                        child: Image.asset(
                                          'assets/ctp.png',
                                          width: 108.w,
                                          height: 210.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        width: 240.w,
                                        height: 100.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF242D36),
                                          borderRadius:
                                              BorderRadius.circular(25.r),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Divider(
                                                        height: 4.w,
                                                        thickness: 1.w,
                                                        color: const Color(
                                                            0xFF181C22),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Text(
                                                              'SCTP Iasi',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                                  .divide(SizedBox(width: 10.w))
                                                  .addToStart(
                                                      SizedBox(width: 10.w)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Divider(
                                                        height: 10.h,
                                                        thickness: 1.w,
                                                        color: const Color(
                                                            0xFF181C22),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Text(
                                                              FINAL,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        18.sp,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        height: 9.h,
                                                        thickness: 1.w,
                                                        color: const Color(
                                                            0xFF181C22),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                                  .divide(SizedBox(width: 10.w))
                                                  .addToStart(
                                                      SizedBox(width: 10.w)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Divider(
                                                        height: 1.h,
                                                        thickness: 1.w,
                                                        color: const Color(
                                                            0xFF181C22),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Text(
                                                              Final2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w100,
                                                                    color: const Color(
                                                                        0x77FFFFFF),
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                                  .divide(SizedBox(width: 10.w))
                                                  .addToStart(
                                                      SizedBox(width: 10.w)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 10.w)),
                            ),
                          ),
                        ].addToStart(SizedBox(width: 0.w)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: const Color(0x0019DB8A),
                            borderRadius: 20.r,
                            borderWidth: 1.w,
                            buttonSize: 5.sp,
                            fillColor: const Color(0x0019DB8A),
                            icon: FaIcon(
                              FontAwesomeIcons.adn,
                              color: const Color(0x71FFFFFF),
                              size: 5.sp,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      const QRtestWidget(),
                                  transitionDuration:
                                      const Duration(milliseconds: 200),
                                  transitionsBuilder: (_, a, __, c) =>
                                      FadeTransition(opacity: a, child: c),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Divider(
                        height: 40.h,
                        thickness: 1.w,
                        color: const Color(0xFF181C22),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Favorite',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                          ),
                        ].addToStart(SizedBox(width: 20.w)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 155.w,
                            height: 141.h,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).info,
                                  FlutterFlowTheme.of(context).info
                                ],
                                stops: const [0, 1],
                                begin: const AlignmentDirectional(0, -1),
                                end: const AlignmentDirectional(0, 1),
                              ),
                              borderRadius: BorderRadius.circular(22.r),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(120.r),
                                      child: Image.asset(
                                        'assets/ctp.png',
                                        width: 70.w,
                                        height: 45.h,
                                        fit: BoxFit.contain,
                                        alignment: const Alignment(0.00, 0.00),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                      child: VerticalDivider(
                                        width: 45.w,
                                        thickness: 1.w,
                                        color: const Color(0x0014181B),
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite_sharp,
                                      color: const Color(0xDCFF4A4A),
                                      size: 24.sp,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 155.w,
                                      height: 96.h,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEAFCB2),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(22.r),
                                          bottomRight: Radius.circular(22.r),
                                          topLeft: Radius.circular(0.r),
                                          topRight: Radius.circular(0.r),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(
                                                height: 10.h,
                                                child: VerticalDivider(
                                                  thickness: 1.sp,
                                                  color:
                                                      const Color(0x0014181B),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Iasi - 110 RON',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xB5000000),
                                                          fontSize: 13.sp,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                              ),
                                            ].addToStart(SizedBox(width: 12.w)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'abonament zona 1',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xB5000000),
                                                          fontSize: 13.sp,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                              ),
                                            ].addToStart(SizedBox(width: 12.w)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '30 de zile',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xB5000000),
                                                          fontSize: 13.sp,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                              ),
                                            ].addToStart(SizedBox(width: 12.w)),
                                          ),
                                        ].divide(SizedBox(height: 5.h)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ].addToStart(SizedBox(width: 10.w)),
                      ),
                      Divider(
                        height: 340.h,
                        thickness: 1.w,
                        color: const Color(0xFF181C22),
                      ),
                    ],
                  ),
                ),
              ),
              //NAVBAR FROM NOW ON
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: const Color(0xFFE8D433),
                            size: 27.sp,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Acasă',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFE8D433),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w200,
                                ),
                          ),
                        ],
                      ),
                    ].addToEnd(SizedBox(height: 7.h)),
                  ),
                  SizedBox(
                    height: 60.h,
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Color(0x0014181B),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.select_all_outlined,
                            color: FlutterFlowTheme.of(context).info,
                            size: 27.sp,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Servicii',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ].addToEnd(SizedBox(height: 7.h)),
                  ),
                  SizedBox(
                    height: 60.h,
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Color(0x0014181B),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 65.w,
                        height: 65.h,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE8D433),
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.qr_code_scanner,
                                  color: Colors.black,
                                  size: 27.sp,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Scanează',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 11.sp,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Color(0x0014181B),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: FlutterFlowTheme.of(context).info,
                            size: 27.sp,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Tranzacții',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ].addToEnd(SizedBox(height: 7.h)),
                  ),
                  SizedBox(
                    height: 60.h,
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Color(0x0014181B),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => const PortofelWidget(),
                          transitionDuration: const Duration(milliseconds: 200),
                          transitionsBuilder: (_, a, __, c) =>
                              FadeTransition(opacity: a, child: c),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.account_balance_wallet_outlined,
                              color: FlutterFlowTheme.of(context).info,
                              size: 27.sp,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Portofel',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                      ].addToEnd(SizedBox(height: 7.h)),
                    ),
                  ),
                ].divide(SizedBox(width: 5.w)).around(SizedBox(width: 5.w)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
