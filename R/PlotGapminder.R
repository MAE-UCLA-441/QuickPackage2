#' Title
#'
#' @param year
#'
#' @return
#' @export
#'
#' @examples
gapminder_by_date <- function(year){
  p <- gapminder %>%
    filter(year==year) %>%
    ggplot( aes(gdpPercap, lifeExp, size = pop, color=continent)) +
    geom_point() +
    theme_bw()

  ggplotly(p)
}
