validate_deployments <- function(camtrapdp, agouti_id = NULL, markdown = TRUE) {
  deployments <- deployments(camtrapdp)
  
  invalid_deployments <-
    deployments |>
    filter(
      is.na(latitude) | is.na(longitude) |
        is.na(deploymentStart) | is.na(deploymentEnd)
    ) |>
    select(deploymentID, latitude, longitude, deploymentStart, deploymentEnd)
  
  if(nrow(invalid_deployments) == 0) {
    message("No issues were found.")
    return(invisible(NULL))
  }

  if (markdown) {
    invalid_deployments |>
      mutate(
        deployment_url = paste0(
          "https://agouti.eu/project/", agouti_id, "/deployments/edit/", deploymentID
        ),
        status = "",
        deploymentID = paste0("[", deploymentID, "](", deployment_url, ")")
      ) |>
      select(-deployment_url) |>
      knitr::kable(format = "markdown")
  } else {
    invalid_deployments
  }
}

validate_observations <- function(camtrapdp, agouti_id = NULL, markdown = TRUE) {
  observations <- observations(camtrapdp)
  
  invalid_observations <- 
    observations |>
    filter(
        is.na(eventStart) | is.na(eventEnd) |
        eventStart < camtrapdp$temporal$start |
        count == 0 | !is.na(scientificName) & is.na(count)
      ) |>
    select(observationID, eventID, eventStart, count) |>
    rename(sequenceID = eventID)
  
  if(nrow(invalid_observations) == 0) {
    message("No issues were found.")
    return(invisible(NULL))
  }
  
  if (markdown) {
    invalid_observations |>
      mutate(
        sequence_url = paste0(
          "https://agouti.eu/project/", agouti_id, "/annotate/sequence/", sequenceID
        ),
        status = "",
        sequenceID = paste0("[", sequenceID, "](", sequence_url, ")")
      ) |>
      select(-sequence_url) |>
      knitr::kable(format = "markdown")
  } else {
    invalid_observations
  }
}