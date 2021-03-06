% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/open_facebook_comment.R
\name{open_facebook_comment}
\alias{open_facebook_comment}
\title{open facebook comment in browser}
\usage{
open_facebook_comment(comment_id, user_name)
}
\arguments{
\item{comment_id}{Vector with comment id as strings}

\item{user_name}{String, must be the username in the url}
}
\value{
none, browser opens automatically
}
\description{
Open a specific comment in browser
}
\examples{
\dontrun{
# to open a specific facebook comment: input is a vector with comment ids (strings) 
# and the username from the url
open_facebook_comment(comments_df$id, "TheVoiceOfGermany")
}

}
