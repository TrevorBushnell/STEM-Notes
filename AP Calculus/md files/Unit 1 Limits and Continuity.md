# UNIT 1: LIMITS AND CONTINUITY

[toc]



## 1.1: Introducing Calculus: Can Change Occur at an Instant?

* Traditional algebra uses relationships such as $\frac{\Delta y}{\Delta x}$ to model relationships
  * However, this model falls apart because if $\Delta y = 0$ and $\Delta x = 0$, then the result is $\frac{0}{0}$ which is indeterminant
    * **indeterminant** means that there might be a possible solution, but we cannot determine what that possible solution could be based on the current problem solving method
* We can use the **limit** to allow us to define change that occurs instantaneously in terms of incredibly small average rates in change (for example, doing $\Delta x = 0.0001$ instead of $\Delta x = 0$)
* Calculus uses limits to understand and model more precise/instantaneous change that algebra cannot answer the question to



## 1.2: Defining Limits and Using Limit Notation

> Given a function $f$, the limit of $f(x)$ as $x$ approaches $c$ is a real number $R$ if $f(x)$ can be made arbitrarily close to $R$ by taking $x$ extremely close to $c$ (but *not equal to $c$*). 
>
> If the limit exists and is a real number, then:
> $$
> \lim_{x\to c} f(x) = R
> $$

* A limit can be expressed graphically, numerically, or analytically



## 1.3: Estimating Limits From Graphs

* ONE SIDED LIMIT: A limit where you approach from a specific direction (either the left or the right)
  * LHL (Left Hand Limit): $\lim_{x\to c^-} f(x) = L$
  * RHL (Right Hand Limit): $\lim_{x\to c^+} f(x) = L$
  * A limit exists if the left hand limit equals the right hand limit (LHL = RHL)
* Using the information provided on a graph can help you interpret the limit of a function



![image-20200817170712227](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200817170712227.png)



* In the example above, the limit is 4 because the function output as you approach 2 from the left is equal to the function output as you approach 2 from the right
* Because there can be possible issues with scale, graphical representations of limits can possibly be inaccurate and can miss important behaviors of functions if you're too far zoomed out
* A limit can fail to exist at particular values of $x$ if LHL $\ne$ RHL, the function oscillates near $x$, or if the function is unbounded



## 1.4: Estimating Limit Values From Tables

* Numerical information from tables can be used to estimate limits



![image-20200817170613385](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200817170613385.png)





## 1.5: Determining Limits Using Algebraic Properties of Limits

![image-20200809190957112](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200809190957112.png)

* To evaluate a limit, simply substitute the desired value that you wish to find the limit at



## 1.6: Determining Limits Using Algebraic Manipulation

* if $\lim_{x\to c}f(x)=\frac{0}{c}$ , then the limit is equal to $0$
* if $\lim_{x\to c}f(x) = \frac{c}{0}$, then the limit does not exist
* if $\lim_{x\to c} f(x) = \frac{0}{0}$, then the limit is indeterminant and **you must do more work to use algebra to rearrange the limit to be simplified and not result in an indeterminant answer**
* Possible ways to fix an indeterminant limit include factoring and simplifying, multiplying the numerator and denominator by a conjugate, and using trigonometric identities to change what the expression looks like

EXAMPLE:
$$
\text{Compute the following limit: } \lim_{x\to b} \frac{x^5-b^5}{x^{10}-b^{10}}\\
$$

$$
\text{By doing direct substitution, then the limit equals:}\\
\frac{b^5-b^5}{b^{10}-b^{10}} = \frac{0}{0} = \text{INDETERMINANT}
$$

$$
\text{By factoring out the denominator, you can re-evaluate the limit!}\\
\lim_{x \to b} = \frac{x^5-b^5}{x^{10}-b^{10}} = \frac{x^5 - b^5}{(x^5 + b^5)(x^5-b^5)}
= \lim_{x \to b}\frac{1}{x^5 + b^5}=\frac{1}{b^5 + b^5} = \frac{1}{2b^5}\\
\text{Despite being in an indeterminant form before, we were still able to compute the limit of the function at }b
$$

* To see more examples, see my videos on YouTube on simplifying limits



## 1.7: Selecting Procedures for Determining Limits

* This is the lesson where you practice which method you should use to quickly and efficiently evaluate a given limit



## 1.8: Determining Limits Using the Squeeze Theorem

> SQUEEZE THEOREM: If $f(x) \le g(x) \le h(x)$ near $a$ and $\lim_{x\to a} f(x) = \lim_{x\to a} h(x) = L$, then $\lim_{x\to a}g(x) = L$



## 1.9: Connecting Multiple Representations of Limits

* This lesson lets you practice which interpretation of a limit you should apply in order to solve a limit



## 1.10: Exploring Types of Discontinuities

* **removable discontinuity:** a discontinuity at a single point
* **jump discontinuity:** a discontinuity where the function jump suddenly up or down in value at a given input
* **infinite discontinuity:** a discontinuity occurred at a vertical asymptote



## 1.11: Defining Continuity at a Point

> A function is continuous at $x=c$ provided that $f(c)$ exists, $\lim_{x\to c}f(x)$ exists, and $\lim_{x\to c} f(x) = f(c)$



## 1.12: Confirming Continuity Over an Interval

* A function is continuous on an interval $[a,b]$ if it is continuous on every single point within the interval
* Polynomial, rational, power, exponential, logarithmic, and trigonometric functions are continuous on all points in their domains



## 1.13: Removing Discontinuities

* If the limit of a function exists at a discontinuity in the graph, then it is possible to remove that discontinuity
  * simply define/redefine the value of the function at that point so that it equals the value of the limit of the function as $x$ approaches that particular point
* A piecewise function can only be continuous at a boundary if the value of the expression defining the function on one side is equal to the value of the expression on the other side 



## 1.14: Connecting Infinite Limits and Vertical Asymptotes

* It is possible for a limit to equal infinity
* Limits that equal infinity are able to describe asymptotic and unbounded behavior
* A function has a vertical asymptote at $a$ if $\lim_{x\to a^-} = \pm\infty$ or if $\lim_{x\to a^+} = \pm\infty$



## 1.15: Connecting Limits and Horizontal Asymptotes

* limits that approach infinity are able to describe end behavior
* A function has a horizontal asymptote at $b$ if $\lim_{x \to \pm\infty} = b$



## 1.16: Working with the Intermediate Value Theorem

> INTERMEDIATE VALUE THEOREM:
> If $f$ is a continuous function on the closed interval $[a,b]$ and $d$ is a number between $f(a)$ and $f(b)$, then there is at least one number $c$ between $a$ and $b$ such that $f(c) = d$.

* In other words: if you have a closed interval of a continuous function, then every possible output between the outputs should be theoretically possible to achieve using the continuous function, and therefore you can find any input on the interval $[a,b]$ that corresponds to an indicated output that lies between the endpoints