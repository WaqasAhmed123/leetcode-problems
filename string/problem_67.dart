import 'dart:ffi';

class Solution {
  String addBinary(String a, String b) {
    if (b.isEmpty) return a;
    String output = "";
    bool isCarry = false;
// for (Char aBinary in a){

// }

    for (int i = a.length - 1; i >= 0; i--) {
      if (a[i] == "0" && b[i] == "0") {
        if (isCarry == false) {
          output += "0";
          print("output at 1 if $output and carry is false");
        } else {
          if (i != 0) {
            output += "1";
            print("output at 1 if $output and carry is true");

            isCarry = false;
          } else {
            output += "10";
            // print("output at 1 if $output and carry is true");
            print("executed at 1 if");


            isCarry = false;
          }
        }
      } else if (a[i] == "1" && b[i] == "1") {
        if (isCarry == false) {
          output += "0";
          print("output at 2 if $output and carry is false");
          isCarry = true;
        } else {
          if (i != 0) {
            output += "1";
            print("output at 3 if $output and carry is true");

            isCarry = true;
          } else {
            output += "11";
            // print("output at 3 if $output and carry is true");
            print("executed at 2 if");

          }
        }
      } else if ((a[i] == "1" && b[i] == "0") || (a[i] == "0" && b[i] == "1")) {
        if (isCarry == false) {
          output += "1";
          print("output at 3 if $output and carry is false");
        } else {
          if (i != 0) {
            output += "0";
            print("output at 3 if $output and carry is true");

            isCarry = false;
          } else {
            output += "01";
            print("executed at 3 if");
            // print("output at 3 if $output and carry is true");
          }
        }
      }
      //  else if (a[i] == "0" && b[i] == "1") {
      //   if (isCarry == false) {
      //     output += "1";
      //   } else {
      //     output += "1";
      //   }
      // }
      // isCarry = false;

      // if (a[i] + b[i] == 2) {
      //   output += "0";
      //   if (a[i - 1] == 1 && b[i - 1] == 1 && i != 0) {
      //     output += '1';
      //     a[i - 1].replaceRange(i - 1, i - 1, a[i - 1] + 1.toString());
      //   } else if (a[i - 1] == 0 && b[i - 1] == 0 && i != 0) {
      //     output += '1';
      //   } else if (a[i - 1] == 0 && b[i - 1] == 1 && i != 0) {
      //     output += '1';
      //   }
      // }
    }
    print(output);
    return output;
  }
}

void main() {
  Solution solution = Solution();
  String result = solution.addBinary("1010", "1011");
}
