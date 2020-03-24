var DatatableBasic = function() {
  var e = $("#datatable-kota");
  e.length && e.on("init.dt", function() {
    $("div.dataTables_length select").removeClass("custom-select custom-select-sm")
  }).DataTable({
    keys: !0,
    select: {
        style: "multi"
    },
    language: {
        paginate: {
            previous: "<i class='fas fa-angle-left'>",
            next: "<i class='fas fa-angle-right'>"
        }
    }
  })
}();



// $('#carouselExampleControls').on('slide.bs.carousel', function (e) {
//     /*
//         CC 2.0 License Iatek LLC 2018 - Attribution required
//     */
//     var $e = $(e.relatedTarget);
//     var idx = $e.index();
//     var itemsPerSlide = 5;
//     var totalItems = $('.carousel-item').length;
//
//     if (idx >= totalItems-(itemsPerSlide-1)) {
//         var it = itemsPerSlide - (totalItems - idx);
//         for (var i=0; i<it; i++) {
//             // append slides to end
//             if (e.direction=="left") {
//                 $('.carousel-item').eq(i).appendTo('.carousel-inner');
//             }
//             else {
//                 $('.carousel-item').eq(0).appendTo('.carousel-inner');
//             }
//         }
//     }
// });

$('.main-carousel').flickity({
  // options
  freeScroll: true,
  wrapAround: true,
  fullscreen: true,
  adaptiveHeight: true,
});



var map, positif, markers_coor;
positif = {
  "HST": {
    "ODP": 89,
    "PDP": 0,
    "POS": 0,
  },
  "BJM": {
    "ODP": 54,
    "PDP": 4,
    "POS": 1,
  },
  "BTL": {
    "ODP": 60,
    "PDP": 0,
    "POS": 0,
  },
  "TBL": {
    "ODP": 141,
    "PDP": 1,
    "POS": 0,
  },
  "TLA": {
    "ODP": 6,
    "PDP": 0,
    "POS": 0,
  },
  "KTB": {
    "ODP": 54,
    "PDP": 0,
    "POS": 0,
  },
  "HSS": {
    "ODP": 70,
    "PDP": 0,
    "POS": 0,
  },
  "HSU": {
    "ODP": 10,
    "PDP": 0,
    "POS": 0,
  },
  "BLG": {
    "ODP": 29,
    "PDP": 0,
    "POS": 0,
  },
  "BJR": {
    "ODP": 72,
    "PDP": 2,
    "POS": 0,
  },
  "BJB": {
    "ODP": 97,
    "PDP": 0,
    "POS": 0,
  },
  "TPN": {
    "ODP": 4,
    "PDP": 0,
    "POS": 0,
  },
  "TBU": {
    "ODP": 30,
    "PDP": 0,
    "POS": 0,
  },
}
markers_coor = [
  {
    latLng: [-2.61, 115.5],
    name: 'HST',
    status: 'odp'
  },
  {
    latLng: [-3.4, 115.6],
    name: 'TBU',
    status: 'odp'
  },
  {
    latLng: [-3.6, 116.16],
    name: 'KTB',
    status: 'odp'
  },
  {
    latLng: [-3.86, 114.83],
    name: 'TLA',
    status: 'odp'
  },
  {
    latLng: [-3.45, 114.77],
    name: 'BJB',
    status: 'odp'
  },
  {
    latLng: [-3.35, 115.08],
    name: 'BJR',
    status: 'pdp'
  },
  {
    latLng: [-3, 114.6],
    name: 'BTL',
    status: 'odp'
  },
  {
    latLng: [-2.94, 115.02],
    name: 'TPN',
    status: 'odp'
  },
  {
    latLng: [-2.7, 115.13],
    name: 'HSS',
    status: 'odp'
  },
  {
    latLng: [-2.42, 115.146],
    name: 'HSU',
    status: 'odp'
  },
  {
    latLng: [-2.33, 115.62],
    name: 'BLG',
    status: 'odp'
  },
  {
    latLng: [-1.9, 115.5],
    name: 'TBL',
    status: 'pdp'
  },
  {
    latLng: [-3.33, 114.58],
    name: 'BJM',
    status: 'positif'
  },
]
map = new jvm.Map({
  map: 'kalsel_mp',
  container: $('#kalsel_mp_cont'),
  regionSelectAble: false,
  zoomOnScroll: !1,
  normalizeFunction: "polynomial",
  scaleColors: ["#f00", "#0071A4"],
  backgroundColor: 'transparent',
  markerStyle: {
    initial: {
      r: 7,
    },
  },
  markerLabelStyle:{
    initial: {
      'font-size': '0',
    }
  },
  markers: markers_coor,
  series: {
    markers: [{
      attribute: 'fill',
      scale: {
        positif: '#f5365c',
        pdp: '#00bcd4',
        odp: '#2dce89'
      },
      normalizeFunction: 'polynomial',
      values: markers_coor.reduce(function(p, c, i){ p[i] = c.status; return p }, {}),
      legend: {
        cssClass: 'tes',
        vertical: true,
        title: 'Keterangan'
      }
    }]
  },
  regionStyle: {
      initial: {
          fill: '#212529',
          "fill-opacity": .8,
          stroke: "none",
          "stroke-width": 0,
          "stroke-opacity": 1
      },
      hover: {
          fill: '#8898aa',
          "fill-opacity": .8,
          cursor: "pointer"
      },
      selected: {
          fill: "yellow"
      },
      selectedHover: {}
  },
  onRegionTipShow	: function(event, label, code){
    label.html(
    '<b>'+label.html()+'</b></br>'+
    '<b>ODP : </b>'+positif[code].ODP+'</br>'+
    '<b>PDP : </b>'+positif[code].PDP+'</br>'+
    '<b>Positif : </b>'+positif[code].POS
  )},
  // onMarkerTipShow: function(e, label, code){
  //   console.log(markers_coor[code].name);
  // }
});




// $('#kalsel_mp_cont').find(".jvectormap-zoomin").addClass("btn btn-sm btn-icon btn-info ml-2")
// $('#kalsel_mp_cont').find(".jvectormap-zoomout").addClass("btn btn-sm btn-info ml-2 mt-2")

// map.container.click(function(e){
//     	 var latLng = map.pointToLatLng(
//               e.pageX - map.container.offset().left,
//               e.pageY - map.container.offset().top
//           );
//        console.log(latLng);
//     });
