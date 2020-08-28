#!/bin/bash

# 第2章: UNIXコマンド

# popular-names.txtは，アメリカで生まれた赤ちゃんの「名前」「性別」「人数」「年」をタブ区切り形式で格納したファイルである．
# 以下の処理を行うプログラムを作成し，popular-names.txtを入力ファイルとして実行せよ．
# さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．
filename='popular-names.txt'

# 10. 行数のカウント
# 行数をカウントせよ．確認にはwcコマンドを用いよ．
cat $filename | wc -l

# 11. タブをスペースに置換
# タブ1文字につきスペース1文字に置換せよ．
# 確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．
sed -E s/$'\t'/' '/g $filename > replaced-popular-names.txt

# 12. 1列目をcol1.txtに，2列目をcol2.txtに保存
# 各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．
# 確認にはcutコマンドを用いよ．
cut -f 1 $filename > col1.txt
cut -f 2 $filename > col2.txt

# 13. col1.txtとcol2.txtをマージ
# 12で作ったcol1.txtとcol2.txtを結合し，元のファイルの1列目と2列目をタブ区切りで並べたテキストファイルを作成せよ．
# 確認にはpasteコマンドを用いよ．
paste col[1-2].txt > col1-2.txt

# 14. 先頭からN行を出力
# 自然数Nをコマンドライン引数などの手段で受け取り，入力のうち先頭のN行だけを表示せよ．
# 確認にはheadコマンドを用いよ
read -p '表示する先頭からの行数を入力：' Nhead
head -n $Nhead $filename

# 15. 末尾のN行を出力
# 自然数Nをコマンドライン引数などの手段で受け取り，入力のうち末尾のN行だけを表示せよ．
# 確認にはtailコマンドを用いよ．
read -p '表示する末尾からの行数を入力：' Ntail
tail -n $Ntail $filename

# 16. ファイルをN分割する
# 自然数Nをコマンドライン引数などの手段で受け取り，入力のファイルを行単位でN分割せよ．
# 同様の処理をsplitコマンドで実現せよ．
read -p '分割数を入力：' Nsplit
nAllLines=`cat $filename | wc -l`
nLines=$(($nAllLines / $Nsplit))
if [ $(($nAllLines % $Nsplit)) -gt 0 ]; then
    nLines=$(($nLines+1))
fi
split -l $nLines $filename


