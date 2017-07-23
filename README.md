# scripts

## 權限設定  
指令：chomd

使用者owner/group/other三種  

各自有權限read/write/execute
(4/2/1)

EX:
-rwxrwx---
表示owner = rwx, group = rwx, other = ---  
owner = 4+2+1 = 7  
group = 4+2+1 = 7  
other = 0+0+0 = 0  

指令`chomd 770 檔名`  

## 參數  
$0：shell script名稱  
$1, $2...$n：第n個參數  
$@：輸入的參數清單  
$#：參數的總數  
