#' Title
#'
#' @param df
#' @param threshold
#'
#' @return
#' @export
#'
#' @examples
drop_coulmn_if_too_many_NAs <- function(df, threshold){
  #Finds number of Rows
  num_obs = dim(df)[1]

  #Selects columns based on low NAs
  df_cut =
    df[, colSums(is.na(df)) < num_obs * threshold ]

  #Prints any columns it drops
  print(colnames(df[, colSums(is.na(df)) >= num_obs * threshold ]))
  return(df_cut)
}
