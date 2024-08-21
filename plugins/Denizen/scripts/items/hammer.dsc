hammer:
  type: item
  debug: false
  material: wooden_sword
  display name: <&3>Hammer
  allow in material recipes: true
  mechanisms:
    custom_model_data: 54
    max_durability: 64
  #recipes:
      #1:
        #type: shaped
        #input:
        #- iron_block|diamond|iron_block
        #- air|stick|air
        #- air|stick|air

iron_dust:
  type: item
  debug: false
  material: paper
  display name: <&f>Iron Dust
  mechanisms:
    custom_model_data: 8002
  recipes:
    1:
      type: shapeless
      input: material:wooden_sword|raw_iron
copper_dust:
  type: item
  debug: false
  material: paper
  display name: <&f>Copper Dust
  mechanisms:
    custom_model_data: 8003
  recipes:
    1:
      type: shapeless
      input: material:wooden_sword|raw_copper
gold_dust:
  type: item
  debug: false
  material: paper
  display name: <&f>Gold Dust
  mechanisms:
    custom_model_data: 8004
  recipes:
    1:
      type: shapeless
      input: material:wooden_sword|raw_gold
iron_recipe:
  type: item
  debug: false
  material: iron_ingot
  recipes:
    1:
      type: furnace
      cook_time: 7s
      input: iron_dust
    2:
      type: blast
      cook_time: 4s
      input: iron_dust
copper_recipe:
  type: item
  debug: false
  material: copper_ingot
  recipes:
    1:
      type: furnace
      cook_time: 7s
      input: copper_dust
    2:
      type: blast
      cook_time: 4s
      input: copper_dust
gold_recipe:
  type: item
  debug: false
  material: gold_ingot
  recipes:
    1:
      type: furnace
      cook_time: 7s
      input: gold_dust
    2:
      type: blast
      cook_time: 4s
      input: gold_dust

hammer_handler:
  type: world
  debug: false
  events:
    on player crafts gold_dust:
    - define hammer_slot <player.open_inventory.find_item[hammer]>
    - define hammer_dura <player.open_inventory.slot[<[hammer_slot]>].durability>
    - waituntil <player.open_inventory.slot[<[hammer_slot]>]> == <item[air]>
    - if <[hammer_dura]> <= 58:
      - inventory set destination:<player.open_inventory> slot:<[hammer_slot]> o:<item[hammer]>
      - inventory adjust destination:<player.open_inventory> slot:<[hammer_slot]> durability:<[hammer_dura].add[1]>
    - else:
      - playsound <player> sound:entity_item_break sound_category:MASTER
    on player crafts iron_dust:
    - define hammer_slot <player.open_inventory.find_item[hammer]>
    - define hammer_dura <player.open_inventory.slot[<[hammer_slot]>].durability>
    - waituntil <player.open_inventory.slot[<[hammer_slot]>]> == <item[air]>
    - if <[hammer_dura]> <= 58:
      - inventory set destination:<player.open_inventory> slot:<[hammer_slot]> o:<item[hammer]>
      - inventory adjust destination:<player.open_inventory> slot:<[hammer_slot]> durability:<[hammer_dura].add[1]>
    - else:
      - playsound <player> sound:entity_item_break sound_category:MASTER
    on player crafts copper_dust:
    - define hammer_slot <player.open_inventory.find_item[hammer]>
    - define hammer_dura <player.open_inventory.slot[<[hammer_slot]>].durability>
    - waituntil <player.open_inventory.slot[<[hammer_slot]>]> == <item[air]>
    - if <[hammer_dura]> <= 58:
      - inventory set destination:<player.open_inventory> slot:<[hammer_slot]> o:<item[hammer]>
      - inventory adjust destination:<player.open_inventory> slot:<[hammer_slot]> durability:<[hammer_dura].add[1]>
    - else:
      - playsound <player> sound:entity_item_break sound_category:MASTER
    on gold_dust recipe formed:
    - if <context.inventory.contains_item[hammer]>:
      - inventory set destination:<player.open_inventory> slot:1 o:<item[gold_dust]>
      - inventory adjust destination:<player.open_inventory> slot:1 quantity:2
    - else:
      - determine cancelled:true
    on iron_dust recipe formed:
    - if <context.inventory.contains_item[hammer]>:
      - inventory set destination:<player.open_inventory> slot:1 o:<item[iron_dust]>
      - inventory adjust destination:<player.open_inventory> slot:1 quantity:2
    - else:
      - determine cancelled:true
    on copper_dust recipe formed:
    - if <context.inventory.contains_item[hammer]>:
      - inventory set destination:<player.open_inventory> slot:1 o:<item[copper_dust]>
      - inventory adjust destination:<player.open_inventory> slot:1 quantity:2
    - else:
      - determine cancelled:true
    after furnace smelts iron_dust into iron_recipe:
    - if <context.location.inventory.slot[3]> == i@iron_ingot[script=iron_recipe]:
      - define amt 0
    - else:
      - define amt <context.location.inventory.slot[3].quantity>
    - inventory set destination:<context.location.inventory> slot:3 o:iron_ingot
    - inventory adjust destination:<context.location.inventory> slot:3 quantity:<[amt].add[1]>
    after blast_furnace smelts iron_dust into iron_recipe:
    - if <context.location.inventory.slot[3]> == i@iron_ingot[script=iron_recipe]:
      - define amt 0
    - else:
      - define amt <context.location.inventory.slot[3].quantity>
    - inventory set destination:<context.location.inventory> slot:3 o:iron_ingot
    - inventory adjust destination:<context.location.inventory> slot:3 quantity:<[amt].add[1]>
    after furnace smelts gold_dust into gold_recipe:
    - if <context.location.inventory.slot[3]> == i@gold_ingot[script=gold_recipe]:
      - define amt 0
    - else:
      - define amt <context.location.inventory.slot[3].quantity>
    - inventory set destination:<context.location.inventory> slot:3 o:gold_ingot
    - inventory adjust destination:<context.location.inventory> slot:3 quantity:<[amt].add[1]>
    after blast_furnace smelts gold_dust into gold_recipe:
    - if <context.location.inventory.slot[3]> == i@gold_ingot[script=gold_recipe]:
      - define amt 0
    - else:
      - define amt <context.location.inventory.slot[3].quantity>
    - inventory set destination:<context.location.inventory> slot:3 o:gold_ingot
    - inventory adjust destination:<context.location.inventory> slot:3 quantity:<[amt].add[1]>
    after furnace smelts copper_dust into copper_recipe:
    - if <context.location.inventory.slot[3]> == i@copper_ingot[script=copper_recipe]:
      - define amt 0
    - else:
      - define amt <context.location.inventory.slot[3].quantity>
    - inventory set destination:<context.location.inventory> slot:3 o:copper_ingot
    - inventory adjust destination:<context.location.inventory> slot:3 quantity:<[amt].add[1]>
    after blast_furnace smelts copper_dust into copper_recipe:
    - if <context.location.inventory.slot[3]> == i@copper_ingot[script=copper_recipe]:
      - define amt 0
    - else:
      - define amt <context.location.inventory.slot[3].quantity>
    - inventory set destination:<context.location.inventory> slot:3 o:copper_ingot
    - inventory adjust destination:<context.location.inventory> slot:3 quantity:<[amt].add[1]>