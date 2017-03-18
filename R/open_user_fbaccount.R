#' open a facebook user in the browser
#'
#' @description Get all comments of a user
#'
#' @param user_ids Vector with user id as strings
#'
#' @examples
#' \dontrun{
#' to open a facebook user: input is a vector with user ids (strings):
#' open_user_fbaccount(comments_df[ ,"from_id"])
#' }
#'
#' @return none, browser opens automatically
#' @export

open_user_fbaccount <- function(user_ids)
{
  for (i in 1:length(user_ids)) {
    browseURL(paste0("https://www.facebook.com/app_scoped_user_id/",user_ids[i]))
    #cat(paste0("Number ", i, " name:", mein_df[i,"from_name"],"\n"))
    test <- readkey()
    if (test == "quit") {break}
  }
}