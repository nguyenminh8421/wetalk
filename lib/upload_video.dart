import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VideoUploadScreen extends StatefulWidget {
  @override
  _VideoUploadScreenState createState() => _VideoUploadScreenState();
}

class _VideoUploadScreenState extends State<VideoUploadScreen> {
  List<String> selectedVideos = [];
  List<String> selectedHashtags = [];

  Future<void> _selectVideo() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickVideo(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        selectedVideos.add(pickedFile.path);
      });
    }
  }

  Future<void> _selectHashtags() async {
    List<String> allHashtags = generateAllHashtags();

    await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Choose Hashtag',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: allHashtags.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        _selectVideoWithHashtags(allHashtags[index]);
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Text(allHashtags[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _selectVideoWithHashtags(String hashtag) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickVideo(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        selectedVideos.add(pickedFile.path);
        selectedHashtags.add('$hashtag - ${pickedFile.path}');
      });
    }
  }

  List<String> generateAllHashtags() {
    List<String> alphabetHashtags = generateAlphabetHashtags();
    List<String> numberHashtags = generateNumberHashtags();

    return [...alphabetHashtags, ...numberHashtags];
  }

  List<String> generateAlphabetHashtags() {
    List<String> alphabet = ['A','Â','Ă','Á','Ả','Ã','Ạ', 'B', 'C', 'D', 'Đ', 'E', 'G', 'H', 'I', 'K', 'L', 'M', 'N', 'O','Ơ', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'X', 'Y'];

    return alphabet.map((char) => char).toList();
  }

  List<String> generateNumberHashtags() {
    List<String> numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

    return numbers.map((number) => number).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Video"),
        actions: [
          TextButton(
            onPressed: () {
              // Xử lý khi nút được nhấn
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Đặt màu nền là màu xanh
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Đặt màu chữ là màu đen
            ),
            child: Text('Save'),
          )

        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 20),
            child: Text('Add Title', style: TextStyle(fontSize: 28)),
          ),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
              onPressed: _selectHashtags,
              child: Text("Hashtags"),
            ),
          ),
          if (selectedVideos.isNotEmpty)
            Expanded(
              child: ListView.builder(
                itemCount: selectedVideos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(selectedHashtags[index]),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VideoUploadScreen(),
  ));
}
