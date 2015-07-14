%%
% Descriptions 
% iist := Base State Matrix of System 
% actumx := Actuation Matrix
% dim :=
% movrep :=
% movra :=
% sac := sac=iist+actumx  Base State Matrix of System  +  Actuation Matrix
% f :=
% bnd :=Surrounding Matrix [Up,Right,Down,Left] 

function [sac,f,bnd] = wmsk(iist,actumx,dim,movrep,movra)
bnd = zeros(1,4) ;%# bound 
f=0;
%% Start The Actuation

sac=iist+actumx ;                   
temp = zeros(size(sac));
temp10 = zeros(size(sac));
temp210 = zeros(size(sac));
[i6,j6] = find(sac > 4);     %# Find 6 Cells
loc6=[i6,j6] ;               %# Location Of the 6 
sizebigcell=(size(loc6));
im =sizebigcell(1,1);        %# Number Of the Cell Withe  contenet biger tahn 4
         
%% 
while(im>=1)
   f=f+1; 
  %  Cheke
[i6,j6] = find(sac > 4);     %# Find 6 Cells
loc6=[i6,j6] ;               %# Location Of the 6 
sizebigcell=(size(loc6));
im =sizebigcell(1,1);        %# Number Of the Cell Withe  cntenet biger tahn 4 
%  Cheke
for i=1:im,
        location= loc6(i,:);
        ly=location(1,1);
        lx=location(1,2);
        temp(ly,lx)  = sac(ly,lx)-2;
        sac(ly,lx)  = sac(ly,lx)-temp(ly,lx);
if( ly<dim) %# Cheke for down End  Row
if((sac(ly+1,lx)+temp(ly,lx))<=10) %# Cheke for down 
sac(ly+1,lx)= sac(ly+1,lx)+temp(ly,lx);
else
temp10(ly,lx)=sac(ly+1,lx)+temp(ly,lx)-10;
sac(ly+1,lx)= 10;
if(lx-1>=1 && sac(ly+1,lx-1)+temp10(ly,lx)<=10 ) %# Cheke for down left and left End  Row     
sac(ly+1,lx-1)= sac(ly+1,lx-1)+temp10(ly,lx);
else
if(lx-1<1) %# Cheke for left End  Row
bnd(1,2) = bnd(1,2) + temp10(ly,lx); %# bound left
else
temp210(ly,lx)= sac(ly+1,lx-1)+temp10(ly,lx)-10;    
if(lx+1<=dim && (sac(ly+1,lx+1)+temp210(ly,lx))<=10) %# Cheke for down right and right End  Row
sac(ly+1,lx+1)= sac(ly+1,lx+1)+temp210(ly,lx);
else
if(lx+1>=dim)
bnd(1,4) = bnd(1,4) + temp210(ly,lx); %# bound left
else     
end
end
end
end
end
else
bnd(1,3) = bnd(1,3) + temp(ly,lx); %# bound down  
end
end
mskgrp(sac,dim);        %#
M(f) = getframe;        %#   
end
movie(M,movrep,movra);







