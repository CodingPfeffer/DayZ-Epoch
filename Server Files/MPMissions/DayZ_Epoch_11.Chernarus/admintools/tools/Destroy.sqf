if (isnil ("Destroy")) then 
{
    Destroy = 0;
};
 
if (Destroy==0) then
{
    cutText ["Destroy activated.", "PLAIN"];
    Destroy=1;
}
else
{
    cutText ["Destroy deactivated.", "PLAIN"];
    Destroy=0;
};
 
DestroyIT = "while {Destroy==1} do{cursorTarget setdammage 1;};";
 
[] spawn compile DestroyIT;