library(dplyr)
library(stringr)

# Clean and preprocess the data
processed_data <- tweets_df %>%
  mutate(content = tolower(content)) %>%
  filter(!is.na(content))

# Save the processed data
write_csv(processed_data, "data/processed/processed_twitter_data.csv")