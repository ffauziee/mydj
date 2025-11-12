import 'package:flutter/material.dart';
import 'package:my_first_app/data/data_provider.dart';
import 'package:my_first_app/data/jurnal.dart';
import 'package:provider/provider.dart';

class LihatJurnalPage extends StatefulWidget {
  const LihatJurnalPage({super.key, required this.title});

  final String title;

  @override
  State<LihatJurnalPage> createState() => _LihatJurnalPageState();
}

class _LihatJurnalPageState extends State<LihatJurnalPage> {
  // Listen to provider inside build() so the UI updates when data changes.
  @override
  Widget build(BuildContext context) {
    final List<Jurnal> daftarJurnal = context
        .watch<DataProvider>()
        .jurnalTersimpan;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  title: Text(daftarJurnal[index].kelas),
                  subtitle: Text(daftarJurnal[index].mapel),
                  leading: const Icon(Icons.book),
                  trailing: Text(daftarJurnal[index].createdAt.toString()),
                  onTap: () {},
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: daftarJurnal.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
