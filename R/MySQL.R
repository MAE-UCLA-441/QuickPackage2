#' Title
#'
#' @param tablename The name of a table in your MySQL database
#'
#' @return
#' @export
#'
#' @examples
#' get_table()
get_table <- function(tablename){
  host = "db4free.net"
  dbname = "admfedb"
  port = 3306
  password = "password"
  user= "srborghese"
  #tablename = "hats"

  connection = RMySQL::dbConnect(RMySQL::MySQL(),
                                 host = host,
                                 dbname = dbname,
                                 port = port,
                                 password = password,
                                 user = user)

  #dbGetQuery(connection,"GRANT SUPER ON *.* TO srborghese@db4free.net;")

  return(DBI::dbGetQuery(connection,
                         paste0("SELECT * FROM ", tablename, ";")))
}
