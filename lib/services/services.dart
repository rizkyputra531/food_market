import 'dart:io';
import 'dart:convert';

import 'package:food_market/models/models.dart';
import 'package:http/http.dart' as http;

part 'user_services.dart';
part 'food_services.dart';
part 'transaction_services.dart';

String baseURL = "http://food_market_backend.test/api/";
