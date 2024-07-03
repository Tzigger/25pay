import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newapp/pages/constants.dart';
import 'package:newapp/pages/home_widget.dart';
import 'package:newapp/pages/q_rtest_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'portofel_model.dart';
export 'portofel_model.dart';
import 'constants.dart';

class PortofelWidget extends StatefulWidget {
  const PortofelWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PortofelWidgetState createState() => _PortofelWidgetState();
}

class _PortofelWidgetState extends State<PortofelWidget> {
  late PortofelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PortofelModel());
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 3.h,
                    color: Colors.transparent,
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
                                  fontSize: 26.sp,
                                  color: Colors.white,
                                ),
                          ),
                        ].addToEnd(SizedBox(width: 125.w)),
                      ),
                    ]
                        .divide(SizedBox(width: 15.w))
                        .around(SizedBox(width: 15.w)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 15.h,
                        child: const VerticalDivider(
                          thickness: 1,
                          color: Color(0xFF181C22),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Transport',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ].addToStart(SizedBox(width: 40.w)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 20.h,
                        child: const VerticalDivider(
                          thickness: 1,
                          color: Color(0xFF181C22),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 368.w,
                        height: 113.h,
                        decoration: BoxDecoration(
                          color: const Color(0xFF242D36),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const QRtestWidget()));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                width: 245.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF242D36),
                                  borderRadius: BorderRadius.circular(10),
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
                                          alignment: const AlignmentDirectional(
                                              0.00, 0.00),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Divider(
                                                height: 5.h,
                                                thickness: 1,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.00, 0.00),
                                                    child: Text(
                                                      'SCTP Iasi',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: Colors.white,
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
                                          .addToStart(SizedBox(width: 15.w)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              0.00, 0.00),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Divider(
                                                height: 12.h,
                                                thickness: 1,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.00, 0.00),
                                                    child: Text(
                                                      FINAL, //final
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 18.sp,
                                                            color: Colors.white,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                height: 3.h,
                                                thickness: 1,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]
                                          .divide(SizedBox(width: 10.w))
                                          .addToStart(SizedBox(width: 15.w)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              0.00, 0.00),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Divider(
                                                height: 5.h,
                                                thickness: 1,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.00, 0.00),
                                                    child: Text(
                                                      Final2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: const Color(
                                                                0x77FFFFFF),
                                                            fontSize: 15.sp,
                                                            fontWeight:
                                                                FontWeight.w100,
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
                                          .addToStart(SizedBox(width: 15.w)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ].addToStart(SizedBox(width: 10.w)),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
                child: Divider(
                  height: 577.h,
                  thickness: 1,
                  color: const Color(0x0014181B),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
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
                            pageBuilder: (_, __, ___) => const HomeWidget(),
                            transitionDuration:
                                const Duration(milliseconds: 200),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          ));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.home_outlined,
                              color: FlutterFlowTheme.of(context).info,
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
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w200,
                                  ),
                            ),
                          ],
                        ),
                      ].addToEnd(SizedBox(height: 7.h)),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Color(0xFF181C22),
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
                      color: Color(0xFF181C22),
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
                      color: Color(0xFF181C22),
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
                      color: Color(0xFF181C22),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            color: const Color(0xFFE8D433),
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
                                  color: const Color(0xFFE8D433),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w200,
                                ),
                          ),
                        ],
                      ),
                    ].addToEnd(SizedBox(height: 7.h)),
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
