import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_control/core/extension.dart';
import 'package:smart_control/models/jadwal_model.dart';
import 'package:smart_control/provider/list_jadwal_model.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Consumer<Listjadwalmodel>(
      builder: (context, model, child) {
        return Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.white),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)))),
                      onPressed: () async {
                        final TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: selectedTime ?? TimeOfDay.now(),
                          builder: (context, child) {
                            return MediaQuery(
                              data: MediaQuery.of(context)
                                  .copyWith(alwaysUse24HourFormat: true),
                              child: child!,
                            );
                          },
                        );
                        setState(() {
                          selectedTime = time;
                        });
                      },
                      child: Text(selectedTime != null
                          ? selectedTime!.to24hours()
                          : 'pilih waktu')),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: TextButton(
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor:
                          const WidgetStatePropertyAll(Color(0xFF9ED86B))),
                  onPressed: () {
                    if (selectedTime != null) {
                      model.addJadwal(JadwalModel(waktu: selectedTime!));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green.shade400,
                          content: const Text('Jadwal berhasil ditambah')));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red.shade400,
                          content: const Text('harap isi jadwal')));
                    }
                    setState(() {
                      selectedTime = null;
                    });
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        );
      },
    );
  }
}
