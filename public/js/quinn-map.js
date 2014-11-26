  function initialize() {
      
      /* Style of the map */
      var styles = [
      {
          stylers: [
            { hue: "#00adee" },
            { saturation: -20 },
            { lightness: 40 }
          ]
        },{
          featureType: "road",
          elementType: "geometry",
          stylers: [
            { lightness: 100 },
            { visibility: "simplified" }
          ]
        },{
          featureType: "road",
          elementType: "labels",
          stylers: [
            { visibility: "off" }
          ]
        },{
             featureType: "poi",
             elementType: "labels",
             stylers: [
               { visibility: "off" }
             ]
           }
    
         ];
         
        
      // Create a new StyledMapType object, passing it the array of styles,
      // as well as the name to be displayed on the map type control.
      var styledMap = new google.maps.StyledMapType(styles, {name: "Styled Map"});
      
      /* Lat. and Lon. of the center of the map */
      var myCenter = new google.maps.LatLng(41.8903971, 12.4898065);
      
      // Create a map object, and include the MapTypeId to add
      // to the map type control.
      var mapOptions = {
        zoom: 17,       //zoom level
        center: myCenter,     //center position
        scrollwheel: false,   //zoom when scroll disable
        zoomControl: true,    //show control zoom
        
        mapTypeControlOptions: {
          mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style'] 
        }
    
      };
      
      var map = new google.maps.Map(document.getElementById('map-canvas'),mapOptions);
    
      //Associate the styled map with the MapTypeId and set it to display.
      map.mapTypes.set('map_style', styledMap);
      map.setMapTypeId('map_style');
    
        
  }
  
  google.maps.event.addDomListener(window, 'load', initialize);