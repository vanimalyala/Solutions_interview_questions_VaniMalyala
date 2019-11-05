%************************************************************************************************%
%Question:
% The sum of the squares of the first ten natural numbers is,
% 
% 12 + 22 + ... + 102 = 385
% The square of the sum of the first ten natural numbers is,
% 
% (1 + 2 + ... + 10)2 = 552 = 3025
% Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 ? 385 = 2640.
% 
% Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

%*************************************************************************************************%
%Solution: Vani Malyala

%generating first 100 natural numbers
NN=1:100;
SN=0;              %initial value of square numbers
SS=0;              % initial value of sum of square numbers
for i=1:numel(NN)
   SN= SN+NN(i)^2; % computing sum of square numbers
   SS=SS+NN(i);    % computing sum of numbers
   if (i==numel(NN))
        SS= SS^2;  % computing square of sum of numbers
   end

end
difference= SS-SN;
fprintf(1,'Difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is: %d\n',difference);