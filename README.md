Getting and Cleaning Data Course Project
========================================

This repository contains R Script and code book for cleaning a
subset of data from an activity recognition experiment at the UCI
Center for Machine Learning. The processing done by this project
extracts a small subset of the data (mean and standard Deviation
of the Magnitude of the Acceleration experienced by the body and
cell phone of the subject) and further processes that data to find
the mean-mean and mean-stddev for the various activities.

Full deatails of the original experiment and associated data
can be found at:

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script, named run_analysis.R, reads the datasets from the original
experiment form the working directory of the current R session.
The script does not require inputs but does require the reshape2
and plyr R packages. The output of the script is a new text file
fwritten to the working directory of the session.

All original data is used under license as follows:
Use of this dataset in publications must be acknowledged by
referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and 
Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using
a Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012).
Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or
explicit can be addressed to the authors or their institutions for
its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

