% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neighbouRhood.R
\name{calc_p_vals}
\alias{calc_p_vals}
\title{Calculates p-values from the permutation data as well as the baseline}
\usage{
calc_p_vals(dat_baseline, dat_perm, n_perm, p_tresh = 0.01)
}
\arguments{
\item{dat_baseline}{a baseline statistics table calculated by running the aggregate_* function on the unpermuted data}

\item{dat_perm}{the permuatation data}

\item{n_perm}{number of permuations used to calculate dat_perm}

\item{p_tresh}{p value threshold to be used}
}
\value{
a table containing the results of the permutation test.
        Columns:
            group: group id
            FirstLabel: first label
            SecondLabel: second label
            p_gt: fraction of permutations equal or bigger than baseline
            p_lt: fraction of permutations equal or less than baseline
            direction: it the p_lt smaller than p_gt?
            p: the smaller p value of p_gt and p_lt
            sig: it the p significant compared to the p_tresh?
            sigval: -1=if sig and direction==False, 0=if not sig, 1=if sig and direction==True
}
\description{
Calculates p-values from the permutation data as well as the baseline
}
