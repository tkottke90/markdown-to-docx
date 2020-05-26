#! /bin/sh -l

echo $1

echo "Converting README.md to DOCX"
pandoc README.md -o README.docx

# Get Files
ls -halt