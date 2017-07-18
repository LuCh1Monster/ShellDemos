#!/bin/bash

dbfile=datafile.md5
set_up_dbase()
{
    echo ""$directory"" > "$dbfile"
    md5sum "$directory"/* >> $dbfile
}
check_dbase()
{
    local n=0
    if [ ! -r "$dbfile" ]
    then
        echo "Unable to read checksum database file!"
        exit
    fi
    while read record[n]
    do
        directory_checked="${record[0]}"
        if [ "$directory_checked" != "$directory" ]
        then
            echo "Directories do not match up!"
            exit
        fi
        if [ "$n" -gt 0 ]
        then
            filename[n]=$(echo ${record[$n]} | awk '{print $2}')
            checksum[n]=$(md5sum "${filename[n]}")
            if [ "${record[$n]}" = "$checksum[n]" ]
            then
                echo "${filename[n]} unchanged."
            elif [ `basename ${filename[n]}` != "dbfile" ]
            then
                echo "${filename[n]}: checksum error!"
            fi
        fi
        let "n+=1"
    done < "$dbfile"
}
if [ -z "$1" ]
then
    directoty="$PWD"
else
    directoty="$1"
fi
echo "Running file integrity check on $directoty"
echo
if [ ! -r "dbfile" ]
then
    echo "Setting up database file, \""$directoty"/"$dbfile"\"."
    echo
    set_up_dbase
fi
check_dbase
exit 0
