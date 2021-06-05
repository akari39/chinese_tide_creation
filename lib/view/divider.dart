import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GooglePixel51 extends StatelessWidget {
  GooglePixel51({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(9.0, 500.0),
            child: SizedBox(
              width: 377.0,
              height: 9.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.5, 3.0, 376.0, 6.4),
                    size: Size(376.5, 9.4),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 6.4),
                          size: Size(376.0, 6.4),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_4jqvsf,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 6.4),
                    size: Size(376.5, 9.4),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 6.4),
                          size: Size(376.0, 6.4),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_ldtb4f,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 2.0, 376.0, 3.0),
                    size: Size(376.5, 9.4),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Transform.rotate(
                      angle: 3.1416,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 3.0),
                            size: Size(376.0, 3.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              _svg_bcqai1,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
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
    );
  }
}

const String _svg_4jqvsf =
    '<svg viewBox="0.0 0.0 376.0 6.4" ><path  d="M 0 2.401129007339478 C 25.35272979736328 0.800376296043396 63.18606185913086 0 113.5 0 C 188.9709014892578 0 208.7209014892578 6.387971878051758 264.5 6.387971878051758 C 301.6860961914062 6.387971878051758 338.8526916503906 5.059024810791016 376 2.401129007339478" fill="none" stroke="#dda034" stroke-width="0.5" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_ldtb4f =
    '<svg viewBox="0.0 0.0 376.0 6.4" ><path  d="M 0 2.401129007339478 C 25.35272979736328 0.800376296043396 63.18606185913086 0 113.5 0 C 188.9709014892578 0 208.7209014892578 6.387971878051758 264.5 6.387971878051758 C 301.6860961914062 6.387971878051758 338.8526916503906 5.059024810791016 376 2.401129007339478" fill="none" stroke="#a77100" stroke-width="0.5" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_bcqai1 =
    '<svg viewBox="0.0 -3.0 376.0 3.0" ><path  d="M 0 -1.127647995948792 C 25.35272979736328 -0.3758828043937683 63.18606185913086 0 113.5 0 C 138.7908935546875 0 157.8244018554688 -0.3368909955024719 174.0534057617188 -0.7848834991455078 C 206.2536010742188 -1.673753976821899 227.4129028320312 -3 264.5 -3 C 301.6860961914062 -3 338.8526916503906 -2.375883102416992 376 -1.127647995948792" fill="none" stroke="#dda034" stroke-width="0.5" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
