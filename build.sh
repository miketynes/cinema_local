#!/bin/bash

rm *js *css *html *.curl.log >/dev/null 2>&1
rm -rf src cinema 
#data
mkdir src 
mkdir cinema
mkdir cinema/explorer
mkdir cinema/explorer/1.9

sources=( 
	"https://raw.githubusercontent.com/miketynes/cinema_explorer/local/cinema_explorer.html"
	"https://raw.githubusercontent.com/miketynes/cinema_components/test/build/CinemaComponents.v2.7.1.js" 
	"https://raw.githubusercontent.com/miketynes/cinema_components/test/build/CinemaComponents.v2.7.1.min.css"
	"https://raw.githubusercontent.com/miketynes/cinema_explorer/test/cinema/explorer/1.9/css/viewer.css" 
	"https://raw.githubusercontent.com/miketynes/cinema_explorer/test/cinema/explorer/1.9/js/main.js"
	"https://d3js.org/d3.v5.min.js"
	"https://unpkg.com/vtk.js"
	"https://raw.githubusercontent.com/miketynes/cinema_explorer/local/cinema/explorer/1.9/databases.json")
names=( 
	"cinema_explorer.html"
	"./src/components.js" 
	"./src/components.css" 
	"./src/viewer.css"
	"./src/main.js"
	"./src/d3.js"
	"./src/vtk.js"
	"cinema/explorer/1.9/databases.json")

echo downloading sources...
for i in "${!sources[@]}"; do
	src="${sources[i]}"
	file="${names[i]}"

	echo $src into $file
    curl -L $src --output $file
    echo
    # >> .curl.log 2>&1
done
echo done

echo donloading demo data...
curl https://raw.githubusercontent.com/miketynes/cinema_explorer/local/data.zip --output data.zip
unzip data.zip > /dev/null 2>&1 
echo done