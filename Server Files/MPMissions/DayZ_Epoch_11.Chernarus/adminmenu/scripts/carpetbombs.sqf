bombs={
	_pos = [_this select 0, _this select 1, _this select 2];


_radius=150;
_Bombs=random 20;
_jackup=100;

"G_40mm_HE" createvehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500]; 
"G_40mm_HE" createvehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500]; 

for "_i" from 0 to (10+_Bombs) do
{
"G_40mm_HE" createvehiclelocal [(_pos select 0) - random _radius , (_pos select 1) - random _radius, _jackup+random 500]; 
"G_40mm_HE" createvehiclelocal [(_pos select 0) + random _radius , (_pos select 1) + random _radius, 100+random 500]; 
"G_40mm_HE" createvehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500]; 
"G_40mm_HE" createvehiclelocal [(_pos select 0) - random _radius , (_pos select 1) - random _radius, _jackup+random 500]; 
"G_40mm_HE" createvehiclelocal [(_pos select 0) + random _radius , (_pos select 1) + random _radius, 100+random 500]; 
"G_40mm_HE" createvehiclelocal [(_pos select 0)  , (_pos select 1) , 100+random 500]; 

_jackup=_jackup+20;
};

hint "CARPETBOMBS INCOMMING \n RUN!";


	onMapSingleClick "";
	openMap [false, false];
};

openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call bombs";