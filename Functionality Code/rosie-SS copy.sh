#!/bin/bash
echo "case insensitive"
out=$(rosie grep -o data 'ci:"wed"' SStesting.txt)
echo $out
if [ -z "$out" ]; then
echo "FAILED!"
fi

out=$(rosie grep -o data 'ci:"jun"' SStesting.txt)
echo $out
if [ -z "$out" ]; then
echo "FAILED!"
fi

out=$(rosie grep -o data 'ci:"wed" "jun"' SStesting.txt)
echo $out
if [ -z "$out" ]; then
echo "FAILED!"
fi

out=$(rosie grep -o data 'ci:"jun" "wed"' SStesting.txt)
echo $out
if [ -n "$out" ]; then
echo "FAILED!"
fi

echo "\ndottall1"
out=$(rosie match '.*' -o data  SStesting.txt)
echo $out
if [ -z "$out" ]; then
echo "FAILED!"
fi


echo "dottall_12"
out=$(rosie --rpl 'import builtin/prelude as base; any = base..; . = {!"\n" any}' match '.*' --wholefile -o data SStesting.txt)
# rosie match '{!"\n" any}' -o color /Users/someshherath/Desktop/RPL\ stuff/flags/testingShellScript.txt 
echo $out
if [ -z "$out" ]; then
echo "FAILED!"
fi
