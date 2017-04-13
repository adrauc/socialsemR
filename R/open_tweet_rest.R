#' open tweets in browser from REST API
#'
#' @description open tweets in browser
#'
#' @param tweets_df Data frame from the REST API
#'
#' @examples
#' \dontrun{
#' # to open a specific tweet: input is a df from the REST API:
#' open_tweet_rest(tweets_df)
#' }
#'
#' @return none, browser opens automatically
#' @export

open_tweet_rest <- function(tweets_df)
{
  for (i in 1:nrow(tweets_df)) {
    browseURL(paste0("https://twitter.com/",
                     tweets_df[i,"screenName"],
                     "/status/",
                     tweets_df[i,"id"]))
    cat(paste0("number ", i, " name:", tweets_df[i,"screen_name"],"\n"))
    test <- readkey()
    if (test == "quit") {break}
  }
}
