#! /bin/bash

echo "enter marks of a student:"
read marks

if [$marks<33] ;then
{
    echo "marks: $marks, - Fail"
}
elif [$marks<50]; then
{
   echo "marks: $marks, - Second Class"
}
elif [$marks<60]; then
{
   echo "marks: $marks, - First Class"
}
else
{
   echo "marks: $marks, - Distinction"
}
