/*
PSEUDO CODE
===========
  General
  -------
  Input: An array with integers or float numbers
  Output: A number that is the result of a calculation-function on the input array.
  Steps:
    Step1: Define a variable 'list' that equals an empty array.
    Step2: Define three functions: SUM - MEAN - MEDIAN (see details below)
  Function SUM
  ------------
  Input: The variable 'list'
  Output: The SUM of all elements in the array
  Steps:
    Step1:  DEFINE a new FUNCTION called 'sum' with a parameter 'list'
    Step2:  Create a variable 'sum_of_list' and set it EQUAL to zero.
    Step3:  Use a FOR loop to iterate over all elements in the array.
        ADD each element in the array to 'sum_of_list'.
    Step4:  RETURN 'sum_of_list'.
  Function MEAN
  -------------
  Input: The variable 'list'
  Output: The average value (mean) of all elements in the array
  Steps:
    Step1:  DEFINE a new FUNCTION called 'mean' with a parameter 'list'
    Step2:  Create a variable 'sum_of_list' and set it equal to zero.
    Step3:  Use a FOR loop to iterate over all elements in the array.
        ADD each element in the array to 'sum_of_list'.
    Step4:  SET the variable 'mean_of_list' EQUAL to ('sum_of_list'/the length of the array)
    Step5:  RETURN 'mean_of_list'
  Function MEDIAN
  ---------------
  Input: The variable 'list'
  Output:
    * IF the amount of numbers in the list is UNEVEN: The value of the middle number of the ordered list (small to large) value (mean) of all elements in the array.
    * IF the amount of numbers in the list is EVEN: The average (mean) of the two middle numbers (of the ordered list (small to large)).
  Steps:
    Step1:  DEFINE a new FUNCTION called 'median' with a parameter 'list'.
    Step2:  ORDER the elements in the list from small to large.
    Step3:  Determine whether the amount of numbers in the array is EVEN or UNEVEN.
    Step4:  IF UNEVEN: RETURN the value, positioned at index the middle index of the sorted array.
        IF EVEN: RETURN values of the middle two numbers in the (ordered) list and take the average on these (as described in the function 'mean')
*/

//      General
var list = [];
//Driver code: var list = [1, 3, 4.5];
function sum(list) {
  var sum_of_list = 0;
  for (i=0; i<list.length; i++){
    sum_of_list += list[i];
  }
// Driver code: console.log(sum_of_list);
  return sum_of_list;
};


function mean(list) {
  var sum_of_list = 0;
  for (i=0; i<list.length; i++){
    sum_of_list += list[i];
  }
  var mean_of_list = sum_of_list / list.length;
  return mean_of_list;
// Driver code:   console.log(mean_of_list);
}


// function median(list) {
function median(list) {
  var ordered_list = list.sort(function(a,b) {return a - b;} );
  var midPoint = ordered_list.length / 2;
  if(ordered_list.length % 2 != 0)
    return midPoint;
  else
    return (ordered_list[midPoint - 1] + ordered_list[midPoint]) / 2;
}
//var practiceList = [4,6,7,4,3,2,6,7];
//console.log(median(practiceList))
// }

