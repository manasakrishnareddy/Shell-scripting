#! /bin/bash

echo "enter marks of a student:"
read marks

if ($marks<33)
{
    echo "marks: $marks, - Fail"
}
else if($marks<50){
   echo "marks: $marks, - Second Class"
}
else if($marks<60){
   echo "marks: $marks, - First Class"
}
else {
   echo "marks: $marks, - Distinction"
}