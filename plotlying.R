# Mehaz: 

# [2] http://plot.ly/api/
###########################################################################################################
##################### Installation of plotly package (if you have not done before) ########################
## First install dependency libraries (if you have not done before): 
# install.packages("RJSONIO")
# install.packages("RCurl")
# Next, download plotly R source package "plotly_0.3.tar.gz" file at http://plot.ly/api/
# Install "plotly_0.3.tar.gz" as local source R package:
# install.packages("/home/mutlay/R/Visualization/Plotly/plotly_0.3.tar.gz", type="source")
# Now you must get API Key using "Existing User - Generate API Key" option at http://plot.ly/api/
# Currently your API Key is: 9or5cuw4wi
# Now we can start the actual work:
library(plotly)
username="username" # My plotly username
api_key="key" # My api key generated at http://plot.ly/api/
p <- plotly(username=username, key=api_key)
##############################################
rankdata <- read.table("rank_data.txt")

# extends trace 1 of 'myplot' with new data
# (good for streaming data into plots)
r <- p$plotly(rankdata, kwargs=list(filename="Grafen", fileopt="overwrite"))
