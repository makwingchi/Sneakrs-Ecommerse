
// Item info sent from the backend
var g_itemlist = [];
	
	jQuery(document).ready(function() {
		
			$.ajax({
			    type: 'GET', 
			    url: 'http://localhost:8888/item/list', 
			    xhrFields: {withCredentials:true},
			    success: function(data) {
			    	if (data.status == "success") {
							g_itemlist = data.data;
							console.log(g_itemlist);
			    		reloadDom();
			    	} else {
			    		alert("Fails to get item information; Reason: " + data.data.errMsg);
			    	}
			    },
			    error: function(data) {
			    	alert("Fails to get item information; Reason: " + data.responseText);
			    }
			});
		});

	function reloadDom() {
		for (var i = 0; i < g_itemlist.length; i++) {
			var itemVO = g_itemlist[i];
			var dom = "<div class='card card-custom mx-1 mb-3' data-id='" + itemVO.id + "' id='itemDetail"+itemVO.id+"'>" + 
			"<img src='"+itemVO.imgUrl+"' class='card-img-top'>" + 
			"<div class='card-body'><h5 class='card-title'>" + itemVO.title + "</h5>" + 
			"<p class='card-text'>" + itemVO.description + "</p>" +
			"<p class='card-text'><small class='text-muted'>" + "$" + itemVO.price + "</small></p></div></div>"

			// Append a card component (dom) to the container
			$("#container").append($(dom));

			// When click on a specific product, user will be directed to the corresponding detail page
			$("#itemDetail" + itemVO.id).on("click", function(e) {
				window.location.href = "getitem.html?id="+$(this).data("id");
			});
		}
	}
