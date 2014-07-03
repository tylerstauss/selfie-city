var CityMap = {
	initialize: function(latitude, longitude, id){
		var mapOptions = {
    center: new google.maps.LatLng(latitude,longitude),
    zoom: 9
  	};
	  var map = new google.maps.Map(document.getElementById("map-canvas"),
	      mapOptions);
		var url = "/photos/city/" + id;
		$.ajax({
	    url: url,
	    dataType: 'json', 
	    success: function(data) {
	    	CityMap.addMarkers(data, map)
	    }

		});
		
	},
	addMarkers: function(data, map){
		var infowindow = new google.maps.InfoWindow();
		var marker, i, contentString;
		
		for (i = 0; i < data.length; i++) {
			var myLatlng = new google.maps.LatLng(data[i]['latitude'], data[i]['longitude']);
			marker = new google.maps.Marker({
				position: myLatlng,
				map: map,
				title: data[i]['city_name']
			});

			

			google.maps.event.addListener(marker, 'click', (function(marker, i, map) {
        return function() {
	        var contentString = '<div id="content">'+
			      '<div id="siteNotice">'+
			      '</div>'+
			      '<div id="bodyContent">'+
			      '<p><img src="'+data[i]["url"]+'"></p>'+
			      '<p>'+data[i]["instagram_text"]+'<a href="/photos/'+data[i]["id"]+'"> View Full Size Image</a>'+'	</p>'+
			      '</div>'+
			      '</div>';
          infowindow.setContent(contentString);
          infowindow.open(map, marker);
        }
      })(marker, i, map));

			
		

  		
		};
		
		
	}

}
  