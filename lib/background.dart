import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

class BackGroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xffedf2f2),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.254),
              end: Alignment(0.0, 1.0),
              colors: [Color(0x3618a3b9), Color(0x36e8fbfe), Color(0x36ffffff)],
              stops: [0.0, 0.78, 1.0],
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0),
            ),
          ),
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 206.0),
        ),
        Pinned.fromPins(
          Pin(size: 189.0, start: -56.0),
          Pin(size: 181.0, start: 6.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0x21def5f9),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x05000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 146.3, end: -10.3),
          Pin(size: 140.2, start: 74.1),
          child: Transform.rotate(
            angle: -1.2566,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x21def5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x05000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 185.0, start: -65.0),
          Pin(size: 180.0, start: 21.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0x47def5f9),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x0b000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 185.0, start: -79.0),
          Pin(size: 180.0, middle: 0.6314),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0x47def5f9),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x0b000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 143.7, end: -16.1),
          Pin(size: 139.3, start: 87.6),
          child: Transform.rotate(
            angle: -1.2566,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x47def5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0b000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 143.7, end: -36.8),
          Pin(size: 139.3, middle: 0.5357),
          child: Transform.rotate(
            angle: -1.2566,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x47def5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0b000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 185.0, middle: 0.4912),
          Pin(size: 180.0, start: 80.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0x2edef5f9),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 185.0, middle: 0.4779),
          Pin(size: 180.0, start: 101.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0x2edef5f9),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 169.0, start: -67.0),
          Pin(size: 175.0, start: 36.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0x52def5f9),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 169.0, start: -67.0),
          Pin(size: 175.0, middle: 0.642),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0x52def5f9),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 130.5, end: -13.9),
          Pin(size: 126.9, start: 99.9),
          child: Transform.rotate(
            angle: -1.2566,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x52def5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 169.0, end: -159.0),
          Pin(size: 164.0, start: 69.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0x52def5f9),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 130.5, end: -19.2),
          Pin(size: 126.9, start: 114.9),
          child: Transform.rotate(
            angle: -1.2566,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x52def5f9),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 130.5, end: -34.2),
          Pin(size: 126.9, middle: 0.5555),
          child: Transform.rotate(
            angle: -1.2566,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x298bffb6),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-0.053, -0.269),
          child: Transform.rotate(
            angle: -1.2566,
            child: Container(
              width: 221.0,
              height: 215.0,
              decoration: const BoxDecoration(
                color: Color(0x2b8beeff),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
