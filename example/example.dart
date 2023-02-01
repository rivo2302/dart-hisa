import 'package:hisa/hisa.dart';

void main() {

    // You can call the method by toString method
   var p = Hisa(5); 
   print(p.toString()); // dimy <String >

    // You can call the method by the name of the method
   print(Hisa(5555)); // dimy amby dimampolo sy dimanjato sy dimy arivo <Hisa>

   // The parmater must be an integer and < 1000000000000
   print(Hisa(1000000000000000)); // throw a format exception
}
