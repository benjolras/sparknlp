% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text-matcher.R
\name{nlp_text_matcher}
\alias{nlp_text_matcher}
\title{Spark NLP TextMatcher phrase matching}
\usage{
nlp_text_matcher(x, input_cols, output_col, path, read_as = "TEXT",
  options = NULL, uid = random_string("text_matcher_"))
}
\arguments{
\item{x}{A \code{spark_connection}, \code{ml_pipeline}, or a \code{tbl_spark}.}

\item{input_cols}{Input columns. String array.}

\item{output_col}{Output column. String.}

\item{path}{a path to a file that contains the entities in the specified format.}

\item{read_as}{the format of the file, can be one of {ReadAs.LINE_BY_LINE, ReadAs.SPARK_DATASET}. Defaults to LINE_BY_LINE.}

\item{options}{an named list containing additional parameters. Defaults to {“format”: “text”}. NOTE THIS IS CURRENTLY NOT USED. (see
\url{https://github.com/rstudio/sparklyr/issues/1058})}

\item{uid}{A character string used to uniquely identify the ML estimator.}

\item{...}{Optional arguments, see Details.}
}
\value{
The object returned depends on the class of \code{x}.

\itemize{
  \item \code{spark_connection}: When \code{x} is a \code{spark_connection}, the function returns an instance of a \code{ml_estimator} object. The object contains a pointer to
  a Spark \code{Estimator} object and can be used to compose
  \code{Pipeline} objects.

  \item \code{ml_pipeline}: When \code{x} is a \code{ml_pipeline}, the function returns a \code{ml_pipeline} with
  the NLP estimator appended to the pipeline.

  \item \code{tbl_spark}: When \code{x} is a \code{tbl_spark}, an estimator is constructed then
  immediately fit with the input \code{tbl_spark}, returning an NLP model.
}

When \code{x} is a \code{spark_connection} the function returns a TextMatcher transformer.
When \code{x} is a \code{ml_pipeline} the pipeline with the TextMatcher added. When \code{x}
is a \code{tbl_spark} a transformed \code{tbl_spark}  (note that the Dataframe passed in must have the input_cols specified).
}
\description{
Spark ML transformer to match entire phrases (by token) provided in a file against a Document
See \url{https://nlp.johnsnowlabs.com/docs/en/annotators#textmatcher}
}
