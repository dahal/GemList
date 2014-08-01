$(document).ready(function() {
	$("#searchnow").on("click", searchGems)
	//$("#search").keypress(function(){alert('hey')})
	$("#search").keypress(searchOnKeyPress)
});

function searchGems(e){
	e.preventDefault();
	console.log('cat')
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
				"<div class='panel-body'><strong><a href='http://rubygems.org/gems/"+data[i].name+"'>"+data[i].name+"</a></strong><br></div>"
				)
		};
	})
}

// on keypress

function searchOnKeyPress(){
	//e.preventDefault();
	console.log('cat')
	var searchLetter = $('#search').val()
	var ajaxSearchLetter = $.ajax({
		url : '/search',
		type: 'POST',
		data: {name: searchLetter},
		dataType: 'json'
	}).success(function(data) {
		//debugger
		if (typeof data != []){
			var gem = data[0].name
			$(".search-results").append(
				"<div class='panel-body'><strong><a href='http://rubygems.org/gems/"+gem+"'>"+gem+"</a></strong><br></div>"
			)
		}
	})
}