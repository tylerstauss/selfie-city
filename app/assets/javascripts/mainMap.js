var MainMap = {
	initialize: function(){
		var mapOptions = {
    center: new google.maps.LatLng(0,0),
    zoom: 2
  	};
	  var map = new google.maps.Map(document.getElementById("map-canvas"),
	      mapOptions);
		var url = "/photos";
		$.ajax({
	    url: url,
	    dataType: 'json', 
	    success: function(data) {
	    	CityMap.addMarkers(data, map)
	    }

		});
		
	},
	addMarkers: function(data, map){
		for (var i = 0; i <= data.length; i++) {
			var myLatlng = new google.maps.LatLng(data[i]['latitude'], data[i]['longitude']);
			var marker = new google.maps.Marker({
				position: myLatlng,
				map: map,
				title: data[i]['city_name']
			})
			var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<div id="bodyContent">'+
      '<p><img src="'+data[i]["url"]+'"></p>'+
      '<p>'+data[i]["instagram_text"]+'<a href="/photos/'+data[i]["id"]+'"> View Full Size Image</a>'+'	</p>'+
      '</div>'+
      '</div>';
			var infowindow = new google.maps.InfoWindow({
      	content: contentString
  		});
		};
		
		google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });
	}

}
  