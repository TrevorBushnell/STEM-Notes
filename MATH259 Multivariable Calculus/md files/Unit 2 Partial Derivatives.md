# Unit 2: Partial Derivatives



[toc]



## 2.1: Functions of Several Variables



### Functions of Two Variables

> A **function $f$ of two variables** is a rule that assigns to each ordered pair of real numbers $(x,y)$ in a set $D$ a unique real number denoted by $f(x,y)$. 
>
>
> The set $D$ is the *domain* of $f$ and its *range* is the set of values that $f$ takes on (that is, $f(x,y) | (x,y) \in D)$).

* $x$ and $y$ are *independent variables*
* $z$ is the *dependent variable* 
* To find the value of $f(x,y)$, substitute the respective values of x and y given in the coordinates (x,y)



### Graphs

> If $f$ is a function of two variables with domain $D$, then the **graph** of $f$ is the set of all points $(x,y,z)$ in $\R^3$ such that $z=f(x,y)$ and $(x,y) \in D$.

* While a graph in $\R^2$ is a curve/line, a graph in $\R^3$ is a surface that floats in space above it's domain (which lies in the xy-plane)
* The function $f(x,y) = ax+by+c$ is considered a **linear function**
  * The graph of a linear function has the equation $z = ax+by+c$ or $ax+by-z+c=0$
* NOTE: An entire sphere cannot be represented by a single function of $x$ and $y$. You will need to use the positive and negative square root to differentiate between the upper hemisphere and the lower hemisphere



### Level Curves

> The **level curves** of a function $f$ of two variables are the curves with equations $f(x,y)=k$ where $k$ is a constant that is in the range of $f$.

* SIMPLER DEFINITION: A level curve is the set of all points in the domain of $f$ where $f$ takes on a given value $k$
  * Shows where the graph of $f$ has a height of $k$



### Functions of Three or More Variables

> A **function of three variables** is a rule that assigns to each ordered triple $(x,y,z)$ in a domain $D \in \R^3$ a unique real number denoted by $f(x,y,z)$

* **Level surfaces** are the surfaces where the function $f$ takes on a given value $k$
* To represent functions of more than three variables, you can represent them using vectors... but this reaches into the linear algebra world and outside the scope of this course





## 2.2: Limits and Continuity



### Limits of Multivariable Functions

> Let $f$ be a function of two variables whose domain $D$ includes points arbitrarily close to $(a,b)$. Then the **limit of $f(x,y)$ as $(x,y)$ approaches $(a,b)$** is $L$.
>
> Numerically speaking,
> $$
> \lim_{(x,y)\to(a,b)}f(x,y)=L
> $$
> if for every number $\varepsilon > 0$ there is a corresponding number $\delta > 0$ such that
> $$
> \text{if } (x,y)\in D \:\:\&\:\: 0<\sqrt{(x-a)^2+(y-b)^2}<\delta \text{ then } |f(x,y)-L|<\varepsilon
> $$

* There are other notations that you can use for the limits of multivariable functions
  * ![image-20200809134528785](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200809134528785.png)
  * ![image-20200809134544561](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200809134544561.png)
* $|f(x,y)-L|$ is the distance between the numbers $f(x,y)$ and $L$
* $\sqrt{(x-a)^2+(y-b)^2}$ is the distance between the point $(x,y)$ and $(a,b)$
* $\therefore$ the definition means that the distance between $f(x,y)$ and $L$ can be made arbitrarily small by making the distance between $(x,y)$ and $(a,b)$ arbitrarily small
* In the 2D calculus world, if the LHL didn't approach the same value as the RHL then the limit did not exist...
* ... however in 3D ($\R^3$) there are an infinite number of directions from which you can approach $(a,b)$ so...

> If $f(x,y) \to L_1$ as $(x,y)\to (a,b)$ in one direction and $f(x,y) \to L_2$ as $(x,y)\to (a,b)$ in another direction and $L_1 \ne L_2$, then $\lim_{(x,y)\to(a,b)}f(x,y)$ **does not exist**

* In order to show that a limit does not exist, you have to approach from multiple different directions
* Common directions to try:
  * along the x-axis
  * along the y-axis
  * along the line y=x
  * whatever hint the problem gives you (sometimes your professor/instructor will give you the directions to check to prove that a limit does or does not exist since infinitely many directions can make it daunting to find how a limit does not exist)
* The **Limit Laws** from 2D Calculus still hold true in 3D
  * The limit of a sum/difference/product/quotient is equal to the sum/difference/product/quotient of the limits
  * The limit of a function times a constant is equal to that same constant times the limit of the function
* The **Squeeze Theorem** still holds true from 2D Calculus



### Continuity

> A function $f$ of two variables is called **continuous at $(a,b)$** if
> $$
> \lim_{(x,y)\to (a,b)} f(x,y) = (a,b)
> $$
> We say that $f$ is **continuous on D** if $f$ is continuous at every point $(a,b)$ in $D$.

* A function is continuous if the surface of a graph of a continuous function has no hole or break
* Using limit laws, the sum/difference/product/quotient of continuous functions are also continuous



### Functions of Three or More Variables

* $$
  \lim_{(x,y,z)\to (a,b,c)} = L
  $$

* You can express limits of functions of three or more variables using vector notation, which is also outside the scope of the course





## 2.3: Partial Derivatives



### Definition of a Partial Derivative

> The **partial derivative of $f$ with respect to $x$ at $(a,b)$** is:
> $$
> f_x(x,y) = \lim_{h\to 0} \frac{f(x+h,y)-f(x,y)}{h}
> $$
> The **partial derivative of $f$ with respect to $y$ at $(a,b)$** is:
> $$
> f_y(x,y) = \lim_{h\to 0} \frac{f(x,y+h)-f(x,y)}{h}
> $$

* If $z = f(x,y)$ then the notation for a partial derivative can be written as the following:
  $$
  f_x(x,y) = f_x = \frac{\partial f}{\partial x} = \frac{\partial}{\partial x}f(x,y)=f_1=D_1f=D_xf\\f_y(x,y) = f_y = \frac{\partial f}{\partial y} = \frac{\partial}{\partial y}f(x,y)=f_2=D_2f=D_yf\\
  $$

> RULE FOR FINDING PARTIAL DERIVATIVES:
>
> * To find $f_x$, regard $y$ as a constant and differentiate $f(x,y)$ with respect to $x$.
> * To find $f_y$, regard $x$ as constant and differentiate $f(x,y)$ with respect to $y$.



### Interpretations of Partial Derivatives

* GEOMETRIC INTERPRETATION: Partial derivatives are the slopes of the tangent lines in the $x$ and $y$ directions to the point $(a,b)$ 
* partial derivatives can be interpreted as *rates of change*
  * $\frac{\partial z}{\partial x}$ represents the rate of change of z with respect to x when y is held constant
  * $\frac{\partial z}{\partial y}$ represents the rate of change of z with respect to y when x is held constant



### Functions of More Than Two Variables

![image-20200809141400675](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200809141400675.png)

![image-20200809141408986](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200809141408986.png)



### Higher Order Derivatives

* Just like in 2D calculus when you can take the derivative over and over again to get a higher order derivative, you can do the same in 3D calculus

* the **second partial derivatives of $f$** are calculated in the following way:
  $$
  (f_x)_x=f_{xx}=\frac{\partial}{\partial x}\left(\frac{\partial f}{\partial x}\right)=\frac{\partial^2f}{\partial x^2}=\frac{\partial^2 z}{\partial x^2}\\
  (f_x)_y=f_{xy}=\frac{\partial}{\partial y}\left(\frac{\partial f}{\partial x}\right)=\frac{\partial^2f}{\partial y\partial x}=\frac{\partial^2 z}{\partial y \partial x}\\
  (f_y)_x=f_{yx}=\frac{\partial}{\partial x}\left(\frac{\partial f}{\partial y}\right)=\frac{\partial^2f}{\partial x\partial y}=\frac{\partial^2 z}{\partial x \partial y}\\
  (f_y)_y=f_{yy}=\frac{\partial}{\partial y}\left(\frac{\partial f}{\partial y}\right)=\frac{\partial^2f}{\partial y^2}=\frac{\partial^2 z}{\partial y^2}
  $$



> CLAIRAUT'S THEOREM: Suppose $f$ is defined on a disk $D$ that contains the point $(a,b)$. If the functions $f_{xy}$ and $f_{yx}$ are both continuous on $D$, then:
> $$
> f_{xy}(a,b)=f_{yx}(a,b)
> $$



### Partial Differential Equations

* Partial differential equations are equations that contain partial derivatives and help express certain physical laws

* LAPLACE'S EQUATION:
  $$
  \frac{\partial^2u}{\partial x^2} + \frac{\partial^2u}{\partial y^2} = 0
  $$

  * solutions of this equation are harmonic functions and help solve problems with heat conduction, fluid flow, electric potential

* WAVE EQUATION:
  $$
  \frac{\partial^2u}{\partial t^2} = a^2\frac{\partial^2u}{\partial x^2}
  $$

  * describes the motion of a waveform (ocean wave, sound wave, etc)





## 2.4: Tangent Planes and Linear Approximations

* In 2D calculus, we could approximate the value of a function using the tangent line
* In 3D calculus, we can approximate the value of a function using the tangent plane



### Tangent Planes

* **tangent plane**: the plane that is made up of the tangent lines in the x and y directions

> Suppose $f$ has continuous partial derivatives. An equation of the tangent plane to the surface $z = f(x,y)$ at the point $P(a,b,c)$ is:
> $$
> z = f_x(a,b)(x-a)+f_y(a,b)(y-b)+c
> $$



### Linear Approximations

* The tangent plane is a good approximation for a multivariable function as long as the tangent plane is near the point $(a,b,c)$

> The **linearization** (or **linear approximation**) of $f$ at $(a,b)$ is approximated with the tangent plane.
> $$
> L(x,y) = f_x(a,b)(x-a)+f_y(a,b)(y-b)+c\\
> f(x,y) \approx  f_x(a,b)(x-a)+f_y(a,b)(y-b)+c
> $$

* A multivariable function is *differentiable* if the linear approximation is a good approximation when (x,y) is near (a,b)

> If the partial derivatives $f_x$ and $f_y$ exist near $(a,b)$ and are continuous at $(a,b)$, then $f$ is differentiable at $(a,b)$



### Differentials

> $$
> dz = f_x(x,y)dx+f_y(x,y)dy=\frac{\partial z}{\partial x}dx + \frac{\partial z}{\partial y}dy
> $$

* Based on the differential above, another way to write the linear approximation is:
  $$
  f(x,y) \approx f(a,b) + dz
  $$



### Functions of Three or More Variables

![image-20200809143628209](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200809143628209.png)

![image-20200809143642852](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200809143642852.png)





## 2.5: The Chain Rule



### Definition of the Chain Rule

> CHAIN RULE (Case I): If $z = f(x,y)$ is a differentiable function of $x$ and $y$ where $x = g(t)$ and $y = h(t)$ are both differentiable functions of $t$. Then $z$ is a differentiable function of $t$ and:
> $$
> \frac{dz}{dt}=\frac{\partial f}{\partial x}\frac{dx}{dt}+\frac{\partial f}{\partial y}\frac{dy}{dt}
> $$

> CHAIN RULE (Case II): If $z = f(x,y)$ is a differentiable function of $x$ and $y$, where $x = g(s,t)$ and $y = h(s,t)$ are differentiable functions of $s$ and $t$, then:
> $$
> \frac{\partial z}{\partial s}=\frac{\partial z}{\partial x}\frac{\partial x}{\partial s}+\frac{\partial z}{\partial y}\frac{\partial y}{\partial s}\\
> \frac{\partial z}{\partial t}=\frac{\partial z}{\partial x}\frac{\partial x}{\partial t}+\frac{\partial z}{\partial y}\frac{\partial y}{\partial t}
> $$



### Implicit Differentiation

* The multivariable chain rule can be used to make implicit differentiation from single variable calculus significantly faster and easier:
  $$
  \frac{dy}{dx}=-\frac{\frac{\partial F}{\partial x}}{\frac{\partial F}{\partial y}}=-\frac{F_x}{F_y}
  $$

  * To derive the equation above, we assume that $F(x,y) = 0$ defines $y$ implicitly as a function of $x$
    * Check the textbook *Multivariable Calculus* by James Stewart to read why the assumption is valid (or check other textbooks or internet searches)

* We can derive a different set of formulas to differentiate $\frac{\partial z}{\partial x}$ and $\frac{\partial z}{\partial y}$ 
  $$
  \frac{\partial z}{\partial x}=-\frac{\frac{\partial F}{\partial x}}{\frac{\partial F}{\partial z}}\:\:\:\:\:\:\:\:\:\:\:\:\:
  \frac{\partial z}{\partial y}=-\frac{\frac{\partial F}{\partial y}}{\frac{\partial F}{\partial z}}
  $$

  * Assumptions made: see text





## 2.6: Directional Derivatives and the Gradient Vector



### Directional Derivatives

* Partial derivatives can only find rates of change in the $x$ and $y$ directions
* If we want to find the rates of change in different directions, we must use the *directional derivative*

> LIMIT DEFINITION: The directional derivative in the direction of the *unit* vector $\vec u = <a,b>$ is:
> $$
> D_uf(x_0,y_0)=\lim_{h\to 0}\frac{f(x_0+ha,y_0+hb)-f(x_0,y_0)}{h}
> $$

> COMPUTATIONAL DEFINITION: To compute the directional derivative in the direction of the *unit* vector $\vec u = <a,b>$, use the following theorem:
> $$
> D_uf(x,y) = f_x(x,y)a+f_y(x,y)b
> $$



### The Gradient Vector

* We can write the directional derivative as a dot product between a vector containing the partial derivatives and $\vec u$
  $$
  D_uf(x,y) = <f_x(x,y),f_y(x,y)> \cdot \:\vec u
  $$

* The vector containing the partial derivatives as components is called the **gradient vector**
  $$
  \nabla f(x,y) = <f_x(x,y),f_y(x,y)> \: =\frac{\partial f}{\partial x}\vec i+\frac{\partial f}{\partial y}\vec j
  $$

* Using the gradient notation, then the directional derivative becomes the following:
  $$
  D_uf(x,y) = \nabla f(x,y) \cdot \: \vec u
  $$



### Functions of Three or More Variables

* The directional derivative of $f$ at $(x_0, y_0, z_0)$ in the direction of the unit vector $\vec u = <a,b,c>$ is

  ![image-20200810133725608](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200810133725608.png)

  Where ![image-20200810133753198](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200810133753198.png)



### Maximizing the Directional Derivative

* Since there are infinitely many directional derivatives at any given point of $f$ (because we can go in infinitely many directions), we can ask ourselves in which direction does $f$ changes and what the value of this maximum rate of change is

> Suppose $f$ is a differentiable function of two or three variables. The maximum value of the directional derivative $D_uf(\vec x)$ is $|\nabla f(\vec x)|$ and it occurs when $\vec u$ has the *same direction as the gradient vector* $\nabla f(\vec x)$



### Tangent Planes to Level Surfaces

* The gradient vector at P is perpendicular to the tangent vector $\vec r'(t_0)$ to any curve C on S that passes through P

* $\therefore$ we can define the tangent plane to the level surface as the plane that passes though P and has normal vector $\nabla F(x_0,y_0,z_0)$ as the following:

  ![image-20200810140112827](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200810140112827.png)



### Significance of the Gradient Vector

* Gradient vectors are perpendicular to level curves
* To draw a curve with the "steepest" change, draw a curve that is perpendicular to every level curve that it passes through





## 2.7: Maximum and Minimum Values

* Just as we can use ordinary derivatives to find maximum and minimum values, we can use partial derivatives to find maximums and minimums of functions with two variables

  

### How to Find Local Maxima and Minima

* The definitions for local/absolute maximum/minimum from 2D calculus hold true for 3D calculus

> If $f$ has a local maximum or minimum at $(a,b)$ and the first order partial derivatives of $f$ exist there, then $f_x(a,b) = 0$ and $f_y(a,b) = 0$ 

* GEOMETRIC INTERPRETATION: if the graph of $f$ has a tangent plane at a local maximum or minimum, the tangent plane must be horizontal
* **critical point:** a point of $f$ where $f_x(a,b) = 0$ and $f_y(a,b) = 0$ or one of the partial derivatives does not exist
  * Just like 2D calculus, *not all critical points are maximums or minimums*

> SECOND DERIVATIVE TEST: Suppose the second partial derivatives of $f$ are continuous on a disk with center $(a,b)$ and suppose that $(a,b)$ is a critical point of $f$. 
> $$
> \text{Let } D =D(a,b)=f_{xx}(a,b)f_{yy}(a,b)-[f_{xy}(a,b)]^2
> $$
>
> * If $D > 0$ and $f_{xx}(a,b) > 0$, then $f(a,b)$ is a local minimum
> * If $D > 0$ and $f_{xx}(a,b) < 0$, then $f(a,b)$ is a local minimum
> * If $D <0$, then $f(a,b)$ is a saddle point

* **saddle point:** a point that is neither a maximum nor a minimum
* If $D=0$ then the second derivative test **is inconclusive and gives no information**
* TIP: It can be helpful to remember D as a determinant: $D = \left[\begin{array}{cc}f_{xx}&f_{xy}\\f_{yx}&f_{yy}\end{array}\right] = f_{xx}f_{yy}-(f_{xy})^2$



### Absolute Maximum and Minimum Values

* Just as a closed interval in 2D calculus contains the endpoints, a **closed set** in $\R^2$ is one that contains all the boundary points
  * Ex: $D = \{(x,y) | x^2+y^2\le1\}$ is a closed set because all the boundary points which are thee points that lie on the circle $x^2+y^2=1$ are contained in the set
* **bounded set:** a set in $\R^2$ that is contained within some disk ($\therefore$ it is finite to some extent)

> EXTREME VALUE THEOREM FOR FUNCTIONS OF TWO VARIABLES: If $f$ is continuous on a closed, bounded set $D$ in $\R^2$, then $f$ attains an absolute maximum value  and an absolute minimum value at some points in $D$.
>
> These points could be inside $D$ or could be one of the boundary points of $D$.

* To find the absolute maximum and minimum values of a continuous function $f$ on a closed, bounded set $D$:
  1. Find the values of $f$ at the critical points of $f$ in $D$
  2. Find the extreme values of $f$ on the boundary of $D$
  3. The largest of the values from the first two steps is the absolute maximum value and the smallest of the values from the first two steps is the absolute minimum value





## 2.8: Lagrange Multipliers



### Lagrange Multipliers with One Constraint

* Lagrange's method is a method that allows us to maximize/minimize a function subject to a constraint of the form $g(x,y,z) = k$
* Start by finding the extreme values of a function $f(x,y)$ that is restricted to lie on some level curve $g(x,y) = k$
* Find the largest value $c$ such that the level curve $f(x,y) = c$ intersects the level curve constraint $g(x,y) = k$
  * This happens when the curves have a common tangent line, $\therefore$ the gradient vectors are parallel
* **Lagrange Multiplier:** $\nabla f(x_0,y_0,z_0)=\lambda \nabla g(x_0,y_0,z_0)$

> METHOD OF LAGRANGE MULTIPLIERS: To find the maximum and minimum values of $f(x,y,z)$ subject to the constraint $g(x,y,z) = k$ (assuming that the extreme values exist and that $\nabla g \ne \vec 0$ on the surface $g(x,y,z) = k$):
>
> 1. Find all the value of $x,y,z,\lambda$ such that
>    $$
>    \nabla f(x,y,z) = \lambda \nabla g(x,y,z)\\
>    AND\\
>    g(x,y,z)=k
>    $$
>
> 2. Evaluate $f$ at all the points $(x,y,z)$ that result from the first step. The largest of these values is the maximum value of $f$ and the smallest is the minimum value of $f$.

* Expressing the equation from step 1 in terms of components results in the following equations:
  $$
  f_x = \lambda g_x\:\:\:\:f_y=\lambda g_y\:\:\:\:f_z=\lambda g_z\:\:\:\:g(x,y,z)=k
  $$

* For Lagrange Methods in two variables, we look for values $x,y,\lambda$ such that
  $$
  \nabla f(x,y) = \lambda \nabla g(x,y)\\
  AND\\g(x,y) = k
  $$
  Which leads to solving three equations and a total of three unknowns
  $$
  f_x = \lambda g_x\:\:\:\:f_y=\lambda g_y\:\:\:\:g(x,y)=k
  $$



### Lagrange Multipliers with Two Constraints

* If we have two constraints, we look for a Lagrange Multiplier like this:
  $$
  \nabla f(x_0,y_0) = \lambda \nabla g(x_0,y_0) + \mu \nabla h(x_0,y_0)
  $$

* This results in solving the following system of equations
  $$
  f_x=\lambda g_x+\mu h_x\\
  f_y = \lambda g_y + \mu h_y\\
  g(x,y) = k\\
  h(x,y) = c
  $$

