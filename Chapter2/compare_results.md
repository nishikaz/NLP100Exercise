# notebook と shell の結果比較
それぞれのタスクで作成されたテキストファイルを diff コマンドで差分がないか確認した結果。

```
kaz@Kaz-MBP Chapter2 % pwd
/Users/kaz/workspace/NLP_100_Exercise/Chapter2
kaz@Kaz-MBP Chapter2 %
kaz@Kaz-MBP Chapter2 %
kaz@Kaz-MBP Chapter2 % ls shell
Chapter2_Unix-commands.sh	xaa
col1-2.txt			xab
col1.txt			xac
col2.txt
kaz@Kaz-MBP Chapter2 %
kaz@Kaz-MBP Chapter2 % ls notebook
Chapter2_Unix-commands.ipynb	splited_0.txt
col1-2.txt			splited_1.txt
col1.txt			splited_2.txt
col2.txt
kaz@Kaz-MBP Chapter2 %
kaz@Kaz-MBP Chapter2 % diff notebook/col1.txt shell/col1.txt
kaz@Kaz-MBP Chapter2 %
kaz@Kaz-MBP Chapter2 % diff notebook/col2.txt shell/col2.txt
kaz@Kaz-MBP Chapter2 %
kaz@Kaz-MBP Chapter2 % diff notebook/col1-2.txt shell/col1-2.txt
kaz@Kaz-MBP Chapter2 %
kaz@Kaz-MBP Chapter2 % diff notebook/splited_0.txt shell/xaa
kaz@Kaz-MBP Chapter2 %
kaz@Kaz-MBP Chapter2 % diff notebook/splited_1.txt shell/xab
kaz@Kaz-MBP Chapter2 %
kaz@Kaz-MBP Chapter2 % diff notebook/splited_2.txt shell/xac
kaz@Kaz-MBP Chapter2 %
```