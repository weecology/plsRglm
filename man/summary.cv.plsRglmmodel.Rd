\name{summary.cv.plsRglmmodel}
\alias{summary.cv.plsRglmmodel}
\title{Summary method for plsRglm models}
\description{
This function provides a summary method for the class \code{"cv.plsRglmmodel"}
}
\usage{
\method{summary}{cv.plsRglmmodel}(object, \dots)
}
\arguments{
  \item{object}{an object of the class \code{"cv.plsRglmmodel"}}
  \item{\dots}{further arguments to be passed to or from methods.}  
}
%\details{}
\value{An object of class \code{"summary.cv.plsRmodel"} if \code{model} is missing or \code{model="pls"}. Otherwise an object of class \code{"summary.cv.plsRglmmodel"}.}
\references{
Nicolas Meyer, Myriam Maumy-Bertrand et \enc{Frederic}{Fr\'ed\'eric} Bertrand (2010). Comparing the linear and the logistic PLS regression with qualitative predictors: application to allelotyping data. \emph{Journal de la Societe Francaise de Statistique}, 151(2), pages 1-18.
\url{http://publications-sfds.math.cnrs.fr/index.php/J-SFdS/article/view/47}
}
\author{\enc{Frederic}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\seealso{\code{\link{summary}}}
\examples{
data(Cornell)
XCornell<-Cornell[,1:7]
yCornell<-Cornell[,8]
bbb <- cv.plsRglm(dataY=yCornell,dataX=XCornell,nt=10,NK=1,
modele="pls-glm-family",family=gaussian())
summary(bbb)
rm(list=c("XCornell","yCornell","bbb"))
}
\keyword{methods}
\keyword{print}
