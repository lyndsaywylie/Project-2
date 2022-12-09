# Project-2

# Extract Data Sources

***Ben***

1. Kaggle Data: Gym Crowdedness 2015-2017 https://www.kaggle.com/datasets/nsrose7224/crowdedness-at-the-campus-gym
    - This file was downloaded and read as a CSV.
2. Google Trends Data: Gym Memberships by Day 2015-2017 https://trends.google.com/trends/explore?date=2015-08-14%202017-03-12&geo=US&q=gym%20membership
    - This file was downloaded and read as a CSV.

***Lyndsay***

1. Google Trends Data: Gym Memberships by Month 2012-2022 https://trends.google.com/trends/explore?date=2012-01-01%202022-12-08&geo=US&q=diets
    - This file was downloaded and read as a CSV.
2. Google Trends Data: Fitness App Usage by Month 2012-2022 https://trends.google.com/trends/explore?date=2012-01-01%202022-12-08&geo=US&q=fitness%20apps
    - This file was downloaded and read as a CSV.
3. Google Trends Data: Diet App Usage by Month 2012-2022 https://trends.google.com/trends/explore?date=2012-01-01%202022-12-08&geo=US&q=diets
    - This file was downloaded and read as a CSV.

***Kim*** 

1.  Kaggle Data: Gym Crowdedness 2015-2017 https://www.kaggle.com/datasets/nsrose7224/crowdedness-at-the-campus-gym
    - This file was downloaded and read as a CSV.
2. Google Trends Data: Gym Memberships by Day 2015-2017 https://trends.google.com/trends/explore?date=2015-08-14%202017-03-12&geo=US&q=gym%20membership
    - This file was downloaded and read as a CSV.

***Stefanie***

1. Kaggle Data: Fitness Trends 2017-2018 https://www.kaggle.com/datasets/aroojanwarkhan/fitness-data-trends
    - This file was downloaded and read as a CSV.
2. Google Trends Data: Gym Memberships by Day 2017-2018 https://trends.google.com/trends/explore?date=2017-10-06%202018-01-09&geo=US&q=gym%20membership 
    - This file was downloaded and read as a CSV.

# Transform

***Ben***

After finding siutable datasets, we then went into Jupyter Notebook and used Pandas read_csv function to read the data sources into the notebook. 
After reading the files in, we cleaned the data and dropped the columns we did not need. We also renamed the columns for readability as well as future accessability. We also dropped duplicates to avoid an IntegrityError when trying to load data into pgAdmin. The two tables I created and joined were crowddf and members. Crowddf showed the crowdedness at a gym over the span of 2 years. Members showed the gym membership count per day over the span of 2 years.

***Lynds***

Data was read in through CSV files in Jupyter Notebook. I used Google Trends as my data source with a date range of 01-01-2012 to 12-06-2022. Rows with inapplicable data were dropped and columns were renamed. Next I connected to Postgresql and inserted 3 tables (diets_df, fitness_apps_df and gym_membership_df). In PgAdmin I renamed the columns again to differentiate the datasets before the triple join. With the triple join I created a new table called google_trends_sql.

***Stefanie***

I had to join to Google Trends file Ben pulled. The date range was 2017-10-06 to 2018-01-09. The premise was "does exercise/working-out improve a person’s activeness?". 
The data was based on:

Date

Step Count

Calories Burned

Mood

Hours of Sleep

Feeling or Activeness or Inactiveness

Weight

Hours of Sleep column was deleted  as  it was quetionable for number of steps.
One could determine does working-out/exercise promotes an increase in the daily step-count or not.
There were no duplicates and a check for nulls came back none.
Using pandas, a connection was made to pgAdmin to load to the table fittrends.
The same process was followed to take the google trends data and a table was built on pgAdmin and loaded and called members.
The 2 tables, fittrends and members, can be joined on date. 

***Kim***

Used data set from csv files provided by https://www.kaggle.com/datasets/nsrose7224/crowdedness-at-the-campus-gym to see how active people where throughout the year, and mutlitime.csv found by Ben to merge tables created together. Used Jupyter Notebook and Pandas to read csv files,  cleaned up the data and dropped the columns & duplicates not need in our dataframes. Renamed the columns to times & members to reflect tables created in pgAdmin.  Used pgAdmin to merge times & members tables using the date column as primary key. Showed the crowdedness at a gym over the span of 2 years, and what times of the week, month & hours are most popularly used by members.

# Load

After cleaning our data and creating matching tables in pgAdmin, we created a connection to pgAdmin and loaded our data into the corresponding 
tables. In pgAdmin, we made primary keys to match the column that we wanted to join on (date for us). After successfully creating tables and loading the data in, we joined each of our tables in pgAdmin. Google Trend Data (membership numbers) represent search interest relative to the highest point on the chart for the given region and time. A value of 100 is the peak popularity for the term. A value of 50 means that the term is half as popular. A score of 0 means there was not enough data for this term. 

Ben's database inluded 2 joined tables, crowd which contained 4 columns: id as an integer, members_workingout as an integer, date as variable
characters (primary key), and temp as a float. The members table had only two columns: date as variable characters (primary key) and membership_count as an integer. The tables were merged on date as one cohesive dataset.

Lyndsay's database included 3 joined tables (diets_df, fitness_apps, and google_trends_df) all with columns 'month' and 'score'. 
All 3 tables were joined on month to create one cohesive dataset ready for analysis.

Stefanie's database included 2 joined tables (fittrends and members), fittrends had columns id as date (primary key, stepcount as character, mood
as an integer, calories as an integer, active as an integer, active as an integer and weight_kg as an integer. The table members only had two columns: id as a date (primary key) and membership_count as an integer. The two tables were joined on date to allow for further analysis (96 rows were returned after joining).

Kim's database included 2 joined tables (times and members), times had columns id as an integer, date as variable characters (primary key), members as an integer, hour as an integer, weekday as an integer and month as an integer. The table members had only two columns: date as variable characters (primary key) and member_numbers as an integer. The two tables were joined on date to allow for further analysis.








