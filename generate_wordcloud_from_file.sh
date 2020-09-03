#!/usr/bin/bash

counter = 1

for line in $(cat my_webpages.txt)
do
((counter++))
wget -O ~/TRGN510/assignments/trgn_assignment2/current_pages/file$counter.html $line
echo "file$counter.html"
done

./html2text.py ~/TRGN510/assignments/trgn_assignment2/current_pages/file1.html > my_current.txt
./html2text.py ~/TRGN510/assignments/trgn_assignment2/current_pages/file2.html >> my_current.txt

wordcloud_cli --text my_current.txt --imagefile ~/public_html/myimage.png
echo "Successfully run for $USER";

