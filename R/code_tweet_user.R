#' coding and open Twitter user in browser
#'
#' @description coding and open user in browser
#'
#' @param user_df Data frame from the rest API
#' @param startrow define in which row to start. If not specified it starts in the first row
#'
#' @examples
#' \dontrun{
#' # to open a specific user: input is a df from the search API:
#' code_tweet_user(user_df, 1)
#' }
#'
#' @return new data frame with all codes
#' @export


code_tweet_user <- function(user_df, startrow=1)
{
  # take df as input and add column for codings
  user_df$relevant <- NA
  # define specific function for coding
  readkey_code <- function(user_df=user_df)
  {
    cat( paste(user_df$name[i], user_df$description[i], user_df$location[i], user_df$lang[i], sep="\n") )
    message (paste("Press",
                   "[a] 'relevant'",
                   "[s] 'not relevant'",
                   "[w] 'unclear '",
                   "[d] 'open browser'",
                   "[f] 'Google search'",
                   "[quit] exit\n", 
                   sep="\n") )
    input <- readline()
    return(input)
  }
  # check each row
  for (i in startrow:nrow(user_df)) {
    input <- readkey_code(user_df)
    cat("\014")
    # check for valid input
    while(!input %in% c("a", "d", "s","w","quit","f")){
      cat("type a valid option \n")
      input <- readkey_code(user_df)
      cat("\014")  
    }
    
    # check: open browser
    while(input %in% c("d","f") ) {  
      if (input == "d") { 
      browseURL(paste0("https://twitter.com/", user_df[i,"screenName"]))
      input <- readkey_code(user_df)
      cat("\014")  
      if (input == "quit") {return(user_df)}
      }
      if (input == "f") {
        browseURL(paste0("https://www.google.ch/search?q=",
                         gsub(" ", "+", user_df$name[i]) ) )
        input <- readkey_code(user_df)
        cat("\014")  
        if (input == "quit") {return(user_df)}
      }
    }
    # save valid coding in cell
    if (input %in% c("a","s","w")) {
      user_df$relevant[i]  <- input }
    # exit if intended
    if (input == "quit") {return(user_df)}
    cat(paste("finished with row ", i, "\n"))
    # backup codings in case function crashes
    save(user_df, file="xx_user_df.RData")
  }
}