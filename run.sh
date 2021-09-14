#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
PURPLE="\033[35m"
END="\033[m"

function printlang() {
  echo -e "${GREEN}$1.${PURPLE} The ${RED}$2${PURPLE} Programming language ${END}\n";
  echo -e "${YELLOW}Source code: ${END}\n";
  cat $3
  echo -e "\n"
  echo -e "${YELLOW}Running Result: ${END}\n";
  $4
  echo -e "\n"
  sleep 1
}

echo -e "\n"

printlang "1" "C" "helloworld.c" "./helloworld.co"
printlang "2" "C++" "helloworld.cpp" "./helloworld.cppo"
printlang "3" "Java" "helloworld.java" "java HelloWorld"
printlang "4" "Python" "helloworld.py" "python helloworld.py"
printlang "5" "JavaScript" "helloworld.js" "node helloworld.js"
printlang "6" "Perl" "helloworld.pl" "perl helloworld.pl"
printlang "7" "PHP" "helloworld.php" "php -e helloworld.php"
printlang "8" "Golang" "helloworld.go" "go run helloworld.go"
printlang "9" "Rust" "helloworld.rs" "./helloworld.rso"
printlang "10" "C#" "helloworld/Program.cs" "dotnet run --project helloworld"
printlang "11" "Assembly" "helloworld.asm" "./helloworld.asmo"
printlang "12" "groovy" "helloworld.groovy" "groovy helloworld.groovy"
printlang "13" "BASIC" "helloworld.bas" "bwbasic helloworld.bas"
