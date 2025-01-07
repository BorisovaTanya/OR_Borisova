src_dir="$1"
dest_dir="$2"

echo "Contents of the source directory ($src_dir):"
ls "$src_dir"

echo "Contents of the destination directory ($dest_dir) before coping:"
ls "$dest_dir"

for file in "$src_dir"/*; do
  if [ -f "$file" ]; then
    cp "$file" "$dest_dir/$(basename "$file" .${file##*.})_$(date +%Y%m%d).${file##*.}"
  fi
done

echo "Contents of the destination directory ($dest_dir) after coping:"
ls "$dest_dir"

echo "Sucess"
