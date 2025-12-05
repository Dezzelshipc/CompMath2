demo_csv <- read.csv("sem1-statistics/prac/demo.csv", sep = ";", dec=",", head=TRUE)

mean(demo_csv$GDP)
var(demo_csv$GDP)
mean(demo_csv$PR)
var(demo_csv$PR)
mean(demo_csv$M1)
var(demo_csv$M1)
mean(demo_csv$RS)
var(demo_csv$RS)

bin_file_path <- "sem1-statistics/prac/demo_no_save.rd";

saveRDS(demo_csv, file=bin_file_path)

rm(demo_csv)

demo_bin <- readRDS(bin_file_path)

print(demo_bin)

###

print(data())

save_path <- "sem1-statistics/prac/titanic_no_save.csv"

write.csv(Titanic, save_path)