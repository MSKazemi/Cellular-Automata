function [ output_args ] = Shift( input_args )
%SHIFT Summary of this function goes here
%   Detailed explanation goes here
d=size(input_args);
i=d(1,1);
j=d(1,2);
input_args(i,:)=[];
z=zeros(1,j);
output_args=cat(1,z,input_args);

end

