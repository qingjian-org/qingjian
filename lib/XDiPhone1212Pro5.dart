import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XD.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDiPhone1212Pro5 extends StatelessWidget {
  XDiPhone1212Pro5({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 13.7, end: 35.0),
            Pin(size: 3.4, middle: 0.2435),
            child: SvgPicture.string(
              _svg_vn7x2m,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 127.0, middle: 0.4736),
            Pin(size: 47.0, start: 67.0),
            child: Text(
              '产品柜',
              style: TextStyle(
                fontFamily: 'Microsoft Yi Baiti',
                fontSize: 35,
                color: const Color(0xff06241a),
                height: 0.5714285714285714,
                shadows: [
                  Shadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  )
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 14.2, middle: 0.6421),
            Pin(size: 14.1, start: 82.0),
            child: SvgPicture.string(
              _svg_x7p4t,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 9.6, start: 17.5),
            Pin(size: 17.6, start: 82.0),
            child: SvgPicture.string(
              _svg_gjm7yo,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.4886),
            Pin(size: 60.0, end: 19.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffff0d1d),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 21.0),
            Pin(size: 1.0, end: 96.0),
            child: SvgPicture.string(
              _svg_bfeg7j,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 1.0, start: 130.0),
            child: SvgPicture.string(
              _svg_rvpfhl,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, start: 39.5),
            Pin(size: 61.0, middle: 0.2231),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.394, -0.547),
            child:
                // Adobe XD layer: '410828845859064977' (shape)
                Container(
              width: 56.0,
              height: 55.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/2.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.034, -0.556),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 56.0,
              height: 57.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.327, -0.554),
            child:
                // Adobe XD layer: '449043874045663638' (shape)
                Container(
              width: 56.0,
              height: 57.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 56.0, end: 55.5),
            Pin(size: 57.0, middle: 0.2245),
            child:
                // Adobe XD layer: '327452647342344346' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/3.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.5, end: 26.5),
            Pin(size: 77.0, middle: 0.2011),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffd0e7ef),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.5, end: 26.5),
            Pin(size: 77.0, middle: 0.3026),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffd0e7ef),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.5, end: 26.5),
            Pin(size: 77.0, middle: 0.4062),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffd0e7ef),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.5, end: 26.5),
            Pin(size: 77.0, middle: 0.5097),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffd0e7ef),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.5, end: 26.5),
            Pin(size: 77.0, middle: 0.6131),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffd0e7ef),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.5, end: 26.5),
            Pin(size: 77.0, middle: 0.7163),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffd0e7ef),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.5, end: 26.5),
            Pin(size: 77.0, middle: 0.8196),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffd0e7ef),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.7, end: 46.0),
            Pin(size: 3.4, middle: 0.236),
            child: SvgPicture.string(
              _svg_bbpjq1,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.7, end: 46.0),
            Pin(size: 3.4, middle: 0.3284),
            child: SvgPicture.string(
              _svg_qpezwx,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.7, end: 46.0),
            Pin(size: 3.4, middle: 0.4226),
            child: SvgPicture.string(
              _svg_m2b0k,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.7, end: 46.0),
            Pin(size: 3.4, middle: 0.5169),
            child: SvgPicture.string(
              _svg_rlhccr,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.7, end: 46.0),
            Pin(size: 3.4, middle: 0.611),
            child: SvgPicture.string(
              _svg_y3secr,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.7, end: 46.0),
            Pin(size: 3.4, middle: 0.705),
            child: SvgPicture.string(
              _svg_tsh9n,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.7, end: 46.0),
            Pin(size: 3.4, middle: 0.7989),
            child: SvgPicture.string(
              _svg_hgqhed,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 127.0, middle: 0.4736),
            Pin(size: 47.0, start: 67.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD(),
                ),
              ],
              child: Text(
                '产品柜',
                style: TextStyle(
                  fontFamily: 'Microsoft Yi Baiti',
                  fontSize: 35,
                  color: const Color(0xff06241a),
                  height: 0.5714285714285714,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 14.2, middle: 0.6421),
            Pin(size: 14.1, start: 82.0),
            child: SvgPicture.string(
              _svg_x7p4t,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 9.6, start: 17.5),
            Pin(size: 17.6, start: 82.0),
            child: SvgPicture.string(
              _svg_gjm7yo,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 47.0, start: 48.5),
            Pin(size: 29.0, middle: 0.3234),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 47.0, start: 48.5),
            Pin(size: 29.0, middle: 0.4207),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 47.0, start: 48.5),
            Pin(size: 29.0, middle: 0.5179),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 47.0, start: 48.5),
            Pin(size: 29.0, middle: 0.6151),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 47.0, start: 48.5),
            Pin(size: 29.0, middle: 0.7121),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 47.0, start: 48.5),
            Pin(size: 29.0, middle: 0.809),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.175, -0.353),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.175, -0.159),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.175, 0.036),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.175, 0.23),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.175, 0.424),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.175, 0.618),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.127, -0.353),
            child:
                // Adobe XD layer: '327452647342344346' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/3.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.127, -0.159),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.127, 0.036),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.127, 0.23),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.127, 0.424),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.127, 0.618),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.43, -0.353),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.43, -0.159),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.43, 0.036),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.43, 0.23),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.43, 0.424),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.43, 0.618),
            child:
                // Adobe XD layer: '86818919415592160' (shape)
                Container(
              width: 47.0,
              height: 29.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 293.5, start: 39.5),
            Pin(size: 56.0, middle: 0.2223),
            child: SingleChildScrollView(
              primary: false,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [{}].map((itemData) {
                  return SizedBox(
                    width: 259.0,
                    height: 38.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 47.0, start: 0.0),
                          Pin(start: 4.5, end: 4.5),
                          child:
                              // Adobe XD layer: '86818919415592160' (shape)
                              Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/images/1.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(21.0),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 47.0, middle: 0.4802),
                          Pin(start: 4.5, end: 4.5),
                          child:
                              // Adobe XD layer: '86818919415592160' (shape)
                              Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/images/1.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(21.0),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 47.0, middle: 0.7401),
                          Pin(start: 4.5, end: 4.5),
                          child:
                              // Adobe XD layer: '327452647342344346' (shape)
                              Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/images/3.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(21.0),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 47.0, end: 0.0),
                          Pin(start: 4.5, end: 4.5),
                          child:
                              // Adobe XD layer: '146036734416160729' (shape)
                              Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/images/4.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(21.0),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 38.6, middle: 0.25),
                          Pin(start: 0.0, end: 0.0),
                          child:
                              // Adobe XD layer: '410828845859064977' (shape)
                              Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/images/2.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(21.0),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29c21818),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.444, -0.357),
            child:
                // Adobe XD layer: '410828845859064977' (shape)
                Container(
              width: 39.0,
              height: 38.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/2.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.444, -0.162),
            child:
                // Adobe XD layer: '410828845859064977' (shape)
                Container(
              width: 39.0,
              height: 38.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/2.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.444, 0.035),
            child:
                // Adobe XD layer: '410828845859064977' (shape)
                Container(
              width: 39.0,
              height: 38.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/2.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.444, 0.232),
            child:
                // Adobe XD layer: '410828845859064977' (shape)
                Container(
              width: 39.0,
              height: 38.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/2.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.444, 0.428),
            child:
                // Adobe XD layer: '410828845859064977' (shape)
                Container(
              width: 39.0,
              height: 38.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/2.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.444, 0.624),
            child:
                // Adobe XD layer: '410828845859064977' (shape)
                Container(
              width: 39.0,
              height: 38.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/2.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.0, end: 26.0),
            Pin(size: 9.0, middle: 0.2789),
            child: Container(
              color: const Color(0xfff1fbff),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 31.0, end: 26.0),
            Pin(size: 9.0, middle: 0.3722),
            child: Container(
              color: const Color(0xfff1fbff),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 31.0, end: 26.0),
            Pin(size: 9.0, middle: 0.4668),
            child: Container(
              color: const Color(0xfff1fbff),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 31.0, end: 26.0),
            Pin(size: 9.0, middle: 0.5614),
            child: Container(
              color: const Color(0xfff1fbff),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 31.0, end: 26.0),
            Pin(size: 9.0, middle: 0.6572),
            child: Container(
              color: const Color(0xfff1fbff),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 31.0, end: 26.0),
            Pin(size: 9.0, middle: 0.7518),
            child: Container(
              color: const Color(0xfff1fbff),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 26.0),
            Pin(size: 9.0, end: 127.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff1fbff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.0, end: 26.0),
            Pin(size: 9.0, start: 150.0),
            child: Container(
              color: const Color(0xffccecf8),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 537.0, start: -237.0),
            Pin(size: 9.0, middle: 0.5086),
            child: Transform.rotate(
              angle: 1.5708,
              child: Container(
                color: const Color(0xfff1fbff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 539.0, end: -240.0),
            Pin(size: 7.0, middle: 0.5135),
            child: Transform.rotate(
              angle: 1.5708,
              child: Container(
                color: const Color(0xfff1fbff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 33.0),
            Pin(size: 68.1, middle: 0.2105),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_c4uwwq,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.7),
                  Pin(size: 2.6, end: 0.0),
                  child: SvgPicture.string(
                    _svg_yqr7ya,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 45.0),
                  Pin(start: 0.1, end: 0.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 36.0),
                  Pin(start: 0.1, end: 0.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 33.0),
            Pin(size: 67.0, middle: 0.3122),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_ml5wf6,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.7),
                  Pin(size: 2.6, end: 0.2),
                  child: SvgPicture.string(
                    _svg_x6zu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 45.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 36.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 33.1),
            Pin(size: 68.1, middle: 0.4131),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_b6ft15,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.6),
                  Pin(size: 2.6, end: 0.0),
                  child: SvgPicture.string(
                    _svg_a0ka,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 44.9),
                  Pin(start: 0.1, end: 0.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 35.9),
                  Pin(start: 0.1, end: 0.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 33.1),
            Pin(size: 68.4, middle: 0.5155),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_jfrv1,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.6),
                  Pin(size: 2.8, end: 0.0),
                  child: SvgPicture.string(
                    _svg_ooh5sw,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 44.9),
                  Pin(start: 0.0, end: 0.4),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 35.9),
                  Pin(start: 0.0, end: 0.4),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 33.1),
            Pin(size: 69.0, middle: 0.618),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_y7wwfy,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.6),
                  Pin(size: 3.2, end: 0.0),
                  child: SvgPicture.string(
                    _svg_q31dd,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 44.9),
                  Pin(start: 0.0, end: 1.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 35.9),
                  Pin(start: 0.0, end: 1.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 33.1),
            Pin(size: 69.0, middle: 0.7202),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_tppz6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.6),
                  Pin(size: 3.2, end: 0.0),
                  child: SvgPicture.string(
                    _svg_tnevw9,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 44.9),
                  Pin(start: 0.0, end: 1.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 35.9),
                  Pin(start: 0.0, end: 1.0),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 33.1),
            Pin(size: 68.4, middle: 0.8216),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_sk0rcn,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.6),
                  Pin(size: 2.2, end: 0.4),
                  child: SvgPicture.string(
                    _svg_vh556v,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 44.9),
                  Pin(start: 0.0, end: 0.4),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 35.9),
                  Pin(start: 0.0, end: 0.4),
                  child: Container(
                    color: const Color(0xffbae4e0),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.0, middle: 0.4899),
            Pin(size: 33.0, end: 32.0),
            child: Transform.rotate(
              angle: 1.5708,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 13.0, middle: 0.4899),
            Pin(size: 33.0, end: 32.0),
            child: Transform.rotate(
              angle: 3.1416,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 19.0, middle: 0.4907),
            Pin(size: 23.3, end: 33.7),
            child: SvgPicture.string(
              _svg_sypfve,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 546.0, end: -198.5),
            Pin(size: 7.0, middle: 0.5141),
            child: Transform.rotate(
              angle: 1.5708,
              child: Container(
                color: const Color(0xfff1fbff),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_vn7x2m =
    '<svg viewBox="362.3 199.6 13.7 3.4" ><path transform="translate(-12.67, -35.1)" d="M 376.7070922851562 234.7000122070312 C 375.7688293457031 234.7000122070312 375 235.4658813476562 375 236.4005432128906 C 375 237.3351745605469 375.7688293457031 238.10107421875 376.7070922851562 238.10107421875 C 377.6453247070312 238.10107421875 378.4141845703125 237.3351745605469 378.4141845703125 236.4005432128906 C 378.4141845703125 235.4529113769531 377.6453247070312 234.7000122070312 376.7070922851562 234.7000122070312 Z M 376.7070922851562 237.3481597900391 C 376.1858520507812 237.3481597900391 375.7557983398438 236.9197845458984 375.7557983398438 236.4005432128906 C 375.7557983398438 235.8812866210938 376.1858520507812 235.4529113769531 376.7070922851562 235.4529113769531 C 377.2283325195312 235.4529113769531 377.6583862304688 235.8812866210938 377.6583862304688 236.4005432128906 L 377.6583862304688 236.4005432128906 C 377.6583862304688 236.9197845458984 377.2283325195312 237.3481597900391 376.7070922851562 237.3481597900391 Z M 381.8413696289062 234.7000122070312 C 380.9031372070312 234.7000122070312 380.13427734375 235.4658813476562 380.13427734375 236.4005432128906 C 380.13427734375 237.3351745605469 380.9031372070312 238.10107421875 381.8413696289062 238.10107421875 C 382.7796630859375 238.10107421875 383.5484924316406 237.3351745605469 383.5484924316406 236.4005432128906 C 383.5484924316406 235.4529113769531 382.7796630859375 234.7000122070312 381.8413696289062 234.7000122070312 Z M 381.8413696289062 237.3481597900391 C 381.3201293945312 237.3481597900391 380.89013671875 236.9197845458984 380.89013671875 236.4005432128906 C 380.89013671875 235.8812866210938 381.3201293945312 235.4529113769531 381.8413696289062 235.4529113769531 C 382.3626708984375 235.4529113769531 382.7926635742188 235.8812866210938 382.7926635742188 236.4005432128906 L 382.7926635742188 236.4005432128906 C 382.7796630859375 236.9197845458984 382.3626708984375 237.3481597900391 381.8413696289062 237.3481597900391 Z M 386.9626770019531 234.7000122070312 C 386.0244140625 234.7000122070312 385.2555847167969 235.4658813476562 385.2555847167969 236.4005432128906 C 385.2555847167969 237.3351745605469 386.0244140625 238.10107421875 386.9626770019531 238.10107421875 C 387.9009399414062 238.10107421875 388.6697998046875 237.3351745605469 388.6697998046875 236.4005432128906 C 388.6697998046875 235.4529113769531 387.9139709472656 234.7000122070312 386.9626770019531 234.7000122070312 Z M 386.9626770019531 237.3481597900391 C 386.44140625 237.3481597900391 386.0114135742188 236.9197845458984 386.0114135742188 236.4005432128906 C 386.0114135742188 235.8812866210938 386.44140625 235.4529113769531 386.9626770019531 235.4529113769531 C 387.4839477539062 235.4529113769531 387.9139709472656 235.8812866210938 387.9139709472656 236.4005432128906 L 387.9139709472656 236.4005432128906 C 387.9139709472656 236.9197845458984 387.4839477539062 237.3481597900391 386.9626770019531 237.3481597900391 Z" fill="#0d73f9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x7p4t =
    '<svg viewBox="254.8 82.0 14.2 14.1" ><path transform="translate(-262.43, -1060.2)" d="M 531.3521728515625 1145.751220703125 C 531.3359375 1145.637939453125 531.2872314453125 1145.540771484375 531.2059936523438 1145.4599609375 L 528.0375366210938 1142.31982421875 C 527.7938232421875 1142.09326171875 527.4201049804688 1142.09326171875 527.192626953125 1142.31982421875 C 526.9488525390625 1142.54638671875 526.9488525390625 1142.934936523438 527.192626953125 1143.16162109375 L 529.4674072265625 1145.427490234375 L 518.8247680664062 1145.427490234375 C 518.5485229492188 1145.427490234375 518.3048095703125 1145.67041015625 518.3048095703125 1145.961669921875 C 518.3048095703125 1146.2529296875 518.5485229492188 1146.4794921875 518.8247680664062 1146.4794921875 L 529.4674072265625 1146.4794921875 L 527.192626953125 1148.74560546875 C 526.9488525390625 1148.97216796875 526.9488525390625 1149.360717773438 527.192626953125 1149.587280273438 C 527.4364013671875 1149.81396484375 527.81005859375 1149.81396484375 528.0375366210938 1149.587280273438 L 531.2059936523438 1146.447265625 C 531.2872314453125 1146.3662109375 531.3359375 1146.269165039062 531.3521728515625 1146.155883789062 C 531.3846435546875 1146.107299804688 531.4010009765625 1146.0263671875 531.4010009765625 1145.961669921875 C 531.4010009765625 1145.89697265625 531.3846435546875 1145.7998046875 531.3521728515625 1145.751220703125 Z M 529.776123046875 1151.91796875 L 519.1334838867188 1151.91796875 L 521.408203125 1149.652099609375 C 521.6519165039062 1149.425415039062 521.6519165039062 1149.036865234375 521.408203125 1148.810302734375 C 521.16455078125 1148.583740234375 520.790771484375 1148.583740234375 520.5633544921875 1148.810302734375 L 517.3948974609375 1151.950439453125 C 517.3135986328125 1152.03125 517.264892578125 1152.12841796875 517.2486572265625 1152.2255859375 C 517.2161865234375 1152.290283203125 517.1998901367188 1152.371337890625 517.1998901367188 1152.43603515625 C 517.1998901367188 1152.500732421875 517.2161865234375 1152.581665039062 517.2486572265625 1152.646484375 C 517.264892578125 1152.759765625 517.3135986328125 1152.85693359375 517.3948974609375 1152.937744140625 L 520.5633544921875 1156.077880859375 C 520.8070068359375 1156.304443359375 521.1807861328125 1156.304443359375 521.408203125 1156.077880859375 C 521.6519165039062 1155.851318359375 521.6519165039062 1155.462768554688 521.408203125 1155.236206054688 L 519.1334838867188 1152.97021484375 L 529.776123046875 1152.97021484375 C 530.068603515625 1152.97021484375 530.2960815429688 1152.727294921875 530.2960815429688 1152.4521484375 C 530.2960815429688 1152.177124023438 530.068603515625 1151.91796875 529.776123046875 1151.91796875 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gjm7yo =
    '<svg viewBox="17.5 82.0 9.6 17.6" ><path transform="translate(-1030.52, -1227.47)" d="M 1057.34326171875 1325.620361328125 L 1049.950561523438 1318.161010742188 L 1057.104858398438 1310.796752929688 C 1057.414916992188 1310.487915039062 1057.414916992188 1309.965454101562 1057.104858398438 1309.656494140625 C 1056.794677734375 1309.34765625 1056.294067382812 1309.34765625 1056.0078125 1309.656494140625 L 1048.25732421875 1317.638549804688 C 1047.947265625 1317.947387695312 1047.947265625 1318.469970703125 1048.25732421875 1318.77880859375 C 1048.328857421875 1318.849975585938 1048.37646484375 1318.873901367188 1048.471923828125 1318.921264648438 L 1056.246337890625 1326.7607421875 C 1056.55615234375 1327.069458007812 1057.057006835938 1327.069458007812 1057.390991210938 1326.7607421875 C 1057.653442382812 1326.452026367188 1057.653442382812 1325.92919921875 1057.34326171875 1325.620361328125 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bfeg7j =
    '<svg viewBox="0.0 726.0 390.0 1.0" ><path transform="translate(0.0, 726.0)" d="M 0 0 L 390 0" fill="none" fill-opacity="0.33" stroke="#707070" stroke-width="1" stroke-opacity="0.33" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rvpfhl =
    '<svg viewBox="0.0 130.0 411.0 1.0" ><path transform="translate(0.0, 130.0)" d="M 0 0 L 411 0" fill="none" fill-opacity="0.33" stroke="#707070" stroke-width="1" stroke-opacity="0.33" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bbpjq1 =
    '<svg viewBox="351.3 193.4 13.7 3.4" ><path transform="translate(-23.67, -41.3)" d="M 376.7070922851562 234.7000122070312 C 375.7688293457031 234.7000122070312 375 235.4658813476562 375 236.4005432128906 C 375 237.3351745605469 375.7688293457031 238.10107421875 376.7070922851562 238.10107421875 C 377.6453247070312 238.10107421875 378.4141845703125 237.3351745605469 378.4141845703125 236.4005432128906 C 378.4141845703125 235.4529113769531 377.6453247070312 234.7000122070312 376.7070922851562 234.7000122070312 Z M 376.7070922851562 237.3481597900391 C 376.1858520507812 237.3481597900391 375.7557983398438 236.9197845458984 375.7557983398438 236.4005432128906 C 375.7557983398438 235.8812866210938 376.1858520507812 235.4529113769531 376.7070922851562 235.4529113769531 C 377.2283325195312 235.4529113769531 377.6583862304688 235.8812866210938 377.6583862304688 236.4005432128906 L 377.6583862304688 236.4005432128906 C 377.6583862304688 236.9197845458984 377.2283325195312 237.3481597900391 376.7070922851562 237.3481597900391 Z M 381.8413696289062 234.7000122070312 C 380.9031372070312 234.7000122070312 380.13427734375 235.4658813476562 380.13427734375 236.4005432128906 C 380.13427734375 237.3351745605469 380.9031372070312 238.10107421875 381.8413696289062 238.10107421875 C 382.7796630859375 238.10107421875 383.5484924316406 237.3351745605469 383.5484924316406 236.4005432128906 C 383.5484924316406 235.4529113769531 382.7796630859375 234.7000122070312 381.8413696289062 234.7000122070312 Z M 381.8413696289062 237.3481597900391 C 381.3201293945312 237.3481597900391 380.89013671875 236.9197845458984 380.89013671875 236.4005432128906 C 380.89013671875 235.8812866210938 381.3201293945312 235.4529113769531 381.8413696289062 235.4529113769531 C 382.3626708984375 235.4529113769531 382.7926635742188 235.8812866210938 382.7926635742188 236.4005432128906 L 382.7926635742188 236.4005432128906 C 382.7796630859375 236.9197845458984 382.3626708984375 237.3481597900391 381.8413696289062 237.3481597900391 Z M 386.9626770019531 234.7000122070312 C 386.0244140625 234.7000122070312 385.2555847167969 235.4658813476562 385.2555847167969 236.4005432128906 C 385.2555847167969 237.3351745605469 386.0244140625 238.10107421875 386.9626770019531 238.10107421875 C 387.9009399414062 238.10107421875 388.6697998046875 237.3351745605469 388.6697998046875 236.4005432128906 C 388.6697998046875 235.4529113769531 387.9139709472656 234.7000122070312 386.9626770019531 234.7000122070312 Z M 386.9626770019531 237.3481597900391 C 386.44140625 237.3481597900391 386.0114135742188 236.9197845458984 386.0114135742188 236.4005432128906 C 386.0114135742188 235.8812866210938 386.44140625 235.4529113769531 386.9626770019531 235.4529113769531 C 387.4839477539062 235.4529113769531 387.9139709472656 235.8812866210938 387.9139709472656 236.4005432128906 L 387.9139709472656 236.4005432128906 C 387.9139709472656 236.9197845458984 387.4839477539062 237.3481597900391 386.9626770019531 237.3481597900391 Z" fill="#343603" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qpezwx =
    '<svg viewBox="351.3 269.2 13.7 3.4" ><path transform="translate(-23.67, 34.46)" d="M 376.7070922851562 234.7000122070312 C 375.7688293457031 234.7000122070312 375 235.4658813476562 375 236.4005432128906 C 375 237.3351745605469 375.7688293457031 238.10107421875 376.7070922851562 238.10107421875 C 377.6453247070312 238.10107421875 378.4141845703125 237.3351745605469 378.4141845703125 236.4005432128906 C 378.4141845703125 235.4529113769531 377.6453247070312 234.7000122070312 376.7070922851562 234.7000122070312 Z M 376.7070922851562 237.3481597900391 C 376.1858520507812 237.3481597900391 375.7557983398438 236.9197845458984 375.7557983398438 236.4005432128906 C 375.7557983398438 235.8812866210938 376.1858520507812 235.4529113769531 376.7070922851562 235.4529113769531 C 377.2283325195312 235.4529113769531 377.6583862304688 235.8812866210938 377.6583862304688 236.4005432128906 L 377.6583862304688 236.4005432128906 C 377.6583862304688 236.9197845458984 377.2283325195312 237.3481597900391 376.7070922851562 237.3481597900391 Z M 381.8413696289062 234.7000122070312 C 380.9031372070312 234.7000122070312 380.13427734375 235.4658813476562 380.13427734375 236.4005432128906 C 380.13427734375 237.3351745605469 380.9031372070312 238.10107421875 381.8413696289062 238.10107421875 C 382.7796630859375 238.10107421875 383.5484924316406 237.3351745605469 383.5484924316406 236.4005432128906 C 383.5484924316406 235.4529113769531 382.7796630859375 234.7000122070312 381.8413696289062 234.7000122070312 Z M 381.8413696289062 237.3481597900391 C 381.3201293945312 237.3481597900391 380.89013671875 236.9197845458984 380.89013671875 236.4005432128906 C 380.89013671875 235.8812866210938 381.3201293945312 235.4529113769531 381.8413696289062 235.4529113769531 C 382.3626708984375 235.4529113769531 382.7926635742188 235.8812866210938 382.7926635742188 236.4005432128906 L 382.7926635742188 236.4005432128906 C 382.7796630859375 236.9197845458984 382.3626708984375 237.3481597900391 381.8413696289062 237.3481597900391 Z M 386.9626770019531 234.7000122070312 C 386.0244140625 234.7000122070312 385.2555847167969 235.4658813476562 385.2555847167969 236.4005432128906 C 385.2555847167969 237.3351745605469 386.0244140625 238.10107421875 386.9626770019531 238.10107421875 C 387.9009399414062 238.10107421875 388.6697998046875 237.3351745605469 388.6697998046875 236.4005432128906 C 388.6697998046875 235.4529113769531 387.9139709472656 234.7000122070312 386.9626770019531 234.7000122070312 Z M 386.9626770019531 237.3481597900391 C 386.44140625 237.3481597900391 386.0114135742188 236.9197845458984 386.0114135742188 236.4005432128906 C 386.0114135742188 235.8812866210938 386.44140625 235.4529113769531 386.9626770019531 235.4529113769531 C 387.4839477539062 235.4529113769531 387.9139709472656 235.8812866210938 387.9139709472656 236.4005432128906 L 387.9139709472656 236.4005432128906 C 387.9139709472656 236.9197845458984 387.4839477539062 237.3481597900391 386.9626770019531 237.3481597900391 Z" fill="#343603" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m2b0k =
    '<svg viewBox="351.3 346.4 13.7 3.4" ><path transform="translate(-23.67, 111.7)" d="M 376.7070922851562 234.7000122070312 C 375.7688293457031 234.7000122070312 375 235.4658813476562 375 236.4005432128906 C 375 237.3351745605469 375.7688293457031 238.10107421875 376.7070922851562 238.10107421875 C 377.6453247070312 238.10107421875 378.4141845703125 237.3351745605469 378.4141845703125 236.4005432128906 C 378.4141845703125 235.4529113769531 377.6453247070312 234.7000122070312 376.7070922851562 234.7000122070312 Z M 376.7070922851562 237.3481597900391 C 376.1858520507812 237.3481597900391 375.7557983398438 236.9197845458984 375.7557983398438 236.4005432128906 C 375.7557983398438 235.8812866210938 376.1858520507812 235.4529113769531 376.7070922851562 235.4529113769531 C 377.2283325195312 235.4529113769531 377.6583862304688 235.8812866210938 377.6583862304688 236.4005432128906 L 377.6583862304688 236.4005432128906 C 377.6583862304688 236.9197845458984 377.2283325195312 237.3481597900391 376.7070922851562 237.3481597900391 Z M 381.8413696289062 234.7000122070312 C 380.9031372070312 234.7000122070312 380.13427734375 235.4658813476562 380.13427734375 236.4005432128906 C 380.13427734375 237.3351745605469 380.9031372070312 238.10107421875 381.8413696289062 238.10107421875 C 382.7796630859375 238.10107421875 383.5484924316406 237.3351745605469 383.5484924316406 236.4005432128906 C 383.5484924316406 235.4529113769531 382.7796630859375 234.7000122070312 381.8413696289062 234.7000122070312 Z M 381.8413696289062 237.3481597900391 C 381.3201293945312 237.3481597900391 380.89013671875 236.9197845458984 380.89013671875 236.4005432128906 C 380.89013671875 235.8812866210938 381.3201293945312 235.4529113769531 381.8413696289062 235.4529113769531 C 382.3626708984375 235.4529113769531 382.7926635742188 235.8812866210938 382.7926635742188 236.4005432128906 L 382.7926635742188 236.4005432128906 C 382.7796630859375 236.9197845458984 382.3626708984375 237.3481597900391 381.8413696289062 237.3481597900391 Z M 386.9626770019531 234.7000122070312 C 386.0244140625 234.7000122070312 385.2555847167969 235.4658813476562 385.2555847167969 236.4005432128906 C 385.2555847167969 237.3351745605469 386.0244140625 238.10107421875 386.9626770019531 238.10107421875 C 387.9009399414062 238.10107421875 388.6697998046875 237.3351745605469 388.6697998046875 236.4005432128906 C 388.6697998046875 235.4529113769531 387.9139709472656 234.7000122070312 386.9626770019531 234.7000122070312 Z M 386.9626770019531 237.3481597900391 C 386.44140625 237.3481597900391 386.0114135742188 236.9197845458984 386.0114135742188 236.4005432128906 C 386.0114135742188 235.8812866210938 386.44140625 235.4529113769531 386.9626770019531 235.4529113769531 C 387.4839477539062 235.4529113769531 387.9139709472656 235.8812866210938 387.9139709472656 236.4005432128906 L 387.9139709472656 236.4005432128906 C 387.9139709472656 236.9197845458984 387.4839477539062 237.3481597900391 386.9626770019531 237.3481597900391 Z" fill="#343603" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rlhccr =
    '<svg viewBox="351.3 423.6 13.7 3.4" ><path transform="translate(-23.67, 188.95)" d="M 376.7070922851562 234.7000122070312 C 375.7688293457031 234.7000122070312 375 235.4658813476562 375 236.4005432128906 C 375 237.3351745605469 375.7688293457031 238.10107421875 376.7070922851562 238.10107421875 C 377.6453247070312 238.10107421875 378.4141845703125 237.3351745605469 378.4141845703125 236.4005432128906 C 378.4141845703125 235.4529113769531 377.6453247070312 234.7000122070312 376.7070922851562 234.7000122070312 Z M 376.7070922851562 237.3481597900391 C 376.1858520507812 237.3481597900391 375.7557983398438 236.9197845458984 375.7557983398438 236.4005432128906 C 375.7557983398438 235.8812866210938 376.1858520507812 235.4529113769531 376.7070922851562 235.4529113769531 C 377.2283325195312 235.4529113769531 377.6583862304688 235.8812866210938 377.6583862304688 236.4005432128906 L 377.6583862304688 236.4005432128906 C 377.6583862304688 236.9197845458984 377.2283325195312 237.3481597900391 376.7070922851562 237.3481597900391 Z M 381.8413696289062 234.7000122070312 C 380.9031372070312 234.7000122070312 380.13427734375 235.4658813476562 380.13427734375 236.4005432128906 C 380.13427734375 237.3351745605469 380.9031372070312 238.10107421875 381.8413696289062 238.10107421875 C 382.7796630859375 238.10107421875 383.5484924316406 237.3351745605469 383.5484924316406 236.4005432128906 C 383.5484924316406 235.4529113769531 382.7796630859375 234.7000122070312 381.8413696289062 234.7000122070312 Z M 381.8413696289062 237.3481597900391 C 381.3201293945312 237.3481597900391 380.89013671875 236.9197845458984 380.89013671875 236.4005432128906 C 380.89013671875 235.8812866210938 381.3201293945312 235.4529113769531 381.8413696289062 235.4529113769531 C 382.3626708984375 235.4529113769531 382.7926635742188 235.8812866210938 382.7926635742188 236.4005432128906 L 382.7926635742188 236.4005432128906 C 382.7796630859375 236.9197845458984 382.3626708984375 237.3481597900391 381.8413696289062 237.3481597900391 Z M 386.9626770019531 234.7000122070312 C 386.0244140625 234.7000122070312 385.2555847167969 235.4658813476562 385.2555847167969 236.4005432128906 C 385.2555847167969 237.3351745605469 386.0244140625 238.10107421875 386.9626770019531 238.10107421875 C 387.9009399414062 238.10107421875 388.6697998046875 237.3351745605469 388.6697998046875 236.4005432128906 C 388.6697998046875 235.4529113769531 387.9139709472656 234.7000122070312 386.9626770019531 234.7000122070312 Z M 386.9626770019531 237.3481597900391 C 386.44140625 237.3481597900391 386.0114135742188 236.9197845458984 386.0114135742188 236.4005432128906 C 386.0114135742188 235.8812866210938 386.44140625 235.4529113769531 386.9626770019531 235.4529113769531 C 387.4839477539062 235.4529113769531 387.9139709472656 235.8812866210938 387.9139709472656 236.4005432128906 L 387.9139709472656 236.4005432128906 C 387.9139709472656 236.9197845458984 387.4839477539062 237.3481597900391 386.9626770019531 237.3481597900391 Z" fill="#343603" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y3secr =
    '<svg viewBox="351.3 500.8 13.7 3.4" ><path transform="translate(-23.67, 266.09)" d="M 376.7070922851562 234.7000122070312 C 375.7688293457031 234.7000122070312 375 235.4658813476562 375 236.4005432128906 C 375 237.3351745605469 375.7688293457031 238.10107421875 376.7070922851562 238.10107421875 C 377.6453247070312 238.10107421875 378.4141845703125 237.3351745605469 378.4141845703125 236.4005432128906 C 378.4141845703125 235.4529113769531 377.6453247070312 234.7000122070312 376.7070922851562 234.7000122070312 Z M 376.7070922851562 237.3481597900391 C 376.1858520507812 237.3481597900391 375.7557983398438 236.9197845458984 375.7557983398438 236.4005432128906 C 375.7557983398438 235.8812866210938 376.1858520507812 235.4529113769531 376.7070922851562 235.4529113769531 C 377.2283325195312 235.4529113769531 377.6583862304688 235.8812866210938 377.6583862304688 236.4005432128906 L 377.6583862304688 236.4005432128906 C 377.6583862304688 236.9197845458984 377.2283325195312 237.3481597900391 376.7070922851562 237.3481597900391 Z M 381.8413696289062 234.7000122070312 C 380.9031372070312 234.7000122070312 380.13427734375 235.4658813476562 380.13427734375 236.4005432128906 C 380.13427734375 237.3351745605469 380.9031372070312 238.10107421875 381.8413696289062 238.10107421875 C 382.7796630859375 238.10107421875 383.5484924316406 237.3351745605469 383.5484924316406 236.4005432128906 C 383.5484924316406 235.4529113769531 382.7796630859375 234.7000122070312 381.8413696289062 234.7000122070312 Z M 381.8413696289062 237.3481597900391 C 381.3201293945312 237.3481597900391 380.89013671875 236.9197845458984 380.89013671875 236.4005432128906 C 380.89013671875 235.8812866210938 381.3201293945312 235.4529113769531 381.8413696289062 235.4529113769531 C 382.3626708984375 235.4529113769531 382.7926635742188 235.8812866210938 382.7926635742188 236.4005432128906 L 382.7926635742188 236.4005432128906 C 382.7796630859375 236.9197845458984 382.3626708984375 237.3481597900391 381.8413696289062 237.3481597900391 Z M 386.9626770019531 234.7000122070312 C 386.0244140625 234.7000122070312 385.2555847167969 235.4658813476562 385.2555847167969 236.4005432128906 C 385.2555847167969 237.3351745605469 386.0244140625 238.10107421875 386.9626770019531 238.10107421875 C 387.9009399414062 238.10107421875 388.6697998046875 237.3351745605469 388.6697998046875 236.4005432128906 C 388.6697998046875 235.4529113769531 387.9139709472656 234.7000122070312 386.9626770019531 234.7000122070312 Z M 386.9626770019531 237.3481597900391 C 386.44140625 237.3481597900391 386.0114135742188 236.9197845458984 386.0114135742188 236.4005432128906 C 386.0114135742188 235.8812866210938 386.44140625 235.4529113769531 386.9626770019531 235.4529113769531 C 387.4839477539062 235.4529113769531 387.9139709472656 235.8812866210938 387.9139709472656 236.4005432128906 L 387.9139709472656 236.4005432128906 C 387.9139709472656 236.9197845458984 387.4839477539062 237.3481597900391 386.9626770019531 237.3481597900391 Z" fill="#343603" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tsh9n =
    '<svg viewBox="351.3 577.8 13.7 3.4" ><path transform="translate(-23.67, 343.09)" d="M 376.7070922851562 234.7000122070312 C 375.7688293457031 234.7000122070312 375 235.4658813476562 375 236.4005432128906 C 375 237.3351745605469 375.7688293457031 238.10107421875 376.7070922851562 238.10107421875 C 377.6453247070312 238.10107421875 378.4141845703125 237.3351745605469 378.4141845703125 236.4005432128906 C 378.4141845703125 235.4529113769531 377.6453247070312 234.7000122070312 376.7070922851562 234.7000122070312 Z M 376.7070922851562 237.3481597900391 C 376.1858520507812 237.3481597900391 375.7557983398438 236.9197845458984 375.7557983398438 236.4005432128906 C 375.7557983398438 235.8812866210938 376.1858520507812 235.4529113769531 376.7070922851562 235.4529113769531 C 377.2283325195312 235.4529113769531 377.6583862304688 235.8812866210938 377.6583862304688 236.4005432128906 L 377.6583862304688 236.4005432128906 C 377.6583862304688 236.9197845458984 377.2283325195312 237.3481597900391 376.7070922851562 237.3481597900391 Z M 381.8413696289062 234.7000122070312 C 380.9031372070312 234.7000122070312 380.13427734375 235.4658813476562 380.13427734375 236.4005432128906 C 380.13427734375 237.3351745605469 380.9031372070312 238.10107421875 381.8413696289062 238.10107421875 C 382.7796630859375 238.10107421875 383.5484924316406 237.3351745605469 383.5484924316406 236.4005432128906 C 383.5484924316406 235.4529113769531 382.7796630859375 234.7000122070312 381.8413696289062 234.7000122070312 Z M 381.8413696289062 237.3481597900391 C 381.3201293945312 237.3481597900391 380.89013671875 236.9197845458984 380.89013671875 236.4005432128906 C 380.89013671875 235.8812866210938 381.3201293945312 235.4529113769531 381.8413696289062 235.4529113769531 C 382.3626708984375 235.4529113769531 382.7926635742188 235.8812866210938 382.7926635742188 236.4005432128906 L 382.7926635742188 236.4005432128906 C 382.7796630859375 236.9197845458984 382.3626708984375 237.3481597900391 381.8413696289062 237.3481597900391 Z M 386.9626770019531 234.7000122070312 C 386.0244140625 234.7000122070312 385.2555847167969 235.4658813476562 385.2555847167969 236.4005432128906 C 385.2555847167969 237.3351745605469 386.0244140625 238.10107421875 386.9626770019531 238.10107421875 C 387.9009399414062 238.10107421875 388.6697998046875 237.3351745605469 388.6697998046875 236.4005432128906 C 388.6697998046875 235.4529113769531 387.9139709472656 234.7000122070312 386.9626770019531 234.7000122070312 Z M 386.9626770019531 237.3481597900391 C 386.44140625 237.3481597900391 386.0114135742188 236.9197845458984 386.0114135742188 236.4005432128906 C 386.0114135742188 235.8812866210938 386.44140625 235.4529113769531 386.9626770019531 235.4529113769531 C 387.4839477539062 235.4529113769531 387.9139709472656 235.8812866210938 387.9139709472656 236.4005432128906 L 387.9139709472656 236.4005432128906 C 387.9139709472656 236.9197845458984 387.4839477539062 237.3481597900391 386.9626770019531 237.3481597900391 Z" fill="#343603" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hgqhed =
    '<svg viewBox="351.3 654.8 13.7 3.4" ><path transform="translate(-23.67, 420.09)" d="M 376.7070922851562 234.7000122070312 C 375.7688293457031 234.7000122070312 375 235.4658813476562 375 236.4005432128906 C 375 237.3351745605469 375.7688293457031 238.10107421875 376.7070922851562 238.10107421875 C 377.6453247070312 238.10107421875 378.4141845703125 237.3351745605469 378.4141845703125 236.4005432128906 C 378.4141845703125 235.4529113769531 377.6453247070312 234.7000122070312 376.7070922851562 234.7000122070312 Z M 376.7070922851562 237.3481597900391 C 376.1858520507812 237.3481597900391 375.7557983398438 236.9197845458984 375.7557983398438 236.4005432128906 C 375.7557983398438 235.8812866210938 376.1858520507812 235.4529113769531 376.7070922851562 235.4529113769531 C 377.2283325195312 235.4529113769531 377.6583862304688 235.8812866210938 377.6583862304688 236.4005432128906 L 377.6583862304688 236.4005432128906 C 377.6583862304688 236.9197845458984 377.2283325195312 237.3481597900391 376.7070922851562 237.3481597900391 Z M 381.8413696289062 234.7000122070312 C 380.9031372070312 234.7000122070312 380.13427734375 235.4658813476562 380.13427734375 236.4005432128906 C 380.13427734375 237.3351745605469 380.9031372070312 238.10107421875 381.8413696289062 238.10107421875 C 382.7796630859375 238.10107421875 383.5484924316406 237.3351745605469 383.5484924316406 236.4005432128906 C 383.5484924316406 235.4529113769531 382.7796630859375 234.7000122070312 381.8413696289062 234.7000122070312 Z M 381.8413696289062 237.3481597900391 C 381.3201293945312 237.3481597900391 380.89013671875 236.9197845458984 380.89013671875 236.4005432128906 C 380.89013671875 235.8812866210938 381.3201293945312 235.4529113769531 381.8413696289062 235.4529113769531 C 382.3626708984375 235.4529113769531 382.7926635742188 235.8812866210938 382.7926635742188 236.4005432128906 L 382.7926635742188 236.4005432128906 C 382.7796630859375 236.9197845458984 382.3626708984375 237.3481597900391 381.8413696289062 237.3481597900391 Z M 386.9626770019531 234.7000122070312 C 386.0244140625 234.7000122070312 385.2555847167969 235.4658813476562 385.2555847167969 236.4005432128906 C 385.2555847167969 237.3351745605469 386.0244140625 238.10107421875 386.9626770019531 238.10107421875 C 387.9009399414062 238.10107421875 388.6697998046875 237.3351745605469 388.6697998046875 236.4005432128906 C 388.6697998046875 235.4529113769531 387.9139709472656 234.7000122070312 386.9626770019531 234.7000122070312 Z M 386.9626770019531 237.3481597900391 C 386.44140625 237.3481597900391 386.0114135742188 236.9197845458984 386.0114135742188 236.4005432128906 C 386.0114135742188 235.8812866210938 386.44140625 235.4529113769531 386.9626770019531 235.4529113769531 C 387.4839477539062 235.4529113769531 387.9139709472656 235.8812866210938 387.9139709472656 236.4005432128906 L 387.9139709472656 236.4005432128906 C 387.9139709472656 236.9197845458984 387.4839477539062 237.3481597900391 386.9626770019531 237.3481597900391 Z" fill="#343603" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c4uwwq =
    '<svg viewBox="24.0 158.9 342.0 68.1" ><path transform="translate(-1425.0, -923.14)" d="M 1449 1082 L 1449 1150.137329101562 L 1457.863891601562 1147.462524414062 L 1457.863891601562 1094.124267578125 L 1783.756591796875 1094.124267578125 L 1783.756591796875 1150.137329101562 L 1791 1150.137329101562 L 1791 1082 L 1449 1082 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yqr7ya =
    '<svg viewBox="24.0 224.4 341.3 2.6" ><path transform="translate(-1425.0, -916.91)" d="M 1448.999877929688 1141.278442382812 L 1790.335205078125 1141.278442382812 L 1790.335205078125 1143.908569335938 L 1448.999877929688 1143.908569335938 L 1448.999877929688 1141.278442382812 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ml5wf6 =
    '<svg viewBox="24.0 236.0 342.0 67.0" ><path transform="translate(-1425.0, -846.0)" d="M 1449 1082 L 1449 1149 L 1457.863891601562 1146.369873046875 L 1457.863891601562 1093.921875 L 1783.756591796875 1093.921875 L 1783.756591796875 1149 L 1791 1149 L 1791 1082 L 1449 1082 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x6zu =
    '<svg viewBox="24.0 300.1 341.3 2.6" ><path transform="translate(-1425.0, -841.15)" d="M 1448.999877929688 1141.278564453125 L 1790.335327148438 1141.278564453125 L 1790.335327148438 1143.908569335938 L 1448.999877929688 1143.908569335938 L 1448.999877929688 1141.278564453125 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b6ft15 =
    '<svg viewBox="24.0 311.9 341.9 68.1" ><path transform="translate(-1425.0, -770.14)" d="M 1449 1082 L 1449 1150.137329101562 L 1457.86083984375 1147.462524414062 L 1457.86083984375 1094.124267578125 L 1783.646118164062 1094.124267578125 L 1783.646118164062 1150.137329101562 L 1790.88720703125 1150.137329101562 L 1790.88720703125 1082 L 1449 1082 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a0ka =
    '<svg viewBox="24.0 377.4 341.3 2.6" ><path transform="translate(-1425.0, -763.91)" d="M 1448.999877929688 1141.278564453125 L 1790.335205078125 1141.278564453125 L 1790.335205078125 1143.908569335938 L 1448.999877929688 1143.908569335938 L 1448.999877929688 1141.278564453125 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jfrv1 =
    '<svg viewBox="24.0 389.1 341.9 68.1" ><path transform="translate(-1425.0, -692.89)" d="M 1449 1082 L 1449 1150.137329101562 L 1457.86083984375 1147.462524414062 L 1457.86083984375 1094.124267578125 L 1783.646118164062 1094.124267578125 L 1783.646118164062 1150.137329101562 L 1790.88720703125 1150.137329101562 L 1790.88720703125 1082 L 1449 1082 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ooh5sw =
    '<svg viewBox="24.0 454.6 341.3 2.8" ><path transform="translate(-1425.0, -686.66)" d="M 1448.999877929688 1141.278564453125 L 1790.335205078125 1141.278564453125 L 1790.335205078125 1144.04736328125 L 1448.999877929688 1144.04736328125 L 1448.999877929688 1141.278564453125 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y7wwfy =
    '<svg viewBox="24.0 466.2 341.9 68.1" ><path transform="translate(-1425.0, -615.75)" d="M 1449 1082 L 1449 1150.137329101562 L 1457.86083984375 1147.462524414062 L 1457.86083984375 1094.124267578125 L 1783.646118164062 1094.124267578125 L 1783.646118164062 1150.137329101562 L 1790.88720703125 1150.137329101562 L 1790.88720703125 1082 L 1449 1082 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q31dd =
    '<svg viewBox="24.0 531.8 341.3 3.2" ><path transform="translate(-1425.0, -609.52)" d="M 1448.999877929688 1141.278564453125 L 1790.335205078125 1141.278564453125 L 1790.335205078125 1144.524047851562 L 1448.999877929688 1144.524047851562 L 1448.999877929688 1141.278564453125 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tppz6 =
    '<svg viewBox="24.0 543.2 341.9 68.1" ><path transform="translate(-1425.0, -538.75)" d="M 1449 1082 L 1449 1150.137329101562 L 1457.86083984375 1147.462524414062 L 1457.86083984375 1094.124267578125 L 1783.646118164062 1094.124267578125 L 1783.646118164062 1150.137329101562 L 1790.88720703125 1150.137329101562 L 1790.88720703125 1082 L 1449 1082 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tnevw9 =
    '<svg viewBox="24.0 608.8 341.3 3.2" ><path transform="translate(-1425.0, -532.52)" d="M 1448.999877929688 1141.278564453125 L 1790.335205078125 1141.278564453125 L 1790.335205078125 1144.524047851562 L 1448.999877929688 1144.524047851562 L 1448.999877929688 1141.278564453125 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sk0rcn =
    '<svg viewBox="24.0 620.2 341.9 68.1" ><path transform="translate(-1425.0, -461.75)" d="M 1449 1082 L 1449 1150.137329101562 L 1457.86083984375 1147.462524414062 L 1457.86083984375 1094.124267578125 L 1783.646118164062 1094.124267578125 L 1783.646118164062 1150.137329101562 L 1790.88720703125 1150.137329101562 L 1790.88720703125 1082 L 1449 1082 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vh556v =
    '<svg viewBox="24.0 685.8 341.3 2.2" ><path transform="translate(-1425.0, -455.52)" d="M 1448.999877929688 1141.278564453125 L 1790.335205078125 1141.278564453125 L 1790.335205078125 1143.524047851562 L 1448.999877929688 1143.524047851562 L 1448.999877929688 1141.278564453125 Z" fill="#bae4e0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sypfve =
    '<svg viewBox="192.3 766.0 19.0 23.3" ><path transform="translate(-1416.0, -944.0)" d="M 1608.336303710938 1709.975952148438 C 1608.336303710938 1709.975952148438 1625.487548828125 1720.19189453125 1627.351806640625 1733.31640625" fill="none" stroke="#ff0d1d" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
