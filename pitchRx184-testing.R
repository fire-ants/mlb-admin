install.packages("devtools")
library(devtools)
install_github("cpsievert/pitchRx", force = T)
library(pitchRx)    ## thank you Carson Sievert!!!

dat160501 <- scrape(start = "2016-05-01", end = "2016-05-01", suffix = "inning/inning_all.xml")
dat170701 <- scrape(start = "2017-07-01", end = "2017-07-01", suffix = "inning/inning_all.xml")
dat180402 <- scrape(start = "2018-04-02", end = "2018-04-02", suffix = "inning/inning_all.xml")
