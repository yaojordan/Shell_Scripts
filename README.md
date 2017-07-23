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

## 指令  
**grep**：將含有關鍵字的一整行資料印出  
**awk**：將指定的欄位印出  

EX:  
A001 腳踏車 AEADDDEE9931  
A002 機車 FDEAEDFJK3394  
A003 火車 FJDKE3AK34940  
A004 超機車 FFJJEEE99300  
A005 飛機 AIRP33333900  
A006 坦克 TANK00000001  

`grep 車 formname`執行結果：  
A001 腳踏車 AEADDDEE9931  
A002 機車 FDEAEDFJK3394  
A003 火車 FJDKE3AK34940  
A004 超機車 FFJJEEE99300  

`awk {'print $2 "-" $3 '}`執行結果：  
腳踏車-AEADDDEE9931  
機車-FDEAEDFJK3394  
火車-FJDKE3AK34940  
超機車-FFJJEEE99300  
飛機-AIRP33333900  
坦克-TANK00000001 

**|**：pipe，導管  
A|B：把A的output作為B的input  

EX:  
`grep 車 formname | awk {'print $2 "-" $3'}`執行結果：  
腳踏車-AEADDDEE9931  
機車-FDEAEDFJK3394  
火車-FJDKE3AK34940  
超機車-FFJJEEE99300  

**搜尋取代**  
Linux：`sed –i ‘s/尋找目標字串/修改後的目標字串/g’ 檔案名稱`  
macOS：`sed –i '' ‘s/尋找目標字串/修改後的目標字串/g’ 檔案名稱` 

EX:
把檔案today20中的Doraemon改成洨叮噹  
`ed -i '' 's/Doraemon/洨叮噹/g' today20` 


