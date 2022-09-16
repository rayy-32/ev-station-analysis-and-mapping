//const sqlite3 = require('sqlite3').verbose();

//var db = new sqlite3.Database('Resources/evstations.sqlite')
//db.all('SELECT lat, lng FROM evstations', function (err, rows) {
    //rows.forEach(function (row) {
        //console.log(row.lat, row.lng);
    //})
//});

// map div
var map = L.map('map').setView([51.505, -0.09], 13);

// tile layer, OpenStreetMap
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

// test marker
L.marker([51.5, -0.09]).addTo(map).bindPopup('').openPopup();

// add markers to page
//function onEachFeature(feature, layer){
    
//}

// legend
//var legend = L.control({position: 'bottomleft'})

//legend.onAdd = function (map) {
    //var div = L.DomUtil.create("div", "info legend"),
        //grades = [],
        //colors = [];
    //for (var i = 0; i < grades.length; i++){
        //div.innerHTML +=
            //'<i style="background:' + colors[i] + '"></i> ' + grades[i] + '<br>';
    //};
    //return div
//};

//db.close()
//