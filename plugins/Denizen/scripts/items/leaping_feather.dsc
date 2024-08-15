leaping_feather:
    type: item
    debug: false
    material: paper
    display name: <&6>Leaping Feather
    lore:
    - <&7>Get Out of Dire Situations Fast!
    - <&8>Takes 3 Seconds To Recharge
    mechanisms:
        custom_model_data: 56
    recipes:
    	1:
        	type: shaped
			input:
            - gold_nugget|gold_ingot|gold_nugget
            - gold_ingot|feather|gold_ingot
            - gold_nugget|gold_ingot|gold_nugget
super_leaping_feather:
    type: item
    debug: false
    material: paper
    display name: <&6>Super Leaping Feather
    lore:
    - <&c>Admin Item: If you have this you're fucking insane
    mechanisms:
        custom_model_data: 56

fake_leaping_feather:
    type: item
    debug: false
    material: paper
    display name: <&6>Leaping Feather
    lore:
    - <&7>Get Out of Dire Situations Fast!
    - <&8>Takes 3 Seconds To Recharge
    mechanisms:
        custom_model_data: 56

leaping_feather_handler:
    type: world
    debug: false
    events:
        on player right clicks block with:leaping_feather:
        - run leaping_feather_event
        on player right clicks block with:fake_leaping_feather:
        - hurt <player> cause:fall 10000
        on player right clicks block with:super_leaping_feather:
        - if <player.can_fly> == false:
          - narrate <player>
          - adjust <player> can_fly:true
        - if <player.can_fly> == true:
          - adjust <player> can_fly:false
        

leaping_feather_event:
    type: task
    debug: false
    script:
    - ratelimit <player> 3s
    - run item_cooldown def:3|enclosing
    - define zChange <element[<element[1].mul[<element[1].div[18].mul[<player.location.yaw>].sub[10].abs>].sub[5]>].mul[<element[<element[<element[<element[1].div[90]>].mul[<player.location.pitch>]>].abs.sub[1]>].abs>]>
    - define yChange <element[1].div[<element[90]>].mul[<player.location.pitch>].mul[-3]>
    - if <player.location.yaw> > 90:
      - define xChange <element[<element[-1].mul[<element[<element[<element[1].div[18]>].mul[<player.location.yaw>].sub[15]>].abs>].add[5]>].mul[<element[<element[<element[<element[1].div[90]>].mul[<player.location.pitch>]>].abs.sub[1]>].abs>]>
    - else:
      - define xChange <element[<element[<element[1].div[18].mul[<player.location.yaw>].sub[5].abs>].sub[5]>].mul[<element[1].div[90].mul[<player.location.pitch>].abs.sub[1].abs>]>
    - adjust <player> velocity:l@<player.velocity.x.add[<[xChange]>]>,<player.velocity.y.add[<[yChange]>]>,<player.velocity.z.add[<[zChange]>]>,<player.world>
    #(|(1/18)x-5|-5)
    #- <element[<element[1].mul[<element[1].div[18].mul[<player.location.yaw>].sub[10].abs>].add[5]>].mul[<element[<element[<element[<element[1].div[90]>].mul[<player.location.pitch>].abs>].sub[1]>].abs>]>