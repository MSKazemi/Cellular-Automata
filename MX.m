function [ output_args ] = MX( input_args )

%MX Summary of this function goes here
%   Detailed explanation goes here
for i= 1:10
SMX0=[...
0	0	2	4	2	0	2	2	2	0;
2	0	4	0	0	2	2	4	2	4;
2	2	2	2	4	0	2	0	0	2;
4	4	2	0	2	0	4	4	4	0;
0	2	0	2	4	2	2	0	4	2;
2	4	2	4	0	2	4	2	2	2;
2	2	2	2	0	4	2	4	0	4;
2	0	0	4	4	2	4	2	0	2;
4	2	2	2	0	0	2	2	2	2;
0	0	0	2	2	0	4	2	0	0
];

AMX0=zeros(10)
SMX1=SMX0;
AMX1=[...
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
SMX2=SMX1+AMX1;
AMX2=0;


end
end








