#! /bin/sh -l

# Get Files
ls -halt

echo "Converting README.md to DOCX"
pandoc README.md -o README.docx