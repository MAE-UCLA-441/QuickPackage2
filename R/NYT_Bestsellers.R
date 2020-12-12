#' NYT Bestsellers
#'
#' @param date This is a date
#' @param category This is a qcategory
#'
#' @return
#' @export
#'
#' @examples
#' NYT_BestSellers(date = "2020-12-01")
NYT_BestSellers <- function(date = "current",category = "hardcover-fiction"){

  #APIKey
  APIkey = "gjYjKbV7slnuCAFkDAzSjqhFo6XC9BLJ"

  #Build path
  URL = paste("https://api.nytimes.com/svc/books/v3/lists/" , date , "/", category , ".json?" , sep = "")
  PATH = paste(URL, "api-key=" , APIkey, sep ="")
  initialquery = jsonlite::fromJSON(PATH)

  #Pulll relevant info
  books = initialquery$results$books

  #Select relevant columns
  books = books %>%
    dplyr::select(rank,title,description,publisher,rank_last_week,weeks_on_list)

  return(books)
}
