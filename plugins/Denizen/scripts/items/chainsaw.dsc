chainsaw:
    type: item
    debug: false
    material: paper
    display name: <&color[#505070]>Chainsaw
    lore:
     - <&color[#909090]>Chop Down Full Trees!
    mechanisms:
        custom_model_data: 55
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|iron_ingot
            - iron_ingot|iron_ingot
            - circuit_board|motor

#Make it work before launch idk man
chainsaw_handler:
    type: world
    debug: false
    events:
      on player breaks block with chainsaw:
      - if <context.material> == <material[birch_log]> || <context.material> == <material[oak_log]> || <context.material> == <material[spruce_log]> || <context.material> == <material[dark_oak_log]> || <context.material> == <material[acacia_log]> || <context.material> == <material[jungle_log]> || <context.material> == <material[mangrove_log]> || <context.material> == <material[cherry_log]>:
        - define i <context.location>
        - while <[i].up[1].material> == <context.material>:
          - modifyblock <[i].up[1]> air
          - drop <context.material.item> <context.location.up[1]>
          - define i <[i].up[1]>