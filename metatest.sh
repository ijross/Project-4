#!/bin/sh
n=1
echo Writing and reading metafile
touch testfile
metatag testfile "this is a test from our testing script"
metacat testfile > tmp
cat tmp

echo Changing file contents
echo Writing new contents to test file
echo "Writing new contents to test file" > testfile
metacat testfile > tmp
echo Metadata is still:
cat tmp

echo Changing metadata contents
metatag testfile "new metadata for test file"
echo File contents are still:
cat testfile

echo Copying file to ./tmpdir/
mkdir tmpdir
cp testfile ./tmpdir/
echo Metadata from file in ./tmpdir/ is:
metacat ./tmpdir/testfile

echo Changing metadata in ./tmpdir/ to "new contents"
metatag "new contents" ./tmpdir/testfile
echo New file metadata:
metacat testfile > tmp
cat tmp

echo Metadata from original file is:
metacat testfile > tmp
cat tmp

echo Current free space
df

echo Creating 1000 new files and adding metadata
while [ $n -le 1000 ]
do
	echo " " > "File$n"
	metatag File$n "loop tag"
	n=$(( n+1 ))
done

echo Removing newly created test files
rm File*
echo Free space after creating and deleting files
df

echo Script finished

