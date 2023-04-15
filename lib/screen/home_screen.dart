import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color color;

  HomeScreen({
    Key? key,
    required this.color,
  }) : super(key: key) {
    print('Widget Constructor 실행!');
  }

  @override
  State<HomeScreen> createState() {
    print('createState 실행!');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  // state가 처음 생성되거나, 새로 생성될 때 호출되는 함수입니다.
  @override
  void initState() {
    print('initState 실행!');
    super.initState();
  }

  // covariant: 파라미터의 타입을 어떤 타입으로 지정을 했을 때 그리고 상속된 타입으로 오버라이드를 할 때 사용
  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print('didUpdateWidget 실행!');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies 실행!');
    super.didChangeDependencies();
  }

  // deactivate, dispose가 호출되면 즉, 위젯을 삭제를 하면 state도 사라집니다.
  @override
  void deactivate() {
    print('deactivate 실행!');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose 실행!');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build 실행!');
    return GestureDetector(
      onTap: () {
        print('클릭!');
        // StatefulWidget은 사라지고서 새로 만들어졌지만, state는 절대로 사라지지 않고, 새로 생긴 StatefulWidget에 그냥 붙습니다.
        // 그래서 이 상태가 유지가 됩니다.
        // 이미 기존에 상태가 존재하는 상태에서 새로 위젯을 생성해버리면 이럴때는 상태를 잃지를 않습니다.
        setState(() {
          number++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        // HomeScreen
        color: widget.color,
        child: Center(
          child: Text(
            number.toString(),
          ),
        ),
      ),
    );
  }
}

// class _HomeScreen extends StatelessWidget {
//   final Color color;
//
//   const _HomeScreen({
//     required this.color,
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50.0,
//       height: 50.0,
//       color: color,
//     );
//   }
// }
