<!DOCTYPE html>
<html>
<head>
	<title>Go Abroad</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/set2.css">
	<link rel="stylesheet" href="css/bootstrap-table.css">

	<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<script src="http://www.greensock.com/js/src/plugins/ThrowPropsPlugin.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.17.0/TweenMax.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.17.0/utils/Draggable.min.js"></script>
	<script src="js/card.js"></script>
	
	<script type="text/javascript">
		$(document).(function(){
			$("#mine_navigation li").click(function(){
				id = $(this).attr("title");
				tp = $("#"+id).offset().top;
				$("body,html").animate({scrollTop:tp+"px"},1000);
			});

			$(".page_name").click(function(){
				var page_name = $(this).attr("title");
				console.log(page_name);
				$("#myModal #load_external").load(page_name+".php");
				$("#myModal").modal("show");
			});

			// $(document).ready(function(){
			//     $('[data-toggle="modal"]').popup();
			// });

		});
	</script>
</head>
<body>

