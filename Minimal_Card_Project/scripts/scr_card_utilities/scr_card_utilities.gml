function create_card(_name, _sprite, _desc, _effect, _params) {
    return {
        name: _name,
        sprite: _sprite,
        description: _desc,
        effect: _effect,
        params: _params
    };
}

function play_card(_card) {
    // Call the stored effect with parameters
    _card.effect.apply(undefined, _card.params);
    
    // Optional: remove card from hand/deck
    // array_delete(hand, index_of(_card));
}

card_strike = create_card(
    "Strike",
    spr_card_simple,
    "Deal damage to a single enemy.",
    deal_damage,
    [undefined, 10]   // target object(s) and parameters
);

card_heavy_strike = create_card(
    "Heavy Strike",
    spr_card_heavy,
    "Deal double damage to a single enemy.",
    double_damage,
    [undefined, 20]
);

card_heal = create_card(
    "Heal",
    spr_card_heal_new,
    "Heal the player",
    heal,
    [undefined, 10]
);

// Starting deck
deck = [];
array_push(deck, card_strike);
array_push(deck, card_strike);
array_push(deck, card_strike);
array_push(deck, card_heavy_strike);
array_push(deck, card_heal);