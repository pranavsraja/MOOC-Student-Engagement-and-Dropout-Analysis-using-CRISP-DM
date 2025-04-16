############################### CrispDm Cycle 2 ###########################################
median_step <- extracted_master_lev_response %>%
    summarize(median_last_completed_step = median(last_completed_step, na.rm = TRUE))
median_step
ProjectTemplate::cache("median_step")

median_week <- extracted_master_lev_response |>
    summarize(median_last_completed_week_number = median(last_completed_week_number, na.rm = TRUE))
median_week
ProjectTemplate::cache("median_week")

median_step_number <- extracted_master_lev_response |>
    summarize(median_last_completed_step_number = median(last_completed_step_number, na.rm = TRUE))
median_step_number
ProjectTemplate::cache("median_step_number")

leaving_summary <- extracted_master_lev_response |> count(leaving_reason) |>
    arrange(desc(n))
leaving_summary
ProjectTemplate::cache("leaving_summary")

combined_analysis_data <- bind_rows(
    extracted_master_lev_response |> select(value = last_completed_step) |>
        mutate(metric = "last_completed_step"), extracted_master_lev_response |>
        select(value = last_completed_week_number) |>
        mutate(metric = "last_completed_week_number"),

    extracted_master_lev_response |>
        select(value = last_completed_step_number) |>
        mutate(metric = "last_completed_step_number"))
ProjectTemplate::cache("combined_analysis_data")


##################################################################################
#correlation between leaving response and last_completed_step
extracted_master_lev_response$leaving_reason_numeric <- as.numeric(as.factor(extracted_master_lev_response$leaving_reason))

correlation_levresponse_lastcompstep <- cor(extracted_master_lev_response$leaving_reason_numeric,
                   extracted_master_lev_response$last_completed_step, use = "complete.obs")
correlation_levresponse_lastcompstep
ProjectTemplate::cache("correlation_levresponse_lastcompstep")