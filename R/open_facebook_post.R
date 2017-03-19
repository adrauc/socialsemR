#' open facebook post in browser
#'
#' @description Open a specific post in browser
#'
#' @param post_id,  Vector with post id as strings
#' @param user_name String, must be the username in the url
#'
#' @examples
#' \dontrun{
#' # to open a specific facebook post: input is a vector with post ids (strings) 
#' # and the username from the url
#' open_facebook_post(facebook_posts_voice[ ,"id"], "TheVoiceOfGermany")
#' }
#'
#' @return none, browser opens automatically
#' @export

open_facebook_post <- function(post_id, user_name)
{
  for (i in 1:length(post_id)) {
    browseURL(paste0("https://www.facebook.com/", user_name,"/posts/",strsplit(post_id[i],"_")[[1]][2]))
    # cat(paste0("Nummer ", i, " Name:", mein_df[i,"from_name"],"\n"))
    test <- readkey()
    if (test == "quit") {break}
  }
}
