# The Dates module provides two types for working with dates: Date and DateTime, representing day and millisecond precision.
using Dates
println(DateTime(2018))
println(DateTime(2018, 11))
println(DateTime(2018, 11, 11))

t = Date(2014, 1, 31)
println(Dates.month(t))
println(Dates.dayname(t))
println(Dates.isleapyear(t))

# Arithmetic
println((Date(2018, 11, 11)+Dates.Day(1)) + Dates.Month(1))

# Aduster Function
println(Dates.lastdayofmonth(Date(2018,11,11)))

# Period Type: Periods are a human view of discrete, sometimes irregular durations of time.
println(Dates.Year(10))
