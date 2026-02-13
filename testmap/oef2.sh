FLAG=$1
if [ $FLAG == "-l" ]; then
   ls -l
elif [ $FLAG == "-a" ]; then
   ls -a
elif [ $FLAG == "-la" ]; then
  ls -la
fi
