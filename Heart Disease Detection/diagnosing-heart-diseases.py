#Importing Libraries

import numpy as np
import pandas as pd                     # reading csv file
import matplotlib.pyplot as plt 
import seaborn as sns                   #for plotting
​
from sklearn.ensemble import RandomForestClassifier             #for the model
from sklearn.tree import DecisionTreeClassifier
​
from sklearn.metrics import classification_report          #for model evaluation
from sklearn.metrics import confusion_matrix             #for model evaluation
from sklearn.model_selection import train_test_split     #for data splitting
​
#Reading the Data from the file
data = pd.read_csv('heart.csv')

#Reading the first 10 rows of the file
data.head(10)
data.head(10)

#Reading 10 random samples from the file
data.sample(10)

#Reading the columns of the table
data.columns

#Total number of rows in the csv file
data.shape    # 303 records

# checking if the data set is balanced
numberOfPosPatients = data.loc[data.target == 1].count()
numberOfNegPatients = data.loc[data.target == 0].count()
print("Positive count " + str(numberOfPosPatients))
print("Negative count " + str(numberOfNegPatients))


#Plotting a bar graph against the number
x = [0,1]
y = [138, 165]
​
plt.title("Distribution")
plt.ylabel("Number of records")
plt.xlabel("Targets")
plt.bar(x,y)
plt.show()


#Creating the dependent and independent variables with their labels
X_train, X_test, y_train, y_test = train_test_split(data.drop('target', 1), data['target'], test_size = .2, random_state=10) #split the data
X_train.shape, y_train.shape, X_test.shape, y_test.shape     # 303 rows

#Implementing Oversampling for handling Imbalanced data
from imblearn.combine import SMOTETomek
smk = SMOTETomek(random_state=69)
X_train, y_train = smk.fit_sample(X_train, y_train)
X_test, y_test = smk.fit_sample(X_test, y_test)
X_train.shape, y_train.shape, X_test.shape, y_test.shape


#Changing the column names to a more clearer name
data.columns = ['age', 'sex', 'chest_pain_type', 'resting_blood_pressure', 'cholesterol', 'fasting_blood_sugar', 'rest_ecg', 'max_heart_rate_achived',
       'exercise_induced_angina', 'st_depression', 'st_slope', 'num_major_vessels', 'thalassemia', 'target']
data.columns  # columns are now changed to a meaningful set of columns


data.sample(10)

data.dtypes

#Exploratory Data Analysis

plt.plot(data['age'].value_counts().sort_index())
plt.figure(figsize=(15,4))
plt.show()


sns.pairplot(data)

#Checking for null values
data.isnull().values.any()

from sklearn.metrics import confusion_matrix, accuracy_score, recall_score, precision_score
from sklearn.model_selection import train_test_split


#Predicting using Random forest model

#
# Results (Accuracy score: 87.8%, Sensitivity: 93.9%, Specifictity: 81.8% )
#
modelRF = RandomForestClassifier(max_depth=5)
modelRF.fit(X_train, y_train)

y_predictRF = modelRF.predict(X_test)
print(y_predictRF)

# creating a confusion matrix 
cm = confusion_matrix(y_test, y_predictRF) 
ac = accuracy_score(y_test, y_predictRF)
rs = recall_score(y_test, y_predictRF, average=None)
ps = precision_score(y_test, y_predictRF, average=None)

print("Confusion matrix: " + str(cm))
print("Accuracy score: " + str(ac*100)+"%")
print("Recall score: " + str(rs))
print("Precision score: " + str(ps))

TP = cm[1, 1]
TN = cm[0, 0]
FP = cm[0, 1]
FN = cm[1, 0]

sensitivity = TP/(TP+FN)
specificity = TN/(TN+FP)

"Sensitivity: {}% | Specifictity: {}%".format(sensitivity*100, specificity*100)



#Predicting using the Descision Tree Classifier


#
# Results (Accuracy score: 73.3%, Sensitivity: 73.3%, Specifictity: 73.3% )
#
from sklearn.tree import DecisionTreeClassifier 

dtree_model = DecisionTreeClassifier(max_depth = 2).fit(X_train, y_train) 
dtree_predictions = dtree_model.predict(X_test) 

# creating a confusion matrix 
cm = confusion_matrix(y_test, dtree_predictions) 
ac = accuracy_score(y_test, dtree_predictions)
rs = recall_score(y_test, dtree_predictions, average=None)
ps = precision_score(y_test, dtree_predictions, average=None)

print("Confusion matrix: " + str(cm))
print("Accuracy score: " + str(ac*100))
print("Recall score: " + str(rs))
print("Precision score: " + str(ps))

TP = cm[1, 1]
TN = cm[0, 0]
FP = cm[0, 1]
FN = cm[1, 0]

sensitivity = TP/(TP+FN)
specificity = TN/(TN+FP)

"Sensitivity: {}% | Specifictity: {}%".format(sensitivity*100, specificity*100)
























