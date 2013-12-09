setwd("/Users/francinebennett/Desktop/analysis/innovators/")

data<-read.csv("github-10000.tsv",sep="\t")
data$company<-as.character(data$company)
data$location<-as.character(data$location)
uk<-data[grep("London|UK",data$location),]
popular_uk<-subset(uk,followers>10)
uk_companies<-unique(popular_uk$company)
global_uk_links<-subset(data,company %in% uk_companies & company !="")


