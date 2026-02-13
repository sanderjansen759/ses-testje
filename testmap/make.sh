#!/bin/bash
OPDRACHT=$1
if [ $OPDRACHT == "start" ]; then
   echo "wat is de naam van je document? "
   read NAAM
   NAAM=$NAAM
   mkdir ./$NAAM
   mkdir ./$NAAM/src
   mkdir ./$NAAM/build
   ls
   ls ./$NAAM 
   echo $NAAM
   echo "NAAM=\"$NAAM\"" >> ~/.bashrc
   source ~/.bashrc
fi

if [ $OPDRACHT == "build" ]; then
   cp ./$NAAM/src/* ./$NAAM/build
elif [ $OPDRACHT == "clean" ]; then
   rm ./$NAAM/build/*
elif [ $OPDRACHT == "run" ]; then
   cd ./$NAAM/build
   ls -l |grep .txt
   cd ../../
fi
