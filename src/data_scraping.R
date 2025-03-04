# Load necessary libraries
library(rvest)
library(dplyr)
library(stringr)


# Function to scrape data from a given URL
scrape_data <- function(url) {
  page <- read_html(url)
  
  # Example: Scraping article titles and links
  titles <- page %>% html_nodes("h2.title") %>% html_text()
  links <- page %>% html_nodes("h2.title a") %>% html_attr("href")
  
  # Combine titles and links into a data frame
  data <- data.frame(title = titles, link = links, stringsAsFactors = FALSE)
  
  return(data)
}

# Function to scrape multiple URLs
scrape_multiple <- function(urls) {
  all_data <- data.frame()
  
  for (url in urls) {
    scraped_data <- scrape_data(url)
    all_data <- rbind(all_data, scraped_data)
  }
  
  return(all_data)
}

# Example usage
# urls <- c("https://example.com/news", "https://example.com/articles")
# collected_data <- scrape_multiple(urls)
# write.csv(collected_data, "data/raw/collected_data.csv", row.names = FALSE)