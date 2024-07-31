#!/bin/bash
#
pwd
echo "текущая директория $PWD"
FILES=$(find /opt/310524-ptm/Margarita-Wenzel -type f)
for FILE_NAME in $FILES;
     do

        if [[ $FILE_NAME == *.sh ]]; then

                chmod +x "$FILE_NAME"

        fi

done

echo "Права успешно изменены!"


