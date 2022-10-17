import 'dart:math';
import 'package:bmi_calculator/bmi_result/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget
{
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen>
{
  bool isMale = true;
  double height = 180.0;
  int weight = 70;
  int age = 20;
  late String state = '';

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff0a0e20),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Color(0xff0a0e20),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap:()
                        {
                          setState( ()
                          {
                            isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/male.png'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: isMale ? Color(0xfff50d56) : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: !isMale ? Color(0xfff50d56) : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Color(0xff0a0e20),
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value)
                        {
                          setState(()
                          {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                fontSize: 45.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Color(0xff0a0e20),
                                  onPressed: ()
                                  {
                                    setState(()
                                    {
                                      if(weight==20)
                                        {
                                          weight=20;
                                        }else
                                        {
                                          weight--;
                                        }
                                    });
                                  },
                                  heroTag: 'weight-',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color(0xff0a0e20),
                                  onPressed: ()
                                  {
                                    setState(()
                                    {
                                      if(weight==200)
                                      {
                                        weight=200;
                                      }else
                                      {
                                        weight++;
                                      }
                                    });
                                  },
                                  heroTag: 'weight+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                fontSize: 45.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Color(0xff0a0e20),
                                  onPressed: ()
                                  {
                                    setState(()
                                    {
                                      if(age==10)
                                      {
                                        age=10;
                                      }else
                                      {
                                        age--;
                                      }
                                    });
                                  },
                                  heroTag: 'age-',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color(0xff0a0e20),
                                  onPressed: ()
                                  {
                                    setState(()
                                    {
                                      if(age==80)
                                      {
                                        age=80;
                                      }else
                                      {
                                        age++;
                                      }
                                    });
                                  },
                                  heroTag: 'age+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              color: Color(0xfff50d56),
              child: MaterialButton(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                onPressed: ()
                {
                  double result = weight / pow(height /100,2);
                  if(result<16)
                    {
                      state = 'extreme thinness' ;
                    }else if (result>=16 && result<17)
                    {
                      state = 'moderate thinness' ;
                    }
                    else if (result>=17 && result<18.5)
                    {
                      state = 'light thinness' ;
                    }
                    else if (result>=18.5 && result<25)
                    {
                      state = 'normal weight' ;
                    }
                    else if (result>=25 && result<30)
                    {
                      state = 'overweight' ;
                    }
                    else if (result>=30 && result<35)
                    {
                      state = 'class 1 obesity' ;
                    }
                    else if (result>=35 && result<40)
                    {
                      state = 'class 2 obesity' ;
                    }
                    else if (result>40)
                    {
                      state = 'class 3 obesity' ;
                    }

                  Navigator.push(context, MaterialPageRoute(
                        builder: (context) => BmiResultScreen(
                          result: result.round(),
                          state: state,
                        ) ,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
