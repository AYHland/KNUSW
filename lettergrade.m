function grade = lettergrade(score)
if (score >= 90 & score <=100)
    grade = 'A'
elseif (score >=80 & score <90)
    grade = 'B'
elseif (score >=70 & score <80)
    grade = 'C'
elseif (score >=60 & score <70)
    grade ='D'
elseif (score < 60 & score >=0)
     grade = 'F'
else
    disp('Enter correct score (0~100)')
end
