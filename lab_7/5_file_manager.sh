dir_name="test_directory"

ls
mkdir "$dir_name"
echo "Directory '$dir_name' created"
ls

cd "$dir_name" || exit

touch file1.txt file2.txt file3.txt
echo "Files created"
ls

rm file1.txt file2.txt file3.txt
echo "Files removed"
ls

cd ..

rmdir "$dir_name"
echo "Directory '$dir_name' removed"
ls
