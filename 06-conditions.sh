#!/bin/bash

echo "enter marks of a student:"
read marks

if [$marks -lt 33]; then
{
    echo "marks: $marks, - Fail"
}
elif [$marks -lt 50]; then
{
   echo "marks: $marks, - third Class"
}
elif [$marks -lt 60]; then
{
   echo "marks: $marks, - second Class"
}
elif [$marks -lt 70]; then
{
   echo "marks: $marks, - First Class"
}
else
{
   echo "marks: $marks, - Distinction"
}
fi