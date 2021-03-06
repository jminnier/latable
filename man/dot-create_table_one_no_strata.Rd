% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make-table-one-wout-strata.R
\name{.create_table_one_no_strata}
\alias{.create_table_one_no_strata}
\title{Make a Table 1 without strata.}
\usage{
.create_table_one_no_strata(data, vars, fct_vars, catDigits = 1,
  contDigits = 2, pDigits = 3, var_labels = TRUE, nonnormal = NULL,
  ...)
}
\arguments{
\item{data}{A data frame in which these variables exist. All variables (both
vars and strata) must be in this data frame.}

\item{vars}{Variables to be summarized given as a character vector. Factors
are handled as categorical variables, whereas numeric variables are handled
as continuous variables. If empty, all variables in the data frame
specified in the data argument are used.}

\item{fct_vars}{Numerically coded variables that should be handled as
categorical variables given as a character vector. Do not include factors,
unless you need to relevel them by removing empty levels. If omitted, only
factors are considered categorical variables. The variables specified here
must also be specified in the \code{vars} argument.}

\item{catDigits}{Number of digits to print for proportions. Default 1.}

\item{contDigits}{Number of digits to print for continuous variables. Default
2.}

\item{pDigits}{Number of digits to print for p-values (also used for
standardized mean differences). Default 3.}

\item{var_labels}{Whether to replace variable names with variable labels
obtained from \code{labelled::var_label()} function.}

\item{nonnormal}{A character vector to specify the variables for which the
p-values should be those of nonparametric tests. By default all p-values
are from normal assumptionbased tests (oneway.test).}

\item{...}{Optional parameters}
}
\value{
A tbl_df
}
\description{
Wrapper function for \code{tableone::CreateTableOne} that adds in formatting and
other preferences of mine. Per their documentation: The tableone package is
an R package that eases the construction of "Table 1", i.e., patient baseline
characteristics table commonly found in biomedical research papers. The
packages can summarize both continuous and categorical variables mixed within
one table. Categorical variables can be summarized as counts and/or
percentages. Continuous variables can be summarized in the “normal” way
(means and standard deviations) or "nonnormal" way (medians and interquartile
ranges).
}
\references{
https://cran.r-project.org/web/packages/tableone/tableone.pdf
}
