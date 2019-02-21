# REF_RScripts
R scripts for Reference

<!----- Conversion time: 15.032 seconds.


Using this Markdown file:

1. Cut and paste this output into your source file.
2. See the notes and action items below regarding this conversion run.
3. Check the rendered output (headings, lists, code blocks, tables) for proper
   formatting and use a linkchecker before you publish this page.

Conversion notes:

* Docs to Markdown version 1.0β15
* Wed Feb 20 2019 22:19:58 GMT-0800 (PST)
* Source doc: https://docs.google.com/a/chainalytics.com/open?id=1DeKipFWPOv06a-j1usovt8dnx8gfzz6FWf4Dv2dQcM0
* This document has images: check for >>>>>  gd2md-html alert:  inline image link in generated source and store images to your server.
----->


<p style="color: red; font-weight: bold">>>>>>  gd2md-html alert:  ERRORs: 0; WARNINGs: 0; ALERTS: 34.</p>
<ul style="color: red; font-weight: bold"><li>See top comment block for details on ERRORs and WARNINGs. <li>In the converted Markdown or HTML, search for inline alerts that start with >>>>>  gd2md-html alert:  for specific instances that need correction.</ul>

<p style="color: red; font-weight: bold">Links to alert messages:</p><a href="#gdcalert1">alert1</a>
<a href="#gdcalert2">alert2</a>
<a href="#gdcalert3">alert3</a>
<a href="#gdcalert4">alert4</a>
<a href="#gdcalert5">alert5</a>
<a href="#gdcalert6">alert6</a>
<a href="#gdcalert7">alert7</a>
<a href="#gdcalert8">alert8</a>
<a href="#gdcalert9">alert9</a>
<a href="#gdcalert10">alert10</a>
<a href="#gdcalert11">alert11</a>
<a href="#gdcalert12">alert12</a>
<a href="#gdcalert13">alert13</a>
<a href="#gdcalert14">alert14</a>
<a href="#gdcalert15">alert15</a>
<a href="#gdcalert16">alert16</a>
<a href="#gdcalert17">alert17</a>
<a href="#gdcalert18">alert18</a>
<a href="#gdcalert19">alert19</a>
<a href="#gdcalert20">alert20</a>
<a href="#gdcalert21">alert21</a>
<a href="#gdcalert22">alert22</a>
<a href="#gdcalert23">alert23</a>
<a href="#gdcalert24">alert24</a>
<a href="#gdcalert25">alert25</a>
<a href="#gdcalert26">alert26</a>
<a href="#gdcalert27">alert27</a>
<a href="#gdcalert28">alert28</a>
<a href="#gdcalert29">alert29</a>
<a href="#gdcalert30">alert30</a>
<a href="#gdcalert31">alert31</a>
<a href="#gdcalert32">alert32</a>
<a href="#gdcalert33">alert33</a>
<a href="#gdcalert34">alert34</a>

<p style="color: red; font-weight: bold">>>>>> PLEASE check and correct alert issues and delete this message and the inline alerts.<hr></p>



## Basics



*   Skewness: negative ⇒ left tail, positive = right tail
*   Kurtosis: positive ⇒ width is less
*   Check for normality :  qqnorm, qqline , extRemes::qqPlot
*   Bayesian Models: 
    *   p(A|B) = p(A) p(B|A) / p(B)
    *   p(A) is the probability of the hypothesis before we see the data, called the prior probability, or just prior.
    *   p(A|B) is our goal, this is the probability of the hypothesis after we see the data, called the posterior.
    *   p(B|A) is the probability of the data under the hypothesis, called the likelihood.
    *   p(B) is the probability of the data under any hypothesis, called the normalizing constant.
    *   Bayes factor is the ratio of the likelihood probability of null and alternative hypothesis
    *   

<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R0.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R0.png "image_tooltip")

    *   

_____________________________________________________________________


## ISLR



*   Some statistical methods, such as K-nearest neighbors (Chapters 2 and 4) and boosting (Chapter 8), can be used in the case of either quantitative or qualitative responses
*   The de- degrees of grees of freedom is a quantity that summarizes the flexibility of a curve
*   if f is highly non-linear, both training and test MSE wil decrease rapidly then increase slowly
*   Variance refers to the amount by which f would change if we estimated it using a different training data set
*   bias refers to the error that is introduced by approximation
*   Classifiction: Bayes, KNN<
*   Bayes Classifier : if we know  Pr(Y = j | X = x)
*   Choose more flexible method when: n is extremely large and variance of the error terms is low



<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R1.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R1.png "image_tooltip")




        *   red = test error
        *   orange = estimator variance
        *   green = model bias
        *   gray = irreducible error
        *   blue = train error

    

<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R2.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R2.png "image_tooltip")




### Linear Model

Assumptions:



*   predictors and response are additive and linear

94%  confidence interval for β0



<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R3.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R3.png "image_tooltip")


T-statistic to determine if β1 is non zero: (number of standard deviations)



<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R4.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R4.png "image_tooltip")


t-distribution has a bell shape and for values of n greater than approximately 30 it is quite similar to the normal distribution. 

p-value :  probability of observing any value equal to |t| or larger

The RSE is an estimate of the standard deviation of error,a measure of the lack of fit of the model  |  unit=unit of y



<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R5.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R5.png "image_tooltip")


R-sqrd (same as squared correlation i simple linear regression)—the proportion of variance explained—



<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R6.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R6.png "image_tooltip")


TSS = (yi − y¯)<sup>2</sup>



<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R7.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R7.png "image_tooltip")


**For multiple Linear regression**:

H0 : β1 = β2 = ··· = βp = 0

Ha : at least one βj is non-zero : First step: find F-statistic and corresponding p value



<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R8.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R8.png "image_tooltip")


when there is no relationship - F-statistic  close to 1

When n is large, an F-statistic that is just a little larger than 1 might still provide evidence against H0

When H0 is true and the errors i have a normal distribution, the F-statistic follows an F-distribution. the p-value associated with the F-statistic, we can determine whether or not to reject H0

If q, out of total p features are insignifcant,



<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R9.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R9.png "image_tooltip")


 if we use the individual t-statistics and associated pvalues in case features  is large, some of them will have low p by chance

F-statistic to be used if p is less. When p is large, use forward selection

**Feature selection**: 



*    Ways to select : forward, backward, 
*   Statistics to judge: plot residuals, adjusted R2, Mallow's Cp, Akaike informa- Mallow's Cp tion criterion (AIC), Bayesian information criterion (BIC)
*   Mixed: p-value for one of the variables in the model rises above a certain threshold, then we remove that variable from the model.
*   . Forward selection is a greedy approach, and might include variables early that later become redundant. Mixed selection can remedy this.
*   the fitted linear model is that which maximizes the correlation among all possible linear models
*   Adding more variables always reduced the R2- as bias reduces

Prediction intervals are always wider than confidence intervals, because they incorporate both the error in the estimate for f(X) (the reducible error) and the uncertainty as to how much an individual point will differ from the population regression plane (the irreducible error).

Coding Qualitative variable: Dummy variable method (one hot encoding)

**Relaxing the Linear model assumptions**:

fread("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")



*   Interaction:(lm(data = a,sales~TV+radio+prod+diff))  F-stat:  2670 AdjR2:  0.9817
*   Non-Linearity:(lm(data = a,sales~TV+radio+prod+diff+tv2)) F-stat:  3790 AdjR2:  0.9896
*   The hierarchical principle states that if we include an interaction in a model, we hierarchical should also include the main effects, even if the p-values associated with principle their coefficients are not significant.
*   To add / remove features:   update(lm.fit , ∼.-age)
*   To force zero intercept: lm(medv∼lstat+0)
*   Interaction terms: lm(medv∼lstat*age ,data=Boston)
*   Non-linear terms :  lm(medv∼lstat+I(lstat^2))
*   To add exponents from 1 to 5 : lm(medv∼poly(lstat ,5))
*   To determine if we should go for the non-linear fit:  anova(lm.fit ,lm.fit2)

 Potential Problemsin a linear regression model 

1. Non-linearity of the response-predictor relationships. 

Effect: bad fit

Identification : residual plot: U-shape)

Correction: log X, √X, and X2

2. Correlation of error terms.

	Effect: estimated standard errors lower than true, p-values lower. Our estimated parameters would be the same for the 2n samples as for the n samples, but the confidence intervals would be narrower by a factor of √ 2!

	Identification : in time series ,  plot the residuals from our model as a function of time: watch for tracking in the data

	

<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R10.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R10.png "image_tooltip")


	Other than time series, if some of the individuals in the study are members of the same family, or eat the same diet, or have been exposed to the same environmental factors



3. Non-constant variance of error terms.

	Effect:  bad fit

	Identification: heteroscedasticity , funnel shape in residuals plot



<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R11.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R11.png "image_tooltip")


	Correction: transform the response Y using a concave function such as log Y or √ Y

4. Outliers.

	Effect: even if effect on line is less, RSE may be inflated

	Identification:  studentized residuals- dividing residual by its estimated standard error. 

	Correction: if model is flexible enough, remove Observations with  studentized residuals>  3

5. High-leverage points. (Xi   >> other Xs)

	Effect: more impact than outlier.

	Identification: in a multiple linear regression with many predictors, it is possible to have an observation that is well within the range of each individual predictor's values, but that is unusual in terms of the full set of predictors. So we use leverage statistic



<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R12.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R12.png "image_tooltip")




<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R13.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R13.png "image_tooltip")


6. Collinearity.

	Effect: decline in the t-statistic

	Identification: correlation matrix of the predictors. 


    variance inflation factor (VIF) :- for multicollinearity: ratio of the variance of βˆj when fitting the full model divided by the variance of βˆj if fit on its own.  (>10 )


    

<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R14.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R14.png "image_tooltip")



    car::vif(lm(data = a,sales~TV+radio+prod+diff+tv2))

Correction: ether drop them, or normalize and merge

Summary of Regression steps:



*   F statistics' p value:  there is a relationship
*   R2: the relationship is strong

Comparing KNN



*   In linear relationships: a non-parametric approach incurs a cost in variance that is not offset by a reduction in bias
*   decrease in performance as the dimension increases (curse of dimensionality: no neighbours in p-dimensional space)  So, when n/p is low, parametric will perform better
*   Even in problems in which the dimension is small, we might prefer linear regression to KNN from an interpretability standpoint.

Bonus material from youtube/Web



*   MARS: Multivariate Adaptive Regression Splines (package=earth)
    *   summary(earth(ccs~.,a,degree = 2))
    *   2 hyper parameters - degrees and nprune (#feature to take)
    *   Parameter tuning: grid-search using caret on k-folds

    _hyper_grid <- expand.grid( degree = 1:3, nprune = seq(2, 100, length.out = 10) %>% floor() )_


    _train(x=a[,1:8],y=a$ccs,method = "earth",metric="RMSE", _


        _trControl =trainControl(method="cv",number = 10),tuneGrid = hyper_grid)_


        



### Classification:


#### LR



*   Methods: logistic regression, linear discriminant analysis,  K-nearest neighbors, generalized additive models , trees, random forests, and boosting , and support vector machines 
*   In logistic regression, we use the logistic function



<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R15.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R15.png "image_tooltip")


	Odds=



<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R16.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R16.png "image_tooltip")


	log-odds or Logit of Logistic Function= 



<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R17.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R17.png "image_tooltip")
 (linear in X)



*   The amount that p(X) changes due to a one-unit change in X will depend on the current value of X
*   Method used = maximum likelihood (better statistical properties- yields a number close to 1 or 0)



<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R18.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R18.png "image_tooltip")




*   βˆ0 and βˆ1 are chosen to maximize this
*   To decide on threshold for class cutoff , ROC → AUC


#### ?? LDA



*   lda(Direction∼Lag1+Lag2 ,data=Smarket)
*   qda(Direction∼Lag1+Lag2 ,data=Smarket)


#### ?? QDA


#### Choice of Algo:



*   When the classes are well-separated, n is small and dist. Is normal :  LDA is more stable
*   LDA only better than Logistic regression if it is a normal distribution with a common covariance matrix
*   KNN is better when the decision boundary is highly non-linear but no interpretability
*   QDA is Better than KNN in limited number of training observations
*   QDA results deteriorate considerably in case of non-normality


### Resampling methods



*   Approaches: 
    *   Validation set
            *   disadv. overestimates of the test error
    *   Leave-one-out
            *   low bias, but high variance :- trained on an almost identical set of observations(e is correlated). + Compute heavy
    *   k-Fold
    *   ?? Bootstrap


### Model Selection and Regularization



*   Subset Selection
    *   Best Subset Selection - all PnC - using CV error, Cp (AIC), BIC, or adjusted R2 

        

<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R19.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R19.png "image_tooltip")
σ2 is an estimate of the variance of the error  


        

<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R20.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R20.png "image_tooltip")



        

<p id="gdcalert22" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R21.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert23">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R21.png "image_tooltip")
a heavier penalty on no. of variables


        

<p id="gdcalert23" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R22.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert24">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R22.png "image_tooltip")


    *   Stepwise Selection- the variable that gives the greatest additional improvement
    *   the model containing all of the predictors will always have the smallest RSS and the largest R2

#### 
    

*   Regularization
    *   Ridge Regression (after scaling)
            *   Minimize this → 

<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R23.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R23.png "image_tooltip")
 
            *   total coeff. Decreases, but individual may inc.
            *   V. suitable when least squares estimates have high variance
    *   Lasso Regression
            *   Minimize this →

<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R24.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R24.png "image_tooltip")

*   Dimension Reduction
    *   PCA (unsupervised) :pcr(Salary∼., data=a , scale=TRUE , validation ="CV")
            *   generally used for exploratory data analysis
            *   First Principle component - maximize variance subject to  loadings' sum of squares equal to one

                

<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R25.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R25.png "image_tooltip")


*   Second Principle component: has to be uncorrelated to vector Z1, so has to be orthogonal to it.
*   PVE (Proportion of Variance explained)
*   Scree Plot: (PVE vs #PC)To decide on the number of principal components. 
*   Another method : if the first few principal components are interesting, then we typically continue to look at subsequent principal components until no further interesting patterns are found. 
    *   Partial Least Squares (supervised): 
            *   directions that help explain both the predictors and the response 
            *   The line will tilt towards more imp. Feature


### Non Linear Models : 



*   Polynomial Function:
    *   Sensitive to multicolinearity, outliers
*   Basis functions
    *   Polynomial regression
    *   Step function
    *   we can use wavelets or Fourier series to construct basis functions. 
*   Regression splines 
    *   Diff polynomials in diff regions (βs change at the Knots)
    *   Constraint- continuity, continuity of the first derivative, and continuity of the second derivative:-  frees up 3 degree of freedom
    *   library(splines)::  lm(wage∼bs(age ,knots=c(25,40,60) ),data=Wage) ;

        		lm(wage∼bs(age ,df=6),data=Wage)


        		lm(wage∼bs(age ,knots=c(25,40,60) ,degree=2),data=Wage)

    *   natural spline : splines have high variance at the outer range. So  in the boundary 

             lm(wage∼ns(age ,knots=c(25,40,60) ),data=Wage) ;

    *   regions, we ask function to be linear
    *   Using knots is more stable than having a higher order polynomial overall (esp at boundaries)
*   Smoothing splines
    *   there will be a knot at each training observation, so nominal df= n
    *   Add a smoothness penalty to regression spline
    *   Minimize this →

<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R26.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R26.png "image_tooltip")

    *   λ controls the roughness of the smoothing spline, and hence the effective degrees of freedom. λ(0→∞) → df(n→2)
    *   smooth .spline(age ,wage ,df=16) 
*   Local/ memory-based regression
    *   regions are allowed to overlap in a smooth way
    *   Esp. used when fitting a multiple linear regression model that is global in some variables, but local in another, such as time
    *   loess(wage∼age ,span=.2,data=Wage)
*   ?? Generalized additive models (GAM)
    *   allowing non-linear functions of each of the variables, while maintaining additivity
    *   lm(wage∼ns(year ,4)+ns(age ,5)+education ,data=Wage)
    *   gam(wage∼lo(year ,span =0.7)+s(age ,5)+education ,data=Wage) ⇒ plot.gam()
    *   gam(I(wage >250)∼year+s(age ,df=5)+education , family=binomial ,data=Wage)


### Tree Based Methods



*   Preferred If there is a highly non-linear and complex relationship 
*   plot(tree(Salary~Years)) ; text(tree(Salary~Years), pretty = 1)
*   To find split values - use recursive binary splitting (greedy) and minimize the RSS
*   Putting a threshold on RSS is not good (as it is greedy), so we grow it full then prune
*   Minimize this → 

<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R27.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R27.png "image_tooltip")
 for different alpha (T = #terminal nodes) , Then cross-validated MSE  as a function of α
*   For Classification, classification error rate is not sensitive enough, if prediction accuracy is not the only imp. thing,  we use-
    *   Gini index: measure of total variance across the K classes (node purity)

            

<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R28.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R28.png "image_tooltip")


    *   Cross-entropy: 

            

<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R29.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R29.png "image_tooltip")


*   Bagging
    *   We train on the b bootstraps and average all the predictions (not interpretable now)
    *   These trees are grown deep, and are not pruned. Hence each individual tree has high variance, but low bias. 
    *   randomForest( formula = medv ∼ ., data = Boston , mtry = 13, importance = TRUE , subset = train)	
*   Random Forest
    *   m features in each bag every time, m ≈ √p. This eliminates first greedy split error - decorrelation of trees
    *   If  a large number of correlated predictors, use smaller m
    *   randomForest( formula = medv ∼ ., data = Boston , mtry = 4, importance = TRUE , subset = train)
    *   importance() ; varImpPlot() 
*   Boosting
    *   trees are grown sequentially, so smaller trees are sufficient(interpretable)
    *   we fit the subsequent trees using the current residuals, rather than the Y
    *   Hyperparameters: d= number of splits (interaction depth), λ =  shrinkage parameter , B=number of trees 
    *   If B is too large:= overfit. Use CV to find a good B
    *   λ (0.01 or 0.001) small λ requires  large B
    *   gbm(medv∼.,data=Boston, distribution= "gaussian ",n.trees=5000, interaction .depth=4) 
    *   summary() ;  partial dependence plot 


### Separating Hyperplane



*   Maximal Margin  Hyperplane
    *   Optimal Separating Hyperplane, 
    *   Very sensitive depends only few observations
*   SVC
    *   soft margin classifier
    *   The generalization of the maximal margin classifier to the non-separable case is known as the support vector classifier
    *   But here also only observations that either lie on the margin or that violate the margin will affect the hyperplane
    *    tuning parameter C controls the width of the slab. High C = low variance
    *   logistic regression also has low sensitivity to observations far from the decision boundary (LDA is very sensitive)
*   SVM
    *   SVM is an extension of the support vector support vector machine classifier that results from enlarging the feature space using Kernels (more efficient computation)
    *   In SVC, we need only  inner product to get the coefficients (not observations themselves)
    *   Kernel function : K(xi, xi ) -  quantifies the similarity of two observations.
    *   For Linear Kernel - 

            

<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R30.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R30.png "image_tooltip")



        	It quantifies using Pearson (standard) correlation

    *   polynomial kernel of degree d

        	

<p id="gdcalert32" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R31.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert33">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R31.png "image_tooltip")


    *   radial kernel

        	

<p id="gdcalert33" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R32.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert34">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R32.png "image_tooltip")


    *   ?? One-Versus-One Classification
    *   ?? One-Versus-One Classification


### Clustering:



*   K-means clustering 
*   Hierarchical clustering
    *   bottom-up or agglomerative clustering: 
            *   the most similar observations  are fused up sequentially
            *   dissimilarity measures: 
                *   euclidean distance
                *   correlation-based distance: r if their features are correlated

        

<p id="gdcalert34" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/R33.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert35">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/R33.png "image_tooltip")


            *   Centroid linkage is often used in genomics, but suffers from a major drawback in that an inversion can occur, whereby inversion two clusters are fused at a height below either of the individual clusters in the dendrogram. This can lead to difficulties in visualization


### Facts and Learnings:



*   To measure "Multicollinearity". You can use Pearson (continuous variables) or Polychoric (discrete variables) 
*   Factor Analysis: Features grouped by their correlations  :  EFA (Exploratory Factor Analysis)  and  CFA (Confirmatory Factor Analysis)
*   Dimensionality reduction: Missing values,Low variance, Multicollinearity,decision trees, RF,Backward elimination,Factor Analysis, PCA, LDA
*   To determine the order to which we need to fit the variable, anova(fit.1,fit.2,fit.3,fit.4,fit .5)
*   
*   Clustering
    *   Dissimilarity metric to use in Hierarchical Clustering  If Euclidean distance is used, then shoppers who have bought very few items overall (i.e. infrequent users of the online shopping site) will be clustered together. This may not be desirable. On the other hand, if correlation-based distance is used, then shoppers with similar preferences get clustered. Here we can not scale as FMCG prod. can not be scaled to laptops.
    *   Things to consider to cluster: scale/or not , dissimilarity measure, Linkage, K or cut height

_____________________________________________________________________


## Visualization



*   Color by a continuous value
    *   rbPal <- colorRampPalette(c('blue','yellow','red'),alpha=.8)
    *   cl <- rbPal(3)[as.numeric(cut(a$temp,breaks = 3))] 

_____________________________________________________________________


## Statistics and Probability (base= George Ingersoll )



*   Z score of a record = no. of σ it is away from mean
*   Expected Value: - 10% chance to win $2000, Vs 40% chance to win $200
*   Probabilities can be added only when they are mutually exclusive
*   Var = Σ(x<sub>i</sub>-μ)<sup>2</sup> /n

_____________________________________________________________________


## Time Series analysis



*   Should be used if: constant, or follows a known function, non-stationary data (mean,var,cov not a function of time)
*   Cyclicity : long cycle and not fixed period
*   Make data stationary: 
    *   trend :  take moving average and center it (CMA: avg of 2 values)
*   Multiplicative method:
    *   Moving average → CMA (avg of 2 values) → Yt/ CMA = St*It (seasonality *Irregularity) 
    *   St = avg of 1st quarter of all yrs 
    *   Yt / St = It (deseasonalized)
    *   Fit linear model → trend = B0+ B1*time
    *   Predicted = St *Trend
*   https://www.youtube.com/watch?v=Y5T3ZEMZZKs


## Compound Probability:



*   Independent events
    *   P(A∩B) = P(A)**.**P(B)
    *   P(A|B) = P(A∩B) **/** P(B)
*   Joint Probability
    *   Decision Trees
*   and marginal


## Topcic to cover

EVS:



*   CART, 
*   bayesian models, 
*   time series

Predictive

1	Central Limit Theorem	

2	Z Score	

3	Normal Distributions	

4	Hypothesis	

5	Deletion Diagnostics and Influential Observations	

6	Regularization	

7	Collinearity	

8	What is Heteroscedasticity?	

9	Logistic Curve	

10	Goodness of fit matrix	

11	All Interactions Logistic Regression	

12	Multinomial Logit	

13	Interpretation	

14	Ordered Categorical Variable	

15	Poisson Regression	

16	Model Fit Test	

17	Offset Regression	

18	Poisson Model with Offset	

19	Negative Binomial	

20	Dual Models	

21	Hurdle Models	

22	Zero-Inflated Poisson Models	

23	Variables used in the Analysis	

24	Poisson Regression Parameter Estimates	

25	Zero-Inflated Negative Binomial	

26	No Treatment Option: Complete Case Method	

27	No Treatment Option: Available Case Method	

28	Problems with Pairwise Deletion	

29	Mean Substitution Method	

30	Imputation	

31	Regression Substitution Method	

32	K-Nearest Neighbour Approach	

33	Maximum Likelihood Estimation	

34	EM Algorithm	

35	Single and Multiple Imputation	

36	Little's Test for MCAR	

37	Types of Forecast	

38	Forecasting Steps	

39	Autocorrelation	

40	Correlogram	

41	Time Series Components	

42	Variations in Time Series	

43	Seasonality	

44	Forecast Error	

45	Mean Error (ME)	

46	MPE and MAPE---Unit free measure	

47	Additive v/s Multiplicative Seasonality	

48	Curve Fitting	

49	Simple Exponential Smoothing (SES)	

50	Decomposition with R	

51	Generating Forecasts	

52	Explicit Modeling	

53	Modeling of Trend	

54	Seasonal Components	

55	Smoothing Methods	

56	ARIMA Model-building	

57	Analysis of Log-transformed Data	

58	How to Formulate the Model	

59	Partial Regression Plot	

60	Normal Probability Plot	

61	Tests for Normality	

62	Box-Cox Transformation	

63	Box-Tidwell Transformation	

64	Growth Curves	

65	Logistic Regression: Binary	

66	Neural Network	

67	Network Architectures	

68	Neural Network Mathematics	

69	Time-to-Event Data	

70	Censoring	

71	Survival Analysis	

72	Types of Censoring	

73	Survival Analysis Techniques	

74	PreProcessing	

75	Elastic Net	


<!-- Docs to Markdown version 1.0β15 -->


