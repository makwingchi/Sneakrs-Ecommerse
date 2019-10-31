jQuery(document).ready(function() {
		// When the register button is clicked, send POST request to backend
		$("#register").on("click", function(){
			var phone = $("#phone").val();
			var password = $("#password").val();
			// sensitive info, let's generate random numbers instead
			var age = Math.floor(Math.random() * 31) + 15;
			var gender = Math.floor(Math.random() * 2) + 1;

			var name = $("#name").val();
			var otpCode = $("#otpCode").val();

			if (phone == null || phone == "") {
				alert("Phone number cannot be null");
				return false;
			}
			if (otpCode == null || otpCode == "") {
				alert("OTP Code cannot be null");
				return false;
			}
			if (name == null || name == "") {
				alert("Name cannot be null");
				return false;
			}
			if (password == null || password == "") {
				alert("Password cannot be null");
				return false;
			}
			
			$.ajax({
			    type: 'POST', 
			    contentType: "application/x-www-form-urlencoded",
			    url: 'http://localhost:8888/user/register', 
			    data:{
			    	"phone": phone,
			    	"password": password,
			    	"age": age,
			    	"gender": gender,
			    	"otpCode": otpCode,
			    	"name": name
			    },
			    xhrFields: {withCredentials:true},
			    success: function(data) {
			    	if (data.status == "success") {
			    		alert("Successful Registration!");
			    		window.location.href="./login.html"
			    	} else {
			    		alert("Registration fails; " + data.data.errMsg);
			    	}
			    },
			    error: function(data) {
			    	alert("failure: " + data.responseText);
			    }
			});
			// return false;
		});
	})