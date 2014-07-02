var Comments = {
	init: function(){
		$('form.new_comment').on('ajax:success', this.addComment);
		$('form.new_comment').on('ajax:error', this.addError);
	},
	addComment: function(e, data){
		$('#response').html('Thank you for commenting!');
	},
	addError: function(e, data){
		$('#response').html("Please make sure you have a name and comment");
	}
}