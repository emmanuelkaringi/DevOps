# Shell Scripting Interview Questions

1. List some commonly used shell commands
- `ls` - Used to list the contents of a directory
- `cp` - Used to copy files
- `mv` - Used to move files from one directory to another
- `mkdir` - Used to create a new directory
- `touch` - Used tocreate a file
- `vim` - A rext editor
- `grep` - Used to filter commands

2. Write a simple shell script to list all processes
	```sh
	ps -ef

	ps -ef | awk -F" " '{$2}'
	```

3. write a script to print only errors from a remote log
	```sh
	curl ipadress | grep error
	```

4. Write a shell script to print numbers divided by 3 and 5 and not 15
	```sh
	#!/bin/bash

	####################
	# Author:
	# Date:
	#
	# This script does this and this
	#
	# Version:
	####################

	# Divisible by 3, divisible by 5, not divisible by 15

	for i in {1..100}; do
	if ([`expr $i % 3` == 0]|| [`expr $i % 5` == 0]) && [`expr $i % 15` !=0];
	then
		echo $i
	fi;
	done
	```

5. Write a script to print number of "S" in Mississippi
	```sh
	#!/bin/bash

	####################
	# Author:
	# Date:
	#
	# This script does this and this
	#
	# Version:
	####################

	x = mississipi
	grp -o "s" <<<"$x" | wc -l
	```
- `wc` -World count

6. How will you debug a shell script?
- Include `set -x` at the beginning of a shell script.

7. What is `crontab` in Linux? Can you provide an example of usage
- Crontab - Is both the set schedule of commands that will be run, as well as the program used to edit that schedule.

8. How to open a read-only file?
- Using `vim -r filenmae.txt`

9. What is the difference between soft and hard link?
- A symbolic or soft link is an actual link to the original file, whereas a hard link is a mirror copy of the original file.

10. What is a difference between break and continue statements?
- The break statement is primarily used as an exit statement, allowing you to exit the current block or loop. Conversely, the continue statement aids in moving from the current loop iteration to the next loop.
- `Break` - Breaking the execution
- `Continue` - Skip this and continue to the next.

11. What are some disadvantages of Shell scripting?
- Errors are frequent and costly and a single error can alter the command.
- The execution speed is slow.
- Bugs or inadequacies in the language's syntax or implemntation.
- Large, complex tasks aren't well suited to it.
- Contrary to other scripting languages, it provides a minimal data structure.
- Everytime a shel command is executed, a new process is launched.

12. What a different types of loops and when to use?
- for loop
- while loop
- do-while loop

13. Is bash dynamic or statically typed and why?
- Dynamically typed

14. Explain about a network troubleshooting utility?
- `traceroute` - Can be used to see why the internet is slow

15. How will you sort list on names in a file?
- Using the `sort` command.

16. How will you manage logs of a system that generate huge log files everyday?
- Using `logrotate`command.
