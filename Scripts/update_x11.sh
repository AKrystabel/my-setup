#!/bin/bash

   # Read the list of .desktop files
   while IFS= read -r file
   do
     # Check if the file is writable
     if [ -w "$file" ]; then
       # Use sed to replace X11-specific commands
       sed -i 's/^Exec=xterm -e /Exec=/' "$file"
       sed -i 's/^Exec=env DISPLAY=:0 /Exec=/' "$file"
       
       # Add more sed commands here for other X11-specific patterns
       
       echo "Updated: $file"
     else
       echo "Cannot write to: $file (skipping)"
     fi
   done < desktop_files.txt
