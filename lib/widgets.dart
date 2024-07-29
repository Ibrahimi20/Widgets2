import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<int> items = List.generate(10, (index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('TitleBuilderItems $index'),
          tileColor: Colors.grey,
          trailing: const Icon(Icons.menu),
          leading: const Icon(Icons.person),
        );
      },
      separatorBuilder: (context, index) => const Divider(color: Colors.black),
    );
  }
}

class MyIndexedStack extends StatefulWidget {
  const MyIndexedStack({super.key});

  @override
  State<MyIndexedStack> createState() => _MyIndexedStackState();
}

class _MyIndexedStackState extends State<MyIndexedStack> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: const Text('text 0')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: const Text('text 1')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  child: const Text('text 2')),
            ],
          ),
        ),
        IndexedStack(
          index: _selectedIndex,
          children: [
            Center(
                child: Image.asset(
              'assets/im1.webp',
              height: 500,
            )),
            Center(
                child: Image.asset(
              'assets/im4.webp',
              height: 500,
            )),
            Center(
                child: Image.asset(
              'assets/im3.webp',
              height: 500,
            )),
          ],
        )
      ]),
    );
  }
}

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('data'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.help_center),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
            ])),
        body: const TabBarView(children: [
          Center(
            child: Icon(Icons.person),
          ),
          Center(
            child: Icon(Icons.home),
          ),
          Center(
            child: Icon(Icons.settings),
          ),
          Center(
            child: Icon(Icons.search),
          ),
          Center(
            child: Icon(Icons.help_center),
          ),
        ]),
      ),
    );
  }
}

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.red,
          child: const Center(child: Text('1')),
        ),
        Container(
          color: Colors.green,
          child: const Center(child: Text('2')),
        ),
        Container(
          color: Colors.blue,
          child: const Center(child: Text('3')),
        ),
      ],
    );
  }
}

class MyRadioListTile extends StatefulWidget {
  const MyRadioListTile({super.key});

  @override
  State<MyRadioListTile> createState() => _MyRadioListTileState();
}

List<String> options = ['Option 1', 'Option 2', 'Option 3'];

class _MyRadioListTileState extends State<MyRadioListTile> {
  String _currentOPtion = options[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text(options[0]),
          value: options[0],
          groupValue: _currentOPtion,
          onChanged: (value) {
            setState(() {
              _currentOPtion = options[0];
            });
          },
        ),
        RadioListTile(
          title: Text(options[1]),
          value: options[1],
          groupValue: _currentOPtion,
          onChanged: (value) {
            setState(() {
              _currentOPtion = options[1];
            });
          },
        ),
        RadioListTile(
          title: Text(options[2]),
          value: options[2],
          groupValue: _currentOPtion,
          onChanged: (value) {
            setState(() {
              _currentOPtion = options[2];
            });
          },
        ),
      ],
    );
  }
}

class MySwitchd extends StatefulWidget {
  const MySwitchd({super.key});

  @override
  State<MySwitchd> createState() => _MySwitchdState();
}

class _MySwitchdState extends State<MySwitchd> {
  bool isswitech = false;
  bool isswitech2 = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Switch(
            value: isswitech,
            onChanged: (value) {
              setState(() {
                isswitech = value;
              });
            },
          ),
          Switch(
            value: isswitech2,
            onChanged: (value) {
              setState(() {
                isswitech2 = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => GridTile(
        header: const GridTileBar(
          title: Text('data'),
          backgroundColor: Color.fromARGB(175, 7, 4, 4),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.menu),
        ),
        footer: const GridTileBar(
          title: Text('data'),
          backgroundColor: Color.fromARGB(175, 10, 73, 4),
          leading: Icon(Icons.favorite),
        ),
        child: Image.asset(
          'assets/im1.webp',
          fit: BoxFit.cover,
        ),
      ),
      itemCount: 20,
    );
  }
}

class MyGridTile extends StatelessWidget {
  const MyGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: const GridTileBar(
        backgroundColor: Color.fromARGB(100, 7, 4, 4),
        leading: Icon(Icons.person_2_rounded),
        title: Text('TEXT TITLE'),
        trailing: Icon(Icons.menu_book),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.amber.shade300,
        leading: const Icon(Icons.favorite),
        title: const Text('TEXT TITLE'),
      ),
      child: Image.asset(
        'assets/im1.webp',
        fit: BoxFit.cover,
      ),
    );
  }
}

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentpos = 0;
  @override
  Widget build(BuildContext context) {
    return Stepper(
      steps: [
        Step(
          isActive: _currentpos == 0,
          title: const Text('Step1'),
          content: Column(
            children: [
              const Text('Information About Step 1 Or Process 1 '),
              Container(
                height: 200,
                width: 200,
                color: Colors.blueAccent,
              )
            ],
          ),
        ),
        Step(
          isActive: _currentpos == 1,
          title: const Text('Step2'),
          content: Column(
            children: [
              const Text('Information About Step 2 Or Process 2 '),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              )
            ],
          ),
        ),
        Step(
          isActive: _currentpos == 2,
          title: const Text('Step3'),
          content: Column(
            children: [
              const Text('Information About Step 3 Or Process 3 '),
              Container(
                height: 200,
                width: 200,
                color: Colors.redAccent,
              )
            ],
          ),
        )
      ],
      onStepTapped: (value) {
        setState(() {
          _currentpos = value;
        });
      },
      currentStep: _currentpos,
      onStepContinue: () {
        if (_currentpos != 2) {
          setState(() {
            _currentpos += 1;
          });
        }
      },
      onStepCancel: () {
        if (_currentpos != 0) {
          setState(() {
            _currentpos -= 1;
          });
        }
      },
      type: StepperType.vertical,
    );
  }
}

class MyStackPositioned extends StatelessWidget {
  const MyStackPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
              left: 40,
              top: 40,
              child: Image.asset(
                'assets/im1.webp',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              )),
          Positioned(
              left: 100,
              top: 120,
              child: Image.asset(
                'assets/im3.webp',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              )),
          Positioned(
              left: 120,
              top: 220,
              child: Image.asset(
                'assets/im4.webp',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ))
        ],
      ),
    );
  }
}

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Slider(
        value: _currentSliderValue,
        onChanged: (value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
        max: 100,
        label: _currentSliderValue.round().toString(),
        divisions: 10,
        activeColor: Colors.amber,
      ),
    );
  }
}
