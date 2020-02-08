## Overview of the Project

The purpose of the project is to create text-prediction application with R Shiny package that predicts words using a natural language processing model i.e. creating an application based on a predictive model for text.

Given a word or phrase as input, the application will try to predict the next word, similar to the way most smart phone keyboards are implemented today using the technology of *Swiftkey*.

The predictive model will be trained using a corpus, a collection of written texts, called the **HC Corpora** which has been filtered by language.

## Overview of the Prediction Model

The prediction model uses the principles of **tidy data** applied to text mining in R. The following Key steps are involved in the prediction model.

* As an input, it takes raw text files for model training
* Clean the raw data; separate into 2, 3, 4, 5, and 6 word n grams and save as tibbles
* Sort the n grams tibbles by frequency and save the data as *.rds* files
* N grams function uses a **back-off** type prediction model
      - User supplies an input phrase
      - Model uses last 5, 4, 3, 2, or 1 words to predict the best 6th, 5th, 4th, 3rd, or 2nd   match in the data
* As an output, it predicts next word

## Next Word Predictor App

**Overview:** The Next Word Predictor app provides a simple user interface to the next word prediction model. The app takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.