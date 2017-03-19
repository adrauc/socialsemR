#' open facebook comment in browser
#'
#' @description Open a specific comment in browser
#'
#' @param comment_id Vector with comment id as strings
#' @param user_name String, must be the username in the url
#'
#' @examples
#' \dontrun{
#' # to open a specific facebook comment: input is a vector with comment ids (strings) 
#' # and the username from the url
#' open_facebook_comment(comments_df$id, "TheVoiceOfGermany")
#' }
#'
#' @return none, browser opens automatically
#' @export

open_facebook_comment <- function(comment_id, user_name)
{
  for (i in 1:length(comment_id)) {
    browseURL(paste0("https://www.facebook.com/", user_name,"/posts/",
                     strsplit(comment_id[i],"_")[[1]][1],
                     "?comment_id=", 
                     strsplit(comment_id[i],"_")[[1]][2]))
    # cat(paste0("Nummer ", i, " Name:", mein_df[i,"from_name"],"\n"))
    test <- readkey()
    if (test == "quit") {break}
  }
}
