echo "File before change"
cat "$3"

sed -i '' "s/$1/$2/g" "$3"

echo "File after change"
cat "$3"
