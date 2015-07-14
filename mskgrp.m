function  mskgrp( sac,dim )
%MSKGRP Summary of this function goes here
%   Detailed explanation goes here
mat = sac ;              %# A 5-by-5 matrix of random values from 0 to 1
imagesc(mat);            %# Create a colored plot of the matrix values
colormap(flipud(gray));  %# Change the colormap to gray (so higher values are
                         %#   black and lower values are white)

textStrings = num2str(mat(:),'%0.2f');  %# Create strings from the matrix values
textStrings = strtrim(cellstr(textStrings));  %# Remove any space padding
[x,y] = meshgrid(1:dim);   %# Create x and y coordinates for the strings
hStrings = text(x(:),y(:),textStrings(:),...      %# Plot the strings
                'HorizontalAlignment','center');
midValue = mean(get(gca,'CLim'));  %# Get the middle value of the color range
textColors = repmat(mat(:) > midValue,1,3);  %# Choose white or black for the
                                             %#   text color of the strings so
                                             %#   they can be easily seen over
                                             %#   the background color
set(hStrings,{'Color'},num2cell(textColors,2));  %# Change the text colors

set(gca,'XTick',1:dim,...                         %# Change the axes tick marks
        'XTickLabel',{'A','B','C','D','E','F','G','H','I','J'},...  %#   and tick labels
        'YTick',1:dim,...
        'YTickLabel',{'A','B','C','D','E','F','G','H','I','J'},...
        'TickLength',[0 0]);


end

