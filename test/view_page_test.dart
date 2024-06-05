import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('Unit testing saat mengisi data yang benar atau telah diisi', (WidgetTester tester) async {
    // Data yang akan dimasukkan
    ViewPage pasien = const ViewPage(
      name: 'Yusvan',
      birthplace: 'Balikpapan',
      birthdate: '12-10-2003',
      gender: 'Laki-laki',
      phonenumber: '085332645522',
      email: 'yusvan@gmail.com',
      religion: 'Islam',
      job: 'Student',
      address: 'Plumbungan RT.04, Bantul, Yogyakarta',
      polyclinic: 'Mata'
    );

    //Proses widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: pasien,
          ),
        ),
      ),
    );

    // Verify data yang ditampilkan harus sesuai dengan data yang dimasukkan
    expect(find.text('Name: Yusvan'), findsOneWidget);
    expect(find.text('Birth Place: Balikpapan'), findsOneWidget);
    expect(find.text('Birht Date: 12-10-2003'), findsOneWidget);
    expect(find.text('Gender: Laki-laki'), findsOneWidget);
    expect(find.text('Phone Number: 085332645522'), findsOneWidget);
    expect(find.text('Email: yusvan@gmail.com'), findsOneWidget);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job: Student'), findsOneWidget);
    expect(find.text('Address: Plumbungan RT.04, Bantul, Yogyakarta'), findsOneWidget);
    expect(find.text('Polyclinic: Mata'), findsOneWidget);
  });

testWidgets('Unit testing saat tidak mengisi data atau data kosong', (WidgetTester tester) async {
    //Tidak ada data yang dimasukkan
    ViewPage pasien = const ViewPage(
      name: '',
      birthplace: '',
      birthdate: '',
      gender: '',
      phonenumber: '',
      email: '',
      religion: '',
      job: '',
      address: '',
      polyclinic: ''
    );

    //Proses Widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: pasien,
          ),
        ),
      ),
    );

    //Verifikasi data kosong
    expect(find.text('Name:'), findsNothing);
    expect(find.text('Birth Place:'), findsNothing);
    expect(find.text('Birht Date:'), findsNothing);
    expect(find.text('Gender:'), findsNothing);
    expect(find.text('Phone Number:'), findsNothing);
    expect(find.text('Email:'), findsNothing);
    expect(find.text('Religion:'), findsNothing);
    expect(find.text('Job:'), findsNothing);
    expect(find.text('Address:'), findsNothing);
    expect(find.text('Polyclinic:'), findsNothing);
  });

  testWidgets('Unit testing saat data gender dan job tidak diisi', (WidgetTester tester) async {
    // Data gender dan job kosong
    ViewPage pasien = const ViewPage(
      name: 'Yusvan',
      birthplace: 'Balikpapan',
      birthdate: '12-10-2003',
      gender: '',
      phonenumber: '085332645522',
      email: 'yusvan@gmail.com',
      religion: 'Islam',
      job: '',
      address: 'Plumbungan RT.04, Bantul, Yogyakarta',
      polyclinic: 'Mata'
    );

    //Proses Widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: pasien,
          ),
        ),
      ),
    );

    //Verifikasi gender dan Job harus kosong
    expect(find.text('Name: Yusvan'), findsOneWidget);
    expect(find.text('Birth Place: Balikpapan'), findsOneWidget);
    expect(find.text('Birht Date: 12-10-2003'), findsOneWidget);
    expect(find.text('Gender:'), findsNothing);
    expect(find.text('Phone Number: 085332645522'), findsOneWidget);
    expect(find.text('Email: yusvan@gmail.com'), findsOneWidget);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job:'), findsNothing);
    expect(find.text('Address: Plumbungan RT.04, Bantul, Yogyakarta'), findsOneWidget);
    expect(find.text('Polyclinic: Mata'), findsOneWidget);
  });

  testWidgets('Unit testing saat data nama tidak diisi', (WidgetTester tester) async {
    // Data nama kosong
    ViewPage pasien = const ViewPage(
      name: '',
      birthplace: 'Balikpapan',
      birthdate: '12-10-2003',
      gender: 'Laki-laki',
      phonenumber: '085332645522',
      email: 'yusvan@gmail.com',
      religion: 'Islam',
      job: 'Mahasiswa',
      address: 'Plumbungan RT.04, Bantul, Yogyakarta',
      polyclinic: 'Mata'
    );

    //Proses Widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: pasien,
          ),
        ),
      ),
    );

    //Verifikasi nama harus kosong
    expect(find.text('Name:'), findsNothing);
    expect(find.text('Birth Place: Balikpapan'), findsOneWidget);
    expect(find.text('Birht Date: 12-10-2003'), findsOneWidget);
    expect(find.text('Gender: Laki-laki'), findsOneWidget);
    expect(find.text('Phone Number: 085332645522'), findsOneWidget);
    expect(find.text('Email: yusvan@gmail.com'), findsOneWidget);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job: Mahasiswa'), findsOneWidget);
    expect(find.text('Address: Plumbungan RT.04, Bantul, Yogyakarta'), findsOneWidget);
    expect(find.text('Polyclinic: Mata'), findsOneWidget);
  });

  testWidgets('Unit testing saat hanya data nama yang diisi', (WidgetTester tester) async {
    // Hanya nama yang diisi
    ViewPage pasien = const ViewPage(
      name: 'Yusvan',
      birthplace: '',
      birthdate: '',
      gender: '',
      phonenumber: '',
      email: '',
      religion: '',
      job: '',
      address: '',
      polyclinic: ''
    );

    //Proses Widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: pasien,
          ),
        ),
      ),
    );

    //Verifikasi hanya nama yang ada
    expect(find.text('Name: Yusvan'), findsOneWidget);
    expect(find.text('Birth Place:'), findsNothing);
    expect(find.text('Birht Date:'), findsNothing);
    expect(find.text('Gender:'), findsNothing);
    expect(find.text('Phone Number:'), findsNothing);
    expect(find.text('Email:'), findsNothing);
    expect(find.text('Religion:'), findsNothing);
    expect(find.text('Job:'), findsNothing);
    expect(find.text('Address:'), findsNothing);
    expect(find.text('Polyclinic:'), findsNothing);
  });

  testWidgets('Unit testing saat hanya data tempat lahir atau birthplace yang diisi', (WidgetTester tester) async {
    // Hanya birthplace yang diisi
    ViewPage pasien = const ViewPage(
      name: '',
      birthplace: 'Balikpapan',
      birthdate: '',
      gender: '',
      phonenumber: '',
      email: '',
      religion: '',
      job: '',
      address: '',
      polyclinic: ''
    );

    //Proses Widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: pasien,
          ),
        ),
      ),
    );

    //Verifikasi hanya birthplace yang ada
    expect(find.text('Name:'), findsNothing);
    expect(find.text('Birth Place: Balikpapan'), findsOneWidget);
    expect(find.text('Birht Date:'), findsNothing);
    expect(find.text('Gender:'), findsNothing);
    expect(find.text('Phone Number:'), findsNothing);
    expect(find.text('Email:'), findsNothing);
    expect(find.text('Religion:'), findsNothing);
    expect(find.text('Job:'), findsNothing);
    expect(find.text('Address:'), findsNothing);
    expect(find.text('Polyclinic:'), findsNothing);
  });

  testWidgets('Unit testing saat data tempat lahir atau birthplace yang tidak diisi', (WidgetTester tester) async {
    // Data nama kosong
    ViewPage pasien = const ViewPage(
      name: 'Yusvan Tri Atmojo',
      birthplace: '',
      birthdate: '12-10-2003',
      gender: 'Laki-laki',
      phonenumber: '085332645522',
      email: 'yusvan@gmail.com',
      religion: 'Islam',
      job: 'Mahasiswa',
      address: 'Plumbungan RT.04, Bantul, Yogyakarta',
      polyclinic: 'Mata'
    );

    //Proses Widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: pasien,
          ),
        ),
      ),
    );

    //Verifikasi birthplace harus kosong
    expect(find.text('Name: Yusvan Tri Atmojo'), findsOneWidget);
    expect(find.text('Birth Place:'), findsNothing);
    expect(find.text('Birht Date: 12-10-2003'), findsOneWidget);
    expect(find.text('Gender: Laki-laki'), findsOneWidget);
    expect(find.text('Phone Number: 085332645522'), findsOneWidget);
    expect(find.text('Email: yusvan@gmail.com'), findsOneWidget);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job: Mahasiswa'), findsOneWidget);
    expect(find.text('Address: Plumbungan RT.04, Bantul, Yogyakarta'), findsOneWidget);
    expect(find.text('Polyclinic: Mata'), findsOneWidget);
  });

  testWidgets('Unit testing saat hanya data birthdate yang diisi', (WidgetTester tester) async {
    // Hanya birthdate yang diisi
    ViewPage pasien = const ViewPage(
      name: '',
      birthplace: '',
      birthdate: '12-10-2003',
      gender: '',
      phonenumber: '',
      email: '',
      religion: '',
      job: '',
      address: '',
      polyclinic: ''
    );

    //Proses Widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: pasien,
          ),
        ),
      ),
    );

    //Verifikasi hanya birht date yang ada
    expect(find.text('Name:'), findsNothing);
    expect(find.text('Birth Place:'), findsNothing);
    expect(find.text('Birht Date: 12-10-2003'), findsOneWidget);
    expect(find.text('Gender:'), findsNothing);
    expect(find.text('Phone Number:'), findsNothing);
    expect(find.text('Email:'), findsNothing);
    expect(find.text('Religion:'), findsNothing);
    expect(find.text('Job:'), findsNothing);
    expect(find.text('Address:'), findsNothing);
    expect(find.text('Polyclinic:'), findsNothing);
  });

  testWidgets('Unit testing saat data phonenumber dan email yang tidak diisi', (WidgetTester tester) async {
    // Data phonenumber dan email kosong
    ViewPage pasien = const ViewPage(
      name: 'Yusvan Tri Atmojo',
      birthplace: 'Balikpapan',
      birthdate: '12-10-2003',
      gender: 'Laki-laki',
      phonenumber: '',
      email: '',
      religion: 'Islam',
      job: 'Mahasiswa',
      address: 'Plumbungan RT.04, Bantul, Yogyakarta',
      polyclinic: 'Mata'
    );

    //Proses Widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: pasien,
          ),
        ),
      ),
    );

    //Verifikasi phonenumber dan email harus kosong
    expect(find.text('Name: Yusvan Tri Atmojo'), findsOneWidget);
    expect(find.text('Birth Place: Balikpapan'), findsOneWidget);
    expect(find.text('Birht Date: 12-10-2003'), findsOneWidget);
    expect(find.text('Gender: Laki-laki'), findsOneWidget);
    expect(find.text('Phone Number:'), findsNothing);
    expect(find.text('Email:'), findsNothing);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job: Mahasiswa'), findsOneWidget);
    expect(find.text('Address: Plumbungan RT.04, Bantul, Yogyakarta'), findsOneWidget);
    expect(find.text('Polyclinic: Mata'), findsOneWidget);
  });
}
