if (card != undefined) {
    show_debug_message("Card clicked: " + card.name);
    show_debug_message(card.description);
    card.effect(["param1", "param2"]);
    
    if (object_exists(obj_deck)) {
        array_push(obj_deck.discard, card);
    }
    
    instance_destroy();
}