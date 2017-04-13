#' open Twitter user in browser
#'
#' @description open user in browser
#'
#' @param tweets_df Data frame from the stream API
#'
#' @examples
#' \dontrun{
#' # to open a specific user: input is a df from the streamAPI:
#' open_tweet_user(tweets_df)
#' }
#'
#' @return none, browser opens automatically
#' @export

open_tweet_user <- function(tweets_df)
{
  for (i in 1:nrow(tweets_df)) {
    browseURL(paste0("https://twitter.com/",
                     tweets_df[i,"screen_name"]))
    cat(paste0("number ", i, " name:", tweets_df[i,"screen_name"],"\n"))
    test <- readkey()
    if (test == "quit") {break}
  }
}