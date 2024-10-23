# Creates a CTAN zip file
# Jander Moreira (moreira.jander@gmail.com)
# 2024

mkdir -p algxpar
files="
  license
  README.md
  algxpar.sty
  algxpar-*kw.tex
  algxpar-doc.tex
  out/algxpar-doc.pdf
  ../versionchanges/versionchanges.sty
"
cp $files algxpar
mv algxpar/versionchanges.sty algxpar/algxpar-versionchanges.sty
zip -r algxpar.zip ./algxpar
rm -r algxpar