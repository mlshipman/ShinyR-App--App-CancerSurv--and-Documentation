App - Cancer Survival Calculation
========================================================
author: Michael Shipman
date: August 24, 2014 
***

![alt text](www/Purple_ribbon_svg.png)

The Cancer Survival Calculation Application
========================================================
The 'App-CancerSurv' is an interactive HTML5 application written in the R language and hosted on ShinyApp.io virtual server. 

It provides the user with an awareness of the following points as applied seperately to Women and Men.
- Statistical probability of developing cancer within a lifetime.
- Statistical probability of dying of cancer within a lifetime.
- Calculated probability of surviving cancer if cancer is developed.
- Statistics as related to development of cancer in different body sites for both women and men.

The Application's Data Source and Calculation
========================================================
The application is based on the 2014 American Cancer Society's, "The Lifetime Probability of Developing and Dying from Cancer 2008-2010" study available at their website.  Thanks to the ACS for public use of the data.  

The survival calculation is a function of the probabilities of development and dying of cancer in a selected body site.  

$$Prob(Survival) = (1 - Prob(Death)/Prob(Development))*100%$$   

<small>The survival calculation is NOT provided by the ACS in their dataset, nor is the applicationto be taken as medical advice in any way!!!</small>

Application User Interaction
========================================================
The 'App-CancerSurv' application allows the user to select a specific body site of interest. The drop-down site categories in the user interface include... 

```
All Sites, Brain & ons, Breast, Colorectal, Esophagus, Hodgkin lymphoma, 
Kidney & renal pelvis, Larynx, Leukemia, Liver & intrahepatic bile duct, 
Lung & bronchus, Melanoma of skin, Myeloma, Non-Hodgkin lymphoma, 
Oral cavity & pharynx, Ovary, Pancreas, Prostate, Stomach, Testis, 
Thyroid, Urinary bladder, Uterine cervix, Uterine corpus
```

Example: Site Selected = Pancrease
========================================================
An example of the calculated survival rate of Woman or a Man that has developed pancreatic cancer would be displayed as follows.  

### Probability of Survival if Developed Cancer

```
[1] "Prob of Survival for Women =  10.81 %"
```

```
[1] "Prob of Survival for Men =  10.67 %"
```

Link to the Cancer Survival R Application
========================================================
The Cancer Survival application is hosted on the ShinyApp.io provided by the R studio, Inc. A big thanks to those guys for helping with this project.  

The URL Link to the application...
http://mlshipman.shinyapps.io/App-CancerSurv  

This Shiny R application is a class project for "Creating Data Products" offered on Coursera.org.  The course is provided by John's Hopkins University as one course in the "Data Science Specialization" series.  A big thank you to their time and effort as well!


