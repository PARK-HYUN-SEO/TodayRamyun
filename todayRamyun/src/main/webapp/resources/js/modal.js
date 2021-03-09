console.log("modal Module.................");

var modalService = (function() {
	
	function get(bno, callback, error) {
		
		$.getJSON("/modals/" + bno + ".json",
			function(data) {
				if (callback) {
					callback(data); //댓글 목록만 가져오는 경우
				}
			}).fail(function(xhr, status, err) {
				if(error) {
					error();
				}
			});
	}
	
	return {
		get : get
	};
})();