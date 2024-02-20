import 'package:flutter/material.dart';
import 'package:newcourse/Colors.dart';

import 'Result.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weight = 53;

  double age = 21;

  double hight =162;
  bool ismale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "BMI Calculator ",
            style: TextStyle(
              color: KblueColor,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      ismale = true;
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                        color: KblueColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: ismale ? 4 : 0,color: KredColor)
                      ),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.male,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ]),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      ismale = false;
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width:ismale? 0: 4,color: KredColor),
                        color: KblueColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.female,
                            size: 70,
                            color: Colors.white,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    //margin: EdgeInsets.only(top: 5),
                    // width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: KblueColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Hight",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            // ignore: unnecessary_string_interpolations
                            "${hight.toStringAsFixed(1)}",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          Slider(
                              activeColor: KredColor,
                              value: hight.toDouble(),
                              thumbColor: Colors.white,
                              min: 40,
                              max: 200,
                              onChanged: (value) { 
                                setState(() {
                                  hight = value;
                                });
                              })
                        ]),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: KblueColor,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "weight",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "${weight.toInt()}",
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: KredColor),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: KredColor,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: const Icon(Icons.remove,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ]),
                )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: KblueColor,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "$age",
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: KredColor),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon:
                                    const Icon(Icons.add, color: Colors.white),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: KredColor),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: const Icon(Icons.remove,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ]),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    backgroundColor: KredColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(
                          hight: hight,
                          weight: weight,
                          ismale: ismale,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Calculate",
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
