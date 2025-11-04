// Set up your deck as an empty array
deck = array_create(0);

// Set up your discard pile 
discard = array_create(0);

// Starting deck
array_push(deck, global.card_strike);
array_push(deck, global.card_strike);
array_push(deck, global.card_strike);
array_push(deck, global.card_heavy_strike);
array_push(deck, global.card_heal);

// adjustable dealing position
draw_x_position = 120;
draw_y_position = 130;
card_spacing = 40;

randomize();
array_shuffle(deck);

function draw_card(_x, _y) {
    if (array_length(deck) > 0) {
        var card_data = array_pop(deck);
        
        var card_inst = instance_create_depth(_x, _y, 0, obj_card);
        card_inst.card = card_data;
        card_inst.sprite_index = card_data.sprite;
        show_debug_message("Draw card: " + card_inst.card.name);
    }
}

function draw_cards(num) {
    for (var i=0; i<num; i++) {
        if (array_length(deck) <= 0) {
            shuffle_discard_pile();
        }
        draw_card(draw_x_position + card_spacing*i, draw_y_position);
    }
}


function shuffle_discard_pile() {
    show_debug_message("Deck empty! Shuffling discard pile");
    array_copy(deck, 0, discard, 0, array_length(discard));
    discard = [];
    array_shuffle(deck);
}
