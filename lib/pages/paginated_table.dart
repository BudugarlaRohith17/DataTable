import 'package:advanced_datatable/datatable.dart';
import 'package:flutter/material.dart';
import 'file_data_table_source.dart';

class PaginatedFilesPage extends StatelessWidget {
  const PaginatedFilesPage({Key? key, required this.fileDataTableSource}) : super(key: key);
  final FileDataTableSource fileDataTableSource;


  @override
    Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          dataTableTheme: const DataTableThemeData(
            headingTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Color(0XFF545454)),
          )
      ),
      child: AdvancedPaginatedDataTable(
        source: fileDataTableSource,
        rowsPerPage: 5,
        showFirstLastButtons: true,
        header: const Text('Inquiry List', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),),
        columns: const [
        DataColumn(label: Expanded(child: Text('Inquiry Number', textAlign: TextAlign.center))),
        DataColumn(label: Expanded(child: Text('Status', textAlign: TextAlign.center))),
        DataColumn(label: Expanded(child: Text('Created At', textAlign: TextAlign.center))),
        DataColumn(label: Expanded(child: Text('Sales person', textAlign: TextAlign.center))),
      ],
      ),
    );
  }
}



