O.O0=0; O.O1=0;O.O2=0;O.O3=0;O.O4=0;
movi(-72,85,25,0,O)         %Va a la posicion donde esta el vaso
movi2(98,80,50,0,O)         %Lleva el vaso a la posicion del cliente
movi3(98,80,75,0,O)         %Toma altura para no chocar con el vaso 
movi3(-115,-62,75,0,O)       
movi3(-115,-62,55,0,O)      %Va a la posicion donde esta la botella
movi4(75,80,60,0,O)         %Toma la botella y la lleva al punto donde esta el cliente
movi4(75,80,60,60,O)
pause(1)
movi4(75,80,60,0,O)      %despues de servir 
movi4(-115,-62,55,0,O)   %regresa la botella
movi3(-115,-62,75,0,O)   %Toma altura para no chocar con la botella
movi5(0,0,0,0,O)         %Reposo
grid on 