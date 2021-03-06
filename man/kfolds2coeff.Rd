\name{kfolds2coeff}
\alias{kfolds2coeff}
\title{Extracts coefficients from k-fold cross validated partial least squares regression models}
\description{
This fonction extracts coefficients from k-fold cross validated partial least squares regression models
}
\usage{
kfolds2coeff(pls_kfolds)
}
\arguments{
  \item{pls_kfolds}{an object that is a k-fold cross validated partial least squares regression models either lm or glm}
}
\details{
This fonctions works for plsR and plsRglm models.
}
\value{
  \item{coef.all}{matrix with the values of the coefficients for each leave one out step or \code{NULL} if another type of cross validation was used.}
}
\references{
Nicolas Meyer, Myriam Maumy-Bertrand et \enc{Frederic}{Fr\'ed\'eric} Bertrand (2010). Comparing the linear and the logistic PLS regression with qualitative predictors: application to allelotyping data. \emph{Journal de la Societe Francaise de Statistique}, 151(2), pages 1-18.
\url{http://publications-sfds.math.cnrs.fr/index.php/J-SFdS/article/view/47}
}
\author{\enc{Frederic}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\note{Only for \code{NK=1} and leave one out CV}
\seealso{\code{\link{kfolds2Pressind}}, \code{\link{kfolds2Press}}, \code{\link{kfolds2Mclassedind}}, \code{\link{kfolds2Mclassed}} and \code{\link[plsRglm:summary.plsRmodel]{summary}} to extract and transform results from k-fold cross validation.}
\examples{
data(Cornell)
XCornell<-Cornell[,1:7]
yCornell<-Cornell[,8]
bbb <- PLS_lm_kfoldcv(dataY=yCornell,dataX=XCornell,nt=3,K=nrow(XCornell),keepcoeffs=TRUE)
kfolds2coeff(bbb)
boxplot(kfolds2coeff(bbb)[,2])
rm(list=c("XCornell","yCornell","Xpine","ypine","bbb"))

data(pine)
Xpine<-pine[,1:10]
ypine<-pine[,11]
bbb2 <- cv.plsR(dataY=ypine,dataX=Xpine,nt=4,K=nrow(Xpine),keepcoeffs=TRUE)
kfolds2coeff(bbb2)
boxplot(kfolds2coeff(bbb2)[,1])
rm(list=c("Xpine","ypine","Xpine","ypine","bbb2"))
}
\keyword{models}
\keyword{regression}
