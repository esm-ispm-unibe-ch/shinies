#
#ThisisaShinywebapplication.Youcanruntheapplicationbyclicking
#the'RunApp'buttonabove.
#
#FindoutmoreaboutbuildingapplicationswithShinyhere:
#
#http://shiny.rstudio.com/
#

library(ggpubr)
library(shiny)
#####

mean10=c(dGU=-0.1595,`gammaGU[1]`=-0.0881,`gammaGU[2]`=0.0041,`gammaGU[3]`=0.0123,`gammaGU[4]`=0.018,`gammaGU[5]`=0.012,`gammaGU[6]`=0.0198,`gammaGU[7]`=-0.0225)
var10=structure(c(0.0054,0.00021,-9e-05,-1e-05,-3e-05,-0.00013,-0.00012,1e-05,0.00021,0.00192,9e-05,4e-05,3e-05,-2e-05,-3e-05,-5e-05,-9e-05,9e-05,0.00133,-0.00012,-0.00012,-0.00017,
2e-04,-9e-05,-1e-05,4e-05,-0.00012,0.00076,0,2e-05,2e-05,2e-05,-3e-05,3e-05,-0.00012,0,0.00075,4e-05,2e-05,-1e-05,
-0.00013,-2e-05,-0.00017,2e-05,4e-05,7e-04,1e-05,8e-05,-0.00012,-3e-05,2e-04,2e-05,2e-05,1e-05,0.00113,2e-05,
1e-05,-5e-05,-9e-05,2e-05,-1e-05,8e-05,2e-05,0.00095),.Dim=c(8L,8L),.Dimnames=
list(c("dGU","gammaGU[1]","gammaGU[2]","gammaGU[3]","gammaGU[4]","gammaGU[5]","gammaGU[6]","gammaGU[7]"),
c("dGU","gammaGU[1]","gammaGU[2]","gammaGU[3]","gammaGU[4]","gammaGU[5]","gammaGU[6]","gammaGU[7]")))

mean20=c(`d[1]`=-0.3693,`gamma[1,1]`=-0.1106,`gamma[1,2]`=-0.0107,`gamma[1,3]`=-1e-04,`gamma[1,4]`=0.0125,`gamma[1,5]`=0.0067,`gamma[1,6]`=0.0065,`gamma[1,7]`=-0.022)
var20=structure(c(0.0057,5e-04,0,-1e-04,0,-1e-04,0,1e-04,5e-04,0.0022,1e-04,0,0,0,0,0,0,1e-04,9e-04,0,-1e-04,-1e-04,1e-04,0,-1e-04,0,0,6e-04,0,0,0,0,0,0,-1e-04,0,6e-04,
0,0,0,-1e-04,0,-1e-04,0,0,6e-04,0,0,0,0,1e-04,0,0,0,8e-04,0,1e-04,0,0,0,0,0,0,8e-04),.Dim=c(8L,8L),.Dimnames=list(c("d[1]","gamma[1,1]","gamma[1,2]","gamma[1,3]",
"gamma[1,4]","gamma[1,5]","gamma[1,6]","gamma[1,7]"),c("d[1]","gamma[1,1]","gamma[1,2]","gamma[1,3]","gamma[1,4]","gamma[1,5]","gamma[1,6]","gamma[1,7]")))


mean30=c(`d[3]`=-0.2098,`gamma[3,1]`=-0.02248,`gamma[3,2]`=-0.01476,`gamma[3,3]`=-0.01242,`gamma[3,4]`=-0.0055,`gamma[3,5]`=-0.00532,`gamma[3,6]`=-0.01333,`gamma[3,7]`=0.00049)
var30=structure(c(0.004379,0.000149,-2.9e-05,3e-06,-3.5e-05,-2.7e-05,4.7e-05,-5.4e-05,0.000149,0.000893,6.1e-05,4.2e-05,2.3e-05,1.6e-05,6.2e-05,-3.1e-05,-2.9e-05,6.1e-05,0.000688,-2.8e-05,
                 -3.6e-05,-2.8e-05,7.1e-05,-2.1e-05,3e-06,4.2e-05,-2.8e-05,0.000481,-1e-06,7e-06,2e-05,1.6e-05,-3.5e-05,2.3e-05,-3.6e-05,-1e-06,0.000423,9e-06,1.7e-05,-6e-06,-2.7e-05,1.6e-05,
                 -2.8e-05,7e-06,9e-06,0.000442,5e-06,2.3e-05,4.7e-05,6.2e-05,7.1e-05,2e-05,1.7e-05,5e-06,0.000758,9e-06,-5.4e-05,-3.1e-05,-2.1e-05,1.6e-05,-6e-06,2.3e-05,9e-06,0.00046),.Dim=c(8L,
                                                                                                                                                                                                8L),.Dimnames=list(c("d[3]","gamma[3,1]","gamma[3,2]","gamma[3,3]","gamma[3,4]","gamma[3,5]","gamma[3,6]","gamma[3,7]"),c("d[3]","gamma[3,1]","gamma[3,2]","gamma[3,3]","gamma[3,4]","gamma[3,5]",
                                                                                                                                                                                                                                                                                                                          "gamma[3,6]","gamma[3,7]")))

#############
mean16=c(dGU=0.004,`gammaGU[1]`=-0.0097,`gammaGU[2]`=-0.0185,`gammaGU[3]`=0.0457,`gammaGU[4]`=-0.0531,`gammaGU[5]`=-0.0279,`gammaGU[6]`=0.0109,`gammaGU[7]`=-0.0292)
var16=structure(c(0.010378,0.001186,-0.000393,3.4e-05,-0.000323,0.000133,7.1e-05,0.000178,0.001186,0.002573,-2.6e-05,5.9e-05,
1.4e-05,0.000145,0.000105,7.4e-05,-0.000393,-2.6e-05,0.001528,-0.000181,-9e-05,-0.000207,0.000216,-3.5e-05,3.4e-05,5.9e-05,
-0.000181,0.001624,-0.000133,-6.5e-05,0.00017,-3e-06,-0.000323,1.4e-05,-9e-05,-0.000133,0.001675,7e-05,-1.5e-05,-2.2e-05,
0.000133,0.000145,-0.000207,-6.5e-05,7e-05,0.001915,0.000115,0.000197,7.1e-05,0.000105,0.000216,0.00017,-1.5e-05,0.000115,
0.002436,3e-05,0.000178,7.4e-05,-3.5e-05,-3e-06,-2.2e-05,0.000197,3e-05,0.00196),.Dim=c(8L,8L),.Dimnames=list(
c("dGU","gammaGU[1]","gammaGU[2]","gammaGU[3]","gammaGU[4]","gammaGU[5]","gammaGU[6]","gammaGU[7]"),c("dGU","gammaGU[1]",
"gammaGU[2]","gammaGU[3]","gammaGU[4]","gammaGU[5]","gammaGU[6]","gammaGU[7]")))

mean26=c(`d[1]`=-0.2521,`gamma[1,1]`=-0.0248,`gamma[1,2]`=-0.0017,`gamma[1,3]`=0.0141,`gamma[1,4]`=-0.0081,`gamma[1,5]`=-0.022,`gamma[1,6]`=0.0026,`gamma[1,7]`=-0.0382)
var26=structure(c(0.008097,0.000771,-0.000207,-0.000165,-7.6e-05,0.000192,0.000139,0.000216,0.000771,0.001776,1.3e-05,-5.6e-05,
6.4e-05,0.000175,4.3e-05,0.000146,-0.000207,1.3e-05,0.000871,-4.5e-05,-4e-05,-8.6e-05,9e-05,-7e-06,-0.000165,-5.6e-05,
-4.5e-05,0.000903,-2e-05,-7e-05,5.7e-05,-5.1e-05,-7.6e-05,6.4e-05,-4e-05,-2e-05,0.000815,2.3e-05,1.2e-05,4.4e-05,
0.000192,0.000175,-8.6e-05,-7e-05,2.3e-05,0.001437,0.000228,0.000265,0.000139,4.3e-05,9e-05,5.7e-05,1.2e-05,0.000228,
0.001614,8.3e-05,0.000216,0.000146,-7e-06,-5.1e-05,4.4e-05,0.000265,8.3e-05,0.001702),.Dim=c(8L,8L),.Dimnames=list(
c("d[1]","gamma[1,1]","gamma[1,2]","gamma[1,3]","gamma[1,4]","gamma[1,5]","gamma[1,6]","gamma[1,7]"),c("d[1]","gamma[1,1]",
"gamma[1,2]","gamma[1,3]","gamma[1,4]","gamma[1,5]","gamma[1,6]","gamma[1,7]")))

mean36=c(`d[2]`=-0.2562,`gamma[2,1]`=-0.0151,`gamma[2,2]`=0.0168,`gamma[2,3]`=-0.0316,`gamma[2,4]`=0.0451,`gamma[2,5]`=0.0059,`gamma[2,6]`=-0.0083,`gamma[2,7]`=-0.0089)

var36=structure(c(0.006462,0.000529,-0.000164,-2.8e-05,-0.00022,3.9e-05,-8e-05,-0.000155,0.000529,0.00127,-3.9e-05,0.000103,-7.7e-05,-1.2e-05,5.1e-05,-2.1e-05,-0.000164,-3.9e-05,0.001028,-0.000149,-3e-05,-7.3e-05,8.1e-05,-3.1e-05,-2.8e-05,0.000103,-0.000149,0.001241,-0.000164,-4.8e-05,0.000112,4.1e-05,-0.00022,-7.7e-05,-3e-05,-0.000164,0.001422,4e-05,-2.5e-05,-6.9e-05,3.9e-05,-1.2e-05,-7.3e-05,-4.8e-05,4e-05,0.001094,-3.7e-05,5.2e-05,-8e-05,5.1e-05,8.1e-05,0.000112,-2.5e-05,-3.7e-05,0.001153,3e-05,-0.000155,-2.1e-05,-3.1e-05,4.1e-05,-6.9e-05,5.2e-05,3e-05,0.000904),.Dim=c(8L,8L),.Dimnames=list(c("d[2]","gamma[2,1]","gamma[2,2]","gamma[2,3]","gamma[2,4]","gamma[2,5]","gamma[2,6]","gamma[2,7]"),c("d[2]","gamma[2,1]","gamma[2,2]","gamma[2,3]","gamma[2,4]","gamma[2,5]","gamma[2,6]","gamma[2,7]")))
#############
mean112=c(dGU=-0.0137,`gammaGU[1]`=-0.0164,`gammaGU[2]`=0.0095,
`gammaGU[3]`=-0.0064,`gammaGU[4]`=-0.0099,`gammaGU[5]`=-0.0208,
`gammaGU[6]`=0.0103,`gammaGU[7]`=0.0042)
var112=structure(c(0.013901,0.00028,-0.00035,-7e-06,-0.000297,-0.000286,
0.000334,0.000198,0.00028,0.002069,3e-06,5.2e-05,3.8e-05,
1.7e-05,2.4e-05,-0.00013,-0.00035,3e-06,0.002177,-0.000288,
-0.000147,-0.000312,0.00028,-6.9e-05,-7e-06,5.2e-05,-0.000288,
0.001546,-7e-06,3.2e-05,3.7e-05,4.6e-05,-0.000297,3.8e-05,
-0.000147,-7e-06,0.001396,5e-05,-1.2e-05,-4.4e-05,-0.000286,
1.7e-05,-0.000312,3.2e-05,5e-05,0.00137,-7e-06,0.000175,
0.000334,2.4e-05,0.00028,3.7e-05,-1.2e-05,-7e-06,0.003318,
2.3e-05,0.000198,-0.00013,-6.9e-05,4.6e-05,-4.4e-05,0.000175,
2.3e-05,0.001877),.Dim=c(8L,8L),.Dimnames=list(c("dGU",
"gammaGU[1]","gammaGU[2]","gammaGU[3]","gammaGU[4]","gammaGU[5]",
"gammaGU[6]","gammaGU[7]"),c("dGU","gammaGU[1]","gammaGU[2]",
"gammaGU[3]","gammaGU[4]","gammaGU[5]","gammaGU[6]","gammaGU[7]"
)))

mean212=c(`d[1]`=-0.2099,`gamma[1,1]`=-0.0132,`gamma[1,2]`=-0.0026,
`gamma[1,3]`=0.0075,`gamma[1,4]`=0.0021,`gamma[1,5]`=-0.0393,
`gamma[1,6]`=0.0034,`gamma[1,7]`=7e-04)
var212=structure(c(0.017376,0.000421,-0.000295,-0.000108,-0.000338,
-0.000202,0.000273,2e-04,0.000421,0.001458,3.1e-05,6e-06,
2.3e-05,7.2e-05,1e-05,-5.9e-05,-0.000295,3.1e-05,0.001435,
-0.000112,-5.9e-05,-0.000178,0.000128,-5.8e-05,-0.000108,
6e-06,-0.000112,0.001065,4e-06,-7e-06,3.2e-05,3.2e-05,
-0.000338,2.3e-05,-5.9e-05,4e-06,0.00097,1.3e-05,-3e-06,
-1.3e-05,-0.000202,7.2e-05,-0.000178,-7e-06,1.3e-05,0.001428,
-5.4e-05,0.000136,0.000273,1e-05,0.000128,3.2e-05,-3e-06,
-5.4e-05,0.002123,-1.8e-05,2e-04,-5.9e-05,-5.8e-05,3.2e-05,
-1.3e-05,0.000136,-1.8e-05,0.001358),.Dim=c(8L,8L),.Dimnames=list(
c("d[1]","gamma[1,1]","gamma[1,2]","gamma[1,3]","gamma[1,4]",
"gamma[1,5]","gamma[1,6]","gamma[1,7]"),c("d[1]","gamma[1,1]",
"gamma[1,2]","gamma[1,3]","gamma[1,4]","gamma[1,5]","gamma[1,6]",
"gamma[1,7]")))

mean312=c(`d[3]`=-0.1962,`gamma[3,1]`=0.0032,`gamma[3,2]`=-0.0121,
`gamma[3,3]`=0.0139,`gamma[3,4]`=0.0119,`gamma[3,5]`=-0.0185,
`gamma[3,6]`=-0.0069,`gamma[3,7]`=-0.0036)
var312=structure(c(0.010275,4.3e-05,-0.00011,-6.5e-05,-0.000176,
-0.00017,0.000249,3.4e-05,4.3e-05,0.001008,3e-06,3e-05,
1.4e-05,-1.4e-05,4e-06,-6.1e-05,-0.00011,3e-06,0.001185,
-0.000126,-7.9e-05,-5e-05,7.6e-05,3.5e-05,-6.5e-05,3e-05,
-0.000126,0.000963,1.7e-05,-2.4e-05,-6e-06,1e-06,-0.000176,
1.4e-05,-7.9e-05,1.7e-05,0.000863,-5e-06,-1.8e-05,-3.3e-05,
-0.00017,-1.4e-05,-5e-05,-2.4e-05,-5e-06,0.000889,2.6e-05,
9.3e-05,0.000249,4e-06,7.6e-05,-6e-06,-1.8e-05,2.6e-05,
0.001877,2.5e-05,3.4e-05,-6.1e-05,3.5e-05,1e-06,-3.3e-05,
9.3e-05,2.5e-05,0.001028),.Dim=c(8L,8L),.Dimnames=list(
c("d[3]","gamma[3,1]","gamma[3,2]","gamma[3,3]","gamma[3,4]",
"gamma[3,5]","gamma[3,6]","gamma[3,7]"),c("d[3]","gamma[3,1]",
"gamma[3,2]","gamma[3,3]","gamma[3,4]","gamma[3,5]","gamma[3,6]",
"gamma[3,7]")))



#DefineUIforapplicationthatdrawsahistogram
ui<-fluidPage(
  
  #Applicationtitle
  titlePanel("Relative treatment effects between guided iCBT, unguided iCBT and TAU (in PHQ9)"),
  
  #Sidebarwithasliderinputfornumberofbins
  sidebarLayout(
    sidebarPanel(
      sliderInput("baseline",
                  "Baseline severity (PHQ9):",
                  min=5,
                  max=27,
                  value=14)
      ,
      
      sliderInput("age",
                  "age:",
                  min=15,
                  max=85,
                  value=41)
      ,
      selectInput("gender",label="Gender",
                  choices=list("Female"=1,"Male"=2),selected=1),
      
      selectInput("relstat",label="Relationship status",
                  choices=list("Not in relationship"=0,"In relationship"=1),selected=0),
      selectInput("employ",label="Employment status",
                  choices=list("Employed"=1,"Other"=2,"Student"=3,"Unemployed"=4),selected=1)
      
    ),
    #Showaplotofthegenerateddistribution
    mainPanel(
      
      htmlOutput("text0"),htmlOutput("text1"),htmlOutput("text2"),htmlOutput("text3"), htmlOutput("text4"), htmlOutput("text5"), htmlOutput("text6"), htmlOutput("text7"),
      htmlOutput("text8"), htmlOutput("text9"), htmlOutput("text10"), htmlOutput("text11"), htmlOutput("text12"),
      plotOutput("tall")
)      )      )

server<-function(input,output){

  M1<-reactive({
    ####### main endpoint
                                                                                                                                                                                                   
        baseline=(as.numeric(input$baseline)-14)/5
    age=(as.numeric(input$age)-41)/12
    relstat=(as.numeric(input$relstat)-0.57)/0.5
    gender=(as.numeric(input$gender)-1.3)/0.47##1=female,2=male
    employ2=(as.numeric(1*(input$employ==2))-0.073)/0.27
    employ3=(as.numeric(1*(input$employ==3))-0.033)/0.19
    employ4=(as.numeric(1*(input$employ==4))-0.18)/0.4
    
    patient=c(1,baseline,age,relstat,gender,employ2,employ3,employ4)
    M1=(patient%*%mean10)*5
    SE1=sqrt(patient%*%var10%*%patient)*5
    
    M2=(patient%*%mean20)*5
    SE2=sqrt(patient%*%var20%*%patient)*5
    
    M3=(patient%*%mean30)*5
    SE3=sqrt(patient%*%var30%*%patient)*5
    
    return(c(M1,SE1,M2,SE2, M3, SE3))
  })
  
  
  
  M_6months<-reactive({
          
    baseline=(as.numeric(input$baseline)-14)/5
    age=(as.numeric(input$age)-41)/12
    relstat=(as.numeric(input$relstat)-0.57)/0.5
    gender=(as.numeric(input$gender)-1.3)/0.47##1=female,2=male
    employ2=(as.numeric(1*(input$employ==2))-0.073)/0.27
    employ3=(as.numeric(1*(input$employ==3))-0.033)/0.19
    employ4=(as.numeric(1*(input$employ==4))-0.18)/0.4
    
    patient=c(1,baseline,age,relstat,gender,employ2,employ3,employ4)
    M1=(patient%*%mean16)*5
    SE1=sqrt(patient%*%var16%*%patient)*5
    
    M2=(patient%*%mean26)*5
    SE2=sqrt(patient%*%var26%*%patient)*5
    
    M3=(patient%*%mean36)*5
    SE3=sqrt(patient%*%var36%*%patient)*5
    
    return(c(M1,SE1,M2,SE2, M3, SE3))
  })
  
  
  
  M_12months<-reactive({


baseline=(as.numeric(input$baseline)-14)/5
age=(as.numeric(input$age)-41)/12
    relstat=(as.numeric(input$relstat)-0.57)/0.5
    gender=(as.numeric(input$gender)-1.3)/0.47##1=female,2=male
    employ2=(as.numeric(1*(input$employ==2))-0.073)/0.27
    employ3=(as.numeric(1*(input$employ==3))-0.033)/0.19
    employ4=(as.numeric(1*(input$employ==4))-0.18)/0.4
    
    patient=c(1,baseline,age,relstat,gender,employ2,employ3,employ4)
    M1=(patient%*%mean112)*5
    SE1=sqrt(patient%*%var112%*%patient)*5
    
    M2=(patient%*%mean212)*5
    SE2=sqrt(patient%*%var212%*%patient)*5
    
    M3=(patient%*%mean312)*5
    SE3=sqrt(patient%*%var312%*%patient)*5
    
    return(c(M1,SE1,M2,SE2, M3, SE3))
  })
  
  output$tall<-renderPlot({ 
    y1=c(M1()[1], M_6months()[1], M_12months()[1], 
         M1()[3], M_6months()[3], M_12months()[3],
         M1()[5], M_6months()[5], M_12months()[3])
    lower=c(M1()[1]-1.96*M1()[2], M_6months()[1]-1.96*M_6months()[2], M_12months()[1]-1.96*M_12months()[2],
            M1()[3]-1.96*M1()[4], M_6months()[3]-1.96*M_6months()[4], M_12months()[3]-1.96*M_12months()[4],
            M1()[5]-1.96*M1()[6], M_6months()[5]-1.96*M_6months()[6], M_12months()[5]-1.96*M_12months()[6]
    )
    
    
    upper=c(M1()[1]+1.96*M1()[2], M_6months()[1]+1.96*M_6months()[2], M_12months()[1]+1.96*M_12months()[2],
            M1()[3]+1.96*M1()[4], M_6months()[3]+1.96*M_6months()[4], M_12months()[3]+1.96*M_12months()[4],
            M1()[5]+1.96*M1()[6], M_6months()[5]+1.96*M_6months()[6], M_12months()[5]+1.96*M_12months()[6]
    )
    
    
    xaxis=c(  " main", "  6m", " 12m", 
              " main", "  6m", " 12m", 
              " main", "  6m", " 12m")
    comparison=c("Guided vs Unguided", "Guided vs Unguided", "Guided vs Unguided", 
           "Guided vs TAU","Guided vs TAU","Guided vs TAU", 
           "Unguided vs. TAU","Unguided vs. TAU","Unguided vs. TAU")
    
    dat=data.frame(x=xaxis, y=y1, group=comparison, upper=upper, lower=lower)
    
    require(ggplot2)
    
      y1=c(M1()[1], M_6months()[1], M_12months()[1])
      lower=c(M1()[1]-1.96*M1()[2], M_6months()[1]-1.96*M_6months()[2], M_12months()[1]-1.96*M_12months()[2]  )
      upper=c(M1()[1]+1.96*M1()[2], M_6months()[1]+1.96*M_6months()[2], M_12months()[1]+1.96*M_12months()[2]    )
      xaxis=c(  "  main"," 6mo", "12mo")
      dat=data.frame(x=xaxis, y=y1,  upper=upper, lower=lower)
     
      g1=  ggplot(dat, aes(x=xaxis, y=y1)) + 
        geom_line(group=1,linetype = 2, size = 1, color = "blue")+
        geom_pointrange(aes(ymin=lower, ymax=upper))+
        geom_errorbar(aes(ymin=lower, ymax=upper), width=.1,color = "blue",size = 1,
                      position=position_dodge(0.05))+
        labs(title="Guided vs Unguided", x="", y = "Relative effects in PhQ9")+
        ylim(-6,5)+
        geom_point(size = 3,color = "blue")+
        geom_hline(yintercept=0, linetype="dashed", color = "black")+
        theme(axis.text=element_text(size=14,face="bold"), axis.title=element_text(size=12,face="bold"))+ 
        theme(plot.title = element_text(size=20,face = "bold"))
      
      
      y2=c(M1()[3], M_6months()[3], M_12months()[3])
      lower2=c(M1()[3]-1.96*M1()[4], M_6months()[3]-1.96*M_6months()[4], M_12months()[3]-1.96*M_12months()[4]  )
      upper2=c(M1()[3]+1.96*M1()[4], M_6months()[3]+1.96*M_6months()[4], M_12months()[3]+1.96*M_12months()[4]    )
      
      dat2=data.frame(x=xaxis, y=y2,  upper=upper2, lower=lower2)
      
      g2=  ggplot(dat2, aes(x=xaxis, y=y)) + 
        geom_line(group=1,linetype = 2, size = 1, color = "#00AFBB")+
        geom_pointrange(aes(ymin=lower2, ymax=upper2))+
        geom_errorbar(aes(ymin=lower, ymax=upper), width=.1,color = "#00AFBB",size = 1,
                      position=position_dodge(0.05))+
        labs(title="Guided vs TAU", x="", y = "Relative effects in PhQ9")+
        ylim(-6,5)+
        geom_point(size = 3,color = "#00AFBB")+
        geom_hline(yintercept=0, linetype="dashed", color = "black")+
        theme(axis.text=element_text(size=14,face="bold"), axis.title=element_text(size=12,face="bold"))+ 
        theme(plot.title = element_text(size=20,face = "bold"))
      
      
      y3=c(M1()[5], M_6months()[5], M_12months()[5])
      lower3=c(M1()[5]-1.96*M1()[6], M_6months()[5]-1.96*M_6months()[6], M_12months()[5]-1.96*M_12months()[6]  )
      upper3=c(M1()[5]+1.96*M1()[6], M_6months()[5]+1.96*M_6months()[6], M_12months()[5]+1.96*M_12months()[6]    )
      
      dat3=data.frame(x=xaxis, y=y3,  upper=upper3, lower=lower3)
      
      g3=  ggplot(dat3, aes(x=xaxis, y=y)) + 
        geom_line(group=1,linetype = 2, size = 1, color="red")+
        geom_pointrange(aes(ymin=lower, ymax=upper))+
        geom_errorbar(aes(ymin=lower, ymax=upper), width=.1,color = "red",size = 1,
                      position=position_dodge(0.05))+
        labs(title="Unguided vs TAU", x="", y = "Relative effects in PhQ9")+
        ylim(-6,5)+
        geom_point(size = 3, color="red")+
        geom_hline(yintercept=0, linetype="dashed", color = "black")+
        theme(axis.text=element_text(size=14,face="bold"), axis.title=element_text(size=12,face="bold"))+ 
        theme(plot.title = element_text(size=20,face = "bold"))
      
    require(ggpubr)
    ggarrange(g1, g2,g3,
                       ncol = 3, nrow = 1)
  })
  
  

    

  
  
  
  
  output$text0<-renderText({
    paste("<b>","<u>","<font size = 6>","At main endpoint")
  })
  
  output$text1<-renderText({
    HTML(paste0("<font size = 4>","Guided vs. Unguided ",format(round(M1()[1],digits=1),nsmall=1)," [",format(round(M1()[1]-1.96*M1()[2],digits=1),nsmall=1),"; ",format(round(M1()[1]+1.96*M1()[2],digits=1),nsmall=1),"]",sep="")
 ) })
  
  output$text2<-renderText({
    paste("<font size = 4>","Guided vs. TAU ",format(round(M1()[3],digits=1),nsmall=1)," [",format(round(M1()[3]-1.96*M1()[4],digits=1),nsmall=1),"; ",format(round(M1()[3]+1.96*M1()[4],digits=1),nsmall=1),"]",sep="")
  })
  
  output$text3<-renderText({
    paste("<font size = 4>","Unguided vs. TAU ",format(round(M1()[5],digits=1),nsmall=1)," [",format(round(M1()[5]-1.96*M1()[6],digits=1),nsmall=1),"; ",format(round(M1()[5]+1.96*M1()[6],digits=1),nsmall=1),"]",sep="")
  })
  
  output$text4<-renderText({
    paste("<b>","<u>","<font size = 6>","At 6 months")
  })
  
  output$text5<-renderText({
    HTML(paste0("<font size = 4>","Guided vs. Unguided ",format(round(M_6months()[1],digits=1),nsmall=1)," [",format(round(M_6months()[1]-1.96*M_6months()[2],digits=1),nsmall=1),"; ",format(round(M_6months()[1]+1.96*M_6months()[2],digits=1),nsmall=1),"]",sep="")
    ) })
  
  output$text6<-renderText({
    paste("<font size = 4>","Guided vs. TAU ",format(round(M_6months()[3],digits=1),nsmall=1)," [",format(round(M_6months()[3]-1.96*M_6months()[4],digits=1),nsmall=1),"; ",format(round(M_6months()[3]+1.96*M_6months()[4],digits=1),nsmall=1),"]",sep="")
  })
  
  output$text7<-renderText({
    paste("<font size = 4>","Unguided vs. TAU ",format(round(M_6months()[5],digits=1),nsmall=1)," [",format(round(M_6months()[5]-1.96*M_6months()[6],digits=1),nsmall=1),"; ",format(round(M_6months()[5]+1.96*M_6months()[6],digits=1),nsmall=1),"]",sep="")
  })
  output$text8<-renderText({
    paste("<b>","<u>","<font size = 6>","At 12 months")
  })
  
  output$text9<-renderText({
    HTML(paste0("<font size = 4>","Guided vs. Unguided ",format(round(M_12months()[1],digits=1),nsmall=1)," [",format(round(M_12months()[1]-1.96*M_12months()[2],digits=1),nsmall=1),"; ",format(round(M_12months()[1]+1.96*M_12months()[2],digits=1),nsmall=1),"]",sep="")
    ) })
  
  output$text10<-renderText({
    paste("<font size = 4>","Guided vs. TAU ",format(round(M_12months()[3],digits=1),nsmall=1)," [",format(round(M_12months()[3]-1.96*M_12months()[4],digits=1),nsmall=1),"; ",format(round(M_12months()[3]+1.96*M_12months()[4],digits=1),nsmall=1),"]",sep="")
  })
  
  output$text11<-renderText({
    paste("<font size = 4>","Unguided vs. TAU ",format(round(M_12months()[5],digits=1),nsmall=1)," [",format(round(M_12months()[5]-1.96*M_12months()[6],digits=1),nsmall=1),"; ",format(round(M_12months()[5]+1.96*M_12months()[6],digits=1),nsmall=1),"]",sep="")
  })
  
  output$text12<-renderText({
    paste("<i>","<font size = 3>","<br>","In the above, an estimate smaller than zero when comparing treatments A vs. B favors treatment A.","<br>",
          " An estimate larger than zero favors treatment B.","<br>","Numbers in brackets indicate 95% Credible Intervals.","<br>","<br>")
  })
  
}

#Runtheapplication
shinyApp(ui=ui,server=server)

