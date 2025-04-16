# Example preprocessing script.

cyber_security_1_enrolments <- read.csv("data/cyber-security-1_enrolments.csv")
ProjectTemplate::cache("cyber_security_1_enrolments")

cyber_security_2_enrolments <- read.csv("data/cyber-security-2_enrolments.csv")
ProjectTemplate::cache("cyber_security_2_enrolments")

cyber_security_3_enrolments <- read.csv("data/cyber-security-3_enrolments.csv")
ProjectTemplate::cache("cyber_security_3_enrolments")

cyber_security_4_enrolments <- read.csv("data/cyber-security-4_enrolments.csv")
ProjectTemplate::cache("cyber_security_4_enrolments")

cyber_security_5_enrolments <- read.csv("data/cyber-security-5_enrolments.csv")
ProjectTemplate::cache("cyber_security_5_enrolments")

cyber_security_6_enrolments <- read.csv("data/cyber-security-6_enrolments.csv")
ProjectTemplate::cache("cyber_security_6_enrolments")

cyber_security_7_enrolments <- read.csv("data/cyber-security-7_enrolments.csv")
ProjectTemplate::cache("cyber_security_7_enrolments")

cyber_security_3_archetype_survey_responses <- read.csv("data/cyber-security-3_archetype-survey-responses.csv")
ProjectTemplate::cache("cyber_security_3_archetype_survey_responses")

cyber_security_4_archetype_survey_responses <- read.csv("data/cyber-security-4_archetype-survey-responses.csv")
ProjectTemplate::cache("cyber_security_4_archetype_survey_responses")

cyber_security_5_archetype_survey_responses <- read.csv("data/cyber-security-5_archetype-survey-responses.csv")
ProjectTemplate::cache("cyber_security_5_archetype_survey_responses")

cyber_security_6_archetype_survey_responses <- read.csv("data/cyber-security-6_archetype-survey-responses.csv")
ProjectTemplate::cache("cyber_security_6_archetype_survey_responses")

cyber_security_7_archetype_survey_responses <- read.csv("data/cyber-security-7_archetype-survey-responses.csv")
ProjectTemplate::cache("cyber_security_7_archetype_survey_responses")

cyber_security_4_leaving_survey_responses <- read.csv("data/cyber-security-4_leaving-survey-responses.csv")
ProjectTemplate::cache("cyber_security_4_leaving_survey_responses")

cyber_security_5_leaving_survey_responses <- read.csv("data/cyber-security-5_leaving-survey-responses.csv")
ProjectTemplate::cache("cyber_security_5_leaving_survey_responses")

cyber_security_6_leaving_survey_responses <- read.csv("data/cyber-security-6_leaving-survey-responses.csv")
ProjectTemplate::cache("cyber_security_6_leaving_survey_responses")

cyber_security_7_leaving_survey_responses <- read.csv("data/cyber-security-7_leaving-survey-responses.csv")
ProjectTemplate::cache("cyber_security_7_leaving_survey_responses")

########################################################
library(dplyr)

##### For 1st enrollment data #####
extracted_data_1 <- cyber_security_1_enrolments |>
    select(learner_id, enrolled_at, fully_participated_at, purchased_statement_at,
           gender, age_range, highest_education_level, employment_status,
           employment_area, detected_country) |> mutate(run_cycle = "run1", .before=learner_id)
ProjectTemplate::cache("extracted_data_1")

##### For 2nd enrollment data #####
extracted_data_2 <- cyber_security_2_enrolments |>
    select(learner_id, enrolled_at, fully_participated_at, purchased_statement_at,
           gender, age_range, highest_education_level, employment_status,
           employment_area, detected_country) |> mutate(run_cycle = "run2", .before=learner_id)
ProjectTemplate::cache("extracted_data_2")

##### For 3rd enrollment data #####
extracted_data_3 <- cyber_security_3_enrolments |>
    select(learner_id, enrolled_at, fully_participated_at, purchased_statement_at,
           gender, age_range, highest_education_level, employment_status,
           employment_area, detected_country) |> mutate(run_cycle = "run3", .before=learner_id)
ProjectTemplate::cache("extracted_data_3")

##### For 4th enrollment data #####
extracted_data_4 <- cyber_security_4_enrolments |>
    select(learner_id, enrolled_at, fully_participated_at, purchased_statement_at,
           gender, age_range, highest_education_level, employment_status,
           employment_area, detected_country) |> mutate(run_cycle = "run4", .before=learner_id)
ProjectTemplate::cache("extracted_data_4")

##### For 5th enrollment data #####
extracted_data_5 <- cyber_security_5_enrolments |>
    select(learner_id, enrolled_at, fully_participated_at, purchased_statement_at,
           gender, age_range, highest_education_level, employment_status,
           employment_area, detected_country) |> mutate(run_cycle = "run5", .before=learner_id)
ProjectTemplate::cache("extracted_data_5")

##### For 6th enrollment data #####
extracted_data_6 <- cyber_security_6_enrolments |>
    select(learner_id, enrolled_at, fully_participated_at, purchased_statement_at,
           gender, age_range, highest_education_level, employment_status,
           employment_area, detected_country) |> mutate(run_cycle = "run6", .before=learner_id)
ProjectTemplate::cache("extracted_data_6")

##### For 7th enrollment data #####
extracted_data_7 <- cyber_security_7_enrolments |>
    select(learner_id, enrolled_at, fully_participated_at, purchased_statement_at,
           gender, age_range, highest_education_level, employment_status,
           employment_area, detected_country) |> mutate(run_cycle = "run7", .before=learner_id)
ProjectTemplate::cache("extracted_data_7")

##### combining all enrollment data frames together #####
master_extracted_data <- bind_rows(extracted_data_1, extracted_data_2, extracted_data_3, extracted_data_4, extracted_data_5, extracted_data_6, extracted_data_7)
ProjectTemplate::cache("master_extracted_data")

##### Archetypes for run3 ######
extracted_arche_data_3 <- cyber_security_3_archetype_survey_responses |>
    select(archetype) |> mutate(run_cycle = "run3", .before=archetype)
ProjectTemplate::cache("extracted_arche_data_3")

##### Archetypes for run4 ######
extracted_arche_data_4 <- cyber_security_4_archetype_survey_responses |>
    select(archetype) |> mutate(run_cycle = "run4", .before=archetype)
ProjectTemplate::cache("extracted_arche_data_4")

##### Archetypes for run5 ######
extracted_arche_data_5 <- cyber_security_5_archetype_survey_responses |>
    select(archetype) |> mutate(run_cycle = "run5", .before=archetype)
ProjectTemplate::cache("extracted_arche_data_5")

##### Archetypes for run6 ######
extracted_arche_data_6 <- cyber_security_6_archetype_survey_responses |>
    select(archetype) |> mutate(run_cycle = "run6", .before=archetype)
ProjectTemplate::cache("extracted_arche_data_6")

##### Archetypes for run7 ######
extracted_arche_data_7 <- cyber_security_7_archetype_survey_responses |>
    select(archetype) |> mutate(run_cycle = "run7", .before=archetype)
ProjectTemplate::cache("extracted_arche_data_7")

##### combining all archetype data frames together #####
master_arche_extracted_data <- bind_rows(extracted_arche_data_3, extracted_arche_data_4, extracted_arche_data_5, extracted_arche_data_6, extracted_arche_data_7)
ProjectTemplate::cache("master_arche_extracted_data")

################################################################################

####### Leaving response for run 4 #########
extracted_lev_response_4 <- cyber_security_4_leaving_survey_responses |>
    select(learner_id, leaving_reason, last_completed_step, last_completed_week_number, last_completed_step_number
    ) |> mutate(run_cycle = "run4", .before = learner_id)
ProjectTemplate::cache("extracted_lev_response_4")

####### Leaving response for run 5 #########
extracted_lev_response_5 <- cyber_security_5_leaving_survey_responses |>
    select(learner_id, leaving_reason, last_completed_step, last_completed_week_number, last_completed_step_number
    ) |> mutate(run_cycle = "run5", .before = learner_id)
ProjectTemplate::cache("extracted_lev_response_5")

####### Leaving response for run 6 #########
extracted_lev_response_6 <- cyber_security_6_leaving_survey_responses |>
    select(learner_id, leaving_reason, last_completed_step, last_completed_week_number, last_completed_step_number
    ) |> mutate(run_cycle = "run6", .before = learner_id)
ProjectTemplate::cache("extracted_lev_response_6")

####### Leaving response for run 7 #########
extracted_lev_response_7 <- cyber_security_7_leaving_survey_responses |>
    select(learner_id, leaving_reason, last_completed_step, last_completed_week_number, last_completed_step_number
    ) |> mutate(run_cycle = "run7", .before = learner_id)
ProjectTemplate::cache("extracted_lev_response_7")


##### combining all leaving response data frames together #####
extracted_master_lev_response <-  bind_rows(extracted_lev_response_4, extracted_lev_response_5,
                                            extracted_lev_response_6, extracted_lev_response_7)

ProjectTemplate::cache("extracted_master_lev_response")

########################Cripdm cycle 1 #########################
country_summary_1 <- extracted_data_1 |> count(detected_country, run_cycle) |>
    arrange(desc(n))
ProjectTemplate::cache("country_summary_1")
head(country_summary_1)

country_summary_2 <- extracted_data_2 |> count(detected_country, run_cycle) |>
    arrange(desc(n))
ProjectTemplate::cache("country_summary_2")
head(country_summary_2)

country_summary_3 <- extracted_data_3 |> count(detected_country, run_cycle) |>
    arrange(desc(n))
head(country_summary_3)
ProjectTemplate::cache("country_summary_3")

country_summary_4 <- extracted_data_4 |> count(detected_country, run_cycle) |>
    arrange(desc(n))
head(country_summary_4)
ProjectTemplate::cache("country_summary_4")

country_summary_5 <- extracted_data_5 |> count(detected_country, run_cycle) |>
    arrange(desc(n))
head(country_summary_5)
ProjectTemplate::cache("country_summary_5")

country_summary_6 <- extracted_data_6 |> count(detected_country, run_cycle) |>
    arrange(desc(n))
head(country_summary_6)
ProjectTemplate::cache("country_summary_6")

country_summary_7 <- extracted_data_7 |> count(detected_country, run_cycle) |>
    arrange(desc(n))
head(country_summary_7)
ProjectTemplate::cache("country_summary_7")

each_country_summary <- bind_rows(head(country_summary_1,6), head(country_summary_2,6), head(country_summary_3,6), head(country_summary_4,6),
   head(country_summary_5,6), head(country_summary_6,6), head(country_summary_7,6)) |>
 filter(across(everything(), ~. != "--"))
ProjectTemplate::cache("each_country_summary")

country_summary <- master_extracted_data |> count(detected_country) |>
    filter(across(everything(), ~. != "--")) |>
    arrange(desc(n)) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("country_summary")

####################################################################################

gender_summary_1 <- extracted_data_1 |> count(gender, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("gender_summary_1")

gender_summary_2 <- extracted_data_2 |> count(gender, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("gender_summary_2")

gender_summary_3 <- extracted_data_3 |> count(gender, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("gender_summary_3")

gender_summary_4 <- extracted_data_4 |> count(gender, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("gender_summary_4")

gender_summary_5 <- extracted_data_5 |> count(gender, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("gender_summary_5")

gender_summary_6 <- extracted_data_6 |> count(gender, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("gender_summary_6")

gender_summary_7<- extracted_data_7 |> count(gender, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("gender_summary_7")

each_gender_summary <- bind_rows(gender_summary_1, gender_summary_2, gender_summary_3, gender_summary_4,
                                 gender_summary_5, gender_summary_6, gender_summary_7)
ProjectTemplate::cache("each_gender_summary")

gender_summary <- master_extracted_data |> count(gender) |> filter(across(everything(), ~. != "Unknown")) |>
    mutate(percent = round(n/sum(n)*100, 1)) |> arrange(desc(n))
ProjectTemplate::cache("gender_summary")

############### Age Summary #####################
##### W.R.T each run
age_summary_1 <- extracted_data_1 |> count(age_range, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("age_summary_1")

age_summary_2 <- extracted_data_2 |> count(age_range, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("age_summary_2")

age_summary_3 <- extracted_data_3 |> count(age_range, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("age_summary_3")

age_summary_4 <- extracted_data_4 |> count(age_range, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("age_summary_4")

age_summary_5 <- extracted_data_1 |> count(age_range, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("age_summary_5")

age_summary_6 <- extracted_data_6 |> count(age_range, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("age_summary_6")

age_summary_7 <- extracted_data_7 |> count(age_range, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("age_summary_7")

each_age_summary <- bind_rows(age_summary_1, age_summary_2, age_summary_3, age_summary_4,
                              age_summary_5, age_summary_6, age_summary_7)
ProjectTemplate::cache("each_age_summary")

############## Total comparison
age_summary <- master_extracted_data |>
    count(age_range) |> arrange(age_range) |> arrange(desc(n)) |>
    filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("age_summary")

#################################### Employment summary ############################
######### W.R.T each Run ####
employment_status_summary_1 <- extracted_data_1 |> count(employment_status, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("employment_status_summary_1")

employment_status_summary_2 <- extracted_data_2 |> count(employment_status, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("employment_status_summary_2")

employment_status_summary_3 <- extracted_data_3 |> count(employment_status, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("employment_status_summary_3")

employment_status_summary_4 <- extracted_data_4 |> count(employment_status, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("employment_status_summary_4")

employment_status_summary_5 <- extracted_data_5 |> count(employment_status, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("employment_status_summary_5")

employment_status_summary_6 <- extracted_data_6 |> count(employment_status, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("employment_status_summary_6")

employment_status_summary_7 <- extracted_data_7 |> count(employment_status, run_cycle) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("employment_status_summary_7")

each_employment_status_summary <- bind_rows(employment_status_summary_1, employment_status_summary_2, employment_status_summary_3, employment_status_summary_4,
                                            employment_status_summary_5, employment_status_summary_6, employment_status_summary_7)
ProjectTemplate::cache("each_employment_status_summary")

###### Total count ####
employment_status_summary <- master_extracted_data |>
    count(employment_status) |> arrange(desc(n)) |>
    filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("employment_status_summary")

################################### Overall employment area #######################
employment_area_summary <- master_extracted_data |> count(employment_area) |> arrange(desc(n)) |>
    filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("employment_area_summary")

###################################### Overall higher_education ########################
highest_education_level_summary <- master_extracted_data |> count(highest_education_level) |>
    arrange(desc(n)) |> filter(across(everything(), ~. != "Unknown")) |> mutate(percent = round(n/sum(n)*100, 1))
ProjectTemplate::cache("highest_education_level_summary")

##################################### archetype summary ################################
archetype_summary <- master_arche_extracted_data |> count(archetype) |>
    arrange(desc(n))
ProjectTemplate::cache("archetype_summary")

#######################################################################################
# % of people who fully participated across all the 7 runs
participation_rate <- master_extracted_data |>
    summarise(
        total_enrolled = sum(nzchar(enrolled_at), na.rm=TRUE),
        total_participated = sum(nzchar(fully_participated_at), na.rm=TRUE),
        percentage = round((total_participated/total_enrolled * 100), 1)
    )
ProjectTemplate::cache("participation_rate")
######################################################################################

# % of people who purchased the course across all the 7 runs
purchase_rate <- master_extracted_data |>
    summarise(
        total_enrolled = sum(nzchar(enrolled_at), na.rm=TRUE),
        total_purchased = sum(nzchar(purchased_statement_at), na.rm=TRUE),
        percentage = round((total_purchased/total_enrolled * 100), 1)
    )
ProjectTemplate::cache("purchase_rate")

######################################################################################

# % of people who have purchased the course out of those who have completed it
effective_rate <- master_extracted_data |>
    summarise(
        total_completed = sum(nzchar(fully_participated_at), na.rm = TRUE),
        total_purchased = sum(nzchar(purchased_statement_at), na.rm = TRUE),
        percentage = round((total_purchased/total_completed * 100), 1)
    )
ProjectTemplate::cache("effective_rate")

#######################################################################################


