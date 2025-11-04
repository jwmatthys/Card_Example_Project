// These are helper functions for creating and playing cards.

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
}