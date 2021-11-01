PROC PRINT data = sashelp.fish(obs=5);
RUN;

ODS HTML style=HTMLBlue;

PROC SGPLOT data=sashelp.fish;
Bubble x = Width y = Height size = Weight /
  BRADIUSMAX=5 
  BRADIUSMIN=5
  transparency=0;
  title 'Width vs Height vs Weight';
RUN;
/* 1, Not specify the unit for x and y variables.
   2, Despite intention of showing weight v.s. width and height but fail to show with the size of bubble.
   3, There are perception quirks in the plot (actually all bubbles are the same size).
   4, All the bubbles are assigned without transparency, thus fail to show the data gathering or dispersion.*/
