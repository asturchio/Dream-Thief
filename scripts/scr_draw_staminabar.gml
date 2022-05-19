x1 = 8; // X anchor point
y1 = 20; // Y anchor point
x2 = 98; // width
y2 = 28; // height
amount = stamina / maxstamina; // This should be a variable, such as "myHealth"...is a percentage (0-100)
bgCol = c_black;
minCol = c_yellow;
maxCol = c_yellow;
dirBar = 0; // 0 = drains right, 1 = drains left, 2 = drains up, 3 = drains down
showBack = true;
showBord = false;


//Draw main Box
if showBack == true
{
    draw_set_color(bgCol);
    draw_rectangle(x1, y1, x2, y2, false);
}

// Draw Health
if amount > 1 
{
    draw_set_color(maxCol);
    draw_rectangle(x1, y1, x2, y2, false);
}
else if amount <= 1 && amount > 0 
{
    draw_set_color(merge_color(minCol,maxCol,amount));

    if (dirBar == 0)
    {
        draw_rectangle(x1, y1, x1 + ((x2-x1)*amount), y2, false);
    } 
    else if (dirBar == 1)
    { 
        draw_rectangle(x2, y1, x2 - ((x2-x1)*amount), y2, false);
    } 
    else if (dirBar == 2)
    {
        draw_rectangle(x1, y1, x2, y1 + ((y2-y1)*amount), false);
    } 
    else if (dirBar == 3)
    {
        draw_rectangle(x1, y2, x2, y2 - ((y2-y1)*amount), false);

    }
}

//Draw Box outline
if showBord == true
{
    draw_set_color(c_black);
    draw_rectangle(x1, y1, x2, y2, true);
}
