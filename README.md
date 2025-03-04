# Machine Learning Project: Data Scraping and Recommendation Engine

## Overview
This project aims to automate the process of scraping user data from interactive platforms such as social media and news outlets. It also implements a recommendation engine that suggests related topics, news, or articles based on the collected data.

## Project Structure
- **data/**: Contains raw and processed data.
  - **raw/**: Raw data collected from various interactive platforms.
  - **processed/**: Processed data ready for analysis and modeling.
  
- **notebooks/**: R Markdown notebooks documenting the project.
  - **data_scraping.Rmd**: Documentation of the data scraping process.
  - **recommendation_engine.Rmd**: Documentation of the recommendation engine implementation.
  
- **src/**: Source code for the project.
  - **data_scraping.R**: Functions and logic for automating data scraping.
  - **recommendation_engine.R**: Implementation of the recommendation engine.
  
- **models/**: Contains trained models.
  - **model.RData**: Trained model used by the recommendation engine.
  
- **requirements.txt**: Lists required R packages and dependencies for the project.

- **README.md**: Overview and instructions for the project.

- **.gitignore**: Specifies files and directories to be ignored by version control.

## Setup Instructions
1. Clone the repository to your local machine.
2. Install the required R packages listed in `requirements.txt`.
3. Run the data scraping script to collect user data.
4. Process the collected data and train the recommendation model.
5. Use the notebooks for further analysis and visualization.

## Setup Instructions
1. Clone the repository to your local machine.
2. Install the required R packages listed in `requirements.txt`.
3. Place your Twitter data archive in the `data/dami_twitterData/` directory.
4. Run the data extraction script to extract and preprocess the data:
   ```r
   source("src/extract_twitter_data.R")
   source("src/data_processing.R")


## Usage
- Use `data_scraping.R` to automate the collection of user data.
- Use `recommendation_engine.R` to generate recommendations based on the collected data.
- Refer to the R Markdown notebooks for detailed documentation and examples.

## Contributing
Contributions are welcome! Please feel free to submit a pull request or open an issue for any suggestions or improvements.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.