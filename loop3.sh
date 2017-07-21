#!/bin/sh

#將目錄底下所有 test 開頭的檔案全部改成 example 開頭
#建議先以 echo 取代 mv，先觀察一下有沒有錯，再執行！

for MY_FILE in test*
do
    mv $MY_FILE example$MY_FILE
done
