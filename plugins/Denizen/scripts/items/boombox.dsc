boombox:
    type: item
    debug: false
    material: warped_fungus_on_a_stick
    display name: <&c>Bo<&b>om<&a>box
    lore:
    - <&5>Play Music On The Go!
    mechanisms:
        custom_model_data: 9000

mob_drops:
  type: world
  events:
    on entity dies:
    - if <context.entity.entity_type> != 'player':
      - define rand_number <util.random.int[0].to[1000000]>
      - if <util.random.int[0].to[100000]> == 1:
        - if <util.random.int[1].to[2]> == 1:
          - drop <context.entity.location> item:disc_35
        - else:
          - drop <context.entity.location> item:disc_36

boombox_handler:
    type: world
    debug: false
    events:
        on player right clicks block with:boombox:
        - inventory open d:boombox_menu_discs

play_boombox_disc:
    type: task
    debug: false
    definitions: disc_name
    script:
     - playsound <player> sound:Music_Disc_<[disc_name]> sound_category:RECORDS

play_boombox:
    type: task
    debug: false
    definitions: disc_name
    script:
     - playsound <player> sound:custom.records.<[disc_name]> custom sound_category:RECORDS

boombox_menu_discs:
    type: inventory
    debug: false
    inventory: chest
    size: 36
    title: <&2><&l>Select A Song...
    gui: true
    slots:
    - [] [disc_1] [disc_2] [disc_3] [disc_4] [disc_5] [disc_6] [disc_7] []
    - [unlock_disc] [disc_8] [disc_9] [disc_10] [disc_11] [disc_12] [disc_13] [disc_15] [next_boombox]
    - [] [disc_14] [] [] [] [] [] [disc_16] []
    - [] [] [] [] [stop_music] [loop_music] [] [] []
boombox_menu_alpha:
    type: inventory
    debug: false
    inventory: chest
    size: 36
    title: <&2><&l>Select A Song...
    gui: true
    slots:
    - [] [disc_17] [disc_18] [disc_19] [disc_20] [disc_21] [disc_22] [disc_23] []
    - [last_boombox] [disc_24] [disc_25] [disc_26] [disc_27] [disc_28] [disc_29] [disc_30] [next_boombox]
    - [] [disc_31] [disc_32] [] [] [] [disc_33] [disc_34] []
    - [] [missing_disc] [] [] [stop_music] [loop_music] [] [missing_disc] []
boombox_menu_beta:
    type: inventory
    debug: false
    inventory: chest
    size: 36
    title: <&2><&l>Select A Song...
    gui: true
    slots:
    - [] [disc_37] [disc_38] [disc_39] [disc_40] [disc_41] [disc_42] [disc_43] []
    - [last_boombox] [disc_44] [disc_45] [disc_46] [disc_47] [disc_48] [disc_49] [disc_50] []
    - [] [disc_51] [disc_52] [disc_53] [disc_54] [disc_55] [disc_56] [disc_57] []
    - [] [] [] [] [stop_music] [loop_music] [] [] []

next_boombox:
    type: item
    debug: false
    material: paper
    display name: <&a>Next
    mechanisms:
           custom_model_data: 8998

unlock_disc:
    type: item
    debug: false
    material: jukebox
    display name: <&6>Unlock Record

last_boombox:
    type: item
    debug: false
    material: paper
    display name: <&a>Back
    mechanisms:
           custom_model_data: 8997

stop_music:
    type: item
    debug: false
    material: paper
    display name: <&c>Stop Music
    mechanisms:
           custom_model_data: 8999

loop_music_off:
    type: item
    debug: false
    material: paper
    display name: <&a>Loop (off)
    mechanisms:
           custom_model_data: 8996
loop_music_on:
    type: item
    debug: false
    material: paper
    display name: <&a>Loop (all)
    mechanisms:
           custom_model_data: 8995
loop_music_one:
    type: item
    debug: false
    material: paper
    display name: <&a>Loop (one)
    mechanisms:
           custom_model_data: 8994
loop_music_album:
    type: item
    debug: false
    material: paper
    display name: <&a>Loop (album)
    mechanisms:
           custom_model_data: 8993

missing_disc:
    type: item
    debug: false
    material: paper
    display name: <&8>Missing Record
    mechanisms:
           custom_model_data: 8992

disc_1:
    type: item
    debug: false
    material: paper
    display name: <&3>Cat
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9001

disc_2:
    type: item
    debug: false
    material: paper
    display name: <&3>Blocks
    lore: 
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9002

disc_3:
    type: item
    debug: false
    material: paper
    display name: <&3>Chirp
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9003

disc_4:
    type: item
    debug: false
    material: paper
    display name: <&3>Far
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9004

disc_5:
    type: item
    debug: false
    material: paper
    display name: <&3>5
    lore: 
    - <&7>Credits: Samuel Åberg
    mechanisms:
           custom_model_data: 9005

disc_6:
    type: item
    debug: false
    material: paper
    display name: <&3>Mall
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9006

disc_7:
    type: item
    debug: false
    material: paper
    display name: <&3>Mellohi
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9007

disc_8:
    type: item
    debug: false
    material: paper
    display name: <&3>Stal
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9008

disc_9:
    type: item
    debug: false
    material: paper
    display name: <&3>Strad
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9009

disc_10:
    type: item
    debug: false
    material: paper
    display name: <&3>Ward
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9010

disc_11:
    type: item
    debug: false
    material: paper
    display name: <&3>11
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9011

disc_12:
    type: item
    debug: false
    material: paper
    display name: <&3>Wait
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9012

disc_13:
    type: item
    debug: false
    material: paper
    display name: <&3>13
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9013

disc_14:
    type: item
    debug: false
    material: paper
    display name: <&3>Pigstep
    lore:
    - <&7>Credits: Lena Raine
    mechanisms:
           custom_model_data: 9015

disc_15:
    type: item
    debug: false
    material: paper
    display name: <&3>Otherside
    lore:
    - <&7>Credits: Lena Raine
    mechanisms:
           custom_model_data: 9014

disc_16:
    type: item
    debug: false
    material: paper
    display name: <&3>Relic
    lore:
    - <&7>Credits: Aaron Cherof
    mechanisms:
           custom_model_data: 9016

disc_17:
    type: item
    debug: false
    material: paper
    display name: <&a>Key
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9017

disc_18:
    type: item
    debug: false
    material: paper
    display name: <&a>Door
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9018

disc_19:
    type: item
    debug: false
    material: paper
    display name: <&a>Subwoofer Lullaby
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9019

disc_20:
    type: item
    debug: false
    material: paper
    display name: <&a>Death
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9020

disc_21:
    type: item
    debug: false
    material: paper
    display name: <&a>Living Mice
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9021

disc_22:
    type: item
    debug: false
    material: paper
    display name: <&a>Moog City
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9022

disc_23:
    type: item
    debug: false
    material: paper
    display name: <&a>Haggstrom
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9023

disc_24:
    type: item
    debug: false
    material: paper
    display name: <&a>Minecraft
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9024

disc_25:
    type: item
    debug: false
    material: paper
    display name: <&a>Oxygène
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9025

disc_26:
    type: item
    debug: false
    material: paper
    display name: <&a>Équinoxe
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9026

disc_27:
    type: item
    debug: false
    material: paper
    display name: <&a>Mice On Venus
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9027

disc_28:
    type: item
    debug: false
    material: paper
    display name: <&a>Dry Hands
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9028

disc_29:
    type: item
    debug: false
    material: paper
    display name: <&a>Wet Hands
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9029

disc_30:
    type: item
    debug: false
    material: paper
    display name: <&a>Clark
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9030

disc_31:
    type: item
    debug: false
    material: paper
    display name: <&a>Chris
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9031

disc_32:
    type: item
    debug: false
    material: paper
    display name: <&a>Excuse
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9032

disc_33:
    type: item
    debug: false
    material: paper
    display name: <&a>Danny
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9033

disc_34:
    type: item
    debug: false
    material: paper
    display name: <&a>Beginning
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9034

disc_35:
    type: item
    debug: false
    material: paper
    display name: <&6>Droopy Likes Ricochet
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9035

disc_36:
    type: item
    debug: false
    material: paper
    display name: <&6>Droopy Likes Your Face
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9036

disc_37:
    type: item
    debug: false
    material: paper
    display name: <&6>Ki
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9037

disc_38:
    type: item
    debug: false
    material: paper
    display name: <&6>Alpha
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9038

disc_39:
    type: item
    debug: false
    material: paper
    display name: <&6>Dead Voxel
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9039

disc_40:
    type: item
    debug: false
    material: paper
    display name: <&6>Blind Spots
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9040

disc_41:
    type: item
    debug: false
    material: paper
    display name: <&6>Flake
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9041

disc_42:
    type: item
    debug: false
    material: paper
    display name: <&6>Moog City 2
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9042

disc_43:
    type: item
    debug: false
    material: paper
    display name: <&6>Concrete Halls
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9043

disc_44:
    type: item
    debug: false
    material: paper
    display name: <&6>Biome Fest
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9044

disc_45:
    type: item
    debug: false
    material: paper
    display name: <&6>Mutation
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9045

disc_46:
    type: item
    debug: false
    material: paper
    display name: <&6>Haunt Muskie
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9046

disc_47:
    type: item
    debug: false
    material: paper
    display name: <&6>Warmth
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9047

disc_48:
    type: item
    debug: false
    material: paper
    display name: <&6>Floating Trees
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9048

disc_49:
    type: item
    debug: false
    material: paper
    display name: <&6>Aria Math
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9049

disc_50:
    type: item
    debug: false
    material: paper
    display name: <&6>Kyoto
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9050

disc_51:
    type: item
    debug: false
    material: paper
    display name: <&6>Ballad Of The Cats
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9051

disc_52:
    type: item
    debug: false
    material: paper
    display name: <&6>Taswell
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9052

disc_53:
    type: item
    debug: false
    material: paper
    display name: <&6>Beginning 2
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9053

disc_54:
    type: item
    debug: false
    material: paper
    display name: <&6>Dreiton
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9054

disc_55:
    type: item
    debug: false
    material: paper
    display name: <&6>The End
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9055

disc_56:
    type: item
    debug: false
    material: paper
    display name: <&6>Eleven
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9056

disc_57:
    type: item
    debug: false
    material: paper
    display name: <&6>Intro
    lore:
    - <&7>Credits: C418
    mechanisms:
           custom_model_data: 9057

boombox_logic:
    type: world
    debug: false
    events:
        on player clicks stop_music in boombox_menu_discs:
        - adjust <player> stop_sound:RECORDS
        on player clicks stop_music in boombox_menu_alpha:
        - adjust <player> stop_sound:RECORDS
        on player clicks stop_music in boombox_menu_beta:
        - adjust <player> stop_sound:RECORDS
        on player clicks next_boombox in boombox_menu_discs:
        - inventory open d:boombox_menu_alpha
        - if <player.flag[disc_35_unlocked]>:
          - inventory set slot:29 destination:<player.open_inventory> o:<item[disc_35]>
        - if <player.flag[disc_36_unlocked]>:
          - inventory set slot:35 destination:<player.open_inventory> o:<item[disc_36]>
        on player clicks unlock_disc in boombox_menu_discs:
        - inventory open d:mitch_menu
        on player clicks next_boombox in boombox_menu_alpha:
        - inventory open d:boombox_menu_beta
        on player clicks last_boombox in boombox_menu_alpha:
        - inventory open d:boombox_menu_discs
        on player clicks last_boombox in boombox_menu_beta:
        - inventory open d:boombox_menu_alpha
        - if <player.flag[disc_35_unlocked]>:
          - inventory set slot:29 destination:<player.open_inventory> o:<item[disc_35]>
        - if <player.flag[disc_36_unlocked]>:
          - inventory set slot:35 destination:<player.open_inventory> o:<item[disc_36]>
        on player clicks disc_1 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:cat
        - wait 178s
        - inventory adjust d:boombox_menu_discs slot:33
        on player clicks disc_2 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:blocks
        on player clicks disc_3 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:chirp
        on player clicks disc_4 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:far
        on player clicks disc_5 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:5
        on player clicks disc_6 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:mall
        on player clicks disc_7 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:mellohi
        on player clicks disc_8 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:stal
        on player clicks disc_9 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:strad
        on player clicks disc_10 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:ward
        on player clicks disc_11 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:11
        on player clicks disc_12 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:wait
        on player clicks disc_13 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:13
        on player clicks disc_14 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:pigstep
        on player clicks disc_15 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:otherside
        on player clicks disc_16 in boombox_menu_discs:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox_disc def:relic
        on player clicks disc_17 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:key
        on player clicks disc_18 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:door
        on player clicks disc_19 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:subwoofer_lullaby
        on player clicks disc_20 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:death
        on player clicks disc_21 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:living_mice
        on player clicks disc_22 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:moog_city
        on player clicks disc_23 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:haggstrom
        on player clicks disc_24 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:minecraft
        on player clicks disc_25 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:oxygene
        on player clicks disc_26 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:equinoxe
        on player clicks disc_27 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:mice_on_venus
        on player clicks disc_28 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:dry_hands
        on player clicks disc_29 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:wet_hands
        on player clicks disc_30 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:clark
        on player clicks disc_31 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:chris
        on player clicks disc_32 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:excuse
        on player clicks disc_33 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:danny
        on player clicks disc_34 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:beginning
        on player clicks disc_35 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:droopy_likes_ricochet
        on player clicks disc_36 in boombox_menu_alpha:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:droopy_likes_your_face
        on player clicks disc_37 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:ki
        on player clicks disc_38 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:alpha
        on player clicks disc_39 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:dead_voxel
        on player clicks disc_40 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:blind_spots
        on player clicks disc_41 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:flake
        on player clicks disc_42 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:moog_city_2
        on player clicks disc_43 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:concrete_halls
        on player clicks disc_44 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:biome_fest
        on player clicks disc_45 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:mutation
        on player clicks disc_46 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:haunt_muskie
        on player clicks disc_47 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:warmth
        on player clicks disc_48 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:floating_trees
        on player clicks disc_49 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:aria_math
        on player clicks disc_50 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:kyoto
        on player clicks disc_51 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:ballad_of_the_cats
        on player clicks disc_52 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:taswell
        on player clicks disc_53 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:beginning_2
        on player clicks disc_54 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:dreiton
        on player clicks disc_55 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:the_end
        on player clicks disc_56 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:eleven
        on player clicks disc_57 in boombox_menu_beta:
        - inventory close
        - adjust <player> stop_sound:RECORDS
        - run play_boombox def:intro

mitch_menu:
    type: inventory
    debug: false
    inventory: chest
    size: 18
    title: <&6><&l>Unlock A Golden Record
    gui: true
    slots:
    - [empty] [empty] [empty] [empty] [input] [empty] [empty] [empty] [empty]
    - [empty] [empty] [empty] [empty] [accept] [empty] [empty] [empty] [empty]

input:
    type: item
    display name: <&3><&l>Input Your Record!
    debug: false
    material: cyan_stained_glass_pane
accept:
    type: item
    display name: <&2><&l>Accept
    debug: false
    material: lime_stained_glass_pane

mitch_logic:
    type: world
    debug: false
    events:
        on player clicks in mitch_menu slot:5:
        - if <player.item_on_cursor.script> == <script[disc_35]> && <player.open_inventory.slot[5].script> == <script[input]>:
          - adjust <player> item_on_cursor:air
          - inventory set slot:5 destination:<player.open_inventory> o:<item[disc_35]>
        - else if <player.open_inventory.slot[5].script> == <script[disc_35]>:
          - adjust <player> item_on_cursor:disc_35
          - inventory set slot:5 destination:<player.open_inventory> o:<item[input]>
        - else if <player.item_on_cursor.script> == <script[disc_36]> && <player.open_inventory.slot[5].script> == <script[input]>:
          - adjust <player> item_on_cursor:air
          - inventory set slot:5 destination:<player.open_inventory> o:<item[disc_36]>
        - else if <player.open_inventory.slot[5].script> == <script[disc_36]>:
          - adjust <player> item_on_cursor:disc_36
          - inventory set slot:5 destination:<player.open_inventory> o:<item[input]>
        on player clicks in mitch_menu slot:14:
        - if <player.open_inventory.slot[5].script> == <script[disc_35]>:
          - flag <player> disc_35_unlocked:true
          - inventory set slot:5 destination:<player.open_inventory> o:<item[input]>
        - if <player.open_inventory.slot[5].script> == <script[disc_36]>:
          - flag <player> disc_36_unlocked:true
          - inventory set slot:5 destination:<player.open_inventory> o:<item[input]>