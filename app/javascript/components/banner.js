const ScrollDown = () => $( "#link" ).click(function( event ) {
  event.preventDefault();
  $("html, body").animate({ scrollTop: $($(this).attr("href")).offset().top }, 1000);
});

export { ScrollDown };
