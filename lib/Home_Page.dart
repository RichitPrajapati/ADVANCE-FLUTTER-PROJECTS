import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int initialStepperIndex = 0;

  final GlobalKey<FormState> ProfileFormkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Stepper App"),
      ),
      body: Column(
        children: [
          Form(
            key: ProfileFormkey,
            child: Stepper(
              onStepTapped: (int i) {
                setState(() {
                  initialStepperIndex = i;
                });
              },
              onStepCancel: () {
                setState(() {
                  if (initialStepperIndex > 0) {
                    initialStepperIndex--;
                  }
                });
              },
              onStepContinue: () {
                setState(() {
                  if (initialStepperIndex < 2) {
                    initialStepperIndex++;
                  }
                });
              },
              currentStep: initialStepperIndex,
              steps: <Step>[
                Step(
                  isActive: initialStepperIndex >= 0,
                  state: initialStepperIndex >= 1
                      ? StepState.complete
                      : StepState.disabled,
                  title: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.person),
                          border: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          hintText: "Full Name",
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.email),
                          border: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          hintText: "Email",
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.key),
                          border: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          hintText: "Password",
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.key),
                          border: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          hintText: "Confirm Password",
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Step(
                  isActive: initialStepperIndex >= 1,
                  state: initialStepperIndex >= 2
                      ? StepState.complete
                      : StepState.disabled,
                  title: const Text(
                    "Login ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.person_outline),
                          border: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          hintText: "Username",
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.key),
                          border: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          hintText: "Password",
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Step(
                  isActive: initialStepperIndex >= 2,
                  state: initialStepperIndex >= 2
                      ? StepState.complete
                      : StepState.disabled,
                  title: const Text(
                    "Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Home",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
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
