# Missing Swedish roadnames in Finland

Data for missing Swedish roadnames for two-language officially 2 language cities and municipalities in Finland.

Currently implemented:
* [Turku](Turku.geojson)
* [Helsinki](Helsinki.geojson)
* [Espoo](Espoo.geojson)

## Guide for generating geojson files
1. Open [Overpass Turbo](https://overpass-turbo.eu/) and paste this into the box on the site:
```
[out:json][timeout:6000];

{{geocodeArea:CITYNAME}}->.searchArea;

(
  way["highway"]["name"]["name:sv"!~".*"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
```
Shortcuts: [Turku](http://overpass-turbo.eu/s/q0M)<!--, [Helsinki](), [Espoo]()-->
2. Press "Run".
3. Press "Export" and "as geoJSON"