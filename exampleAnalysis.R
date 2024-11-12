# ====================================
# Example Sighting Data
# ====================================

# ---- 1. Define Variables ----
# Creating a data frame with sample data for demonstration purposes

species <- c("Loggerhead_Turtle", "Green_Turtle", "Hammerhead_Shark", "Polar_Bear")  
counts <- c(30, 15, 2, 20)            
data <- data.frame(Category = species, Value = counts)

# ---- 2. Plot Data ----
# Plotting a bar chart to visualize the data

barplot(data$Value, 
        names.arg = data$Category, 
        col = "blue", 
        main = "Species Sightings", 
        xlab = "Species", 
        ylab = "Counts")