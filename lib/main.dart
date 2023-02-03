import 'package:flutter/material.dart';
import 'package:time/pages/file_data_table_source.dart';
import 'package:time/pages/paginated_table.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  final _statusKey = GlobalKey<FormFieldState>();
  final TextEditingController _fileNameController = TextEditingController();
  final TextEditingController _uploadFileController = TextEditingController();
  final TextEditingController _tagController = TextEditingController();
  var selectedStatus ='';

  Map<String, dynamic> availableStatus = {
    'Inquiry Number' : 'inquiry_number',
    'Status' : 'status',
    'Created On' : 'createdAt',


  };
  final source = FileDataTableSource();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inquiries Web'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.upload_file))
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 5.0,
            child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                  const Icon(Icons.filter_alt_rounded),
                  const Text('Filter'),
                  ElevatedButton(onPressed: (){
                    _fileNameController.clear();
                    _uploadFileController.clear();
                    _tagController.clear();
                    _statusKey.currentState?.reset();
                    selectedStatus="";

                  }, child: const Text('Clear all'))
                ],),
                SizedBox(
                  width: 200.0,
                  child: TextFormField(
                    controller: _fileNameController,
                    decoration: const InputDecoration(labelText: 'Enter Inquiry Number'),
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  child: TextFormField(
                    controller: _uploadFileController,
                    decoration: const InputDecoration(labelText: 'Status'),
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  child: TextFormField(
                    controller: _tagController,
                    decoration: const InputDecoration(labelText: 'Add Tags'),
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  child: DropdownButtonFormField(
                    key: _statusKey,

                    hint: const Text('File Status'),
                    items: ['Inquiry Number', 'Status', 'Created On']
                        .map((item) => DropdownMenuItem(value: item,child: Text(item))).toList(),
                    onChanged: (value) {
                      selectedStatus = availableStatus[value];
                    },

                  )
                ),
                ElevatedButton(onPressed: (){}, child: const Text('Apply'))

              ],
            ),
          ),
          ),

          Expanded(child: SingleChildScrollView(child: PaginatedFilesPage(fileDataTableSource: source),))
        ],
      ),
    );
  }
}
