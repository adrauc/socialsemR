#' open tweets in browser
#'
#' @description open tweets in browser
#'
#' @param tweets_df Data frame from the stream API
#'
#' @examples
#' \dontrun{
#' # to open a specific tweet: input is a df from the streamAPI:
#' open_tweet(tweets_df)
#' }
#'
#' @return none, browser opens automatically
#' @export

open_tweet <- function(tweets_df)
{
  for (i in 1:nrow(tweets_df)) {
    browseURL(paste0("https://twitter.com/",
                     tweets_df[i,"screen_name"],
                     "/status/",
                     tweets_df[i,"id_str"]))
    cat(paste0("number ", i, " name:", tweets_df[i,"screen_name"],"\n"))
    test <- readkey()
    if (test == "quit") {break}
  }
}
