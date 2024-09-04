import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignupScreen extends StatefulWidget {
  final VoidCallback show;
  const SignupScreen(this.show,{super.key,});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final email=TextEditingController();
  FocusNode email_F=FocusNode();
  final password=TextEditingController();
  FocusNode password_F=FocusNode();
  final bio=TextEditingController();
  FocusNode bio_F=FocusNode();
  final username=TextEditingController();
  FocusNode username_F=FocusNode();
  final passwordConfirm=TextEditingController();
  FocusNode passwordConfirm_F=FocusNode();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: 
        SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          SizedBox(width: 96.w,height: 30.h,),
          Center(
            child: Image.asset('assets/images/logo.png',width: 230,),
          ),
          SizedBox(height: 60.h,), 
          Center(child: CircleAvatar(
          radius: 34.r,
          backgroundColor: Colors.grey.shade700,
          backgroundImage: AssetImage('assets/images/person.png'),
          )),
          SizedBox(height: 50.h,),
          Textfield(email,Icons.email,'Email',email_F,false),
          SizedBox(height: 15.h,),
          Textfield(username,Icons.person,'Username',username_F,false),
          SizedBox(height: 15.h,),
          Textfield(bio,Icons.abc,'Bio',bio_F,false),
          SizedBox(height: 10.h,),
          Textfield(password,Icons.lock,'Password',password_F,true),
          SizedBox(height: 10.h,),
          Textfield(passwordConfirm,Icons.lock,'Confirm Password',passwordConfirm_F,true),
          SizedBox(height: 20.h,),
          Login(),
          SizedBox(height: 10.h,),
          Have(),
          ],
                ),
        ),),
    );
  }

  Widget Have() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal:  15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Already have account? ",style: TextStyle(fontSize: 13.sp,color: Colors.grey,),),
            GestureDetector(
              onTap: widget.show,
              child: Text("Login ",style: TextStyle(fontSize: 15.sp,color: Colors.blue,fontWeight: FontWeight.bold
              ),),
            ),
          ],
        ),
      );
  }

  Widget Login() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal:  10.w),
        child: Container(
        alignment: Alignment.center,
        width: double.infinity,height: 44.h,
        decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.r),
        
        ),
        child: Text('Sign up',style: TextStyle(fontSize: 13.sp,color: Colors.white,fontWeight: FontWeight.bold),),
        ),
      );
  }

  Widget forgot() {
    return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: Text('Forget Password?',style: TextStyle(
        fontSize: 13.sp,color: Colors.blue,fontWeight: FontWeight.bold),
        ),
      );
  }

  Widget Textfield(TextEditingController controller,IconData icon, String type, FocusNode focusNode,bool hide) {
    return   Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
            height: 44.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: TextField(
              obscureText: hide,
              style: TextStyle(fontSize: 18.sp,color: Colors.black),
              controller: controller,
              focusNode: focusNode,
              decoration: InputDecoration(
                hintText: type,
                prefixIcon: Icon(icon, color:focusNode.hasFocus? Colors.black:Colors.grey),
                contentPadding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(color: Colors.grey,width: 2.w,)
                ),
               focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(color: Colors.black,width: 2.w,)
                ),  
              ),
            ),
          ),
    );
  }
}