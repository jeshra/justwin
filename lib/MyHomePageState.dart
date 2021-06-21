import 'dart:io';

import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:justwin/dbOperations/ActionCustomersStage.dart' as ACS;
import 'package:justwin/services/DatabaseService.dart';
import 'package:justwin/services/Utils.dart';
import 'package:justwin/services/locator.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';

import 'main.dart';

class MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    setupLocator();
    refreshNotes();
  }

  @override
  void dispose() {
    DatabaseService.instance.close();
    super.dispose();
  }

  final _formKey = new GlobalKey<FormState>();
  File? file;
  late final String path;
  late List<String> futureContent;
  String fileMessage = 'Select JustWin Customer list .csv file';

  Future refreshNotes() async {
    var a = await DatabaseService.instance.database;
  }

  @override
  Widget build(BuildContext context) {
    final fileName =
        file != null ? basename(file!.path) : fileMessage.toString();
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
              onPressed: () =>
                  Utils.openLink(url: 'https://justwin.in/login.php'),
              icon: Icon(Icons.file_download),
              label: Text('Open Justwin Website')),
          ElevatedButton.icon(
            onPressed: selectFile,
            label: Text('Select Customer List file'),
            icon: Icon(Icons.add),
          ),
          Text(fileName),
          ElevatedButton.icon(
              onPressed: () async {
                await _uploadCustomer_data();
              },
              icon: Icon(Icons.dashboard_rounded),
              label: Text('Process data'))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: false,
        allowedExtensions: ['csv']);

    if (result == null) return;
    setState(() {
      path = result.files.single.path!;
    });

    PlatformFile platformFile = result.files.first;

    print(platformFile.name);
    print(platformFile.bytes);
    print(platformFile.size);
    print(platformFile.extension);
    print(platformFile.path);

    if (lookupMimeType(path) != 'text/csv') {
      file = null;

      setState(() => file = null);
      setState(
          () => fileMessage = 'The ${platformFile.name} is not valid csv file');
      throw Exception('This is not valid csv file');
    } else
      setState(() => file = File(path));
  }

  Future _uploadCustomer_data() async {
    CsvToListConverter c = new CsvToListConverter(eol: '\n');
    List<List> listCreated = c.convert(file!.readAsStringSync());
    ACS.ActionCustomerStage.instance.convertListToJson(listCreated);
  }
// TODO: Use INSERT to Generate Payment History.
}
