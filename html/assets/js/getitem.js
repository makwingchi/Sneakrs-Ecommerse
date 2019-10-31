function getParam(paramName) { 
            paramValue = "", isFound = !1; 
            if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=") > 1) { 
                arrSource = unescape(this.location.search).substring(1, this.location.search.length).split("&"), i = 0; 
                while (i < arrSource.length && !isFound) arrSource[i].indexOf("=") > 0 && arrSource[i].split("=")[0].toLowerCase() == paramName.toLowerCase() && (paramValue = arrSource[i].split("=")[1], isFound = !0), i++ 
            } 
            return paramValue == "" && (paramValue = null), paramValue
        }

    var g_itemVO = {};

	// When users click the purchase button, send request to backend
	jQuery(document).ready(function() {
		$("#createorder").on("click", function(){
			$.ajax({
			    type: 'POST', 
			    contentType: "application/x-www-form-urlencoded",
			    url: 'http://localhost:8888/order/createorder', 
			    data:{
			    	"itemId": g_itemVO.id,
			    	"amount": 1,
			    	"promoId": g_itemVO.promoId
			    },
			    xhrFields: {withCredentials:true},
			    success: function(data) {
			    	if (data.status == "success") {
			    		alert("Congrats! Purchase Completed!");
			    		window.location.reload();
			    	} else {
			    		alert("Purchase fails; Reason: " + data.data.errMsg);
			    		if(data.data.errCode == 20003) {
			    			window.location.href = "login.html";
			    		}
			    	}
			    },
			    error: function(data) {
			    	alert("Purchase fails; Reason: " + data.responseText);
			    }
			});
		});
			
			$.ajax({
			    type: 'GET', 
			    url: 'http://localhost:8888/item/get', 
			    data:{
			    	"id": getParam("id"),
			    },
			    xhrFields: {withCredentials:true},
			    success: function(data) {
			    	if (data.status == "success") {
			    		g_itemVO = data.data;
			    		// console.log(g_itemVO);
			    		reloadDom();
			    		setInterval(reloadDom, 1000);
			    	} else {
			    		alert("Creation fails; " + data.data.errMsg);
			    	}
			    },
			    error: function(data) {
			    	alert("failure: " + data.responseText);
			    }
			});
		});

	// For items for promotion, change the countdown value every second
	function reloadDom() {
		$("#title").text(g_itemVO.title);
		$("#description").text(g_itemVO.description);
		$("#stock").text(g_itemVO.stock);
		$("#price").text("$" + g_itemVO.price);
		$("#imgUrl").attr("src", g_itemVO.imgUrl);
		$("#sales").text(g_itemVO.sales);
		if(g_itemVO.promoStatus == 1) {
			// Promotion has not begun
			var startTime = g_itemVO.startDate.replace(new RegExp("-", "gm"), "/");
			startTime = (new Date(startTime)).getTime();
			var nowTime = Date.parse(new Date());
			var delta = (startTime - nowTime) / 1000;

			if (delta <= 0) {
				// Promotion has begun
				g_itemVO.promoStatus = 2;
				reloadDom();
			}
			$("#promoStartDate").text("Promotion will begin on: " + g_itemVO.startDate + "Countdown: " + delta + "seconds");
			$("#promoPrice").text("$" + g_itemVO.promoPrice);
			$("#createorder").attr("disabled", true);
		} else if (g_itemVO.promoStatus == 2) {
			// Ongoing Promotion ...
			$("#promoStartDate").text("Ongoing promotion! The time is now!");
			$("#lightningPrice").text("Promotion Price:");
			$("#promoPrice").text("$" + g_itemVO.promoPrice);
			$("#createorder").attr("disabled", false);
			$("#normalPriceContainer").hide();
		}
	}