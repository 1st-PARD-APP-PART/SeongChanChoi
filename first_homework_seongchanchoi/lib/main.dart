import 'package:flutter/material.dart';

// TODO : 1. 각 위젯이 어떤 위젯인지 주석을 남긴다.
// 그냥 남기면 된다.

void main() => runApp(MyApp());

// StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// StatefulWidget
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// State
class _MyHomePageState extends State<MyHomePage> {
  // Variables
  bool _switchValue = false;
  String? _radioValue = "A";
  final _textFieldController = TextEditingController();
  bool _checkBoxValue = false;

  // Methods that show a snackbar
  void _showSnackBar() {
    // ScaffoldMessenger
    ScaffoldMessenger.of(context).showSnackBar(
      // SnackBar
      const SnackBar(
        // Text
        content: Text("This is a snackbar!"),
        // Duration
        duration: Duration(seconds: 2),
      ),
    );
  }

  // Methods that show an alert dialog
  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // AlertDialog
        return AlertDialog(
          //  Text
          title: const Text("Alert"),
          // Text
          content: const Text("This is an alert dialog!"),
          actions: [
            // TextButton
            TextButton(
              // Navigator.pop
              onPressed: () => Navigator.pop(context),
              // Text
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      // AppBar
      appBar: AppBar(
        // Text
        title: const Text("Flutter Demo"),
      ),
      // Drawer
      drawer: Drawer(
        // ListView
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawderHeader
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              // TODO : 5. Drawer Header에 학번 이름으로 추가한 후 fontsize를 50으로 한다.
              // Text 위젯의 값을 학번 이름으로 변경한다.
              // Text 위젯의 style property를 추가하고 TextStyle을 추가한다.
              // TextStyle에 fontSize를 추가한다.
              // 색상은 흰색이 이뻐서 바꿈.
              child: Text(
                "21800729 최성찬",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
            // ListTile
            ListTile(
              title: const Text("Drawer Item 1"),
              onTap: () => Navigator.pop(context),
            ),
            // ListTile
            ListTile(
              title: const Text("Drawer Item 2"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      // ListView
      body: ListView(
        children: [
          // Center
          Center(
            // Column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Switch
                Switch(
                  value: _switchValue,
                  onChanged: (value) => setState(() => _switchValue = value),
                ),
                // Row
                Row(
                  // TODO : 3. RadioButton의 위치를 Row를 수정하여 가운데 정렬로 바꾼다.
                  // Row의 mainAxisAlignment를 center로 수정한다.
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Radio
                    Radio(
                      value: "A",
                      groupValue: _radioValue,
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    // Text
                    const Text("A"),
                    // Radio
                    Radio(
                      value: "B",
                      groupValue: _radioValue,
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    // Text
                    const Text("B"),
                    // Radio
                    Radio(
                      value: "C",
                      groupValue: _radioValue,
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    // Text
                    const Text("C"),
                  ],
                ),
                // Padding
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  // TextField
                  child: TextField(
                    // TODO : 2. TextField에 결과 화면과 같은 hint text를 추가한다.
                    // decoration property를 추가하고 InputDecoration을 추가한다.
                    // InputDecoration에 hintText를 추가한다.
                    decoration: const InputDecoration(
                      hintText: "Enter a search term",
                    ),
                    controller: _textFieldController,
                  ),
                ),
                // Checkbox
                Checkbox(
                  value: _checkBoxValue,
                  onChanged: (value) => setState(() => _checkBoxValue = value!),
                ),
                // Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // IconButton
                    IconButton(
                        icon: const Icon(Icons.favorite), onPressed: () {}),
                    // Switch
                    Switch(
                      value: _switchValue,
                      onChanged: (value) =>
                          setState(() => _switchValue = value),
                    ),
                    // TextButton
                    TextButton(
                      // TODO : 7. 제공 되어 있는 alertDiolog 와 snackbar 함수를 TextButton과 ElevatedButton onPressed에 연결 한다.
                      // TextButton의 onPressed property를 추가하고 _showAlertDialog를 추가한다.
                      onPressed: () => _showAlertDialog(),
                      child: const Text(
                        "Show Alert Dialog",
                        // TODO : 4. TextButton font 색상을 변경한다.
                        // TextButton의 style property를 추가하고 TextStyle을 추가한다.
                        // TextStyle의 color를 orange로 변경한다.
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    // ElevatedButton
                    ElevatedButton(
                      // TODO : 6. Elevatedbutton의 radius를 30으로 바꾸고, 배경 화면의 색상을 변경한다.
                      // ElevatedButton의 style property를 추가하고 ElevatedButton.styleFrom을 추가한다.
                      // ElevatedButton.styleFrom의 shape property를 추가하고 RoundedRectangleBorder을 추가한다.
                      // RoundedRectangleBorder의 borderRadius property를 추가하고 BorderRadius.circular을 추가한다.
                      // BorderRadius.circular의 radius를 30으로 변경한다.
                      // ElevatedButton.styleFrom의 backgroundColor property를 추가하고 Colors.red를 추가한다.
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.red,
                      ),
                      // TODO : 7. 제공 되어 있는 alertDiolog 와 snackbar 함수를 TextButton과 ElevatedButton onPressed에 연결 한다.
                      // ElevatedButton의 onPressed property를 추가하고 _showSnackBar를 추가한다.
                      onPressed: () => _showSnackBar(),
                      child: const Text("Show Snack Bar"),
                    ),
                  ],
                ),
                // SizedBox
                SizedBox(
                  height: 500,
                  // ListView.builder
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      // ListTile
                      return ListTile(
                        // Text
                        // index는 0부터 시작이라 불편...
                        title: Text("Item ${index + 1}",
                            // TODO : 8. Listview에 있는 listTile title의 font weight를 bold로 바꾼다.
                            // Text의 style property를 추가하고 TextStyle을 추가한다.
                            // TextStyle의 fontWeight를 bold로 변경한다.
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        // Text
                        subtitle: Text("Subtitle $index"),
                      );
                    },
                  ),
                ),
                // SizedBox
                SizedBox(
                  height: 5000,
                  // GridView.count
                  child: GridView.count(
                    // TODO : 9. Gridview의 crossAxisCount와 generate를 수정하여 3열 3행으로 만들어준다.
                    // GridView.count의 crossAxisCount property를 추가하고 3을 추가한다.
                    // GridView.count의 children property를 추가하고 List.generate을 추가한다.
                    // List.generate의 itemBuilder property를 추가하고 (BuildContext context, int index)를 추가한다.
                    // List.generate의 itemCount property를 추가하고 9를 추가한다.
                    // 3열 3행이라은 것는 총 9개의 아이템이 필요하다는 것이다.
                    crossAxisCount: 3,
                    // List.generate
                    children: List.generate(9, (index) {
                      // Card
                      return Card(
                        // Center
                        child: Center(
                          // Text
                          child: Text("Item $index"),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
