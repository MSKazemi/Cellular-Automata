function [ SM,AM,state ] = Rul( TM)
%% Creat State Matrix
% state = [C,Up,Down,Left,Right]

state=zeros(100,1);
y=0;
for ii=1:10 
    for ij=1:10
        y=y+1;
oi=y;
    state(oi,1)=TM(ii,ij);
    if ii==1
        state(oi,2)=0;
    else
    state(oi,2)=TM(ii-1,ij);
    end
    if ii==10
        state(oi,3)=0;
    else
    state(oi,3)=TM(ii+1,ij);
    end
    if ij==1
        state(oi,4)=0;
    else
    state(oi,4)=TM(ii,ij-1);
    end
    if ij==10
        state(oi,5)=0;
    else
    state(oi,5)=TM(ii,ij+1);
    end 
end
end

%% Rules
SM=TM;
for q=1:10
    for z=1:10
        if SM(q,z)>=6
        SM(q,z)=2;
        end
    end
end
AM=Shift(TM-SM);
