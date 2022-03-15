clc
clear all
close all

n = 10;
no_digits = 2;
score = 0;
no_correct = 0;
no_wrong = 0;

for i=1:n
  x = randi([10^(no_digits-1) 10^(no_digits)-1]);
  y = randi([10^(no_digits) 10^(no_digits+1)-1]);
  disp([num2str(x)," x ",num2str(y)," = "])
  answer = input("Answer: ");
  if answer==x*y
    disp("Correct\n")
    score+=4;
    no_correct+=1;
  else
    disp("Wrong\n")
    score-=1;
    no_wrong-=1;
  endif
endfor

disp(["Total score = ",num2str(score),"/40"])
disp(["Correct: = ",num2str(no_correct)," Wrong:",num2str(no_wrong)])