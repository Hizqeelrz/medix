$(document).on('ready page:load', function () {

	$('.user_job_province').hide();
	$('#user_role').on('change', function(){
		if($(this).val() == 'sales_manager') {
			$('.user_job_province').slideDown();
		} else {
			$('.user_job_province').slideUp();
		}
	});


});