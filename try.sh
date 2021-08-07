for FILE in *;
do
if [[ $FILE =~ $*.py ]];
then
python3 $FILE >> 'file.csv'
elif [[ $FILE =~ $*.c || $FILE =~ $*.cpp ]];
then
g++ $FILE
./a.out >> 'file.csv'
rm a.out
elif [[ $FILE =~ $*.r ]];
then
r $FILE >> 'file.csv'
fi
done

