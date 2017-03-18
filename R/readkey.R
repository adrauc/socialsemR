#' respond to user
#'
#' @description Stop process, respond to user
#'
#'
#' @examples
#' \dontrun{
#' # responds to user and waits for command
#' readkey()
#' }
#'
#' @return console command
#' @export

readkey <- function()
{
  cat ("Press [enter] to continue or type [quit] to exit")
  input <- readline()
  return(input)
}
