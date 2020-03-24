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
positif = {
  "HST": {
    "ODP": 58,
    "PDP": 0,
    "POS": 0,
  },
  "BJM": {
    "ODP": 44,
    "PDP": 2,
    "POS": 1,
  },
  "BTL": {
    "ODP": 60,
    "PDP": 0,
    "POS": 0,
  },
  "TBL": {
    "ODP": 36,
    "PDP": 0,
    "POS": 0,
  },
  "TLA": {
    "ODP": 6,
    "PDP": 0,
    "POS": 0,
  },
  "KTB": {
    "ODP": 31,
    "PDP": 0,
    "POS": 0,
  },
  "HSS": {
    "ODP": 51,
    "PDP": 0,
    "POS": 0,
  },
  "HSU": {
    "ODP": 4,
    "PDP": 0,
    "POS": 0,
  },
  "BLG": {
    "ODP": 16,
    "PDP": 0,
    "POS": 0,
  },
  "BJR": {
    "ODP": 5,
    "PDP": 0,
    "POS": 0,
  },
  "BJB": {
    "ODP": 72,
    "PDP": 0,
    "POS": 0,
  },
  "TPN": {
    "ODP": 2,
    "PDP": 0,
    "POS": 0,
  },
  "TBU": {
    "ODP": 30,
    "PDP": 0,
    "POS": 0,
  },
}
map = new jvm.Map({
      map: 'kalsel_mp',
      container: $('#kalsel_mp_cont'),
      regionSelectAble: false,
      zoomOnScroll: !1,
      normalizeFunction: "polynomial",
      scaleColors: ["#f00", "#0071A4"],
      backgroundColor: 'transparent',
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
      markers: [
        {
          latLng: [-2.61, 115.5],
          name: 'Hulu Sungai Tengah',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-3.4, 115.6],
          name: 'Tanah Bumbu',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-3.6, 116.16],
          name: 'Kotabaru',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-3.86, 114.83],
          name: 'Tanah Laut',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-3.45, 114.77],
          name: 'Banjarbaru',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-3.35, 115.08],
          name: 'Banjar',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-3, 114.6],
          name: 'Barito Kuala',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-2.94, 115.02],
          name: 'Tapin',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-2.7, 115.13],
          name: 'Hulu Sungai Selatan',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-2.42, 115.146],
          name: 'Hulu Sungai Utara',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-2.33, 115.62],
          name: 'Balangan',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-1.9, 115.5],
          name: 'Tabalong',
          style:{
            fill: '#2dce89'
          }
        },
        {
          latLng: [-3.33, 114.58],
          name: 'Banjarmasin',
          style:{
            fill: '#f5365c'
          }
        },
      ],
      onRegionTipShow	: function(event, label, code){
        label.html(
        '<b>'+label.html()+'</b></br>'+
        '<b>ODP : </b>'+positif[code].ODP+'</br>'+
        '<b>PDP : </b>'+positif[code].PDP+'</br>'+
        '<b>Positif : </b>'+positif[code].POS
      )}
    });

    $('#kalsel_mp_cont').find(".jvectormap-zoomin").addClass("btn btn-sm btn-info")
    $('#kalsel_mp_cont').find(".jvectormap-zoomout").addClass("btn btn-sm btn-info mt-2")

    map.container.click(function(e){
        	 var latLng = map.pointToLatLng(
                  e.pageX - map.container.offset().left,
                  e.pageY - map.container.offset().top
              );
           console.log(latLng);
        });
