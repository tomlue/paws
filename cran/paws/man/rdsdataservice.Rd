% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{rdsdataservice}
\alias{rdsdataservice}
\title{AWS RDS DataService}
\usage{
rdsdataservice(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}, where \code{svc} is the name you've assigned
to the client. The available operations are listed in the
Operations section.
}
\description{
Amazon RDS Data Service

Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon
Aurora Serverless DB cluster. To run these statements, you work with the
Data Service API.

For more information about the Data Service API, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html}{Using the Data API for Aurora Serverless}
in the \emph{Amazon Aurora User Guide}.

If you have questions or comments related to the Data API, send email to
\href{mailto:Rds-data-api-feedback@amazon.com}{Rds-data-api-feedback@amazon.com}.
}
\section{Service syntax}{
\preformatted{svc <- rdsdataservice(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string"
    ),
    endpoint = "string",
    region = "string"
  )
)
}
}

\section{Operations}{

\tabular{ll}{
\link[=rdsdataservice_batch_execute_statement]{batch_execute_statement} \tab Runs a batch SQL statement over an array of data\cr
\link[=rdsdataservice_begin_transaction]{begin_transaction} \tab Starts a SQL transaction\cr
\link[=rdsdataservice_commit_transaction]{commit_transaction} \tab Ends a SQL transaction started with the BeginTransaction operation and commits the changes\cr
\link[=rdsdataservice_execute_sql]{execute_sql} \tab Runs one or more SQL statements\cr
\link[=rdsdataservice_execute_statement]{execute_statement} \tab Runs a SQL statement against a database\cr
\link[=rdsdataservice_rollback_transaction]{rollback_transaction} \tab Performs a rollback of a transaction
}
}

\examples{
\dontrun{
svc <- rdsdataservice()
svc$batch_execute_statement(
  Foo = 123
)
}

}
