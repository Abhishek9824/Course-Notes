#1 Scatter Plot
protein <- c(1,2,3,4,5,6,7)
enzyme <- c(12,25,32,48,60,73,85)

plot(protein, enzyme, main = "Protein Concentration (mg/mL)v/s Enzyme activity(u/mL)", xlab = "Protein Concentration (mg/mL)", ylab = "Enzyme activity(u/mL)", pch = 17)

#2 Line Plot
time <- c(0,2,4,6,8,10,12)
OD <- c(0.05,0.10,0.25,0.65,1.20,1.50,1.55)
plot(time, OD, main = "Bacterial Growth Curve", type = "l" ,xlab = "time(in minutes)", ylab = "Optical Density @ 600nm", pch =19)

#3 Bar Plot
Cells <- c(45,25,20,10)
Label <- c("G1","G2","S","M")
bp <- barplot(Cells, main = "Bar Graph", names.arg = Label ,xlab = "Cell cycle Phases", ylab = "No. of cells", col = "skyblue", ylim = c(0,60))
text(x = bp, y = Cells, labels = Cells, pos = 3)

##Grouped Barplot
Cell_line <-c("heLa","HEK293","CHO")
control <-c(85,90,70)
treated <- c(65,75,55)

data <- data.frame(CellLine = Cell_line,
                   Control = control,
                   Treated = treated )
print(data)
bar_data <- rbind(data$Control,data$Treated)
rownames(bar_data) <- c("Control", "Treatment")
colnames(bar_data) <- data$Cell_line
barplot(
  bar_data,
  beside = TRUE,
  col = c("skyblue", "tomato"),
  main = "Effect of Treatment on Cell Lines",
  xlab = "Cell Lines",
  ylab = "Cell Viability (%)",
  ylim = c(0, 100),
  legend.text = TRUE,
  args.legend = list(
    x = "topright",
    title = "Groups"
  )
)




#4 Histogram
CS <- c(12,15,18,20,22,22,25,27,30,32,35,38,40,42,45)
h <- hist(CS, breaks = 5 ,main = "Distribution of Bacterial colony sizes", xlab = "colony size(mm)", ylab = "Frequency", col = "tomato", ylim = c(0,4), xlim = c(10,50))
text(
  x = h$mids,
  y = h$counts,
  labels = h$counts,
  pos = 3
)
#5 Box plot
tropical <- c(65,70,72,68,75,80,73,85,78,90)
temperate <- c(40,45,42,50,48,55,52,47,60,43)
data <- data.frame(Tropicalforest = tropical,
                   Temperateforest = temperate)
print(data)
boxplot(tropical,temperate, names = c("Tropical", "Temperate") ,main = "Soil moisture in different forest ecosytems", ylab = "Soil Moisture(%)", col = c("tomato","violet"))

#6 GGplot
##Scatter Plot using ggplot mpg v/s hp using mtcars dataset
library(ggplot2)
ggplot(mtcars, aes(x = hp, y = mpg, col = "tomato"))+geom_point()+ labs(title = "Horsepower vs fuel Efficiency", x = "Horsepower", y = "Miles per Gallon")+ theme_minimal()
## Growth Question
Species <- c(
  "E. coli", "E. coli", "E. coli", "E. coli", "E. coli",
  "S. aureus", "S. aureus", "S. aureus", "S. aureus", "S. aureus",
  "P. aeruginosa", "P. aeruginosa", "P. aeruginosa",
  "P. aeruginosa", "P. aeruginosa"
)
Growth_Rate <- c(
  0.8, 0.9, 1.0, 1.1, 0.7,
  0.4, 0.5, 0.6, 0.7, 0.3,
  1.2, 1.3, 1.4, 1.5, 1.1
)
data <- data.frame(species = Species,
                   growthrate = Growth_Rate
  )
print(data)
ggplot(data, aes(x = factor(species), y =  growthrate, colour = species))+geom_boxplot()+ labs(title = "Bacteria growth rate comparsion", x = "Bacterial Species", y = "Growth rate")+ theme_minimal()

#7Volcano Plot
library(ggplot2)
data <- data.frame(
  Gene = c("Gene1", "Gene2", "Gene3", "Gene4",
           "Gene5", "Gene6", "Gene7", "Gene8"),
  
  log2FC = c(2.5, -2.0, 0.5, 1.8, -1.5, 0.2, 3.0, -2.5),
  
  pvalue = c(0.001, 0.003, 0.4, 0.02,
             0.01, 0.8, 0.0001, 0.002)
)

# Calculate -log10(p-value)
data$neg_log10_pvalue <- -log10(data$pvalue)

# Classify genes
data$Significance <- ifelse(
  data$log2FC > 1 & data$pvalue < 0.05,
  "Upregulated",
  
  ifelse(
    data$log2FC < -1 & data$pvalue < 0.05,
    "Downregulated",
    "Not Significant"
  )
)

# Create volcano plot
ggplot(data, aes(x = log2FC, y = neg_log10_pvalue)) +
  
  geom_point(aes(color = Significance), size = 3) +
  
  scale_color_manual(
    values = c(
      "Upregulated" = "red",
      "Downregulated" = "blue",
      "Not Significant" = "grey"
    )
  ) +
#Vline and hline are are the threshold value  
  geom_vline(
    xintercept = c(-1, 1),
    linetype = "dashed"
  ) +
  
  geom_hline(
    yintercept = -log10(0.05),
    linetype = "dashed"
  ) +
# For title, label in X,Y axis
  labs(
    title = "Volcano Plot",
    x = "Log2 Fold Change",
    y = "-Log10(P-value)",
    color = "Expression"
  ) +
  
  theme_minimal()