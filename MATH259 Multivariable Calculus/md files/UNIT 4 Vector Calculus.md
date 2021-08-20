# UNIT 4: Vector Calculus

[toc]



## 4.1: Vector Fields

$\R$

### About Vector Fields

> Let $D$ be a set in $\R^n$ ($\therefore$ a plane region). A **vector field on $\R^n$ is a function $\vec F$ that assigns to each point $(x_1,x_2,...,x_i)$ in $D$ a $n$-dimensional vector

* Each point in a vector field represents a vector in space that starts at the indicated point

* You can get a reasonable impression for $F$ by drawing a few of the vectors in the vector field (since it is impossible to draw a vector for the infinite number of points in $D$)

* Because $\vec F$ is a vector, we can express $F$ in it's components- except that in this case each component is an individual function itself
  $$
  \vec F(x,y)=P(x,y)\vec i + Q(x,y) \vec j+ R(x,y)\vec k= \:<P(x,y),Q(x,y),R(x,y)>\\
  \vec F(x,y) = P\vec i + Q\vec j + R\vec k
  $$

  * $P$, $Q$, and $R$ are called *scalar fields* to be distinguished from vector fields

* To sketch a vector field, simply sketch a few of the vectors that are created from the vector function $\vec F$

* Vector fields can be used to model gravitation, fluid flow, weather, electricity flow, and more



### Gradient Fields

* Because the gradient of $f$ is technically a vector whose components are functions (partial derivatives are functions), $\nabla f$ is technically a vector field and is called the **gradient vector field**



### Vector Field Vocabulary

* A vector field $\vec F$ is called a **conservative vector field** if it is the gradient of some scalar function
  * if there exists a function $f$ such that $\nabla f = \vec F$, then $\vec F$ is a conservative vector field
    * $f$ would be considered the *potential function for $\vec F$
* Not all vector fields are conservative, but conservative vector fields do arise often in the application of physics
  * The gravitation vector field is a conservative vector field





## 4.2: Line Integrals



### Definition of Line Integrals 

* Line integrals are similar to single integrals except that rather than integrating over an interval, you integrate over a curve $C$ defined by the parametric equations:
  $$
  x=x(t)\;\;\;\;\;\;y=y(t)\;\;\;\;\;\;a\le t\le b\\
  OR\\
  \vec{r} = x(t)\vec i + y(t)\vec j
  $$

> If $f$ is defined on a smooth curve $C$ using the parametric equations (see above), then the **line integral of $f$ along $C$* **s:
> $$
> \int_Cf(x,y)\:ds = \lim_{n\to\infty}\sum_{i=1}^nf(x_i^*,y_i^*)\Delta s_i
> $$
> To evaluate the line integral, use the following formula:
> $$
> \int_Cf(x,y)\:ds=\int_a^bf(x(t),y(t))\sqrt{\left(\frac{dx}{dt}\right)^2+\left(\frac{dy}{dt}\right)^2}\:dt
> $$



### Computing Line Integrals in Different Ways 

* If $C$ is a *piecewise-smooth curve* ($C$ is a union of a finite number of smooth curves $C_1,C_2,\cdots,C_i$) where the initial point of $C_{i+1}$ is the final point of $C_i$, then:
  $$
  \int_Cf(x,y)\:ds = \int_{C_1}f(x,y)\:ds + \int_{C_2}f(x,y)\:ds+\cdots+\int_{C_i}f(x,y)\:ds
  $$

* The interpretation of a line integral is based on the interpretation of the function $f$

  * Ex: if $f$ represents the density of a wire, then the mass of the wire is the line integral of the density function

> To evaluate the **line integral of $f$ along $C$ wrt x**:
> $$
> \int_Cf(x,y)dx=\int_a^bf(x(t),y(t))x'(t)dt\\
> $$
> To evaluate the **line integral of $f$ along $C$ wrt y:**
> $$
> \int_Cf(x,y)dy=\int_a^bf(x(t),y(t))y'(t)dt
> $$

* It happens frequently that the line integrals wrt x and y occur together, therefore it is OK to abbreviate using the following:
  $$
  \int_CP(x,y)dx+\int_cQ(x,y)dy=\int_CP(x,y)dx+Q(x,y)dy
  $$
  Even though by strict mathematical rules the above statement isn't true

* The hardest part of computing a line integral is figuring out how to set up the line integral with the correct parametric representation

  * Often helpful to parameterize a line segment that starts at $\vec r_0$ and ends at $\vec r_1$
$$
\vec r(t)=(1-t)\vec r_0+t\vec r_1\;\;\;\;0\le t \le 1
$$

 * parameterization is important because it determines the **orientation** of a curve $C$ with the positive direction corresponding to increasing values for $t$



### Line Integrals in Space

* If $C$ is a smooth curve defined parametrically or defined by a vector valued function, then:
  $$
  \int_Cf(x,y,z)\:ds=\int_a^bf(x(t),y(t),z(t))\sqrt{\left(\frac{dx}{dt}\right)^2+\left(\frac{dy}{dt}\right)^2+\left(\frac{dz}{dt}\right)^2}\:dt
  $$

* line integrals in 2D and 3D can be expressed under the same vector notation:
  $$
  \int_a^bf(\vec r(t))|\vec r'(t)|\:dt
  $$

  * using this notation, if you know what $\vec r(t)$ is, then you know how many dimensions the vector has and you know whether your line integral lives in the plane or whether your line integral lives in space

* Fun fact: the special case of $f(x,y,z) = 1$ results in $\int_C|\vec r'(t)|dt = L$ which is the same as the formula for the length of a curve defined parametrically from single-variable calculus

* When evaluating line integrals in space, it is possible to write line integrals using the following:
  $$
  \int_CP(x,y,z)\:dx+Q(x,y,z)\:dy+R(x,y,z)\:dz
  $$



### Line Integrals Over Vector Fields

> If $\vec F$ is a continuous vector field defined on a smooth curve $C$ given by a vector function $\vec r(t), a \le t \le b$, then the **line integral of $\vec F$ along $C$** is
> $$
> \int_C\vec F\cdot d\vec r = \int_a^b\vec F\vec r(t)) \cdot \vec r'(t)\:dt=\int_C\vec F \cdot \vec T \:ds
> $$

* NOTE: Even though $\int_C \vec F \cdot d\vec r= \int_C \vec F \cdot \vec T \: ds$ and integrals wrt arc length are unchanged when orientation is reversed, it is still true that $\int_{-C}\vec f \cdot d\vec r = -\int_C\vec F \cdot d\vec r$

  * This is because the unit tangent vector $\vec T$ is replaced by its negative when $C$ is replaced by $-C$

* $$
  \int_C \vec F \cdot d\vec r = \int_C P\:dx + Q\:dy + R\:dz\\
  \text{where } \vec F = P\vec i + Q\vec j + R\vec k
  $$





## 3.3: The Fundamental Theorem for Line Integrals



### Definition of the Fundamental Theorem for Line Integrals

* Just as there is a Fundamental Theorem of Calculus for single variable calculus, there is a Fundamental Theorem for Line Integrals which is the FToC applied to line integrals

> If $C$ is a smooth curve given by the vector function $\vec r(t), a\le t\le b$ and $f$ is a differentiable  function of two or three variables whose gradient vector $\nabla f$ is continuous on $C$, then:
> $$
> \int_C\nabla f\cdot d\vec r = f(\vec r(b)) - f(\vec r(a))
> $$
> In other words: we can evaluate the line integral of a conservative vector field simply by knowing the value of $f$ at the endpoints of $C$.

* The line integral of $\nabla f$ is the net change in $f$



### Independence of Path

* If $C_1$ and $C_2$ are two piecewise-smooth curves (called *paths*) that have the same initial point $A$ and terminal point $B$, then:

$$
\int_{C_1}\nabla f\cdot d\vec r = \int_{C_2}\nabla f\cdot d\vec r
$$

* IN GENERAL: If $\vec F$ is a continuous vector field with domain $D$, we say that the line integral $\int_C \vec F \cdot d\vec r$ is **independent of path** if $\int_{C_1}\nabla f\cdot d\vec r = \int_{C_2}\nabla f\cdot d\vec r$ for any two paths $C_1$ and $C_2$
  * $\therefore$ line integrals of conservative vector fields are independent of path
* a curve is **closed** if its terminal point is the same as its initial point ($\vec r(b) = \vec r(a)$)
* a curve is **open** if for every point $P$ in $D$ there is a disk with center $P$ that lies entirely in $D$
* a domain $D$ is **connected** if any two points in $D$ can be joined by a path that lies in $D$
* a **simple curve** is a curve that doesn't intersect itself anywhere between its endpoints

> $\int_C \vec F \cdot d\vec r$ is independent of path in $D$ if and only if $\int_C \vec F \cdot d\vec r = 0$ for every closed path $C$ in $D$

* Work done by a conservative force field as it moves an object around a closed path is $0$

> If $\vec F$ is a vector field that is continuous on an open connected region $D$ and $\int_C \vec F \cdot d\vec r$ is independent of path in $D$, then $\vec F$ is a conservative vector field on $D$ and there exists a function $f$ such that $\nabla f = \vec F$.

> If $\vec F (x,y) = P(x,y)\vec i + Q(x,y) \vec j$ is a conservative vector field, where $P$ and $Q$ have continuous first-order partial derivative on a domain $D$, then throughout $D$:
> $$
> \frac{\partial P}{\partial y}=\frac{\partial Q}{\partial x}
> $$

> If $\vec F = P\vec i + Q\vec j$ is a vector field on an open simply-connected region $D$ and $P$ and $Q$ have continuous first order partial derivatives and 
> $$
> \frac{\partial P}{\partial y} = \frac{\partial Q}{\partial x} \text{    throughout } D
> $$
> then $\vec F$ is conservative.



### Application: Conservation of Energy

* See *Multivariable Calculus: 6th edition* by James Stewart to see a proof of how to use line integrals and the fundamental theorem for line integrals to prove the Law of Conservation of Energy





## 4.4: Green's Theorem

> Let $C$ be a positively oriented, piecewise smooth, simple closed curve in the plane and let $D$ be  the region bounded by $C$. If $P$ and $Q$ have continuous partial derivatives on an open region that contains $D$, then:
> $$
> \int_C P\:dx + Q\:dy = \iint_D\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)\:dA
> $$

* a curve has **positive orientation** if the direction of the motion along the curve is counterclockwise

* The integral $\oint$ is sometimes used as a notation to show that the line integral is being calculated using the positive orientation

* Green's Theorem is the equivalent of the Fundamental Theorem of Calculus for Double Integrals

  * In both cases there is an integral involving derivatives and the values of the original function only on the boundaries of the domain

* **simple region:** a region that is both a type I and a type II region

* using Green's Theorem, we can get the following formula for the area of $D$:
  $$
  A = \oint_C x\:dy=-\oint_C y\:dy=\frac{1}{2}\oint_Cx\:dy-y\:dx
  $$





## 4.5: Curl and Divergence



### Curl

* Curl measures how much the fluid flow tends to rotate around a certain point
  * If the net direction of rotation is counterclockwise, the curl is positive
  * If the net direction of rotation is clockwise, the curl is negative
* Curl of a 2d function is a scalar, curl of a 3d function is a vector
  * If 3D, the magnitude of the vector represents how quickly something would rotate about the axis of rotation

> If $\vec F = P\vec i + Q\vec j + R\vec k$ is a vector field in $\R^3$ and the partial derivative of $P, Q, R$ all exist, then the curl of $\vec F$ is the vector field on $\R^3$ defined by:
> $$
> \text{curl } \vec F = \left(\frac{\partial R}{\partial y}- \frac{\partial Q}{\partial z}\right)\vec i + \left(\frac{\partial P}{\partial z}- \frac{\partial R}{\partial x}\right)\vec j + \left(\frac{\partial Q}{\partial x}- \frac{\partial P}{\partial y}\right)
> $$

* It can be easier to remember curl if you think of it as $\text{curl } \vec F = \nabla \times \vec F$
* If $f$ is a function of three or more variables that has continuous second-order partial derivatives, then $\text{curl }(\nabla f) = \vec 0$ 

> If $\vec F$ is a vector field defined on all of $\R^3$ whose component functions have continuous partial derivatives and $\text{curl } \vec F = \vec 0$, then $\vec F$ is a conservative vector field

* If the curl is zero, then there is no sort of rotation occurring at that point



### Divergence

* Divergence is a measure of whether vectors generate motion out of nothingness
  * If the divergence is positive at a point, then all the vectors (and therefore the motion associated with it) point outwards (the point is a source)
    * In the context of fluid, fluid flows out of this point
    * Divergence can also be positive if the fluid flow goes from slow to fast
  * If the divergence is negative at a point, then all the vector (and the motion associated with it) point inwards (the point is a sink)
    * In the context of fluid, fluid flows into this point
    * Divergence can also be negative if the fluid flows from fast to slow
* The result of computing the divergence is a scalar
* If the divergence is $0$, then in the context of fluids the fluid is incompressible

> If $\vec F = P\vec i + Q\vec j + R\vec k$ is a vector field in $\R^3$ and $\frac{\partial P}{\partial x}, \frac{\partial Q}{\partial y}, \frac{\partial R}{\partial z}$ exist, then the divergence of $\vec F$ is defined by:
> $$
> \text{div }\vec F = \frac{\partial P}{\partial x}+\frac{\partial Q}{\partial y}+\frac{\partial R}{\partial z}
> $$

* It can be easier to remember divergence as $\text{div }  \vec F = \nabla \cdot \vec F$
* If $\vec F = P\vec i + Q\vec j + R\vec k$ is a vector field on $\R^3$ and $P,Q,R$ have continuous second order partial derivatives, then $\text{ div curl }\vec F = 0$



### Vector Forms of Green's Theorem

* Curl and divergence allows us to rewrite Green's Theorem in other forms that can potentially be useful when solving problems
* GREEN'S THEOREM (Vector Form): $\oint_C \vec F \cdot d\vec r = \iint_D (\text{curl }\vec F)\cdot \vec k \:dA$
  * Line integral of the tangential component of $\vec F$ along $C$ is equal to the double integral of the vertical component of $\vec F$ over the region $D$ that is enclosed by $C$
* GREEN'S THEOREM (Another Vector Form): $\oint_C \vec F \cdot \vec n \:ds = \iint_D \text{div }\vec F(x,y)\:dA$
  * The line integral of the normal component of $\vec F$ along $C$ is equal to the double integral of the divergence of $\vec F$ over the region $D$ enclosed by $C$





## 4.6: Parametric Surfaces and Their Area



### Definition of a Parametric Surface

* **Parametric Surface:** A surface where each component of the surface is defined in terms of two or more parameters
* **Parametric Equations: **Equations expressed in terms of the parameters that make up the parametric surface
* **Grid curves:** curves you get from parametric equations by holding one of the parameters constant



### Identifying and Creating Parametric Surfaces

* To identify a parametric surface, write out and analyze the parametric equations to find similarities to already-learned surfaces

* To find a parametric representation of a multivariable function, look for other ways to express the function
  * Polar coordinates
  * Spherical coordinates
  * Cylindrical coordinates
  * $z$ in terms of $x$ and $y$ (meaning $x = x$ and $y = y $ are parameters)



### Surfaces of Revolution

If a surface $S$ is obtained by rotating a curve $y = f(x)$ around the $x$-axis where $f(x)\ge0$ and $\theta$ is the angle of rotation, then if $(x,y,z)$ is a point on $S$, 
$$
x =x \\
y = f(x)\cos\theta\\
z = f(x)\sin\theta
$$



### Tangent Planes to Parametric Surfaces

To find the tangent plane to a parametric surface...

* If given the values for the parameter, plug those values into the parametric equations to obtain the point for which you must find the tangent plane

* Compute the partial derivatives of the parametric surface with respect to the parameters
  $$
  \begin{aligned}
  
  \frac{\partial\vec{r}}{\partial{u}}= \vec{r}_u= \frac{\partial{x}}{\partial{u}}\vec{i} + \frac{\partial{y}}{\partial{u}}\vec{j}+\frac{\partial{z}}{\partial{u}}\vec{k}\\
  
\frac{\partial\vec{r}}{\partial{v}}= \vec{r}_v= \frac{\partial{x}}{\partial{v}}\vec{i} + \frac{\partial{y}}{\partial{v}}\vec{j}+\frac{\partial{z}}{\partial{v}}\vec{k}
  
  \end{aligned}
  $$
  
* Take the cross-product of the partial derivatives ($\vec{r}_u \times \vec{r}_v$) and use the parameters to compute the resulting vector

  * The coefficients of the resulting vector are the slopes of the tangent plane in each direction

* Write the equation of the tangent plane
  $$
  (\vec{r}_u\times\vec{r}_v)_x(x)+(\vec{r}_u\times\vec{r}_v)_y(y)+(\vec{r}_u\times\vec{r}_v)_z(z) = 0
  $$

  * Simplify as needed



### Surface Area

  > GENERAL DEFINITION OF SURFACE AREA:
  > $$
  > \text{If a smooth parametric surface } S \text{ is given by the equation}\\
  > 
  > \vec{r}(u, v)=x(u, v)\vec{i}+y(u,v)\vec{j}+z(u,v)\vec{k}\\
  > \text{and } S \text{ is covered just once as (u, v) ranges throughout the parameter domain } D\text{,} \\\text{then the surface area of } S \text{ is:}\\
  > 
  > A(S) = \iint_D|\vec{r}_u \times \vec{r}_v|dA
  > $$




  > SURFACE AREA TO A GRAPH
  > $$
  > A(S) = \iint_D\sqrt{1+ \left(\frac{\partial{z}}{\partial{x}}\right)^2+\left(\frac{\partial{z}}{\partial{y}}\right)^2}dA
  > $$
  >
  > 

* When evaluating Surface Area for a parametric surface (w/o using surface integrals), you will most likely have to express the surface given to you parametrically (such as expressing the surface in terms of spherical, polar, or cylindrical coordinates)





## 4.7: Surface Integrals



### Definition of a Surface Integral

> **Suppose that a  surface $S$ has a vector equation**
> $$
> \vec{r}(u, v)=x(u,v)\vec{i}+y(u,v)\vec{j}+z(u,v)\vec{k}
> $$
> **If we assume that the parameter domain $D$ is a rectangle, then we can split up the surface into infinitely small "patches"** (similar to a line integral)
> $$
> \iint_Sf(x,y,z)dS = \iint f(\vec{r}(u,v))|\vec{r}_u \times \vec{r}_v|dA
> $$
> 



### Surface Integrals and Graphs

* The idea of a surface integral can be extended to graphs (where $f(x) = z$) because any surface $S$ can be regarded as a parametric surface with parametric equations
  $$
  x =x\\y=y\\z=g(x,y)
  $$



> **The surface integral for a surface $S$ defined parametrically as a graph where $z=g(x,y)$ is:**
>$$
> \iint_S f(x,y,z)dS = \iint f(x,y,g(x,y))\sqrt{\left(\frac{\partial{z}}{\partial{x}}\right)^2+\left(\frac{\partial{z}}{\partial{y}}\right)^2+1}\text{ }dA
> $$



### Oriented Surfaces

* We consider only orientable (two-sided) surfaces (so not Mobius strips)
* If we have a surface that has a tangent plane at every point (except at any boundary point), if it is possible to choose a unit normal vector $\vec{n}$ at every such point $(x,y,z)$ so that $\vec{n}$ varies continuously over the surface, then $S$ is called an _oriented surface_ and the given choice of $\vec{n}$ provides $S$ with an _orientation_**

  * There are two possible orientations
    * Oriented **outward** (positive)
    * Oriented **inward** (negative)



* It is possible to determine the orientation of the surface if you know the normal vector $\vec{n}$ 
  * POSITIVE $\vec{n}$ means orientation is **outward**
  * NEGATIVE $\vec{n}$ means orientation is **inward**
  * NOTE: This only works for _closed surfaces_



### Surface Integrals of Vector Fields

Definition of a surface integral over a vector field:

> If $\vec{F}$ is a continuous vector field defined on an oriented surface $S$ with unit normal vector $\vec{n}$, then the _surface integral of $\vec{F}$ over $S$ is defined as
> $$
> \iint_S \vec{F} \cdot d\vec{S} = \iint_S \vec{F} \cdot \vec{n} \text{ }dS
> $$
> This integral is also called the **flux of $\vec{F}$ across $S$**

* In more English-speak: the surface integral of a vector field over $S$ is equal to the surface integral of its normal component over $S$

* If $S$ is given by a vector function $\vec{r}(u,v)$, then the surface integral of $S$ over the parameter domain $D$ is:

   $$
   \iint_S\vec{F}\cdot d\vec{S}=\iint_D \vec{F} \cdot (\vec{r}_u \times \vec{r}_v) \text{ }dA
   $$
  
   

* If the surface $S$ is given by a graph $z=g(x,y)$, then the surface integral of the vector field becomes:

   $$
   \iint_S \vec{F} \cdot d\vec{S} = \iint_D(-P\frac{\partial{g}}{\partial{x}} - Q\frac{\partial{g}}{\partial{y}}+R)\text{ }dA
   $$
  
   NOTE: This formula assumes positive orientation. For negative orientation, multiply the above by -1





## 17.8: Stokes' Theorem



### About Stokes' Theorem

* Stokes' Theorem: Green's Theorem for _Surface Integrals_
* CONDITIONS FOR STOKES' THEOREM
  * Oriented- out/in (two sides)
  * Piecewise Smooth- Continuous/ smooth sides for each part of the function
  * Simple- No intersections
  * Closed- Starts and ends at the same point



### Definition of Stokes' Theorem

> Let S be an oriented piecewise-smooth surface that is bounded by a simple, closed, piecewise-smooth boundary curve $C$ with positive orientation. Let $\vec{F}$ be a vector field whose components have continuous partial derivatives on an open region in $\mathbb{R}^3$ that contains $S$. Then...
>$$
> \int_C\vec{F}\cdot d\vec{r} = \iint_S \text{curl } \vec{F} \cdot d\vec{S}
> $$
> 

* In English: Stokes' Theorem says that the line integral around the boundary curve of $S$ of the tangential component of $\vec{F}$ is equal to the surface integral of the normal component of the curl of $\vec{F}$ 

* Keep in mind that you can go either way when solving Stokes' Theorem (starting with the surface **or** the curve)
* If you have two surfaces that have the same boundary curve $C$, then **the surface integrals will be the same!** 



### Relationship Between Stokes' Theorem and the $\text{curl}$ Operator

* **circulation**: A measure of the tendency of a fluid (or vector field) to rotate around a curve $C$ 

  * $$
    \text{circulation } = \int_C \vec{v} \cdot d\vec{r}
    $$

* Using Stokes' Theorem, we can make an approximation for curl:



> The relationship between circulation and curl is defined by the following equation:
> $$
> \text{curl }\vec{v}(P_0) \cdot \vec{n}(P_0) = \lim_{a\to0} \frac {1}{\pi a^2}\int_{C_a} \vec{v} \cdot d\vec{r}
> $$

* In English: $\text{curl } \vec{v} \cdot \vec{n}$ is a measure of the rotating effect of the vector field about the axis $\vec{n}$
  * The curling effect is greatest about the axis parallel to $\text{curl } \vec{v}$ 





## 4.9: The Divergence Theorem



### About  the Divergence Theorem

* Since Green's Theorem was able to be rewritten as the double integral over the region $D$ of the divergence of $\vec{F}$, then the Divergence Theorem will allow us to extend that into three dimensions
  * ... so the surface integral can be rewritten as the triple integral over a region $E$ of the divergence of $\vec{F}$ 




### Definition of the Divergence Theorem

> If $E$ is a simple solid region and $S$ is the boundary of the surface of $E$ given with the positive (outward) orientation and $\vec{F}$ is a vector field whose component functions have continuous partial derivatives on an open region that contains $E$, then...
> $$
> \iint_S\vec{F} \cdot d\vec{S} = \iiint_E \text{div } \vec{F} \text{ }dV
> $$

* In English: Under certain conditions, the flux of $\vec{F}$ across the boundary surface of E is equal to the triple integral of the divergence of $\vec{F}$ over $E$ 



### Relationship With the Divergence Theorem and the $\text{div }$ operator

> $$
> \text{div } \vec{F}(P_0) = \lim_{a\to 0} \frac{1}{V(B_a)}\iint_{S_a} \vec{F} \cdot d\vec{S}
> $$

* In English: $\text{div } \vec{F}(P_0)$ is the net rate of outward flux per unit volume at the point $P_0$
  * Hence the reason for the name "divergence"
* If $\text{div } \vec{F}(P) > 0$ the net flow is outward near $P$ and $P$ is called a **source**
* If $\text{div } \vec{F}(P) < 0$ the net flow is inward near $P$ and $P$ is called a **sink**



