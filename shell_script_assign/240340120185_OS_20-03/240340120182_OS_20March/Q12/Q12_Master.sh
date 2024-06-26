#!/bin/bash

# Check if "master" file exists
if [ ! -f "master.txt" ]; then
    echo "Error: 'master' file not found."
    exit 1
fi

# Read the batch code from the user
read -p "Enter batch code: " batch_code

# Search for the batch code in the "master" file
grep_result=$(grep "^$batch_code|" master.txt)

if [ -z "$grep_result" ]; then
    echo "Batch code not found in 'master' file."
    exit 1
fi

# Get the current number of students for the batch
number_of_students=$(echo "$grep_result" | cut -d "|" -f 3)

# Allow the user to enter records
while true; do
    read -p "Enter RollNo, Name, Hindi Marks, Maths Marks, Physics Marks (separated by spaces, 'q' to quit): " record
    if [ "$record" == "q" ]; then
        break
    fi
    echo "$record" >> "$batch_code"
    number_of_students=$((number_of_students + 1))   # $ ke baadh ((   )) important hai....kisi variable pe operation krana hai toh $(( variable_name))
done

# Update the number of students in the "master" file
sed -i "s/^$batch_code|.*|.*$/$batch_code|\1|$number_of_students/g" >  master.txt
#sed -i "/^$batch_code|/s/|[0-9]*$/|$number_of_students/"  master.txt
echo "Records added successfully for batch code $batch_code."

#sed command
<<ls
SED command =  stream editor 
    perform lots of functions on file like searching, find and replace, insertion or deletion.

    Replacing or substituting string : Sed command is mostly used to replace the text in a file.
     The below simple sed command replaces the word “unix” with “linux” in the file.
        $sed 's/unix/linux/' geekfile.txt

        Here the “s” specifies the substitution operation.
         The “/” are delimiters. The “unix” is the search pattern and the “linux” is the replacement string.
-------------------------------------------------------------------------------------------------------------------------
//IMP         Replacing the nth occurrence of a pattern in a line : 
         Use the /1, /2 etc flags to replace the first, second occurrence of a pattern in a line. 
         The below command replaces the second occurrence of the word “unix” with “linux” in a line.
        $sed 's/unix/linux/2' geekfile.txt
Output:

unix is great os. linux is opensource. unix is free os.
learn operating system.
unix linux which one you choose.
unix is easy to learn.linux is a multiuser os.Learn unix .unix is a powerful.
----------------------------------------------------------------------------------------------------------------
Replacing all the occurrence of the pattern in a line : 
The substitute flag /g (global replacement) specifies the sed command to replace all the occurrences of the string in the line.
$sed 's/unix/linux/g' geekfile.txt
Output :

linux is great os. linux is opensource. linux is free os.
learn operating system.
linux linux which one you choose.
linux is easy to learn.linux is a multiuser os.Learn linux .linux is a powerful.
--------------------------------------------------------------------------------------------------------
Replacing string on a specific line number : 
You can restrict the sed command to replace the string on a specific line number.
 An example is
$sed '3 s/unix/linux/' geekfile.txt
Output:

unix is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
---------------------------------------------------------------------------------------------------------------
Replacing from nth occurrence to all occurrences in a line :
 Use the combination of /1, /2 etc and /g to replace all the patterns from the nth occurrence of a pattern in a line.
  The following sed command replaces the third, fourth, fifth… “unix” word with “linux” word in a line.
$sed 's/unix/linux/3g' geekfile.txt
Output:

unix is great os. unix is opensource. linux is free os.
learn operating system.
unix linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn linux .linux is a powerful.
--------------------------------------------------------------------------------------------------------------------------
Parenthesize first character of each word : This sed example prints the first character of every word in parenthesis.
$ echo "Welcome To The Geek Stuff" | sed 's/\(\b[A-Z]\)/\(\1\)/g'
Output:

(W)elcome (T)o (T)he (G)eek (S)tuff
------------------------------------------------------------------------------------------------------------------------------
Duplicating the replaced line with /p flag :
 The /p print flag prints the replaced line twice on the terminal. 
 If a line does not have the search pattern and is not replaced, then the /p prints that line only once.
$sed 's/unix/linux/p' geekfile.txt
Output:

linux is great os. unix is opensource. unix is free os.
linux is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
linux linux which one you choose.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
----------------------------------------------------------------------------------------------------------------
Printing only the replaced lines : Use the -n option along with the /p print flag to display only the replaced lines.
 Here the -n option suppresses the duplicate rows generated by the /p flag and prints the replaced lines only one time.
$sed -n 's/unix/linux/p' geekfile.txt
Output:

linux is great os. unix is opensource. unix is free os.
linux linux which one you choose.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
If you use -n alone without /p, then the sed does not print anything.
--------------------------------------------------------------------------------------------------------------------------
Replacing string on a range of lines : You can specify a range of line numbers to the sed command for replacing a string.
$sed '1,3 s/unix/linux/' geekfile.txt
Output:

linux is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
Here the sed command replaces the lines with range from 1 to 3. Another example is

$sed '2,$ s/unix/linux/' geekfile.txt
Output:

unix is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful
Here $ indicates the last line in the file. So the sed command replaces the text from second line to last line in the file.
---------------------------------------------------------------------------------------------------------------------------------------
Deleting lines from a particular file : SED command can also be used for deleting lines from a particular file. SED command is used for performing deletion operation without even opening the file
Examples:
1. To Delete a particular line say n in this example
Syntax:
$ sed 'nd' filename.txt
Example:
$ sed '5d' filename.txt
2. To Delete a last line

Syntax:
$ sed '$d' filename.txt
3. To Delete line from range x to y

Syntax:
$ sed 'x,yd' filename.txt
Example:
$ sed '3,6d' filename.txt
4. To Delete from nth to last line

Syntax:
$ sed 'nth,$d' filename.txt
Example:
$ sed '12,$d' filename.txt
5. To Delete pattern matching line

Syntax:
$ sed '/pattern/d' filename.txt
Example:
$ sed '/abc/d' filename.txt
