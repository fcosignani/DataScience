library(ggvis)
library(dplyr)
if (FALSE) {
  library(RSQLite)
  library(dbplyr)
}

# Define server logic required to draw a graph
shinyServer(function(input, output) {
  hd <- eventReactive(
    input$calculate,
    {
      
      TestAge = as.numeric(input$age)
      
      # #Create a row of data for the user 
      # model_predict_shiny = readRDS("model_RF.rda")
      # user_data = data.frame(age = as.numeric(input$age),
      #                        gendera = as.factor(input$sex),
      #                        BMI = as.double(input$bmi),
      #                        Hypertensive = as.factor(input$hyp),
      #                        Atrialfibrillation = as.factor(input$afib),
      #                        CHD_with_no_MI = as.factor(input$chd),
      #                        Diabetes = as.factor(input$diab),
      #                        Deficiencyanemias = as.factor(input$defane),
      #                        Depression = as.factor(input$depre),
      #                        Hyperlipemia = as.factor(input$hyperl),
      #                        Renal_failure = as.factor(input$renfail),
      #                        COPD = as.factor(input$copd),
      #                        heart_rate = as.double(input$hrate),
      #                        Systolic_blood_pressure = as.double(input$syst),
      #                        Diastolic_blood_pressure = as.double(input$dias),
      #                        Respiratory_rate = as.double(input$resp),
      #                        Temperature = as.double(input$temp),
      #                        SP_O2 = as.double(input$spo2),
      #                        Urine_output = as.double(input$urine),
      #                        Hematocrit = as.double(input$hema),
      #                        RBC = as.double(input$rbc),
      #                        MCH = as.double(input$mch),
      #                        MCHC = as.double(input$mchc),
      #                        MCV = as.double(input$mcv),
      #                        RDW = as.double(input$rdw),
      #                        Leucocyte = as.double(input$leu),
      #                        Platelets = as.double(input$plate),
      #                        Neutrophils = as.double(input$neu),
      #                        Basophils = as.double(input$bas),
      #                        Lymphocyte = as.double(input$lym),
      #                        PT = as.double(input$pt),
      #                        INR = as.double(input$inr),
      #                        NT_proBNP = as.double(input$nt),
      #                        Creatine_kinase = as.double(input$creak),
      #                        Creatinine = as.double(input$crea),
      #                        Urea_nitrogen = as.double(input$urea),
      #                        Glucose = as.double(input$gluc),
      #                        Blood_potassium = as.double(input$bpot),
      #                        Blood_sodium = as.double(input$bsod),
      #                        Blood_calcium = as.double(input$bcalc),
      #                        Chloride = as.double(input$chlo),
      #                        Anion_gap = as.double(input$agap),
      #                        Magnesium_ion = as.double(input$mag),
      #                        PH = as.double(input$ph),
      #                        Bicarbonate = as.double(input$bica),
      #                        Lactic_acid = as.double(input$lacid),
      #                        PCO2 = as.double(input$pco2),
      #                        EF = as.double(input$ef))
      # 
      # #Run user-generated values in the logistic regression model for probability calculation
      # #data_balanced_over <- ovun.sample(HeartDisease ~ ., data = train, method = "over",N = 2*233377)$data
      # #model = glm(HeartDisease ~ . -PhysicalActivity, family = "binomial", data = data_balanced_over)
      # 
      # user_prediction = predict(model_predict_shiny, type="response", newdata = user_data)
      # 
      # round(user_prediction*100,2)
    })   
  
  
  output$description <-renderText({"Test"
  })
  
  output$prob_hd <- renderText({ paste0("Probability of defunction: ", hd(), "%")
  })
  
  output$test_op = renderText({paste0("Edad de Prueba: ", hd())
  })
  
  
  
}  

)  
