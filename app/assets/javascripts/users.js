$(document).on('ready page:load', function() {

	$(".user_job_province").hide();
	$(".user_job_area").hide();
	$(".user_job_city").hide();
	$('#user_role').on("change", function() {
		if($(this).val() == "sales_manager") {
			$(".user_job_area").slideUp();
			$(".user_job_city").slideUp();
			$(".user_job_province").slideDown();
		} else if ($(this).val() == "area_sales_manager") {
			$(".user_job_area").slideDown();
			$(".user_job_province").slideDown();
			$(".user_job_city").slideUp();
		} else if ($(this).val() == "sales_officer") {
			$(".user_job_province").slideDown();
			$(".user_job_area").slideDown();
			$(".user_job_city").slideDown();
		} else {
			$(".user_job_province").slideUp();
			$(".user_job_area").slideUp();
			$(".user_job_city").slideUp();
		}
	});

});