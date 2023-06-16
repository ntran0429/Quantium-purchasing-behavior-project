# let's look at the total sales over time

sales_count <- transactionData[, sum(TOT_SALES), by = DATE]
sales_count

ggplot(sales_count, aes(x = DATE, y = V1)) +
  geom_line() +
  labs(x = "Day", y = "Total Sales", title = "Sales over time") +
  scale_x_date(breaks = "1 month") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5))