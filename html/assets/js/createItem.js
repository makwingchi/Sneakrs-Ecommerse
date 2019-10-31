jQuery(document).ready(function() {
		// While click, send request to backend
		$("#create").on("click", function(){
			var title = $("#title").val();
			var description = $("#description").val();
			var imgUrl = $("#imgUrl").val();
			var price = $("#price").val();
			var stock = $("#stock").val();

			if (title == null || title == "") {
				alert("Item name cannot be null");
				return false;
			}
			if (description == null || description == "") {
				alert("Item description cannot be null");
				return false;
			}
			if (price == null || price == "") {
				alert("Item price cannot be null");
				return false;
			}
			if (imgUrl == null || imgUrl == "") {
				alert("Item imgUrl cannot be null");
				return false;
			}
			if (stock == null || stock == "") {
				alert("Item stock cannot be null");
				return false;
			}
			$.ajax({
			    type: 'POST', 
			    contentType: "application/x-www-form-urlencoded",
			    url: 'http://localhost:8888/item/create', 
			    data:{
			    	"title": title,
			    	"description": description,
			    	"imgUrl": imgUrl,
			    	"price": price,
			    	"stock": stock,
			    },
			    xhrFields: {withCredentials:true},
			    success: function(data) {
			    	if (data.status == "success") {
			    		alert("Successful Creation!");
			    	} else {
			    		alert("Creation fails; " + data.data.errMsg);
			    	}
			    },
			    error: function(data) {
			    	alert("failure: " + data.responseText);
			    }
			});
			return true;
		});
	})