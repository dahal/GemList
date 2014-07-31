$(document).ready(function() {
	$("#searchnow").on("click", searchGems)
});

function searchGems(e){
	e.preventDefault();
	var searchWord = $('#search').val()
	var ajaxSearch = $.ajax({
		url : '/search',
		type: 'POST',
		data: {name: searchWord},
		dataType: 'json'
	}).success(function(data) {
		//debugger
		//data
		for (var i = 0; i < data.length; i++) {
			$(".search-results").append(
				"<div class='panel-body text-primary'><strong>"+data[i].name+"</strong><br></div>"
				)
		};
	})
}


//<div class='panel-body'>"+data[i].name+"<br></div>
//$('.search-results').append("Rails <br>")
