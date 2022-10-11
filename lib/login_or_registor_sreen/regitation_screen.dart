import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbappium/Provider/auth_provider.dart';
import 'package:wbappium/login_or_registor_sreen/Verify_Email_address.dart';
import 'package:wbappium/login_or_registor_sreen/login_screen.dart';

import '../wigdet/Custrom_button.dart';
import '../wigdet/from_decoration.dart';
class registation extends StatefulWidget {
  const registation({Key? key}) : super(key: key);

  @override
  State<registation> createState() => _registationState();
}

class _registationState extends State<registation> {

  @override
  Widget build(BuildContext context) {
    final AuthProvider u_providerdata = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey[800],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[800],
        ),

        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 100,),
                Text("WPAPPIUM",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.white),),
                SizedBox(height: 20,),
                Text("Learn from anything and anywhere",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(40) ,
                      topRight: Radius.circular(40),
                    ),
                  ),
                  // height: ,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 10,
                        left: 20,
                        right: 20
                    ),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        _textFieldBuilder('Username',u_providerdata),
                        SizedBox(height: 20,),
                        _textFieldBuilder('First Name',u_providerdata),
                        SizedBox(height: 20,),
                        _textFieldBuilder('Last Name',u_providerdata),
                        SizedBox(height: 20,),
                        _textFieldBuilder('Email Address',u_providerdata),
                        SizedBox(height: 20,),
                        _textFieldBuilder('Enter Password',u_providerdata),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: ()async{
                            try{
                              await u_providerdata.createAccount("${u_providerdata.usersModel.uemail}", "${u_providerdata.usersModel.upassword}");
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Verify_Email_address()));
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                    'Registration Successfully',
                                  )));
                            } catch(e){
                              print('error caught:$e');
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                    'Password should be at least 6 characters',
                                  )));

                            }
                          },
                          child: Custrom_button("Registration"),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>login(

                            )));
                          },
                          child:Text("Already Registered?",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,),),
                        ),

                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
  Widget _textFieldBuilder(String ?hintTxt,AuthProvider User_provider ){
    Size size=MediaQuery.of(context).size;
    return  TextFormField(

      cursorColor: Colors.black12,
      keyboardType: hintTxt=='Email Address'?TextInputType.emailAddress
          :TextInputType.text,
      decoration: FormDecoration.copyWith(
        labelText: hintTxt,
        labelStyle: TextStyle(
          fontSize: size.height*0.020,
        ),
      ),
      onTap: (){
        if(hintTxt=='Email Address'){

        }
      },

      validator: (value) {
        if (value!.isEmpty) {
          return 'Please Fill All filled';
        }
        return null;
      },
      onChanged: (value){
        setState(() {
          hintTxt=='Username'?User_provider.usersModel.userName=value:
          hintTxt=='First Name'?User_provider.usersModel.firstName=value:
          hintTxt=='Last Name'?User_provider.usersModel.lastName=value:
          hintTxt=='Email Address'?User_provider.usersModel.uemail=value:
              User_provider.usersModel.upassword=value;
        });
      },
    );

  }
}
