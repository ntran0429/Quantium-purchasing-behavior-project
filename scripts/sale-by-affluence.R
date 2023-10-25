sales_data <- data[, .(SALES = sum(TOT_SALES)), .(PREMIUM_CUSTOMER)]

sales_data$Proportion <- sales_data$SALES / sum(sales_data$SALES)

#### Create plot
ggplot(data = sales_data, aes(x = PREMIUM_CUSTOMER, y = Proportion, fill = PREMIUM_CUSTOMER)) +
  geom_bar(stat = "identity") +
  labs(x = "Affluence", y = "Sales proportion", title = "Proportion of sales by Affluence") +
  theme_minimal() +
  coord_flip()





# Assuming your table is named "sales_data"
sales_data <- data.frame(
  Category = c("Budget", "Mainstream", "Premium"),
  Sales = c(50000, 80000, 60000)
)

# Calculate the proportion of sales
sales_data$Proportion <- sales_data$Sales / sum(sales_data$Sales)

# Create the bar plot
ggplot(sales_data, aes(x = Category, y = Proportion, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(x = "Affluence", y = "Proportion of Sales", title = "Proportion of Sales by Affluence") +
  theme_minimal()
