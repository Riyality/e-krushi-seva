$(function(t){$("#datatable-basic").DataTable({language:{searchPlaceholder:"Search...",sSearch:""},pageLength:10}),$("#responsiveDataTable").DataTable({responsive:!0,language:{searchPlaceholder:"Search...",sSearch:""},pageLength:10}),$("#responsivemodal-DataTable").DataTable({responsive:{details:{display:$.fn.dataTable.Responsive.display.modal({header:function(s){var l=s.data();return l[0]+" "+l[1]}}),renderer:$.fn.dataTable.Responsive.renderer.tableAll({tableClass:"table"})}},language:{searchPlaceholder:"Search...",sSearch:""},pageLength:10}),$("#file-export").DataTable({dom:"Bfrtip",buttons:["copy","csv","excel","pdf","print"],language:{searchPlaceholder:"Search...",sSearch:""}});var a=$("#delete-datatable").DataTable({language:{searchPlaceholder:"Search...",sSearch:""}});$("#delete-datatable tbody").on("click","tr",function(){$(this).hasClass("selected")?$(this).removeClass("selected"):(a.$("tr.selected").removeClass("selected"),$(this).addClass("selected"))}),$("#button").on("click",function(){a.row(".selected").remove().draw(!1)}),$("#scroll-vertical").DataTable({scrollY:"265px",scrollCollapse:!0,paging:!1,scrollX:!0,language:{searchPlaceholder:"Search...",sSearch:""}}),$("#hidden-columns").DataTable({columnDefs:[{target:2,visible:!1,searchable:!1},{target:3,visible:!1}],language:{searchPlaceholder:"Search...",sSearch:""},pageLength:10});var r=$("#add-row").DataTable({language:{searchPlaceholder:"Search...",sSearch:""}}),e=1;$("#addRow").on("click",function(){r.row.add([e+".1",e+".2",e+".3",e+".4",e+".5"]).draw(!1),e++})});
