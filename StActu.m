function [ SMD,AMD,TMD] = StActu( SM,AM )

TM=SM+AM;


 SM3D= SM;
 AM3D= AM;
 TM3D= TM;



while max(TM)>=6
TMi=TM;
[SMo,AMo,stateo]=Rul(TMi);
TM=SMo+AMo;  

SM3D= cat(3, SM3D, SMo);
AM3D= cat(3, AM3D, AMo);
TM3D= cat(3, TM3D, TM);

end

SMD=SM3D;
AMD=AM3D;
TMD=TM3D;
end


