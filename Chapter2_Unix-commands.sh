# 第2章: UNIXコマンド

# popular-names.txtは，アメリカで生まれた赤ちゃんの「名前」「性別」「人数」「年」をタブ区切り形式で格納したファイルである．
# 以下の処理を行うプログラムを作成し，popular-names.txtを入力ファイルとして実行せよ．
# さらに，同様の処理をUNIXコマンドでも実行し，プログラムの実行結果を確認せよ．

# 10. 行数のカウント
# 行数をカウントせよ．確認にはwcコマンドを用いよ．
wc -l popular-names.txt  # 2780 popular-names.txt

# 11. タブをスペースに置換
# タブ1文字につきスペース1文字に置換せよ．
# 確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．
sed -E s/$'\t'/' '/g popular-names.txt | head -n 5

# 12. 1列目をcol1.txtに，2列目をcol2.txtに保存
# 各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．
# 確認にはcutコマンドを用いよ．
cut -f 1 popular-names.txt > col1.txt
cut -f 2 popular-names.txt > col2.txt
