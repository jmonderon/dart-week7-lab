# Week 7 Lab – Dart Fundamentals
Name: Joseph Zalde Monderondo
Section: 3.7 BSIT
## Files
- campus_brew_receipt.dart – Campus Brew order receipt (Parts 2–8)
- print_shop.dart – Campus Print Shop bill (Part 10)
## How to run
Copy a file's code into https://dartpad.dev and click Run.

## Part 7 answers
1. Ana got the student voucher because she is a student (`isStudent = true`) and her subtotal of PHP 296.75 is greater than or equal to PHP 250.
2. Delivery was not free because Ana's order was not a pickup order and her total after the voucher, PHP 281.25, was below PHP 300.
3. We use `~/` instead of `/` for reward points because `~/` returns only the whole-number result, without decimal points.

## Part 8 results table
Order      Student Voucher                Delivery      Total      Change          Points
A - Ana      PHP -15.50                 PHP 29.50    PHP 310.75    PHP 103.25        6
A with isStudent = false Not eligible     FREE       PHP 296.75    PHP 103.25        5
B — Ben Not eligible                      FREE       PHP 295.75    PHP 4.25          5
C — Carla    PHP 15.50                  PHP 29.50    PHP 367.00    PHP 133.00        7

## Part 9 debugging table
Bug      What DartPad said (or printed)                                          What was wrong                                                     Your fixed line
1        Expected a semicolon ;                                    Missing semicolon after the variable declaration.                          String drink = 'Iced Coffee';
2        A value of type double can't be assigned to int. 65.      25 is a decimal number, so the variable must be double.                    adouble price = 65.25;
3        The final variable can only be set once.                  A final variable cannot be reassigned.                                     String shop = 'Campus Brew';
4        Total: 25.5 * 3                                           The program prints the multiplication as text instead of calculating it.   print('Total: ${(price * qty).toStringAsFixed(2)}');
5        A value of type double can't be assigned to int.          /returns a decimal result, but boxes is an integer.                        int boxes = cups ~/ 6;

## Part 10 test results
Student name     Black pages     Color pages   Is member     Wants binding     Member discount     TOTAL        Minutes
Ana Reyes             24              6          true             true             -PHP 5.25       PHP 140.00      3 
Ben Cruz              14              2          false            false          Not eligible      PHP 51.50       2 
Carla Santos          30              1          true             false          Not eligible      PHP 83.25       3

## Reflection
1. The error message that confused me the most was when I assigned a decimal number to an `int` variable. I fixed it by changing the data type to `double`, which can store decimal values.
2. `final` would be a better choice for values that should not change after they are assigned, such as the customer's name or calculated subtotal. It helps prevent accidental changes to the values.
3. In a real Flutter app, the INPUT values would come from user interactions, such as entering a name in a text field, selecting items, setting quantities, and clicking buttons.
