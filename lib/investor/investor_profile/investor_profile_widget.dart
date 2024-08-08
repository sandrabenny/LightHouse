import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/detailinvestor_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/navbar/iprofile/iprofile_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'investor_profile_model.dart';
export 'investor_profile_model.dart';

class InvestorProfileWidget extends StatefulWidget {
  const InvestorProfileWidget({super.key});

  @override
  State<InvestorProfileWidget> createState() => _InvestorProfileWidgetState();
}

class _InvestorProfileWidgetState extends State<InvestorProfileWidget>
    with TickerProviderStateMixin {
  late InvestorProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvestorProfileModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<InvestorsRecord>>(
      stream: queryInvestorsRecord(
        queryBuilder: (investorsRecord) => investorsRecord.where(
          'i_email',
          isEqualTo: currentUserEmail,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return const Scaffold(
            backgroundColor: Color(0xFF101213),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFF1F4F8),
                  ),
                ),
              ),
            ),
          );
        }
        List<InvestorsRecord> investorProfileInvestorsRecordList =
            snapshot.data!;
        final investorProfileInvestorsRecord =
            investorProfileInvestorsRecordList.isNotEmpty
                ? investorProfileInvestorsRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF101213),
            body: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: StreamBuilder<List<InvestorsRecord>>(
                            stream: queryInvestorsRecord(
                              queryBuilder: (investorsRecord) =>
                                  investorsRecord.where(
                                'i_email',
                                isEqualTo: currentUserEmail,
                              ),
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return const Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xFFF1F4F8),
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<InvestorsRecord>
                                  containerInvestorsRecordList = snapshot.data!;
                              final containerInvestorsRecord =
                                  containerInvestorsRecordList.isNotEmpty
                                      ? containerInvestorsRecordList.first
                                      : null;

                              return Container(
                                height: 850.0,
                                decoration: const BoxDecoration(),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Stack(
                                    children: [
                                      Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Stack(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/business-people.jpg',
                                                          width: 405.0,
                                                          height: 179.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          borderRadius: 20.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 40.0,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          icon: Icon(
                                                            Icons
                                                                .chevron_left_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 50.0,
                                                          ),
                                                          onPressed: () async {
                                                            context.safePop();
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  160.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 900.0,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                -1.0,
                                                              ),
                                                              spreadRadius: 8.0,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    16.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    16.0),
                                                          ),
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            Stack(
                                                              children: [
                                                                Container(
                                                                  height: 900.0,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.88),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 80.0,
                                                                                        height: 80.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsets.all(4.0),
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 100.0,
                                                                                              decoration: const BoxDecoration(
                                                                                                color: Color(0xFFF1F4F8),
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsets.all(4.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.network(
                                                                                                    investorProfileInvestorsRecord!.iPic,
                                                                                                    width: 100.0,
                                                                                                    height: 100.0,
                                                                                                    fit: BoxFit.fill,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              investorProfileInvestorsRecord.iDisplayName,
                                                                                              'gf',
                                                                                            ),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: const Color(0xFF101213),
                                                                                                  fontSize: 22.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                investorProfileInvestorsRecord.occupation,
                                                                                                'w3e',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(100.0, 10.0, 0.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          context.pushNamed('post_image_investor');
                                                                                        },
                                                                                        text: '+',
                                                                                        icon: const Icon(
                                                                                          Icons.image,
                                                                                          size: 15.0,
                                                                                        ),
                                                                                        options: FFButtonOptions(
                                                                                          width: 81.0,
                                                                                          height: 32.0,
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).warning,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: Colors.white,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w800,
                                                                                              ),
                                                                                          elevation: 5.0,
                                                                                          borderSide: const BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () {
                                                                                          print('Button pressed ...');
                                                                                        },
                                                                                        text: '',
                                                                                        icon: const Icon(
                                                                                          Icons.chat,
                                                                                          size: 15.0,
                                                                                        ),
                                                                                        options: FFButtonOptions(
                                                                                          width: 74.0,
                                                                                          height: 30.0,
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).warning,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: Colors.white,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w300,
                                                                                              ),
                                                                                          elevation: 5.0,
                                                                                          borderSide: const BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        ListView(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          children: [
                                                                            Container(
                                                                              width: 401.0,
                                                                              height: 1400.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: Stack(
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: const Alignment(0.0, 0),
                                                                                              child: TabBar(
                                                                                                labelColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                unselectedLabelColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                                labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                unselectedLabelStyle: const TextStyle(),
                                                                                                indicatorColor: FlutterFlowTheme.of(context).warning,
                                                                                                padding: const EdgeInsets.all(4.0),
                                                                                                tabs: const [
                                                                                                  Tab(
                                                                                                    text: 'Posts',
                                                                                                  ),
                                                                                                  Tab(
                                                                                                    text: 'About',
                                                                                                  ),
                                                                                                ],
                                                                                                controller: _model.tabBarController,
                                                                                                onTap: (i) async {
                                                                                                  [
                                                                                                    () async {},
                                                                                                    () async {}
                                                                                                  ][i]();
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: TabBarView(
                                                                                                controller: _model.tabBarController,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 15.0),
                                                                                                    child: StreamBuilder<List<PostInvestorRecord>>(
                                                                                                      stream: queryPostInvestorRecord(
                                                                                                        queryBuilder: (postInvestorRecord) => postInvestorRecord
                                                                                                            .where(
                                                                                                              'investor_email',
                                                                                                              isEqualTo: currentUserEmail,
                                                                                                            )
                                                                                                            .orderBy('time_posted', descending: true),
                                                                                                      ),
                                                                                                      builder: (context, snapshot) {
                                                                                                        // Customize what your widget looks like when it's loading.
                                                                                                        if (!snapshot.hasData) {
                                                                                                          return const Center(
                                                                                                            child: SizedBox(
                                                                                                              width: 50.0,
                                                                                                              height: 50.0,
                                                                                                              child: CircularProgressIndicator(
                                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                                  Color(0xFFF1F4F8),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        }
                                                                                                        List<PostInvestorRecord> listViewPostInvestorRecordList = snapshot.data!;

                                                                                                        return ListView.builder(
                                                                                                          padding: EdgeInsets.zero,
                                                                                                          primary: false,
                                                                                                          shrinkWrap: true,
                                                                                                          scrollDirection: Axis.vertical,
                                                                                                          itemCount: listViewPostInvestorRecordList.length,
                                                                                                          itemBuilder: (context, listViewIndex) {
                                                                                                            final listViewPostInvestorRecord = listViewPostInvestorRecordList[listViewIndex];
                                                                                                            return Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                                              child: Material(
                                                                                                                color: Colors.transparent,
                                                                                                                elevation: 8.0,
                                                                                                                shape: RoundedRectangleBorder(
                                                                                                                  borderRadius: BorderRadius.circular(20.0),
                                                                                                                ),
                                                                                                                child: Container(
                                                                                                                  width: double.infinity,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: Colors.white,
                                                                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                                                                  ),
                                                                                                                  child: Padding(
                                                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                                                    child: Column(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      children: [
                                                                                                                        Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                                                          child: Row(
                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                            children: [
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Container(
                                                                                                                                    width: 50.0,
                                                                                                                                    height: 50.0,
                                                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                                                    decoration: const BoxDecoration(
                                                                                                                                      shape: BoxShape.circle,
                                                                                                                                    ),
                                                                                                                                    child: Image.network(
                                                                                                                                      listViewPostInvestorRecord.postInvPic,
                                                                                                                                      fit: BoxFit.cover,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                                                    child: Column(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                      children: [
                                                                                                                                        Row(
                                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                                          children: [
                                                                                                                                            Text(
                                                                                                                                              valueOrDefault<String>(
                                                                                                                                                listViewPostInvestorRecord.postInvestorName,
                                                                                                                                                'Name',
                                                                                                                                              ),
                                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                    fontFamily: 'Manrope',
                                                                                                                                                    fontSize: 12.0,
                                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                                  ),
                                                                                                                                            ),
                                                                                                                                          ],
                                                                                                                                        ),
                                                                                                                                        Row(
                                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                                          children: [
                                                                                                                                            Text(
                                                                                                                                              valueOrDefault<String>(
                                                                                                                                                dateTimeFormat("relative", listViewPostInvestorRecord.timePosted),
                                                                                                                                                '0',
                                                                                                                                              ),
                                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                    fontFamily: 'Manrope',
                                                                                                                                                    color: const Color(0xFF787878),
                                                                                                                                                    fontSize: 10.0,
                                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                                                  ),
                                                                                                                                            ),
                                                                                                                                          ],
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              const FaIcon(
                                                                                                                                FontAwesomeIcons.ellipsisV,
                                                                                                                                color: Color(0xFF787878),
                                                                                                                                size: 16.0,
                                                                                                                              ),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                                          child: Container(
                                                                                                                            width: double.infinity,
                                                                                                                            decoration: const BoxDecoration(),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                                                                  child: Text(
                                                                                                                                    listViewPostInvestorRecord.postDescription,
                                                                                                                                    textAlign: TextAlign.justify,
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Outfit',
                                                                                                                                          fontSize: 14.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.normal,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Image.network(
                                                                                                                                  listViewPostInvestorRecord.postImage,
                                                                                                                                  width: 500.0,
                                                                                                                                  height: 200.0,
                                                                                                                                  fit: BoxFit.cover,
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                                          child: Row(
                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                            children: [
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  SizedBox(
                                                                                                                                    width: 40.0,
                                                                                                                                    child: Stack(
                                                                                                                                      children: [
                                                                                                                                        Container(
                                                                                                                                          width: 20.0,
                                                                                                                                          height: 20.0,
                                                                                                                                          decoration: BoxDecoration(
                                                                                                                                            color: Colors.white,
                                                                                                                                            shape: BoxShape.circle,
                                                                                                                                            border: Border.all(
                                                                                                                                              color: Colors.white,
                                                                                                                                              width: 1.0,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          child: Container(
                                                                                                                                            width: 20.0,
                                                                                                                                            height: 20.0,
                                                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                                                            decoration: const BoxDecoration(
                                                                                                                                              shape: BoxShape.circle,
                                                                                                                                            ),
                                                                                                                                            child: Image.network(
                                                                                                                                              'https://picsum.photos/seed/711/600',
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Align(
                                                                                                                                          alignment: const AlignmentDirectional(0.1, 0.0),
                                                                                                                                          child: Container(
                                                                                                                                            width: 20.0,
                                                                                                                                            height: 20.0,
                                                                                                                                            decoration: BoxDecoration(
                                                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                              shape: BoxShape.circle,
                                                                                                                                              border: Border.all(
                                                                                                                                                color: Colors.white,
                                                                                                                                                width: 1.0,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            child: Container(
                                                                                                                                              width: 20.0,
                                                                                                                                              height: 20.0,
                                                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                                                              decoration: const BoxDecoration(
                                                                                                                                                shape: BoxShape.circle,
                                                                                                                                              ),
                                                                                                                                              child: Image.network(
                                                                                                                                                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                                                                                                                                fit: BoxFit.cover,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                                                    child: Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                      children: [
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                                          child: Row(
                                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                                            children: [
                                                                                                                                              const FaIcon(
                                                                                                                                                FontAwesomeIcons.commentAlt,
                                                                                                                                                color: Color(0xFF787878),
                                                                                                                                                size: 12.0,
                                                                                                                                              ),
                                                                                                                                              Padding(
                                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 2.0, 0.0),
                                                                                                                                                child: Text(
                                                                                                                                                  '21',
                                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                        fontFamily: 'Manrope',
                                                                                                                                                        fontSize: 10.0,
                                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                                        fontWeight: FontWeight.w500,
                                                                                                                                                      ),
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            ],
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Icon(
                                                                                                                                          Icons.favorite,
                                                                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                                                                          size: 16.0,
                                                                                                                                        ),
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 2.0, 0.0),
                                                                                                                                          child: Text(
                                                                                                                                            '212',
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Manrope',
                                                                                                                                                  fontSize: 10.0,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              const Icon(
                                                                                                                                Icons.bookmark_border_outlined,
                                                                                                                                color: Color(0xFF333333),
                                                                                                                                size: 16.0,
                                                                                                                              ),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      ListView(
                                                                                                        padding: EdgeInsets.zero,
                                                                                                        shrinkWrap: true,
                                                                                                        scrollDirection: Axis.vertical,
                                                                                                        children: [
                                                                                                          Container(
                                                                                                            width: 100.0,
                                                                                                            height: 1609.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            ),
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Container(
                                                                                                                  width: 382.0,
                                                                                                                  height: 1086.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  ),
                                                                                                                  child: ListView(
                                                                                                                    padding: EdgeInsets.zero,
                                                                                                                    scrollDirection: Axis.vertical,
                                                                                                                    children: [
                                                                                                                      wrapWithModel(
                                                                                                                        model: _model.detailinvestorModel,
                                                                                                                        updateCallback: () => setState(() {}),
                                                                                                                        child: const DetailinvestorWidget(),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
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
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.98, 0.99),
                  child: Container(
                    width: 398.0,
                    height: 68.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: wrapWithModel(
                      model: _model.iprofileModel,
                      updateCallback: () => setState(() {}),
                      child: const IprofileWidget(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
