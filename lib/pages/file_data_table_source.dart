import 'package:advanced_datatable/advanced_datatable_source.dart';
import 'package:flutter/material.dart';
import 'package:time/api_client/network.dart';

import '../response/response.dart';

class FileDataTableSource extends AdvancedDataTableSource<Inquiries>{
  @override
  Future<RemoteDataSourceDetails<Inquiries>> getNextPage(NextPageRequest pageRequest) async{
    Data? response;
    response = await ApiClient().fetchUsers();
    return RemoteDataSourceDetails(
      response.inquiries!.length,
      response.inquiries!,
    );
  }

  @override
  DataRow? getRow(int index) {
    if(lastDetails!=null){
      final snapData = lastDetails!.rows[index];
      return DataRow.byIndex(
        index: index,
        cells: <DataCell>[
          DataCell(Text(snapData.inquiryNumber.toString())),
          //DataCell(Text(snapData.status!.toString())),
         // DataCell(Text(snapData.inquiryNumber.toString())),
          //DataCell(Text(snapData.inquiryNumber.toString())),
        ]
      );
    }else{return null;}
  }

  @override
  int get selectedRowCount => 0;

}