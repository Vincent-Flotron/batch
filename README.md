# README

## parse the lines of a file

Here it's a sample for loop used to display splitted elements of lines of the file "myfile.txt".

```batch
for /f "eol=e tokens=1,2,3,4,5,6 delims= " %%i in (myfile.txt) do @echo %%i %%j %%k %%l %%m %%n
```

It iterate trought each lines of the file ignoring the lines starting by ;. It's set with the argument "eol".
The argument "delims" sets the separator. Each elements separated by a space (tocken) will by placed inside the loop's variables %i %j %k, etc...
The "tokens" argument sets which token to keep refering to the number. Here 
```batch
"tokens=1,2,3,4,5,6"
```
will put:
- the first token to the variable %%i,
- the second token to the variable %%j,
- etc

The "@echo" means "echo off" then "echo %i %j %k, etc..." then "echo on".

## Find a batch file in the current folder using piping

```batch
dir /b|find ".bat"
```

## Links

- [tutorialspoint](https://www.tutorialspoint.com/batch_script/batch_script_functions.htm)
- [Microsoft: for loop](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/for?source=recommendations)