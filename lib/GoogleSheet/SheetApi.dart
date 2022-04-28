import 'package:gsheets/gsheets.dart';
import '../Materyal/Baraj.dart';

class SheetsApi {
  static final _sheetsId = '1dicnX-QXeem8ciuJxpxzOrrayh9xCr6Oanq9luIWFaI';
  static const _credentials = r'''
{
  "type": "service_account",
  "project_id": "gsheets-342418",
  "private_key_id": "66bb2625286a91756d4b812751d07170c87cfd3d",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC3+oH2nKi7ITAY\nlqXk6ZTuOW42j/1lzFK9K+KOhATEt1SiP3sEDfIJr58OPm++ZB+hF9rff5cFO7+M\nEioFt0l1F2ABgrkuZUsUjw6xP02xiXaSvl4G3DPBykevkmGy5vJ0BLDZXzbwlPbw\nk1Ermor8cFKH8bxuoH88HOz2wLQfcy2AZ7nhs/50t0mqDbyVkTDZGgmfOvSiSx2Q\nNnmE6EN7qp/D/12Hjdjbod3l48mROmTluEGcvmt1C5GUHDjlmNO0PRLfKLUcTPAu\nO7d3J3VUhQ/JC8EyOQ4qECHJc3exPeoUU5MYPZsaCG8V92UDXO2Kyym0PcpW4tgz\n7ZOc2eTVAgMBAAECggEAJY8/ZBz0d4udeY+b26FyNbZE0V/RECzIAXXJoWXDYXO6\nFAuYrim4rZCMjMhjYL+pE2a+2Nz/9GIPx2VX7eXO2dhFUdmhu56TVuWjzrzJPEL/\nkZLKuGTRLjGBNA9S4cazXcstXZtKKJCI33F740aANGwr9TP9T6p1f0y6dd++hiLR\nSiaBAdOJXtOiOR8GAj2O5zko5rLFlSFDM/h6j7LELF8RFYHgXmXpMBhxYcGkwtTI\nRKK0JMRx944UtPRVj3WXcUmYg5B+qBib2ThikvyRL3MRhzlCD+WNXcWxJBG1ycHK\n658BhmhBsFo5LCUbkxOp0UzbhX+ebxmsrC74FMvaCwKBgQDiD4ra3k4IJYseWjUe\nYnn9mZqrk8plMc1oTqOgGBSuxZ2F7mEVE5+psA1JcfYkjwgQKpGsKGGkReGPCfJF\n/VeAaRZAOgMharbdlMOCr0iUlwNx5n2QiT+2PPO607U49rdtE4aeP5+fsTxk0Gvz\nwmK7o4IMmWybRANZLPIBpY47EwKBgQDQWDGaGMUU8eyTxInGXacBtwZc92JbkdgZ\nXAXGi9h41xcvbOtO7KPPSnglx4hg/RPW5kdaxZpE+qQbX+f8Jx2/f0pWwEJXHVBP\n416Dc5zJYKyQF/FTfXYvpy0M2qcRNcYayBvVH8K1HCE5HRS98qr7tTMdAJUCcKev\n+WA6Tyi1dwKBgA+o+/mFhOpTj3uezCc6szC6P1i7eD3iYVRkfjlM8cHZtrvcc6U+\nIsViiMkZt+94aRqVmFnQwlLa9HEwQzROBI3EueHhIu5hsiFPeOvIsMJ6Y6a0TOaC\nW4OIXWoH2HoFvVc1DxJPXgN2B7UEKzZLtQNCpHOy/S8UWxcGYg1zJpM5AoGBAINm\nLBpo5ttX3QIxIUeXRz4gpYW6jDD+YZFU5VucVXGZDkld42ZKfuG8sNv65PtugbW2\nVGheWfaJMTkGmrQAI5Xj/QmLhguVNFK+LpyvLMIhE5RpVU13wjM5t4L04AtNo9y+\nOjeHKXC6BgYUXkGSK95GIK9474GzdT7aA6OiyyTvAoGBAKRjeoayEiTeCD1CoFzB\nBXeIdjgBIIKk+pJNSQIw2ikR3AF/dGj/55NEsY1oRacUa9yhhgi7hepGR8rFCm5l\nJ7m4sutxjvYtKyKyVvXeRCWPjeYjc+7JdGoOmKP9jQNGROMs2ka7BaYwL2ytRYhG\ndp7rmmSxnQFJmOByEBAxCu5P\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheets@gsheets-342418.iam.gserviceaccount.com",
  "client_id": "108796736402057058747",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets%40gsheets-342418.iam.gserviceaccount.com"
}

''';
  static Worksheet? _userSheet;
  static final _gsheets = GSheets(_credentials);

  static Future init() async {
    try {
      final spreadsheet = await _gsheets.spreadsheet(_sheetsId);
      _userSheet = await _getWorkSheet(spreadsheet, title: 'Barages');
      final firstRow = Barajlar.getFields();
      _userSheet!.values.insertRow(1, firstRow);
    } catch (e) {
      print(e);
    }
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet, {
    required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }

  static Future<int> getRowCount() async {
    if (_userSheet == null) return 0;

    final lastRow = await _userSheet!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<Baraj>> getAll() async {
    if (_userSheet == null) return <Baraj>[];
    final baraj = await _userSheet!.values.map.allRows();
    return baraj == null ? <Baraj>[] : baraj.map(Baraj.fromJson).toList();
  }

  static Future<Baraj?> getByCount(int Count) async {
    if (_userSheet == null) return null;
    final json = await _userSheet!.values.map.rowByKey(Count, fromColumn: 1);
    return json == null ? null : Baraj.fromJson(json);
  }

  static Future insert(List<Map<String, dynamic>> rowList) async {
    _userSheet!.values.map.appendRows(rowList);
  }
}
//Sıray Tarım 
//Github; @siraytarim