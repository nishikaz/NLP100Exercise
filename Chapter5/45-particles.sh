#!/bin/bash

export LANG=ja_JP.UTF-8

# 参考：https://qiita.com/YutaSaito1991/items/c7c6bacb916f41ef1471
declare -A patterns

# 参考：https://qiita.com/hasegit/items/5be056d67347e1553f08
while read line
do
  set ${line}
  
  # 動詞と助詞群に分ける
  verb=${1}
  particles=${*:2}
  
  # 配列に格納
  # 参考：https://qiita.com/ymdymd/items/0ff295b78ca744b69a0e
  eval ARRAY=("$(sed -e "s/'/'\\\\''/g" -e "s/\t/'\t'/g" -e "s/^/'/" -e "s/$/'/" <<< "$particles")")

  # 参考：https://reiki4040.hatenablog.com/entry/20110208/1297171057
  for item in ${ARRAY[@]}; do
    key="${verb}-${item}"

    # TOBE: 配列に$keyのキーを持つ要素があれば+=1
    if [ -n "${patterns[$key]}" ]; then
      echo "exist"
    # TOBE: なければ新しくリストを作る
    else
      patterns[$key]=1
    fi

  done

done < 45-particles.tsv
