$(document).on('ready page:load', function() {

	$(".users.new .user_province_id").hide();
	$(".users.new .user_area_id").hide();
	$(".users.new .user_city_id").hide();
	$('#user_role').on("change", function() {
		if($(this).val() == "sales_manager") {
			$(".user_area_id").slideUp();
			$(".user_city_id").slideUp();
			$(".user_province_id").slideDown();
		} else if ($(this).val() == "area_sales_manager") {
			$(".user_area_id").slideDown();
			$(".user_province_id").slideDown();
			$(".user_city_id").slideUp();
		} else if ($(this).val() == "sales_officer") {
			$(".user_province_id").slideDown();
			$(".user_area_id").slideDown();
			$(".user_city_id").slideDown();
		} else {
			$(".user_province_id").slideUp();
			$(".user_area_id").slideUp();
			$(".user_city_id").slideUp();
		}
	});

});