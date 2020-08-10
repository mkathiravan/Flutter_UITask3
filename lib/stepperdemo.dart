import 'package:flutter/material.dart';
class StepperDemo extends StatefulWidget {

  StepperDemo() : super();

  final String title = "Stepper Demo";

  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {

  int current_step = 0;

  List<Step> steps = [

    Step(
        title: Text('Step 1'),
        content: Image.asset('assets/cheg.jpeg'),
        isActive: true,
       ),
    Step(
      title: Text('Step 2'),
      content: Text('This is Step Two!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('This is Step Three'),
      state: StepState.editing,
      isActive: true,
    ),
    Step(
      title: Text('Step 4'),
      content: Text('This is Step Four'),
      state: StepState.complete,
      isActive: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Stepper Demo"),
      ),
      body: Container(
        child: Stepper(
            currentStep: this.current_step,
            steps: steps ,
            type: StepperType.vertical,
           onStepTapped: (step){
              setState(() {
                current_step = step;
              });
           },

           onStepContinue: () {
              setState(() {
                if(current_step < steps.length - 1)
                  {
                    current_step = current_step + 1;
                  }
                else
                  {
                    current_step = 0;
                  }
              });
           },

          onStepCancel: () {
              setState(() {
                if(current_step > 0)
                  {
                    current_step = current_step - 1;
                  }
                else
                  {
                    current_step = 0;
                  }
              });
          },
          )
        ,
      ),
    );
  }
}
