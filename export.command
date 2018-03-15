# ----- Modify this part -----
SCALE="1x"
FORMAT="png"
OUTPUT_FOLDER="_exports/"
# ----------------------------

echo
echo "SETTINGS"
echo "scale:  $SCALE"
echo "format: $FORMAT"
echo

DIR="$(dirname "$0")"

OUTPUT_FOLDER="$DIR/$OUTPUT_FOLDER/$FORMAT$SCALE"

for FILE in "$DIR"/*.sketch; do
  echo "exporting: \033[1;31m${FILE##*/}\033[0m"
  /Applications/Sketch.app/Contents/Resources/sketchtool/bin/sketchtool export artboards "$FILE" --scales="$SCALE"  --formats="$FORMAT" --output="$OUTPUT_FOLDER" &>/dev/null
done

echo "\nall done 🍻"
