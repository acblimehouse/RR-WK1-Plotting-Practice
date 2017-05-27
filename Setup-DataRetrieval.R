## Initial Set Up
Local.Directory <- "/Users/adamlimehouse/Desktop/Dropbox/03 Projects Folder/Economic and Policy Analysis/Intro to Data Science R Files/Reproducible Research - Peer Graded Assessments/Optional CMS Plotting Assignment/RR-WK1-Plotting-Practice"
DataURL <- "https://d18ky98rnyall9.cloudfront.net/_e143dff6e844c7af8da2a4e71d7c054d_payments.csv?Expires=1496016000&Signature=hfQX6pKNhG2mFcYaEazf1VpUHJjmmntc7cKWLSD-sVDYLNfQfBMD1sJohfcCOouTbmeRNvQTSfKvkxF2942rG~VoKy4K0vV9lIr-yvmlUnW6IHf0MaXbCIm6xAgXyTmiF78aSUgZk~6eQzn2ClCTXeBnI2C0G4DGPKl69jVnjtY_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A"
File.Name <- "payments.csv"
Data.Name <- "Payments.Data"
setwd(Local.Directory)
###

## Get Data
if (!file.exists(File.Name)){
  download.file(DataURL, File.Name, method="curl")
}  

## Load Data
if (!exists(Data.Name)){
  Payments.Data <- read.table(file = File.Name, header = TRUE, sep = ",")
}