library(shiny)
library(shinydashboard)
library(tidyverse)
library(quantmod)
load("ta")
symbols <- unique(stockSymbols()[,1])

type = c("auto", "candlesticks", "matchsticks", "bars","line")
