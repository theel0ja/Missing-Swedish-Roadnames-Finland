Query (For [Overpass Turbo](https://overpass-turbo.eu/):
```
[out:json][timeout:6000];
// fetch area “Turku” to search in
{{geocodeArea:Turku}}->.searchArea;
// gather results
(
  way["highway"]["name"]["name:sv"!~".*"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
```
