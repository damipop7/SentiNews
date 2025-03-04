library(rvest)
library(dplyr)

# Load the HTML file
html_file <- "data/dami_twitterData/Your archive.html"
html_content <- read_html(html_file)

# Extract tweets (assuming tweets are stored in a specific HTML element)
tweets <- html_content %>%
  html_nodes(".tweet-text") %>%
  html_text()

# Create a data frame with the extracted tweets
tweets_df <- data.frame(
  user_id = "your_user_id",  # Replace with actual user ID if available
  content = tweets,
  stringsAsFactors = FALSE
)

# Print the first few rows of the extracted tweets
head(tweets_df)