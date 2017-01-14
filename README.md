# arma3-basic-mission-template

# List of useful scripts:
## Virtual Arsenal
`["AmmoboxInit",[this,true]] call BIS_fnc_arsenal;`
## Fatigue
`player enableFatigue false;`
## Remove objects (add to game logic marker)
`{ Deletecollection _x } forEach (( nearestObjects [ getPos this , [], 50 ]) - (( getPos this ) nearObjects 50 ));`
