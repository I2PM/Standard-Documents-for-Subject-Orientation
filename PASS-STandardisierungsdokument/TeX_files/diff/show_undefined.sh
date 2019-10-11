#!/bin/sh

FILE_TEX="../appendixC.tex"
grep "^rule "     $FILE_TEX | cut -d' ' -f2 | cut -d'(' -f1 | sort > tex-defined_rules.txt
grep "^function " $FILE_TEX | cut -d' ' -f2 | cut -d'(' -f1 | sort > tex-defined_functions.txt
grep "^derived "  $FILE_TEX | cut -d' ' -f2 | cut -d'(' -f1 | sort > tex-defined_derived_functions.txt

FILE_ASM="/mnt/c/Users/wolskia/privat/ba-andre/asm/src/main/resources/semantic.casm"
grep "^rule "     $FILE_ASM | cut -d' ' -f2 | cut -d'(' -f1 | sort > asm-defined_rules.txt
grep "^function " $FILE_ASM | cut -d' ' -f2 | cut -d'(' -f1 | sort > asm-defined_functions.txt
grep "^derived "  $FILE_ASM | cut -d' ' -f2 | cut -d'(' -f1 | sort > asm-defined_derived_functions.txt

grep -v -f tex-defined_rules.txt             -f tex-ignored_rules.txt             asm-defined_rules.txt             > tex-undefined_rules.txt
grep -v -f tex-defined_functions.txt         -f tex-ignored_functions.txt         asm-defined_functions.txt         > tex-undefined_functions.txt
grep -v -f tex-defined_derived_functions.txt -f tex-ignored_derived_functions.txt asm-defined_derived_functions.txt > tex-undefined_derived_functions.txt

echo ""
echo "RULES:"
echo ""
grep --color -w -f tex-undefined_rules.txt     $FILE_TEX

echo ""
echo "FUNCTIONS:"
echo ""
grep --color -w -f tex-undefined_functions.txt $FILE_TEX

echo ""
echo "DERIVED FUNCTIONS:"
echo ""
grep --color -w -f tex-undefined_derived_functions.txt   $FILE_TEX
