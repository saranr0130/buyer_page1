import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BuyerPage extends StatefulWidget {
  const BuyerPage({super.key});

  @override
  State<BuyerPage> createState() => _BuyerPageState();
}

class _BuyerPageState extends State<BuyerPage>with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isChecked = false;
  double _sliderValue = 50.0; // Initial slider value

  void _onCheckboxChanged(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }
List<bool> _selections = [false, false, false, false, false, false];

final List<String> _chipLabels = ['BHK1', 'BHK2', 'BHK3', ];
final List<String> _chipLabels1 = ['BHK4', 'BHK5', 'BHK6', ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // 3 tabs
  }
   

  @override
  void dispose() {
    _tabController.dispose(); // Dispose the TabController when no longer needed
    super.dispose();
    

  // This function is called when the checkbox state changes
  void _onCheckboxChanged(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }
  }
  @override
  Widget build(BuildContext context) {
    double screenHight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: screenHight*0.2,
                width: screenWidth,
                 decoration: BoxDecoration(
                  color: Colors.black,
                image: DecorationImage(image: AssetImage('assets/photos/1.png'),fit: BoxFit.cover),
                
               ),
               
               child: Column(
                 children: [
                  SizedBox(height: 10,),
                
                   Padding(
                     padding: const EdgeInsets.all(20),
                     child: Row(
                       children: [
                        IconButton(onPressed:(){}, icon:Icon(Icons.arrow_back_ios),color: Colors.white,),
                        SizedBox(width: 60,),
                        Image.asset('assets/photos/2.png')
                        //  Text('hiii da punda',style: TextStyle(color: Colors.white),),
                       ],
                     ),
                   ),
                   SizedBox(height: 0,),
                  TabBar(
                    labelColor: Colors.white,
          controller: _tabController,
          tabs: [
           Tab(text:('Buy'),),
        Tab(text: 'Rent'),
        ]),
                 ],
               ),
              )
            ],
          ),
          Positioned(
            top: 150,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                height: screenHight,
                width: 380,
               
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30)),
                   color: Colors.white,
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: screenHight*0.05,
                            width: screenWidth*0.8,
                            
                            child: Padding(
                              padding: const EdgeInsets.only(left:20),
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  hintText: 'Search radius',
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            decoration:BoxDecoration(
                             border: Border.all(color: Colors.grey,width: 1),
                             borderRadius: BorderRadius.circular(15)
                              
                            )
                              
                            
                          ),
                          Container(
                            height: screenHight*0.06,
                            width: screenWidth*0.1,
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              
                              image: DecorationImage(image: AssetImage('assets/photos/3.png'),fit: BoxFit.cover)
                            ),
                            child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_drop_down),color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: screenHight*0.05,
                            width: screenWidth*0.8,
                            
                            child: Padding(
                              padding: const EdgeInsets.only(left:20),
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  hintText: 'Search up to 2 Localities or Landmarks',
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            decoration:BoxDecoration(
                             border: Border.all(color: Colors.grey,width: 1),
                             borderRadius: BorderRadius.circular(15)
                              
                            )
                              
                            
                          ),
                          InkWell(onTap: (){},
                            child: Container(
                              height: screenHight*0.06,
                              width: screenWidth*0.1,
                              decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                
                                image: DecorationImage(image: AssetImage('assets/photos/3.png'),fit: BoxFit.cover)
                              ),
                             child: Image.asset('assets/photos/4.png'),
                            ),
                          )
                        ],
                      ),
                            
                      CheckboxListTile(
                    title: const Text('Include nearby properties'),
                    value: _isChecked,
                    onChanged: _onCheckboxChanged,
                    controlAffinity: ListTileControlAffinity.leading, // Position of the checkbox
                    activeColor: const Color.fromARGB(255, 1, 39, 70), // Checkbox color when checked
                  ),
                   SizedBox(height:10),
                            
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text('Property type'),
                    ],
                  ),
                
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: Container(
                     height: screenHight*0.05,
                    width: screenWidth*0.9,
                     child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Detached',
                        suffixIcon: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_drop_down))
                      ),
                     ),
                   ),
                 ),
                            
                 SizedBox(height:10),
                            
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text('Added to site'),
                    ],
                  ),
                
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: Container(
                     height: screenHight*0.05,
                    width: screenWidth*0.9,
                     child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Anytime',
                        suffixIcon: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_drop_down))
                      ),
                     ),
                   ),
                 ),
                  SizedBox(height:20),
                            
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text('BHK Type'),
                    ],
                  ),
                            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Spacing chips evenly
                    children: List.generate(3, (index) {
                      return Container(
                            width: 100, // Set width for the container
                            height: 50, // Set height for the container
                            decoration: BoxDecoration(
                              color: _selections[index] ? Color.fromARGB(255, 1, 29, 92) : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ChoiceChip(
                              label: Text(_chipLabels[index]),
                              selected: _selections[index],
                              onSelected: (selected) {
              setState(() {
                _selections[index] = selected; // Update the selection
              });
                              },
                            ),
                      );
                    }
                    ),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Spacing chips evenly
                    children: List.generate(3, (index) {
                      return Container(
                            width: 100, 
                            height: 50, 
                            decoration: BoxDecoration(
                              color: _selections[index] ? Color.fromARGB(255, 2, 21, 60) : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ChoiceChip(
                              label: Text(_chipLabels1[index]),
                              selected: _selections[index],
                              onSelected: (selected) {
              setState(() {
                _selections[index] = selected;
              });
                              },
                            ),
                      );
                    }
                    ),
                  ),
                            
                  Row(
                    children: [
                      Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Price Range : £0 to £ 10,00,00,000'),
                      ),
                    ],
                  ),
                  Slider(
                              value: _sliderValue,
                              min: 0.0,
                              max: 100000000,
                              divisions: 100,  // Optional: create discrete steps
                              label: _sliderValue.round().toString(),  // Optional: show label with rounded value
                              onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
                              },
                              activeColor: const Color.fromARGB(255, 2, 52, 93),
                              inactiveColor: Colors.grey,
                            ),
                            
                            Row(
                              children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Looking for “ReadytoMove” properties? '),
              ),
                              ],
                            ),
                            
              Row(
                              
              children: [
              SizedBox(width: 10,),
              Container(
                height:screenHight*0.04,
                width: screenWidth*0.2,
                
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.greenAccent,width:2 )

                ),
                child: ElevatedButton(onPressed: (){},
                 child: Text('Yes'),
                 style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 170, 245, 173)),
                 )
                 ),
                 SizedBox(width: 12,),
                Container(
                height:screenHight*0.04,
                width: screenWidth*0.2,
                
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.greenAccent,width:2 )

                ),
                child: ElevatedButton(onPressed: (){},
                 child: Text('No'),
                 style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 170, 245, 173)),
                 )
                 ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/photos/5.png'),
                                      Text('Looking for something specific? '),

                                      
                                    ],
                                  ),
                                  
                                  Column(
                                    children: [
                                  
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                           
                                            Text('Add More Filters '),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                           

                            Container(
                              height: 250,
                              width: screenWidth,
                            )
                            
                            
                            
                 
                            
                  ],
                ),
                
                
              ),
            ),
            
            ),
           
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        
        color: Colors.white,
        child: Container(
          height: screenHight*0.2,
        
          decoration: BoxDecoration(
              
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
          ),
          child: Row(
            children: [
             InkWell(onTap: (){},
               child: Container(
                height: 200,width: 180,
               
                decoration: BoxDecoration(
                   color:  const Color.fromARGB(255, 2, 52, 93),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),)
                ),
                   child: Center(child: Text('SEARCH',style: TextStyle(color: Colors.white),)),
                           ),
             ),
            
            InkWell(onTap: (){},
              child: Container(
                height: 200,width: 180,
                decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),)
                ),
                    child: Center(child: Text('CLEAR',style: TextStyle(color: Colors.black),)),
              ),
            ),
            ],
          ),
        ),
        
        
      ),
    );
  }
}