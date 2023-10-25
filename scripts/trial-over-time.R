# graph of all three trial stores' sales over time



# ggplot(trialAssessment, aes(TransactionMonth, totSales, color = Store_type)) +
#   geom_rect(data = trialAssessment[ YEARMONTH < 201905 & YEARMONTH > 201901 ,],
#             aes(xmin = min(TransactionMonth), xmax = max(TransactionMonth), 
#                 ymin = 0 , ymax = Inf, color = NULL), show.legend = FALSE) +
#   geom_line() +
#   geom_point() +
#   labs(x = "Month of operation", y = "Total sales", title = "Total sales by month")