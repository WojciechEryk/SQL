#select * from questions where id=15;
#select question from questions where correctAnswer = 'a';
#select question, answerb from questions where correctAnswer = 'b' and year > 2008;
#select question, correctanswer from questions where question like 'Jak%';
#select * from questions where correctAnswer = 'c' or correctAnswer ='b';
#select question from questions where category ='programowanie';
#select question from questions where question like '%klaster%';
#select question from questions order by question ASC;
#select * from questions where id >=6 and id <=10;
#select id, question, answera, answerb, answerc, answerd, correctAnswer, category from questions where year=2007;
#select question from questions where category = 'multimedia i grafika' or category = 'programowanie';


