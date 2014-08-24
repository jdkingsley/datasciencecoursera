## CodeBook for Analysis of HAR Dataset

Overview:
This small dataset is the result of cleaning, subsetting, and making tidy a much larger set of dataset derived from an experiment conducted with smartphone, captuing raw acceleration and gyroscopic samples during various activities. This reaulting dataset has been reduced to 1 independednt variable (the activity) and 2 dependednt variables as describe below.

A detailed description of the cleaning and subsetting can be found within the R script, run_analysis.R, in the form of step by step comments. 

Variables:

activity (unordered factor with 6 levels) - A description of the type of activity in progess while data collection was underway. The set of activities includes laying, sitting, standing, walking, walking upstairs, and walking downstairs.

Mean_Body_Acc_Magnitude (numeric) - This is the mean of the measurement named tBodyAccMag-mean() for a given activity. This is found in the feature list at column 201. This is a time measurement (as indicated by the t prefix). The values in the original dataset are the mean of the magnitude of the acceleration on the body. The magnitude is calculated using Euclidean norm from the 3 components (X-Y-Z) of body acceleration. Units are standard G.

StdDev_Body_Acc_Magnitude (numeric) - This is the mean of the measurement named tBodyAccMag-std() for a given activity. This is found in the feature list at column 202. This is a time measurement (as indicated by the t prefix). The values in the original dataset are the standard deviation of the magnitude of the acceleration on the body. The magnitude is calculated using Euclidean norm from the 3 components (X-Y-Z) of body acceleration. Units are standard G.


License:
The original data is used under the license as described in the README of the dataset found on:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

As foolws:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
