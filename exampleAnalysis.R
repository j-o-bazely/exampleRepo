# ====================================
# Example Sighting Data
# ====================================

# ---- 1. Define Variables ----
# Creating a data frame with sample data for demonstration purposes

species <- c("Loggerhead_Turtle", "Green_Turtle", "Hammerhead_Shark", "Lemon_Shark")  
counts <- c(30, 15, 2, 120)            
data <- data.frame(Category = species, Value = counts)

# ---- 2. Plot Data ----
# Plotting a bar chart to visualize the data

barplot(data$Value, 
        names.arg = data$Category, 
        col = "pink", 
        main = "Species Sightings", 
        xlab = "Species", 
        ylab = "Counts")



# ====================================
# Lemon Shark Sightings by Time of Day for Each Date
# ====================================

# ---- 1. Create Example Data Frame ----
# Data frame of lemon shark sightings on Sal Island with times of day for each date

sightings <- data.frame(
  Date = as.Date(c("2024-11-01", "2024-11-01", "2024-11-01", "2024-11-02", "2024-11-02", "2024-11-02", "2024-11-03", "2024-11-03", "2024-11-03")),
  Time_of_Day = c("Morning", "Afternoon","Night", "Morning", "Afternoon", "Night", "Morning", "Afternoon", "Night"),
  Sharks_Spotted = c(7, 18, 4, 20, 32, 15, 6, 20, 3)
)

# Convert 'Time_of_Day' to a factor to control the order of categories
sightings$Time_of_Day <- factor(sightings$Time_of_Day, levels = c("Morning", "Afternoon", "Night"))

# Convert 'Date' to a factor to avoid continuous scale error
sightings$Date <- factor(sightings$Date)

# Print the data frame to view the data
print(sightings)

# ---- 2. Plot Sightings by Time of Day for Each Date ----
# Line plot of the number of lemon sharks spotted by time of day for each date
library(ggplot2)

ggplot(sightings, aes(x = Time_of_Day, y = Sharks_Spotted, group = Date, color = Date)) + 
  geom_line(size = 1.2, aes(linetype = Date)) + # Line plot with different line types for each date
  geom_point(size = 3) + # Adding points for each time of day
  labs(title = "Lemon Shark Sightings on Sal Island by Time of Day",
       x = "Time of Day", y = "Number of Sharks Spotted") +
  scale_color_manual(values = c("2024-11-01" = "orange", "2024-11-02" = "maroon", "2024-11-03" = "purple")) +  # Different colors for each date
  scale_linetype_manual(values = c("2024-11-01" = "solid", "2024-11-02" = "dashed", "2024-11-03" = "dotted")) + # Different line types for each date
  theme_minimal() +
  theme(legend.title = element_blank()) # Remove legend title for simplicity