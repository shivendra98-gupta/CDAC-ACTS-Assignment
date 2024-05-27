#!/bin/bash

<<Assignment3
Display the name of files in the current directory along with the names of files with maximum & minimum size. The file size is considered in bytes.
Assignment3

#ls command
<<ls
‘ls’ will display the contents of the current directory. 
By default, ‘ls’ lists files and directories in alphabetical order.
ls

<<ls
ls-l	known as a long format 
that displays detailed information about files and directories.
ls

# awk command start
<<ls
1. Default behavior of Awk: By default Awk prints every line of data from the specified file.  

$ awk '{print}' employee.txt

Output:  
ajay manager account 45000
sunil clerk account 25000
varun manager sales 50000
ls

<<ls
Splitting a Line Into Fields : For each record i.e line i.e row, 
the awk command splits the record delimited by whitespace character by default
 and stores it in the $n variables. 
 If the line has 4 words, it will be stored in $1, $2, $3 and $4 respectively. 
 Also, $0 represents the whole line.  

$ awk '{print $1,$4}' employee.txt 

Output:  
ajay 45000
sunil 25000
varun 50000
amit 47000
tarun 15000
deepak 23000

In the above example, $1 and $4 represents 
Name and Salary fields respectively
ls

<<ls
Use of NR built-in variables (Display Line Number)  

$ awk '{print NR,$0}' employee.txt 

Output:  
1 ajay manager account 45000
2 sunil clerk account 25000
3 varun manager sales 50000
4 amit manager account 47000

In the above example, the awk command with NR prints 
all the lines along with the line number. 
ls

<<ls
Another use of NR built-in variables (Display Line From 3 to 6)  

$ awk 'NR==3, NR==6 {print NR,$0}' employee.txt 

Output:  
3 varun manager sales 50000
4 amit manager account 47000
5 tarun peon sales 15000
6 deepak clerk sales 23000 
ls



ls -l | awk '{print $5,$9}' | sort -n | awk 'NR==2{print "Minimum Sized File : " $2} END {print "Minimum Sized File : " $2}' 


#BEGIN AND END + AWK----->
<<comment
awk processes files line by line. 
Before it starts processing the file you can have it do something by using BEGIN and END


END running after the processing of each line
(mtlb eske baadh-->'NR==2{print "Minimum Sized File : " $2} END ke baadh waala statement chale) of the file is complete.
comment

# cat command--->
<<ls
cat file.txt  //cat command to display the content inside the file name ‘file.txt’.

output:
abhinash
satya
nitin
raju
divya
ls

#sort command--->
<<ls
To sort the lines alphabetically, you can use the following command:

sort file.txt  // alphabetically sort kr diya

output:
abhinash
divya
nitin
raju
satya

Note: This command does not actually change the input file, i.e. file.txt
( mtlb sort command se actual file meh koi change nhi hoga) 
We can verify this using cat command .


1.the ‘sort’ command sorts files in ascending order by default.                  //IMP

2.Use the ‘-k’ option followed by the column number to sort a file based on a specific column.
For example,
sort -k 2 data.txt

3.Use the ‘-c’ option with the ‘sort’ command (e.g., sort -c file.txt).           //IMPORTANT
If the file is already sorted, there will be no output. 
If there are disorderly lines, they will be reported.

4. the ‘-n’ option sorts files with numeric data,
 and the ‘-r’ option can be combined with it (e.g., sort -nr numbers.txt) to achieve a reverse numeric sort.
 ------------------------------------------------------------------------------------------------------------------------------------------------
ls

#  wc command
<<ls
wc stands for word count. As the name implies, it is mainly used for counting purpose.

It is used to find out number of lines, word count, byte and characters count in the files specified in the file arguments.
By default it displays four-columnar output.
First column shows number of lines present in a file specified,
 second column shows number of words present in the file, 
 third column shows number of characters present in file and 
 fourth column itself is the file name which are given as argument.

  wc-l: This option prints the number of lines present in a file.
   With this option wc command displays two-columnar output,
    1st column shows number of lines present in a file and 2nd itself represent the file name.

ls