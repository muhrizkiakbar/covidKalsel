
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

$(".card-expand").click(function () {

  $header = $(this).children();
  //getting the next element
  $content = $header.next();
  // console.log($content);
  //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
  $content.slideToggle(500, function () {
      //execute this after slideToggle is done
      //change text of header based on visibility of content div
      // $('.card-body', $header).attr('hidden', 'false');
      $(this).attr('hidden', false);

  });

});
// $("#datatable-kota").DataTable();
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

var lineChartOptions = {
  legend: true,
  curve: false,
  colors: ['#f5365c', '#2dce89', '#e9ecef', '#00bcd4', '#ffd600'],
  label: "Value",
  dataset:{
    pointRadius: 1,
    borderWidth: (window.matchMedia('(max-width: 500px)').matches) ? 3 : 4
  },
  library: {
    hover: false,
    tooltips: {
      enabled: false,
    },
    scales: {
      yAxes: [{
        gridLines:{
          color: 'rgba(0, 0, 0, 0.0)'
        },
        // display: false
      }],
      xAxes: [{
        type: 'time',
        time: {
          displayFormats: {
            day: (window.matchMedia('(max-width: 500px)').matches) ? 'D/M' : 'D MMM'
          }
        }
        // display: false
      }]
    },
    animation: {
      onProgress: function() {
        var ctx = this.chart.ctx;
        // console.log(ctx);
        // ctx.fillStyle = this.options.defaultColor
        ctx.textAlign = "center";
        ctx.textBaseline = "bottom";

        this.data.datasets.forEach(function (dataset) {

            // console.log(dataset._meta[1].dataset._children[0]._model.x);
            dataset.data.forEach(function (points, index) {
                for (var key in dataset._meta){
                  ctx.fillStyle = dataset.borderColor
                  ctx.fillText(points, dataset._meta[key].dataset._children[index]._model.x, dataset._meta[key].dataset._children[index]._model.y-2);
                }
            });
        })
     }
    }
  }
}
var chart = Chartkick.charts["chart-line"]
chart.setOptions(lineChartOptions);
// console.log(chart.getOptions());

var pieChartOptions = {
  legend: true,
  colors: ['#f5365c', '#2dce89', '#212529', '#00bcd4', '#ffd600'],
}

var chart = Chartkick.charts["chart-pie"]
chart.setOptions(pieChartOptions);
