$(document).ready(function()
{ 
if ($("#alertSuccess").text().trim() == "") 
 { 
 $("#alertSuccess").hide(); 
 } 
 $("#alertError").hide(); 
});

$(document).on("click", "#btnSave", function(event){ 
	
	// Clear alerts---------------------
	 $("#alertSuccess").text(""); 
	 $("#alertSuccess").hide(); 
	 $("#alertError").text(""); 
	 $("#alertError").hide(); 
 
	 
	// Form validation-------------------
	var status = validateUserForm(); 
	if (status != true) 
	 { 
	 $("#alertError").text(status); 
	 $("#alertError").show(); 
	 
 return; 
} 


// If valid------------------------
var type = ($("#hidAccountIDSave").val() == "") ? "POST" : "PUT"; 
	$.ajax( 
	{ 
	 url : "UserAPI", 
	 type : type, 
	 data : $("#formUser").serialize(), 
	 dataType : "text", 
	 complete : function(response, status) { 
		 
		 onUserSaveComplete(response.responseText, status); 
	 } 
	}); 
});

function onUserSaveComplete(response, status){ 
	if (status == "success") {
		
		 var resultSet = JSON.parse(response); 
		 if (resultSet.status.trim() == "success") { 
			 
			 $("#alertSuccess").text("Successfully saved."); 
			 $("#alertSuccess").show(); 
			 $("#divResearchGrid").html(resultSet.data); 
		 } 
		 else if (resultSet.status.trim() == "error") {
			 
			 $("#alertError").text(resultSet.data); 
			 $("#alertError").show(); 
		 } 
	} 
	else if (status == "error") { 
		
		 $("#alertError").text("Error while saving."); 
		 $("#alertError").show(); 
	} else{ 
		
		 $("#alertError").text("Unknown error while saving.."); 
		 $("#alertError").show(); 
		}
	$("#hidAccountIDSave").val(""); 
	$("#formUser")[0].reset(); 
}


// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event){ 
		
		 $("#hidAccountIDSave").val($(this).closest("tr").find('td:eq(0)').text()); 
		 $("#UserID").val($(this).closest("tr").find('td:eq(0)').text());
		 $("#Name").val($(this).closest("tr").find('td:eq(1)').text()); 
		 $("#Email").val($(this).closest("tr").find('td:eq(2)').text()); 
		 $("#Address").val($(this).closest("tr").find('td:eq(3)').text()); 
		 $("#Mobile").val($(this).closest("tr").find('td:eq(4)').text()); 
		 $("#UserType").val($(this).closest("tr").find('td:eq(5)').text()); 
		
		 
});





$(document).on("click", ".btnRemove", function(event) { 
	 $.ajax( 
	 { 
	 	url : "UserAPI", 
	 	type : "DELETE", 
	 	data : "UserID=" + $(this).closest("tr").find('td:eq(0)').text(),
	 	dataType : "text", 
	 	complete : function(response, status) { 
	 		onUserDeleteComplete(response.responseText, status); 
	 	} 
	}); 
})
	


function onUserDeleteComplete(response, status){
	
	if (status == "success") {
		
		var resultSet = JSON.parse(response); 
			if (resultSet.status.trim() == "success"){
			
				$("#alertSuccess").text("Successfully deleted."); 
				$("#alertSuccess").show(); 
				$("#divResearchGrid").html(resultSet.data); 
				
			} else if (resultSet.status.trim() == "error") { 
				
				$("#alertError").text(resultSet.data); 
				$("#alertError").show(); 
		} 
	} 
	else if (status == "error") { 
		$("#alertError").text("Error while deleting."); 
		$("#alertError").show(); 
	} 
	else { 
		$("#alertError").text("Unknown error while deleting.."); 
		$("#alertError").show(); 
	} 
}

// CLIENT-MODEL================================================================
function validateUserForm(){
	// CODE

	
// field-------------------------------
if ($("#Email").val().trim() == ""){
	
	return "Insert Email ";
}

if ($("#Name").val().trim() == ""){
	
	return "Insert Name.";
}


	return true;
}