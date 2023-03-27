import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// data.dart의 정보를 import 한다.
import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  // async를 사용하여 이 함수를 비동기로 만들어 줍니다. 이를 통해 함수 내부에서 await를 사용할 수 있습니다.
  // 비동기 함수는 작업이 완료되기 전에 다른 작업을 계속 실행할 수 있게 합니다.
  Future<List<String>> _getData() async {
    // TODO: 1. Future를 통해 data.dart의 리스트 정보를 가져올 때 async, await와 Future.delayed를 활용하여 10초의 정지 시간을 갖도록 한다.
    // await를 사용하여 Future.delayed 비동기 함수가 완료될 때까지 기다립니다.
    // 그 후 myData를 반환합니다.
    return await Future.delayed(const Duration(seconds: 10), () {
      return myData;
      // TODO: 2. 10초가 지난 후 리스트 정보를 가져왔다면 then()을 활용하여 console창에 ‘출력 완료’ 라는 text가 출력하도록 만들어준다.
    }).then((value) {
      // [kDebugMode]는 앱이 디버그 모드인지 확인하는 데 사용되는 전역 변수입니다.
      // 디버그 모드일 때만 콘솔창에 '출력 완료'라는 텍스트를 출력하도록 합니다.
      if (kDebugMode) {
        print('출력 완료');
      }
      return value;
    });
  }

  // FutureBuilder를 사용하여 비동기 작업의 결과에 따라 UI를 빌드합니다.
  // _getData() 함수의 결과를 기반으로 ListView를 생성하거나 에러를 출력하거나 로딩 중인 상태를 표시합니다.
  FutureBuilder<List<String>> _showData() {
    // [FutureBuilder] 위젯은 [Future] 객체와 [builder] 함수를 인자로 받습니다.
    // 여기서는 [_getData()] 함수의 결과를 [future] 인자로 전달합니다.
    return FutureBuilder<List<String>>(
      future: _getData(),
      // TODO: 3. FutureBuilder<List<String>>와 Listview.Builder를 활용하여 아래 ListTile 코드를 통해 결과 화면과 같은 화면을 출력한다.
      // [builder] 함수는 [snapshot] 객체를 통해 [Future]의 상태와 결과에 접근할 수 있습니다.
      // [snapshot] 객체를 사용하여 데이터가 있는 경우, 에러가 있는 경우, 그리고 로딩 중인 경우에 대해 처리합니다.
      builder: (context, snapshot) {
        // [snapshot.hasData]가 참인 경우, 데이터가 로드된 상태입니다.
        // 이 때 [ListView.builder]를 사용하여 [ListTile]로 데이터를 표시합니다.
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data![index]),
              );
            },
          );
          // [snapshot.hasError]가 참인 경우, 에러가 발생한 상태입니다.
          // 이 때 에러 메시지를 [Text] 위젯으로 출력합니다.
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // 데이터가 로드되지 않은 경우, [CircularProgressIndicator]를 사용하여 로딩 중인 상태를 표시합니다.
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Page'),
      ),
      body: _showData(),
    );
  }
}
