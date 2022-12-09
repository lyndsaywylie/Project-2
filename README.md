# Project-2

# EXTRACT Data Sources

***Ben***

1. Kaggle Data: Gym Crowdedness 2015-2017 https://www.kaggle.com/datasets/nsrose7224/crowdedness-at-the-campus-gym
  - This file was downloaded and loaded as a CSV.
2. Google Trends Data: Gym Memberships by Day 2015-2017 https://trends.google.com/trends/explore?date=2015-08-14%202017-03-12&geo=US&q=gym%20membership
  - This file was downloaded and loaded as a CSV.

***Lyndsay***

1. Google Trends Data: Gym Memberships by Month https://trends.google.com/trends/explore?date=2012-01-01%202022-12-08&geo=US&q=diets
  - This file was downloaded and loaded as a CSV.
2. Google Trends Data: Fitness App Usage by Month https://trends.google.com/trends/explore?date=2012-01-01%202022-12-08&geo=US&q=fitness%20apps
  - This file was downloaded and loaded as a CSV.
3. Diets App Data: https://trends.google.com/trends/explore?date=2012-01-01%202022-12-08&geo=US&q=diets

***Kim*** 

1.  Kaggle Data: Gym Crowdedness 2015-2017 https://www.kaggle.com/datasets/nsrose7224/crowdedness-at-the-campus-gym
  - This file was downloaded and loaded as a CSV.
2. Google Trends Data: Gym Memberships by Day 2015-2017 https://trends.google.com/trends/explore?date=2015-08-14%202017-03-12&geo=US&q=gym%20membership
  - This file was downloaded and loaded as a CSV.

***Stefanie***

1. Kaggle Data: Fitness Trends 2017-2018 https://www.kaggle.com/datasets/aroojanwarkhan/fitness-data-trends
  - This file was downloaded and loaded as a CSV.
2. Google Trends Data: Gym Memberships by Day 2017-2018 https://trends.google.com/trends/explore?date=2017-10-06%202018-01-09&geo=US&q=gym%20membership 
  - This file was downloaded and loaded as a CSV.

# Transform

***Ben***

After finding siutable datasets, we then went into Jupyter Notebook and used Pandas read_csv function to read the data sources into the notebook. 
After reading the files in, we cleaned the data and dropped the columns we did not need. We also renamed the columns for readability as well as future accessability. We also dropped duplicates to avoid an IntegrityError when trying to load data into pgAdmin. The two tables I created and joined were crowddf and members. Crowddf showed the crowdedness at a gym over the span of 2 years. Members showed the gym membership count per day over the span of 2 years.

***Lynds***

Data was read in through CSV files in Jupyter Notebook. Rows with not applicable data were dropped and columns were renamed. Next I connected to Postgresql and inserted 3 tables (diets_df, fitness_apps_df and gym_membership_df). In PgAdmin I renamed the columns again to differentiate the datasets before the triple join. With the triple join I created a new table called google_trends_sql.


# Load

After cleaning our data and creating matching tables in pgAdmin, we created a connection to pgAdmin and loaded our data into the corresponding 
tables. In pgAdmin, we made primary keys to match the column that we wanted to join on (date for us). After successfully creating tables and loading the data in, we joined each of our tables in pgAdmin.






