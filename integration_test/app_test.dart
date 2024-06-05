import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/main.dart' as app;
import 'package:form_example/view_page.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('daftar Test', (){
  testWidgets('Integration testing memasukkan data dengan benar dan akan menampilkan viewpage sesuai data yang dimasukkan', (tester) async {
    app.main();
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(0), 'Yusvan Tri Atmojo');
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(1), 'Balikpapan');
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(2), '12-10-2003');
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(3), 'Laki-laki');
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(4), '085332645522');
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(5), 'yusvan@mail.com');
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(6), 'Islam');
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(7), 'Mahasiswa');
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(8), 'Plumbungan RT 03, Bantul, Yogyakarta');
    await Future.delayed(const Duration(seconds: 3));
    await tester.enterText(find.byType(TextField).at(9), 'Mata');
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 3));

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();
    expect(find.byType(ViewPage), findsOneWidget);
  },
  );
  });
  
}
