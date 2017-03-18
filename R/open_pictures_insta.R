#' open facebook post in browser
#'
#' @description Get all comments of a user
#'
#' @param my_df A data frame with the columns "id", "comments", and "likes"
#'
#' @examples
#' \dontrun{
#' # to open a specific instagram picture: 
#' # input is a data frame with the columns 
#' # "id", "comments", and "likes":
#' open_pictures_insta(ensoie_df)
#'  }
#'
#' @return none, browser opens automatically
#' @export

open_pictures_insta <- function(my_df)
{
  for (i in 1:nrow(my_df)) {
    browseURL(paste0("https://www.instagram.com",my_df[i,"id"]))
    cat(paste0("picture ", i, " comments:", my_df[i,"comments"],
               " like:", my_df[i,"likes"], "\n"))
    test <- readkey()
    if (test == "quit") {break}
  }
}
