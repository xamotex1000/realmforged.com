circuit_board:
    type: item
    debug: false
    material: paper
    display name: Circuit Board
    mechanisms:
        custom_model_data: 8000
    recipes:
        1:
            type: shaped
            input:
            - redstone|copper_ingot|redstone
            - copper_ingot|lime_dye|copper_ingot
            - redstone|copper_ingot|redstone

motor:
    type: item
    debug: false
    material: paper
    display name: Motor
    mechanisms:
        custom_model_data: 8001
    recipes:
        1:
            type: shaped
            input:
            - air|iron_ingot|air
            - redstone|copper_ingot|redstone