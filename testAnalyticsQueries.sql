-- --------------------------------------------------------------

-- #1  Displays all answers of a certain quiz with the branch of knowledge and points for it

SELECT quizDetail.ID as answerId, quizDetail.IDquiz as quizID, questionsLibrary.question, knowledgeLibrary.description, quizDetail.Score 
From quizDetail, questionsLibrary, knowledgeLibrary
WHERE quizDetail.IDquestionsLib = questionsLibrary.ID and knowledgeLibrary.ID = questionsLibrary.IDknowledgeLibrary and quizDetail.IDquiz = 1

-- --------------------------------------------------------------

-- #2  Same as above but organized within the branch of knowledge

SELECT quizDetail.ID, quizDetail.IDquiz, questionsLibrary.question, knowledgeLibrary.description, quizDetail.Score  
From quizDetail, questionsLibrary, knowledgeLibrary 
WHERE quizDetail.IDquestionsLib = questionsLibrary.ID and knowledgeLibrary.ID = questionsLibrary.IDknowledgeLibrary  and quizDetail.IDquiz = 1 
ORDER BY knowledgeLibrary.ID

-- --------------------------------------------------------------

-- #3  Displays every entry inside quizDetail table groupped by the subject 
--and summed to output the results of the quiz, as well as quizID 

SELECT quizDetail.ID, quizDetail.IDquiz as quizID, knowledgeLibrary.Category , SUM(quizDetail.Score) 
From quizDetail, questionsLibrary, knowledgeLibrary 
WHERE quizDetail.IDquestionsLib = questionsLibrary.ID and knowledgeLibrary.ID = questionsLibrary.IDknowledgeLibrary 
group by quizDetail.IDquiz, knowledgeLibrary.ID

-- ---------------------------------------------------------------

--#4 Dipslays scores of a certain test divided to separate branch of knowledges and 
--   organsizes it in a descending order showing the one with the most points

SELECT quizDetail.ID, quizDetail.IDquiz, knowledgeLibrary.Category , SUM(quizDetail.Score) as score 
From quizDetail, questionsLibrary, knowledgeLibrary
WHERE quizDetail.IDquestionsLib = questionsLibrary.ID and knowledgeLibrary.ID = questionsLibrary.IDknowledgeLibrary and quizDetail.IDquiz = 2 
group by quizDetail.IDquiz, knowledgeLibrary.ID 
order by score desc