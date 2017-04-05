set OUTFILEPATH=%1
set OUTFILENAME=%2
chex -fi %OUTFILEPATH%%OUTFILENAME%.sm8 > .\output\%OUTFILENAME%.hex
cd .\output
hex2bin %OUTFILENAME%.hex
MergeBin stm8s207-iap.bin %OUTFILENAME%.bin Merge.bin 1 0
bin2hex Merge.bin stm8s207-it6802.hex 8000