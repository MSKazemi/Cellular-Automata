clc
clear

SM0=[...
0	0	2	4	2	0	2	2	2	0;
2	0	4	8	0	2	2	4	2	4;
2	2	2	2	4	0	2	0	0	2;
4	4	2	0	2	0	4	4	4	0;
0	2	0	2	4	2	2	0	4	2;
2	4	2	4	0	2	4	2	2	2;
2	2	2	2	0	4	2	4	0	4;
2	0	0	4	4	2	4	2	0	2;
4	2	2	2	0	0	2	2	2	2;
0	0	0	2	2	0	4	2	0	0
];

AM0=[...
0	0	2	2	2	0	2	2	2	0;
2	0	2	0	0	2	2	0	2	0;
2	0	0	2	2	0	2	0	0	2;
2	2	0	0	2	0	0	2	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0
]
iist2=[...
4	4	4	4	4	4	4	4	4	4;
4	4	4	4	4	4	4	4	4	4;
4	4	4	4	4	4	4	4	4	4;
4	4	4	4	4	4	4	4	4	4;
4	4	4	4	4	4	4	4	4	4;
4	4	4	4	4	4	4	4	4	4;
4	4	4	4	4	4	4	4	4	4;
4	4	4	4	4	4	4	4	4	4;
4	4	4	4	4	4	4	4	4	4;
4	4	4	4	4	4	4	4	4	4
];

actumx2=[...
0	0	2	0	2	0	2	2	2	0;
2	0	2	0	0	2	2	0	2	0;
2	0	0	2	2	0	2	0	0	2;
2	2	0	0	2	0	0	2	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0
];
[SMD,AMD,TMD]=StActu( iist2,AM0 )
%
%[ SM,AM,state ]=Rul( SM0+AM0)

 %Shift(  AM0)