switch(mpos)
{
    case 0:
    {
    instance_create(x,y,obj_player_stats);
    instance_create(896,672,obj_player);
    room_goto(rm_bao_1);
    break;
    }
    case 1:
    {
    instance_create(x,y,obj_player_stats);
    instance_create(320,288,obj_player);
    with(obj_player_stats)
    {
    level += 4;
    maxhp += 10;
    hp = maxhp;
    maxstamina += 10;
    stamina = maxstamina;
    maxexpr += 50;
    attack += 5;
    }
    room_goto(rm_adam_1);

    break;
    }
    case 2:
    {
    instance_create(x,y,obj_player_stats);
    instance_create(960,680,obj_player);
    with(obj_player_stats)
    {
      level += 6;
    maxhp += 14;
    hp = maxhp;
    maxstamina += 14;
    stamina = maxstamina;
    maxexpr += 320;
    attack += 5;
    }
    room_goto(rm_huell_lv1);
    break;
    }
    case 3:
    {
   instance_create(x,y,obj_player_stats);
   instance_create(256,312,obj_player);
    with(obj_player_stats)
    {
    level += 7;
    maxhp += 16;
    hp = maxhp;
    maxstamina += 16;
    stamina = maxstamina;
    maxexpr += 320;
    attack += 7;
    }
    room_goto(rm_key1);
    break;
    }
    case 4:
    {
    room_goto(rm_mainMenu);
    break;
    }
}
