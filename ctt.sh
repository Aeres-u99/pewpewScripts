#!/bin/env bash
FILE=$1
FILENAME=$(echo $FILE | cut -d "." -f 1)
CHALL_NUM=$(echo $FILENAME | tr -d -c 0-9)
CHALL_NAME=$(echo $FILENAME | tr -d -c A-z)
CHALL_NAME=$(echo $CHALL_NAME | sed 's/./\u&/')
echo "### $CHALL_NAME $CHALL_NUM" >> $FILE
echo -e "\n\n\n" >> $FILE
echo "### Creds" >> $FILE
echo -e "\`\`\`\n\n\`\`\`" >> $FILE
echo -e "\n\n ~Kurama" >> $FILE
nvim $FILE
