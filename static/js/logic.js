// We create the tile layer that will be the background of our map.
// use the Mapbox Styles API
let streets = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data © <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 15,
    accessToken: mapBox_API
});

// To add another map:
// We create the dark view tile layer that will be an option for our map.
let satelliteStreets = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/satellite-streets-v11/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data © <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 15,
    accessToken: mapBox_API
});

// Next, add both map variables to a new variable called baseMaps, will be use as base layer
// Create a base layer that holds both maps.
let baseMaps = {
  "Streets": streets,
  "Satellite Streets": satelliteStreets
};

// Create the map object to the center of Toronto, zoom level of 11 and default layer.
let map = L.map('mapid', {
  center: [37.757815, -122.5076406],
  zoom: 11,
  //layers: [satelliteStreets]
  layers: [streets]
})

// Pass our map layers into our layers control and add the layers control to the map.
L.control.layers(baseMaps).addTo(map);

// Accessing the Toronto neighborhoods GeoJSON URL.
let sfHoods = "https://raw.githubusercontent.com/rustiri/Map_SF/main/SanFranciscoNeighborhoods.json";

// Create a style for the lines.
let myStyle = {
  color: "#0000FF",
  weight: 1,
  fillColor: "#ffffa1"
}

// Grabbing our GeoJSON data.
d3.json(sfHoods).then(function(data) {
  console.log(data);
  // Creating a GeoJSON layer with the retrieved data.
  L.geoJson(data, {
    style: myStyle,
    onEachFeature: function(feature, layer) {
      console.log(layer);
      layer.bindPopup("<h3>Neighborhood: " + feature.properties.neighborhood + "</h3>");
    }
  }).addTo(map);
});