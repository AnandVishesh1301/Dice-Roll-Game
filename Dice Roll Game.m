%The following code decides which player goes first based on a die roll,
%and then  decides a winner for each round by the same method

n = input("Enter the number of times you want the game to be played: ");
p1 = input("Enter the name of the player 1: " , 's');
p2 = input("Enter the name of the player 2: " , 's');
follower_score = 0;
driver_score = 0;
a = 1;
while a > 0
    roll_1 = randi([1,6], 1);
    roll_2 = randi([1,6], 1);
    if roll_1 > roll_2
        driver = p1;
        follower = p2;
        a = 0;
    elseif roll_1 == roll_2
        continue
    end
end

for k = 1 : n
    roll_2new = randi([1,6]);
    roll_1new = randi([1,6]);
    if roll_2new == roll_1new
        follower_score = follower_score + roll_1new;
        
        fprintf("The winner of round %d is: %s\n", k, p2);
    else 
        driver_score = driver_score + roll_2new;
        
        fprintf("The winner of round %d is: %s\n", k, p1);
    end
end

if follower_score > driver_score
    fprintf("%s is the winner\n", follower);
else
    fprintf("%s is the winner\n", driver);
end


    


    




    

