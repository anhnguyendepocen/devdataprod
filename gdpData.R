library(dplyr)

# Malaysia
malaysia <- read.csv("./Data/Malaysia.csv", 
                    header = TRUE,
                    sep = ";")
names(malaysia) <- c("Year", "GDPPerCapita")
malaysia$country <- "Malaysia"

# Singapore
singapore <- read.csv("./Data/Singapore.csv", 
                   header = TRUE,
                   sep = ";")
names(singapore) <- c("Year", "GDPPerCapita")
singapore$country <- "Singapore"

# Indonesia
indonesia <- read.csv("./Data/Indonesia.csv", 
                      header = TRUE,
                      sep = ";")
names(indonesia) <- c("Year", "GDPPerCapita")
indonesia$country <- "Indonesia"

# Thailand
thailand <- read.csv("./Data/Thailand.csv", 
                      header = TRUE,
                      sep = ";")
names(thailand) <- c("Year", "GDPPerCapita")
thailand$country <- "Thailand"

# Philippines
philippines <- read.csv("./Data/Philippines.csv", 
                     header = TRUE,
                     sep = ";")
names(philippines) <- c("Year", "GDPPerCapita")
philippines$country <- "Philippines"

# Brunei
brunei <- read.csv("./Data/Brunei.csv", 
                     header = TRUE,
                     sep = ";")
names(brunei) <- c("Year", "GDPPerCapita")
brunei$country <- "Brunei"

# Vietnam
vietnam <- read.csv("./Data/Vietnam.csv", 
                     header = TRUE,
                     sep = ";")
names(vietnam) <- c("Year", "GDPPerCapita")
vietnam$country <- "Vietnam"

# Laos
laos <- read.csv("./Data/Laos.csv", 
                     header = TRUE,
                     sep = ";")
names(laos) <- c("Year", "GDPPerCapita")
laos$country <- "Laos"

# Myanmar
myanmar <- read.csv("./Data/Myanmar.csv", 
                 header = TRUE,
                 sep = ";")
names(myanmar) <- c("Year", "GDPPerCapita")
myanmar$country <- "Myanmar"

# Cambodia
cambodia <- read.csv("./Data/Cambodia.csv", 
                 header = TRUE,
                 sep = ";")
names(cambodia) <- c("Year", "GDPPerCapita")
cambodia$country <- "Cambodia"

data <- rbind(malaysia,singapore,indonesia,thailand,philippines,brunei,vietnam,laos,myanmar,cambodia)

write.csv(data, 'data.csv')