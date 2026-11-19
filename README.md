# Dart OOP Assignment: Kigali Bus Card

**Name:** Tumusifu Ombe Christophe  
**Student ID:** 27502

## My numbers

* D = 02
* L = 2
* Starting balance = 1000 + (2 × 10) = **1020 RWF**
* Bus fare = 200 + 2 = **202 RWF**
* Student discount = 10 + 2 = **12%**

## Files

* `main.dart`: Parts 1, 2 and 3.
* `bug_hunt.dart`: Part 4, corrected Phone and SmartPhone program.

## Output of main.dart

Run with `dart run main.dart`.

Expected output:

text
Error: name too short
Owner: Tumusifu Ombe Christophe | Balance: 1020 RWF
Owner: Tumusifu Ombe Christophe | Balance: 1020 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 202 RWF
Paid 202 RWF
Owner: Tumusifu Ombe Christophe | Balance: 2616 RWF
Student discount: 24 RWF
Paid 178 RWF
Owner: Tumusifu Ombe Christophe | Balance: 842 RWF
Student card: 12% off


## Part 1: Why no setter for balance?

There is no setter for balance because the balance should not be changed directly. It should only change through valid operations such as `topUp()` and `pay()`. This protects the card balance and prevents incorrect changes.

## Part 2: What does \~/ do?

The ~ operator performs integer division. It returns the whole-number result and removes the decimal part.

dart
print(237 * 17  100);
print(237 * 17 ~/ 100);


Output:

text
40.29
40


The `/` operator returns a decimal result, while `~` returns an integer result.

## Part 4: Bug table

|Bug|The line / problem|Why it is wrong|Fix|

|1|`_brand` and `battery` declarations|Non-nullable fields need initial values.|Initialize them with `''` and `0`.|
|2|`SmartPhone` constructor|The parent `Phone` constructor needs brand and battery.|Add `: super(brand, battery)`.|
|3|`@override void restart()`|The parent class does not define `restart()`.|Add `restart()` to `Phone`, then override it.|
|4|Missing battery setter|`p.battery = 100` cannot work with only a getter.|Add a setter accepting values from 0 to 100.|
|5|`print(p.battery())`|`battery` is a getter property, not a method.|Use `print(p.battery)`.|

### Not a bug

Phone p = new Phone('Tecno', 50);` is valid Dart. The `new` keyword is optional, but it is still allowed. It does not need to be deleted.

The corrected `bug_hunt.dart` program prints:

text
100


## Part 5: Predict the output

### My prediction (before running)

text
1
5


### Why?

For `Bag a`, `add()` changes the item count from 0 to 1. The assignment `a.items = -5` is rejected because the setter accepts only values greater than or equal to 0. Therefore, the first output is 1.

For `BigBag b`, each call to `add()` runs the parent `add()` twice. Two calls therefore add 4 items. Then `b.items = b.items + 1` adds one more item. Therefore, the second output is 5.

### Real output

text
1
5


### Was I right?

Yes. My prediction was correct because the setter rejects a negative value, and the overridden `add()` method calls the parent method twice each time.

## Git commit plan

The assignment requires at least five commits, with these messages:

1. `Part 1: BusCard`
2. `Part 2 and 3: StudentCard and main`
3. `Part 4: bug hunt fixed`
4. `Part 5: prediction`
5. `Part 5: real output and README`

Important: commit the Part 5 prediction before running the prediction code. Then run it and add the real output in a later commit. Do not create all five commits at once if that would misrepresent the work history.

## GitHub submission

* Repository name: `dart-oop-27502`
* Visibility: Private
* Add the lecturer's GitHub username as a collaborator under Settings → Collaborators.
* Paste the repository link on the class platform before the deadline.

The lecturer's GitHub username and the class-platform submission location are not specified in the assignment document, so confirm those details with the lecturer.

