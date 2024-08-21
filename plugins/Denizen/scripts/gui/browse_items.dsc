crafting_recipe_menu:
    type: inventory
    debug: false
    inventory: chest
    size: 54
    gui: true
    title: <&f><&font[realmforged:gui]>-a=
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [last] [] [] [] [] [] [next] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [close] [] [] [] []
smelting_recipe_menu:
    type: inventory
    debug: false
    inventory: chest
    size: 54
    gui: true
    title: <&f><&font[realmforged:gui]>-b=
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [last] [] [] [] [] [] [next] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [close] [] [] [] []
smithing_recipe_menu:
    type: inventory
    debug: false
    inventory: chest
    size: 54
    gui: true
    title: <&f><&font[realmforged:gui]>-c=
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [last] [] [] [] [] [] [next] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [close] [] [] [] []
stonecutting_recipe_menu:
    type: inventory
    debug: false
    inventory: chest
    size: 54
    gui: true
    title: <&f><&font[realmforged:gui]>-d=
    slots:
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [] [] [] [] []
    - [] [last] [] [] [] [] [] [next] []
    - [] [] [] [] [] [] [] [] []
    - [] [] [] [] [close] [] [] [] []

switch_recipe:
    type: task
    debug: false
    definitions: page|type|result|item1|item2|item3|item4|item5|item6|item7|item8|item9
    script:
    - if <[type]> == stonecutting:
      - inventory open d:stonecutting_recipe_menu
      - inventory set slot:32 destination:<player.open_inventory> o:<[item1]>
    - if <[type]> == crafting:
      - inventory open d:crafting_recipe_menu
      - inventory set slot:22 destination:<player.open_inventory> o:<[item1]>
      - inventory set slot:23 destination:<player.open_inventory> o:<[item2]>
      - inventory set slot:24 destination:<player.open_inventory> o:<[item3]>
      - inventory set slot:31 destination:<player.open_inventory> o:<[item4]>
      - inventory set slot:32 destination:<player.open_inventory> o:<[item5]>
      - inventory set slot:33 destination:<player.open_inventory> o:<[item6]>
      - inventory set slot:40 destination:<player.open_inventory> o:<[item7]>
      - inventory set slot:41 destination:<player.open_inventory> o:<[item8]>
      - inventory set slot:42 destination:<player.open_inventory> o:<[item9]>
    - if <[type]> == smelting:
      - inventory open d:smelting_recipe_menu
      - inventory set slot:23 destination:<player.open_inventory> o:<[item1]>
    - if <[type]> == smithing:
      - inventory open d:smithing_recipe_menu
      - inventory set slot:31 destination:<player.open_inventory> o:<[item1]>
      - inventory set slot:32 destination:<player.open_inventory> o:<[item2]>
      - inventory set slot:33 destination:<player.open_inventory> o:<[item3]>
    - inventory adjust slot:29 destination:<player.open_inventory> lore:<[page].sub[1]>
    - inventory adjust slot:35 destination:<player.open_inventory> lore:<[page].add[1]>
    - inventory set slot:5 destination:<player.open_inventory> o:<[result]>

load_recipe_data:
    type: task
    debug: false
    definitions: key
    script:
    - run switch_recipe def:<[key]>|<script[recipe_data].data_key[list].get[<[key]>].deep_get[type]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[result]>]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[items].deep_get[item1]>]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[items].deep_get[item2]>]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[items].deep_get[item3]>]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[items].deep_get[item4]>]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[items].deep_get[item5]>]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[items].deep_get[item6]>]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[items].deep_get[item7]>]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[items].deep_get[item8]>]>|<item[<script[recipe_data].data_key[list].get[<[key]>].deep_get[items].deep_get[item9]>]>

recipe_data:
    type: data
    debug: false
    list:
    - 1:
      type: crafting
      result: leaping_feather
      items:
        item1: gold_nugget
        item2: gold_ingot
        item3: gold_nugget
        item4: gold_ingot
        item5: feather
        item6: gold_ingot
        item7: gold_nugget
        item8: gold_ingot
        item9: gold_nugget
    - 2:
      type: crafting
      result: chainsaw
      items:
        item1: iron_ingot
        item2: iron_ingot
        item4: iron_ingot
        item5: iron_ingot
        item7: circuit_board
        item8: motor
    - 3:
      type: crafting
      result: circuit_board
      items:
        item1: redstone
        item2: copper_ingot
        item3: redstone
        item4: copper_ingot
        item5: lime_dye
        item6: copper_ingot
        item7: redstone
        item8: copper_ingot
        item9: redstone
    - 4:
      type: crafting
      result: motor
      items:
        item5: iron_ingot
        item7: redstone
        item8: copper_ingot
        item9: redstone
close:
    type: item
    debug: false
    material: barrier
    display name: <&c>Close
next:
    type: item
    debug: false
    material: paper
    display name: <&a>Next
    mechanisms:
           custom_model_data: 8998
last:
    type: item
    debug: false
    material: paper
    display name: <&a>Last
    mechanisms:
           custom_model_data: 8997

recipe_logic:
    type: world
    debug: true
    events:
        on player clicks close in crafting_recipe_menu:
        - inventory close
        on player clicks close in smelting_recipe_menu:
        - inventory close
        on player clicks close in smithing_recipe_menu:
        - inventory close
        on player clicks close in stonecutting_recipe_menu:
        - inventory close
        on player clicks next in crafting_recipe_menu:
        - define lore <player.open_inventory.slot[35].lore.get[0]>
        - define test_lore 2
        - if <[lore]> == <[test_lore]>:
          - narrate WTF
        - narrate <[lore]>
        - narrate <[test_lore]>
        - run load_recipe_data def:<[test_lore]>
        - inventory adjust slot:35 destination:<player.open_inventory> lore:<[lore]>
        on player clicks next in smelting_recipe_menu:
        - inventory close
        on player clicks next in smithing_recipe_menu:
        - inventory close
        on player clicks next in stonecutting_recipe_menu:
        - inventory close