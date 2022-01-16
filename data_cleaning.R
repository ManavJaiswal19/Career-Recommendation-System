library(dplyr)
df=read.csv("D:/VIT/5th SEM/CSE4020/Project/survey_data.csv")
dim(df)

summary(df)
head(df)

str(df)

colnames(df) <- c('Perc 10','Stream','Perc 11','Perc 12','Drawing arts','Sports','GoodIn sports','Coding','Patriotism','Com skill','Sing dance','Read write','Nego skill','Hobby','Career field')
str(df)
sum(is.na(df))

#for 10 perc column
df <- df%>%
  mutate(`Perc 10`=gsub(" cgpa|%","",`Perc 10`))

View(df)

df$`Perc 10`<- as.numeric(df$`Perc 10`)
typeof(df$`Perc 10`)

sum(is.na(df))


for(i in seq(length(df$`Perc 10`))){
  if(df$`Perc 10`[i]<=10){
    df$`Perc 10`[i]=df$`Perc 10`[i]*9.5
  }
}

#for 11 perc column
df <- df%>%
  mutate(`Perc 11`=gsub(" cgpa|%","",`Perc 11`))

df$`Perc 11`<- as.numeric(df$`Perc 11`)
typeof(df$`Perc 11`)

sum(is.na(df))

for(i in seq(length(df$`Perc 11`))){
  if(df$`Perc 11`[i]<=10){
    df$`Perc 11`[i]=df$`Perc 11`[i]*9.5
  }
}

#for 12 perc column
df <- df%>%
  mutate(`Perc 12`=gsub(" cgpa|%","",`Perc 12`))

df$`Perc 12`<- as.numeric(df$`Perc 12`)
typeof(df$`Perc 12`)

sum(is.na(df))

for(i in seq(length(df$`Perc 12`))){
  if(df$`Perc 12`[i]<=10){
    df$`Perc 12`[i]=df$`Perc 12`[i]*9.5
  }
}

#for hobby column
df <- df%>%
  mutate(Hobby=gsub("\\(Cricket, football etc.)","",Hobby))

write.csv(df,"D:/VIT/5th SEM/CSE4020/Project/survey_final.csv",row.names = FALSE)

