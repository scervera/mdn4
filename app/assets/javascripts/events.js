var ready, set_positions;
set_positions = function(){
// loop through and give each event a data-pos
// attribute that holds its position in the DOM
$('.sortable-row').each(function(i){
$(this).attr("data-pos",i+1);
    });
}
ready = function(){
// call set_positions function
set_positions();
$('.event-sortable').sortable();
// after the order changes
$('.event-sortable').sortable().bind('sortupdate', function(e, ui) {
// array to store new order
        updated_order = []
// set the updated positions
set_positions();
// populate the updated_order array with the new event positions
$('.sortable-row').each(function(i){
updated_order.push({ id: $(this).data("id"), position: i+1 });
        });
// send the updated order via ajax
$.ajax({
            type: "PUT",
            url: '/events/sort',
            data: { order: updated_order }
        });
    });
}
$(document).ready(ready);
/**
 * if using turbolinks
 */
$(document).on('page:load', ready);

