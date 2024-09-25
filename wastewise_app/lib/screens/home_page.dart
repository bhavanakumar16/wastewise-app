import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wastewise_app/widgets/garbage_status_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final DatabaseReference ref = FirebaseDatabase.instance.ref().child("/");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wastewise 🗑️",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: StreamBuilder(
          stream: ref.onValue,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              CircularProgressIndicator();
            if (snapshot.hasError)
              Center(child: Text(("An error has occured")));
            if (snapshot.hasData && snapshot.data!.snapshot.value != null) {
              Map<dynamic, dynamic> data =
                  snapshot.data!.snapshot.value as Map<dynamic, dynamic>;
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (_, i) {
                    String key = data.keys.elementAt(i);
                    return Column(
                      children: [
                        (i == 0) ? Gap(16) : Gap(0),
                        GarbageStatusCard(
                          trashCanNumber: "some number",
                          status: "${data[key]['Status']}",
                        ),
                        Gap(16),
                      ],
                    );
                  });
            } else {
              return Center(child: Text('No data available'));
            }
          },
        ),
      ),
    );
  }
}
