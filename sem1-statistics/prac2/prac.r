gens <- read.table("sem1-statistics/prac2/gens.csv", sep = ";", dec=",", head=TRUE, encoding = "UTF-8")
gens
summary(gens)

gens[,"C.4G"] == "TT"
gens[,"C.4G"] == "TТ"
gens[,"C.4G"] == "ТT"
gens[,"C.4G"] == "ТТ"

gens[,"C.4G"] == "CC"

factor(gens[,"C.4G"])

f <- factor(gens[,"C.4G"])
f == levels(f)[1]
f == levels(f)[2]
f == levels(f)[3]
f == levels(f)[4]

levels(f)
levels(f) == "СС"

gens$C.4G == "СС"

order("TT")