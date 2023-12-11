import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? formatacaoNumeros() {
  try {
    stringNumber = stringNumber?.replaceAll(',', '.');
    if (stringNumber != null) {
      var number = double.parse(stringNumber);

      return NumberFormat.compactCurrency(locale: locale, symbol: symbol)
          .format(number);
    }
  } catch (e) {
    print(e);
    return '0';
  }
}
