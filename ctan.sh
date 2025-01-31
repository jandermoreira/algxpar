# Creates a CTAN zip file
# Jander Moreira (moreira.jander@gmail.com)
# 2025

packagename=algxpar
mkdir -p $packagename
files="
  license
  README.md
  DEPENDS.txt
  "$packagename".sty
  "$packagename"-doc.tex
  out/"$packagename"-doc.pdf
"
cp -v $files $packagename
[ -f docs.zip ] && rm $packagename.zip
zip -r $packagename.zip $packagename
rm -r ./$packagename