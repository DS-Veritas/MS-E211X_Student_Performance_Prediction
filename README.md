## MS-E211X_Student_Performance_Prediction
A project for the course Multivariate Statistical Analysis (MS-E2112) to predict students' performance in the final exam, based on a number of variables with respect to each student. 

### Documents
[Final Report](Final_Report_Project_Football_Result.pdf)

### Motivation
Football is more of a business now than it has ever been. There is an unprecedented influx of money into football business and clubs are trying so hard to win the game, stay
at the top of the league to ensure the popularity and the money comes from it. And this phenomenon has paved a way for data analytics to play an important part in football
industry to increase the winning possibility. The advance of new technology over the past years allowed us to collect new types (such as, player’s running distance
through GPS technology) and large amount of data per game. And the emergence of new Machine Learning techniques and tools made it possible to analyze those data with better predictive performance. Now we can develop better models that enable us to predict even the outcome of a match and the final score. 

### Objectives
The objective of this project is to explore different existing machine learning techniques to predict two football game outcomes: Full Time Goals and whether the game will be
interesting or not (final goal difference is more or equal to 3 goals), by exploiting the results data of the Premier league in seasons 2016, 2017 and 2018.

### Data Description
The data was distributed by Football-Data.co.uk. 
- football train x: contains 798 observations and 13 columns as features.
- football train y: contains the labels “FTG" (full time goal which is the total number of goals in the whole match) that you will need for the regression task and “Interest" for classification for these 798 observations.
- football test x and football test y sets have the same respective structure and contain 342 observations.
