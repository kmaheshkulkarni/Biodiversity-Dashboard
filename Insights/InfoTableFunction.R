# Table to show species info
BiDTable <- function(DataSpecies) {
  SpeciesDT <- DataSpecies |>
    select(scientificName, vernacularName, family, kingdom, individualCount) |>
    mutate(family = str_to_title(str_replace_all(family, "_", " ")))
  data.frame(
    Name = c("Scientific Name", "Vernacular Name","Family", "Kingdom","Registers","Observations"),
    Info = c(
      paste0(unique(SpeciesDT$scientificName), collapse = ", "),
      paste0(unique(SpeciesDT$vernacularName), collapse = ", "),
      paste0(unique(SpeciesDT$family), collapse = ", "),
      paste0(unique(SpeciesDT$kingdom), collapse = ", "),
      nrow(SpeciesDT),
      sum(SpeciesDT$individualCount, na.rm = TRUE)
    )
  )
} 


mapPopupData <- function(DataSpecies) {
  DataSpecies |>
    mutate(
      locality = str_replace_all(locality, "Poland - ", ""),
      lifeStage = str_to_title(lifeStage),
      sex = str_to_title(sex)
    ) |>
    mutate(
      label = paste0(
        "<p><b>", catalogNumber, "</b></p>",
        "<p></p>",
        "<p><b>Location: </b>", locality, "</p>",
        "<p><b>Date: </b>", eventDate, "</p>",
        "<p><b>Observations: </b>", individualCount, "</p>",
        "<p><b>Life Stage: </b>", lifeStage, "</p>",
        "<p><b>Sex: </b>", sex, "</p>"
      )
    )
}
