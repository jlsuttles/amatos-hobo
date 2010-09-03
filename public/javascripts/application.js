//http://github.com/nummi/JavaScript-Snippets
(function($) {
  // Adapted from Jonathan Snook
  $.fn.actAsSlideshow = function(options) {
    var opts = $.extend({}, $.fn.actAsSlideshow.defaults, options);

    return this.each(function() {
      var container = $(this);
      container.find('img:gt(0)').hide();
      setInterval(function(){
        container.find(':first-child').fadeOut()
                 .next('img').fadeIn(350)
                 .end().appendTo(container);
      }, opts.speed);
    });
  };

  $.fn.actAsSlideshow.defaults = { speed: 3500 };
	
	$(function(){
		$('#landscape').actAsSlideshow({ speed: 7000 });
		$('#portrait').actAsSlideshow({ speed: 7000 });
		});	
	
	$("#menu_tabs").tabs();

})(jQuery);
