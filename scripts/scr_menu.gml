switch(mpos)
{
    case 0:
    {
        
        room_goto(rm_open_vid);
        audio_stop_sound(bmg_start_screen);
        break;
    }
    case 1:
    {
        room_goto(rm_continue);
        audio_stop_sound(bmg_start_screen);
        break;
    }
    case 2:
    {
        room_goto(rm_end_credits);
        audio_stop_sound(bmg_start_screen);
    break;
    }
    case 3: 
    {
    room_goto(rm_diagram);
    audio_stop_sound(bmg_start_screen); 
    break;
    }
    case 4:
    {
        game_end();
        break;
    }
    default: break;
}
