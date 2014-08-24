#Cancer Survival Calc App for R - User Interface
#Based on American Cancer Society Survival Data from 2006 to 2010

#MLS, Aug 18, 2014

library(shiny)

shinyUI(pageWithSidebar(
                headerPanel("US Cancer Statistics and Survival Rates"),
                
                sidebarPanel(
                        h6("Select a body site of interest by clicking",
                          "on the drop-down selections below."),
                        selectInput("site", 
                                    label = "Select Cancer Site",
                                    choices = list("All Sites", "Brain & ons",
                                                   "Breast", "Colorectal",
                                                   "Esophagus", "Hodgkin lymphoma",
                                                   "Kidney & renal pelvis", "Larynx",
                                                   "Leukemia", "Liver & intrahepatic bile duct",
                                                   "Lung & bronchus", "Melanoma of skin",
                                                   "Myeloma", "Non-Hodgkin lymphoma",
                                                   "Oral cavity & pharynx", "Ovary",
                                                   "Pancreas", "Prostate",
                                                   "Stomach", "Testis",
                                                   "Thyroid", "Urinary bladder",
                                                   "Uterine cervix", "Uterine corpus"),
                                    selected = "All Sites"),
                        br(),
                        img(src = "Purple_ribbon_svg.png", height = 175, width = 175),
                        br(),
                        p("Special Notes:"),
                        textOutput("SpNote")
                        ),
                
                mainPanel(
                        h3(textOutput("siteID")),
                        h4("Probability of Developing Cancer"),
                        p("Lifetime probability of developing cancer at the selected site based ",
                           "on data collected by the American Cancer Society medical survey ",
                           "from 2006 to 2010 within the United States"),
                        br(),
                        h5(textOutput("DevWmn")),
                        h5(textOutput("DevMn")),
                        br(),
                        h4("Probability of Dying from the Cancer"),
                        p("Lifetime probability of dying of cancer at the selected site based ",
                           "on data collected by the American Cancer Society medical survey ",
                           "from 2006 to 2010 within the United States"),
                        br(),
                        h5(textOutput("DthWmn")),
                        h5(textOutput("DthMn")),
                        br(),
                        h4("Probability of Survival if Developed Cancer"),
                        p("The calculated lifetime probability of survival given cancer has developed ",
                           "at the site of interest using the US cancer development and ",
                          "death rates provided by the American Cancer Society."),
                        br(),
                        h5(textOutput("SrvlWmn")),
                        h5(textOutput("SrvlMn")),
                        br(),
                        p("Datasource: American Cancer Society Website,'The Lifetime Probability",
                        "of Developing and Dying from Cancer 2008-2010', ACS Surveillance",
                        "Research, 2014", style = "font-family: 'times'; font-si4pt"),
                        p("http://www.cancer.org/acs/groups/content/@research/documents/document",
                          "/acspc-041777.pdf", style = "font-family: 'times'; font-si4pt")
                        )
                )
        )