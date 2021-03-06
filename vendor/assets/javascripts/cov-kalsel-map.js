
var map, mapContainer, labelTip;

// '<b>'+label.html()+'</b></br>'+
// '<span class="icon-map-label bg-green"> </span> <b>ODP : </b>'+regLabels[code].odp+'</br>'+
// '<span class="icon-map-label bg-yellow"> </span> <b>PDP : </b>'+regLabels[code].pdp+'</br>'+
// '<span class="icon-map-label bg-red"> </span> <b>Positif : </b>'+regLabels[code].tot+'</br>'+
// '<span class="icon-map-label bg-primary"> </span> <b>Dirawat : </b>'+regLabels[code].pos+'</br>'+
// '<span class="icon-map-label bg-orange"> </span> <b>Meninggal : </b>'+regLabels[code].die+'</br>'+
// '<span class="icon-map-label bg-blue"> </span> <b>Sembuh : </b>'+regLabels[code].rec

labelTip = function(sus, pos, die, rec, tot, label){
  return(
    '<div class="card" style="border-radius:0; background: #292929;">'+
      '<div class="card-header bg-transparent px-2 pt-2 pb-0 border-0 mb-0">'+
        '<h5 class="text-white mb-0">'+label+'</h5>'+
      '</div>'+
      '<div class="card-body p-2">'+
        '<span class="icon-map-label bg-red"> </span> <b>Jumlah Positif : </b>'+tot+'</br><small>(Dirawat, Sembuh & Meninggal)</small>'+
        '</br>'+
        '<span class="icon-map-label bg-primary"> </span> <b>Dirawat : </b>'+pos+'</br>'+
        '<span class="icon-map-label bg-orange"> </span> <b>Meninggal : </b>'+die+'</br>'+
        '<span class="icon-map-label bg-green"> </span> <b>Sembuh : </b>'+rec+'</br>'+
        '</br>'+
        '<span class="icon-map-label bg-blue"> </span> <b>Suspek : </b>'+sus+'</br>'+
      '</div>'+
    '</div>'
  )
}

mapContainer = $('#kalsel_mp_cont');
if (mapContainer.length){
  $.getJSON('/cov_map', function(data){
    var regLabels = {};
    var regColors = {};
    $.each(data, function(i, item){
      regLabels[item.code] = {
        "pos": item.cov_positive_count,
        "sus": item.cov_suspect_count,
        "die": item.cov_died_count,
        "rec": item.cov_recovered_count,
        "tot": item.cov_positive_count + item.cov_died_count + item.cov_recovered_count
      };
      regColors[item.code] = function(code){
        var color;
        switch(code){
          case "TBL":
            color = "Tabalong";
            break;
          case "BLG":
            color = "Balangan";
            break;
          case "HSU":
            color = "HuluSungaiUtara";
            break;
          case "HST":
            color = "HuluSungaiTengah";
            break;
          case "HSS":
            color = "HuluSungaiSelatan";
            break;
          case "TPN":
            color = "Tapin";
            break;
          case "BTL":
            color = "BaritoKuala";
            break;
          case "BJM":
            color = "Banjarmasin";
            break;
          case "BJR":
            color = "Banjar";
            break;
          case "BJB":
            color = "Banjarbaru";
            break;
          case "TLA":
            color = "TanahLaut";
            break;
          case "TBU":
            color = "TanahBumbu";
            break;
          case "KTB":
            color = "Kotabaru";
            break;
        }
        return color
      }(item.code);
    });
    // console.log(regColors);

    // Intializing Vector Map
    map = new jvm.Map({
      map: 'kalsel_mp',
      container: $('#kalsel_mp_cont'),
      regionSelectAble: false,
      zoomOnScroll: !1,
      normalizeFunction: "polynomial",
      // scaleColors: ["#f00", "#0071A4"],
      backgroundColor: 'transparent',
      series: {
        regions: [{
          attribute: 'fill',
          scale: {
           Tabalong: '#ED925A',
           Balangan: '#19B3C1',
           HuluSungaiUtara: '#13838D',
           HuluSungaiTengah: '#3A6B3E',
           HuluSungaiSelatan: '#5AA861',
           Tapin: '#F4F1BB',
           BaritoKuala: '#D4A8EA',
           Banjarmasin: '#ED5A5A',
           Banjar: '#96C79A',
           Banjarbaru: '#71EBF2',
           TanahLaut: '#C67EEA',
           TanahBumbu: '#F18787',
           Kotabaru: '#F5C3A5'
          },
          normalizeFunction: 'polynomial',
          values: regColors,//markers_coor.reduce(function(p, c, i){ p[i] = c.status; return p }, {}),
          legend : false
          // legend: {
          //   cssClass: 'tes',
          //   vertical: true,
          //   title: 'Keterangan'
          // }
        }]
      },
      regionStyle: {
        // initial: {
        //   fill: '#212529',
        //   "fill-opacity": .8,
        //   stroke: "none",
        //   "stroke-width": 0,
        //   "stroke-opacity": 1
        // },
        hover: {
          fill: '#292929',
          "fill-opacity": .8,
          cursor: "pointer"
        }
      },
      onRegionTipShow	: function(event, label, code){
        label.html(
          labelTip(
            regLabels[code].sus,
            regLabels[code].pos,
            regLabels[code].die,
            regLabels[code].rec,
            regLabels[code].tot,
            label.html()
          )
        )
      },
    });


    $('#kalsel_mp_cont').find(".jvectormap-zoomin").addClass("ml-2");
    $('#kalsel_mp_cont').find(".jvectormap-zoomout").addClass("ml-2 mt-2");
  });
}

//
// var map, positif, markers_coor, data;
// var regionLabels= [];
// var regionColors = {};
// data_cov = function(label, color){
//   $.getJSON('/cov_map', function(data){
//
//   });
//   // return arrJson;
// }(regionLabels, regionColors);
// positif = {
//   "HST": {
//     "ODP": 89,
//     "PDP": 0,
//     "POS": 0,
//   },
//   "BJM": {
//     "ODP": 54,
//     "PDP": 4,
//     "POS": 1,
//   },
//   "BTL": {
//     "ODP": 60,
//     "PDP": 0,
//     "POS": 0,
//   },
//   "TBL": {
//     "ODP": 141,
//     "PDP": 1,
//     "POS": 0,
//   },
//   "TLA": {
//     "ODP": 6,
//     "PDP": 0,
//     "POS": 0,
//   },
//   "KTB": {
//     "ODP": 54,
//     "PDP": 0,
//     "POS": 0,
//   },
//   "HSS": {
//     "ODP": 70,
//     "PDP": 0,
//     "POS": 0,
//   },
//   "HSU": {
//     "ODP": 10,
//     "PDP": 0,
//     "POS": 0,
//   },
//   "BLG": {
//     "ODP": 29,
//     "PDP": 0,
//     "POS": 0,
//   },
//   "BJR": {
//     "ODP": 72,
//     "PDP": 2,
//     "POS": 0,
//   },
//   "BJB": {
//     "ODP": 97,
//     "PDP": 0,
//     "POS": 0,
//   },
//   "TPN": {
//     "ODP": 4,
//     "PDP": 0,
//     "POS": 0,
//   },
//   "TBU": {
//     "ODP": 30,
//     "PDP": 0,
//     "POS": 0,
//   },
// }
// markers_coor = [
//   {
//     latLng: [-2.61, 115.5],
//     name: 'HST',
//     status: 'odp'
//   },
//   {
//     latLng: [-3.4, 115.6],
//     name: 'TBU',
//     status: 'odp'
//   },
//   {
//     latLng: [-3.6, 116.16],
//     name: 'KTB',
//     status: 'odp'
//   },
//   {
//     latLng: [-3.86, 114.83],
//     name: 'TLA',
//     status: 'odp'
//   },
//   {
//     latLng: [-3.45, 114.77],
//     name: 'BJB',
//     status: 'odp'
//   },
//   {
//     latLng: [-3.35, 115.08],
//     name: 'BJR',
//     status: 'pdp'
//   },
//   {
//     latLng: [-3, 114.6],
//     name: 'BTL',
//     status: 'odp'
//   },
//   {
//     latLng: [-2.94, 115.02],
//     name: 'TPN',
//     status: 'odp'
//   },
//   {
//     latLng: [-2.7, 115.13],
//     name: 'HSS',
//     status: 'odp'
//   },
//   {
//     latLng: [-2.42, 115.146],
//     name: 'HSU',
//     status: 'odp'
//   },
//   {
//     latLng: [-2.33, 115.62],
//     name: 'BLG',
//     status: 'odp'
//   },
//   {
//     latLng: [-1.9, 115.5],
//     name: 'TBL',
//     status: 'pdp'
//   },
//   {
//     latLng: [-3.33, 114.58],
//     name: 'BJM',
//     status: 'positif'
//   },
// ]
// map = new jvm.Map({
//   map: 'kalsel_mp',
//   container: $('#kalsel_mp_cont'),
//   regionSelectAble: false,
//   zoomOnScroll: !1,
//   normalizeFunction: "polynomial",
//   scaleColors: ["#f00", "#0071A4"],
//   backgroundColor: 'transparent',
//   markerStyle: {
//     initial: {
//       r: 7,
//     },
//   },
//   markerLabelStyle:{
//     initial: {
//       'font-size': '0',
//     }
//   },
//   markers: markers_coor,
//   series: {
//     region: [{
//       attribute: 'fill',
//       scale: {
//         positif: '#f5365c',
//         pdp: '#ffd600',
//         odp: '#2dce89'
//       },
//       normalizeFunction: 'polynomial',
//       values: regionColors,//markers_coor.reduce(function(p, c, i){ p[i] = c.status; return p }, {}),
//       legend: {
//         cssClass: 'tes',
//         vertical: true,
//         title: 'Keterangan'
//       }
//     }]
//   },
//   regionStyle: {
//       initial: {
//           fill: '#212529',
//           "fill-opacity": .8,
//           stroke: "none",
//           "stroke-width": 0,
//           "stroke-opacity": 1
//       },
//       hover: {
//           fill: '#8898aa',
//           "fill-opacity": .8,
//           cursor: "pointer"
//       },
//       selected: {
//           fill: "yellow"
//       },
//       selectedHover: {}
//   },
//   onRegionTipShow	: function(event, label, code){
//     label.html(
//     '<b>'+label.html()+'</b></br>'+
//     '<b>ODP : </b>'+positif[code].ODP+'</br>'+
//     '<b>PDP : </b>'+positif[code].PDP+'</br>'+
//     '<b>Positif : </b>'+positif[code].POS
//   )},
//   // onMarkerTipShow: function(e, label, code){
//   //   console.log(markers_coor[code].name);
//   // }
// });





// map.container.click(function(e){
//     	 var latLng = map.pointToLatLng(
//               e.pageX - map.container.offset().left,
//               e.pageY - map.container.offset().top
//           );
//        console.log(latLng);
//     });
