%**************************************************************************************************%
%Question:
% In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
% 
% 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
% It is possible to make £2 in the following way:
% 
% 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
% How many different ways can £2 be made using any number of coins?
%*************************************************************************************************%
%Solution - Vani Malyala
%Solution explained : (seperate word document fully 'Solution2_explanation')
% Let’s assume coins are represented by ‘i’ and values are represented by ‘j’ and the table the calculates the number of ways is T
% 
% 1)	If  ‘j’ is less than coins(i) then the number of ways is T(i,j)=T(i-1,j)
% 2)	If ‘j’ is equal to coins (i), then the number of ways is T(i,j) = T(i-1,j)+1
% 3)	If ‘j’ is greater than coins(i) the  number of ways is T(i,j)=T(i-1,j)+ T(i,j-coins(i))

T=zeros(8,200);                % Intial value of the table T that calculates number of ways
coins=[1 2 5 10 20 50 100 200];% available coins
value=1:200;                   % values calculated
% intial conditions to adjust the problem
T(:,1)=1;
T(1,:)=1;

% looping to fill the table 
for i = 2:length(coins)
    for j= 1:numel(value)
       if (coins(i)>j)
           T(i,j)=T(i-1,j);
     
       elseif (coins(i)==j)
           T(i,j) = T(i-1,j)+1;     
       else 
           T(i,j)=T(i-1,j)+ T(i,j-coins(i));
       end
       
    end
   
end
%printing the answer that is in the last row, last column
fprintf(1,'Number of different ways to get 2 pounds with available British coins is: %d\n',T(end,end));