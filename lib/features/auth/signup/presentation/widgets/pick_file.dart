import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class PickFile extends StatefulWidget {
  PickFile({Key? key}) : super(key: key);

  @override
  State<PickFile> createState() => _PickFileState();
}

class _PickFileState extends State<PickFile> {

    String? pickedFile;
    @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () async {
                  final res = await FilePicker.platform.pickFiles();
                  if (res == null) return;
                  final _pickedFile = res.files.first;
                  pickedFile = _pickedFile.name;
                  setState(() {});
                },
                child: Text(AppLocalizations.of(context)!.pick_file),
              ),
              const SizedBox(
                width: 12,
              ),
              Flexible(
                  child: Text(
                pickedFile ?? '',
                style: const TextStyle(color: Colors.black),
              ))
            ],
          ),
        ],
      );
    }
  }
