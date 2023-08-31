get_lecture_homework <- function(lecture_number) {
    schedule_raw <- readxl::read_xlsx(here::here('resources','semester-planning.xlsx'))
    subset(schedule_raw, `Lecture Number` == lecture_number, select = exercises, drop = TRUE)
}

ggplot2::theme_set(ggplot2::theme_linedraw())