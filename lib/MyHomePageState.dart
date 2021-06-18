import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:justwin/services/DatabaseService.dart';
import 'package:justwin/services/Utils.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';

import 'main.dart';

class MyHomePageState extends State<MyHomePage> {
  //late List<Studnt> notes;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshNotes();
  }
  final _formKey = new GlobalKey<FormState>();
  File? file;
  String fileMessage = 'Select JustWin Customer list .csv file';

  Future refreshNotes() async{
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
              onPressed: selectFile,
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
    final result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowMultiple: false);

    if (result == null) return;

    final path = result.files.single.path!;

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

  Future _uploadCustomer_data() async {}
}
