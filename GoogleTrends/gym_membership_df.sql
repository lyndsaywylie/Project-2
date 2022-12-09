SELECT * FROM gym_membership_df;
SELECT * FROM diets_df;
SELECT * FROM fitness_apps;
SELECT * FROM google_trends_df;
CREATE TABLE diets_df (
	month TEXT,
	score TEXT);

CREATE TABLE fitness_apps_df (
	month TEXT,
	score TEXT);

CREATE TABLE gym_membership_df (
	month TEXT,
	score TEXT);
	
DROP TABLE fitness_apps_df;
DROP TABLE diets_df;
DROP TABLE gym_membership_df;

ALTER TABLE diets_df rename score to diets_score;
ALTER TABLE fitness_apps_df rename score to fitness_apps_score;
ALTER TABLE gym_membership_df rename score to gym_membership_score;

CREATE TABLE google_trends_df 
SELECT d.month, d.diets_score, f.fitness_apps_score, g.gym_membership_df
FROM diets_df AS d
JOIN fitness_apps_df AS f
ON d.month = f.month
JOIN gym_membership_df AS g
ON f.month = g.month;