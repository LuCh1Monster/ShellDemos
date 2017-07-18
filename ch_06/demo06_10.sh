#!/bin/bash

backup_file_time=$(date "+%m-%d-%y")
echo "The date is: %backup_file_time."

tar cvf - `find . -mtime -1 -type f -print` > archive.tar
gzip $archive.tar
echo "Archive of the file is: \"$archive.tar.gz\"."
exit 0
