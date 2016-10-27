/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -serial "$serial" \
  -username "$username" \
  -password "$password" \
  -logFile $(pwd)/unity.log \
  -returnlicense \
  -quit

echo 'Logs from build'
cat $(pwd)/unity.log