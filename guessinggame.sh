#Take user input
echo " How many files are in the current directory:"
echo "Guess the number:"
read num
#check number
while ((num >0))
do
#function to get number of files
function nof{
files=` find . -type f -print | wc -l `
return files
}
no=$nof()
#check guess number
if [ $num -gt $no]
then
    echo "too High"
fi
if [ $num -lt $no ]
then
    echo "too Low"
fi
if [ $num == $no ]
then
    echo "Congratulations!  correct answer"
fi
done