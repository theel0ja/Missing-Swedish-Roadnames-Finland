URL="https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A6000%5D%3B%0A%0Aarea%283600399906%29-%3E.searchArea%3B%0A%0A%28%0A%20%20way%5B%22highway%22%5D%5B%22name%22%5D%5B%22name%3Asv%22%21~%22.*%22%5D%28area.searchArea%29%3B%0A%29%3B%0A%2F%2F%20print%20results%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

curl ${URL} -o Turku.overpass.json

./node_modules/.bin/osmtogeojson Turku.overpass.json > Turku.geojson

git add Turku.geojson
git commit -m "Turku ($(date +%d.%m.%Y))"
