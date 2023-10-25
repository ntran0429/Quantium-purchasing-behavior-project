week_seq <- seq(as.Date("2018-7-1"), as.Date("2019-6-30"), by = "week")
week_seq_dt <- data.table(DATE = week_seq)

transactions_by_week <- merge.data.table(transaction_count,week_seq_dt, 
                                        by = "DATE", all.y = TRUE)

ggplot(transactions_by_week, aes(x = DATE, y = N)) +
  geom_line() +
  labs(x = "Day", y = "Number of transactions", title = "Transactions over time") +
  scale_x_date(breaks = "1 month") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5))