% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/open_user_fbaccount.R
\name{open_user_fbaccount}
\alias{open_user_fbaccount}
\title{open a facebook user in the browser}
\usage{
open_user_fbaccount(user_ids)
}
\arguments{
\item{user_ids}{Vector with user id as strings}
}
\value{
none, browser opens automatically
}
\description{
Get all comments of a user
}
\examples{
\dontrun{
to open a facebook user: input is a vector with user ids (strings):
open_user_fbaccount(comments_df[ ,"from_id"])
}

}
