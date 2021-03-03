# Unit 3: Multiple Integrals

[toc]



## 3.1: Double Integrals Over Rectangles



### Review of Integrals

* With single integrals, we could split up the area into infinitely many rectangles with extremely small width to compute the area under a curve
* A single integral computes the *area under a curve* 
* We can approximate area under a curve using a Riemann Sum



### Volumes and Double Integrals

* A double integral computes the *volume under a surface*

* If we define $f$ on a closed rectangle $R$ that has dimensions $[a,b]\times[c,d]$, then we can subdivide $R$ into an infinitely small number of rectangles and add up the volumes of the resulting (and really skinny) rectangular prisms

* We can approximate the volume under a surface using a Double Riemann Sum
  $$
  V \approx \sum_{i=1}^{m}\sum_{j=1}^{n} f(x_{ij}^*, y_{ij}^*)\Delta A
  $$

> The **double integral** of $f$ over the rectangle $R$ is:
> $$
> \iint_Rf(x,y)dA = \lim_{m,n\to\infty}\sum_{i=1}^{m}\sum_{j=1}^{n} f(x_{ij}^*, y_{ij}^*)\Delta A
> $$
> if the limit exists.

* DOUBLE RIEMMAN SUM (w/ upper right corner rectangles): $\iint_Rf(x,y)dA = \lim_{m,n\to\infty}\sum_{i=1}^{m}\sum_{j=1}^{n} f(x_{i}, y_{j})\Delta A$
* If $f(x,y) \ge 0$, then the volume $V$ of the solid that lies above the rectangle $R$ and below the surface $z=f(x,y)$ is $V = \iint_R f(x,y) dA$ 
* **MIDPOINT RULE:** $\iint_Rf(x,y)dA \approx \sum_{i=1}^{m}\sum_{j=1}^{n} f(\bar{x_i},\bar{y_j})\Delta A$
  * More accurate approximation for the volume under a surface



### Average Value

> The average value of a function of two variables defined on a rectangle $R$ is:
> $$
> f_{avg}=\frac{1}{A(R)}\iint_Rf(x,y)dA
> $$
> where $A(R)$ is equal to the area of $R$.



### Properties of Double Integrals

* The double integral of a sum is the same as the sum of the double integrals
* The double integral of a constant times a function is equal to that constant times the double integral of the function
* If $f \ge g$ then the double integral of $f$ is $\ge$ the double integral of $g$





## 3.2: Iterated Integrals



### Definition of an Iterated Integral

* An **iterated integral** is the following: $\int_{a}^{b}\int_c^df(x,y)\:dy\:dx$
  * We integrate with respect to y on the interval [c,d], then integrate what is left over with respect to x on the interval [a,b]
* You can integrate in any order (wrt y or wrt x)- just make sure that you don't accidentally integrate x over y's interval on accident if you flip around!
* When solving iterated integrals, we work *from the inside out*

> FUBINI'S THEOREM: If $f$ is continuous on the rectangle $R$ with dimensions $[a,b]\times[c,d]$, then:
> $$
> \iint_Rf(x,y)\:dA=\int_a^b\int_c^df(x,y)\:dy\:dx=\int_c^d\int_a^bf(x,y)\:dx\:dy
> $$
> More generally, this theorem is true if it is assumed that $f$ is bounded on $R$, $f$ is discontinuous only on a finite number of smooth curves, and the iterated integrals exist

* $$
  \iint_R g(x)\:h(y)\:dA=\int_a^bg(x)\:dx\int_c^dh(y)\:dy\:\:\:\:\:R=[a,b]\times[c,d]
  $$





## 3.3: Double Integrals Over General Regions



### The Double Integral Dilemma

* When computing single integrals, we are always computing over an interval
* With double integrals, we don't always want to compute integrals over rectangles, but rather over general regions of weird and interesting shapes
* $\iint_Df(x,y)\:dA=\iint_RF(x,y)\:dA$ where $F(x,y) = \begin{cases}f(x,y); (x,y)\in D\\0;(x,y)\in R \:\&(x,y)\notin D\end{cases}$

* **Type I Region:** a domain that lies between the graphs of two continuous functions of x
* **Type 2 Region:** a domain that lies between the graphs of two continuous functions of y

> If $f$ is continuous on a type I region $D$, then:
> $$
> \iint_Df(x,y)\:dA=\int_a^b\int_{g_1(x)}^{g_2(x)}f(x,y)\:dy\:dx
> $$

> If $f$ is continuous on a type II region $D$, then:
> $$
> \iint_Df(x,y)\:dA=\int_c^d\int_{h_1(y)}^{h_2(y)}f(x,y)\:dx\:dy
> $$

* TIP: Drawing a diagram of $D$ can help you figure out over what region you are integrating
  * Draw errors to see how you integrate over the region
    * Type I Region: arrow from bottom to top
    * Type 2 Region: arrow from left to right



### Properties of Double Integrals

* All of the double integral properties from 3.2 also hold up here as well

* $$
  \iint_Df(x,y)\:dA=\iint_{D_1}f(x,y)\:dA_+\iint_{D_2}f(x,y)\:dA
  $$

  * The above property means that if you can split up a region $D$ into two smaller regions, then you can take the double integral of $f$ wrt the different regions and add the result together

* $$
  \iint_D 1\:dA=A(D)
  $$

* If $m\le f(x,y)\le M\: \forall \:(x,y) \in D$, then $mA(D) \le \iint_Df(x,y)\:dA\le MA(D)$





## 3.4: Double Integrals in Polar Coordinates



### Review of Polar Coordinates

> To convert from rectangular coordinates to polar coordinates (and vice-versa):
> $$
> x = r\cos\theta\\
> y=r\sin\theta\\
> r^2=x^2+y^2\\
> \theta = \tan^{-1}\left(\frac{y}{x}\right)
> $$



### Computing Double Integrals in Polar Coordinates

> If $f$ is a continuous function on a polar rectangle $R$ given by $0\le a\le r\le b$ and $\alpha\le\theta\le\beta$ where $0\le\beta-\alpha\le2\pi$, then
> $$
> \iint_Rf(x,y)\:dA=\int_\alpha^\beta\int_a^bf(r\cos\theta, r\sin\theta)r\:dr\:d\theta
> $$

* **WARNING: Be careful not to forget the additional factor of $r$ when computing a double integral in polar coordinates**

> If $f$ is continuous over a general polar region, then:
>
> $$
> \iint_Df(x,y)\:dA =\int_\alpha^\beta\int_{h_1(\theta)}^{h_2(\theta)}f(r\cos\theta, r\sin\theta)r\:dr\:d\theta
> $$





## 3.5: Applications of Double Integrals



### Density and Mass

* mass is equal to the integral of a density function
  $$
  m = \iint_D\rho(x,y)\:dA
  $$

* the total charge is the integral of the charge density function
  $$
  Q=\iint_D\sigma(x,y)\:dA
  $$



### Moments and Centers of Mass

* **Moment of the entire lamina about the a-axis:** $\iint_Dy\:\rho(x,y)\:dA$

* **Moment of the entire lamina about the y-axis:** $\iint_D x\:\rho(x,y)\:dA$

* **Coordinates of the center of mass of a lamina** is:
  $$
  \bar{x} = \frac{M_y}{m}=\frac{1}{m}\iint_Dx\:\rho(x,y)\:dA\\
  \bar{y} = \frac{M_y}{m}=\frac{1}{m}\iint_dy\:\rho(x,y)\:dA\\
  \text{where } m=\iint_D\rho(x,y)\:dA
  $$



### Moment of Inertia

* **Moment of inertia about the x-axis:** $I_x=\iint_Dy^2\rho(x,y)dA$
* **Moment of inertia about the y-axis:** $I_y = \iint_Dx^2\rho(x,y)\:dA$
* **Moment of inertia about the origin:** $I_0=\iint_D(x^2+y^2)\rho(x,y)dA$
* $I_0=I_x+I_y$
* **radius of gyration of a lamina about an axis** is a number $R$ such that $mR^2 = I$
* **radius of gyration wrt x-axis:** $m\bar{\bar{y}}^2=I_x$ 
* **radius of gyration wrt y-axis:** $m\bar{\bar{x}}^2=I_y$



### Probability

* **joint density function of X and Y:** $P((X,Y)\in D)=\iint_Df(x,y)dA$

* $P(a\le X \le b, c \le Y \le d) = \int_a^b\int_c^df(x,y)\:dy\:dx$

* The joint density function has the following properties (because probabilities can't be negative and are measured on a scale from $0$ to $1$):
  $$
  f(x,y)\ge 0\;\;\;\;\;\;\;\;\;\;\;\;\iint_{\R^2}f(x,y)\:dA = 1\\
  \iint_{\R^2}f(x,y)\:dA=\int_{-\infty}^{\infty}f(x,y)\:dx\:dy=1
  $$



### Expected Values

* **expected value** is a *synonym for mean* and is represented in statistics by $\mu$
* $\mu_x=\iint_{\R^2}xf(x,y)\:dA\;\;\;\;\;\;\;\mu_y=\iint_{\R^2}yf(x,y)dA$
* **Normal distribution:** $f(x) = \frac{1}{\sigma\sqrt{2\pi}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$





## 3.6: Triple Integrals



### Definition of the Triple Integral

> The **triple integral** of $f$ over box $B$ is:
> $$
> \iiint_Bf(x,y,z)\:dV=\lim_{l,m,n\to\infty}\sum_{i=1}^l\sum_{j=1}^{m}\sum_{k=1}^nf(x_{ijk}^*, y_{ijk}^*, z_{ijk}^*)\Delta V
> $$

* Fubini's Theorem also works for triple integrals (it doesn't matter the order that you integrate as long as you match the bounds to what you are integrating)

> The triple integral of $f$ over a general region $E$ is...
>
> *Over a Type I region:*
> $$
> \iiint_Ef(x,y,z)dV=\int_a^b\int_{g_1(x)}^{g_2(x)}\int_{u_1(x,y)}^{u_2(x,y)}f(x,y,z)\:dz\:dy\:dx
> $$
> *Over a Type II region:*
> $$
> \iiint_Ef(x,y,z)\:dV=\int_c^d\int_{h_1(y)}^{h_2(y)}\int_{u_1(x,y)}^{u_2(x,y)}f(x,y,z)\:dz\:dx\:dy
> $$



### Applications of Triple Integrals

* A triple integral is the volume of a solid that is "floating" somewhere in $\R^3$
  * Double integrals compute volumes of solids over regions, whereas with triple integrals each dimension of the solid is defined and is NOT just projected from a domain lying in a specific plane
* **mass:** $m = \iiint_E \rho(x,y,z)\:dV$
* **moments:** $M_{yz}=\iiint_Ex\rho(x,y,z)\:dV\;\;\;M_{xz}=\iiint_Ey\rho(x,y,z)\:dV\;\;\;M_{xy}=\iiint_E z\rho(x,y,z)\:dV$
* **center of mass:** $\bar{x}=\frac{M_{yz}}{m}\;\;\;\bar{y}=\frac{M_{xz}}{m}\;\;\;\bar{z}=\frac{M_{xy}}{m}$ 
* **moments of inertia:** $I_x=\iiint_E(y^2+z^2)\rho(x,y,z)\:dV\;\;\;\;I_y=\iiint_E(x^2+z^2)\rho(x,y,z)\:dV\;\;\;\;I_z=\iiint_E(x^2+y^2)\rho(x,y,z)\:dV$

* **total electric charge:** $Q = \iiint_E \sigma(x,y,z)\:dV$
* **joint density function of X, Y, and Z:** $P((X,Y,Z)\in E)=\iiint_Ef(x,y,z)\:dV$
  * $P(a\le X\le b, c\le Y\le d, r\le Z\le s)=\int_a^b\int_c^d\int_r^sf(x,y,z)\:dz\:dy\:dx$
  * joint density function satisfies $f(x,y,z)\ge 0$ and $\int_{-\infty}^\infty\int_{-\infty}^\infty\int_{-\infty}^\infty f(x,y,z)\:dz\:dy\:dx=1$





## 3.7: Triple Integrals in Cylindrical Coordinates



### What Are Cylindrical Coordinates?

* Cylindrical coordinates are represented by the ordered triple $(r,\theta,z)$, where $r$ and $\theta$ are polar coordinates of the projection of $P$ onto the $xy$-plane to $P$
* $r$ is the radius of a circle in the $xy$-plane
* $\theta$ is the angle of rotation in the $xy$-plane
* To convert from cylindrical coordinates to rectangular coordinates (and vice-versa), use the following equations:

> $$
> x = r\cos\theta\\
> y=r\cos\theta\\
> z=z\\
> r^2 = x^2 + y^2\\
> \theta = \tan^{-1}\frac{y}{x}
> $$



### Evaluating Triple Integrals with Cylindrical Coordinates

> To evaluate a triple integral in cylindrical coordinates, use the following:
> $$
> \iiint_Ef(x,y,z)\:dV=\int_\alpha^\beta\int_{h_1(\theta)}^{h_2{\theta}}\int_{u_1(r\cos\theta)}^{u_2(r\cos\theta)}f(r\cos\theta,r\sin\theta,z)\:r\:dz\:dr\:d\theta
> $$

* **WARNING: Don't forget to add in the extra factor of $r$ when converting from rectangular coordinates to spherical coordinates**
* Cylindrical coordinates make evaluating certain solids (such as cylinders) much easier to compute their integral





## 3.8: Triple Integrals in Spherical Coordinates



### What Are Spherical Coordinates?

* Spherical coordinates are represented by the ordered triple $(\rho,\theta,\phi)$
  * $\rho$ is the radius
  * $\theta$ is the angle of rotation in the $xy$-plane
  * $\phi$ is the angle between the positive $z$-axis and $\rho$

> To convert between rectangular coordinates and spherical coordinates (and vice-versa), use the following formulas:
> $$
> x =\rho\sin\phi\cos\theta\\
> y=\rho\sin\phi\sin\theta\\
> z=\rho\cos\phi\\
> \rho^2=x^2+y^2+z^2
> $$

* **WARNING:** There is not a universal agreement on the notation of spherical coordinates
  * Most books reverse the meanings of $\theta$ and $\phi$ and use $r$ in place of $\rho$



### Evaluating Triple Integrals With Spherical Coordinates

> To evaluate a triple integral in spherical coordinates, use the following formula:
> $$
> \iiint_Ef(x,y,z)\:dV=\int_c^d\int_\alpha^\beta\int_a^bf(\rho\sin\phi\cos\theta,\rho\sin\phi\sin\theta,\rho\cos\phi)\:\rho^2\sin\phi\:d\rho\:d\theta\:d\phi
> $$
> Where $E$ is a spherical wedge given by:
> $$
> E = \{(\rho,\theta,\phi)|a\le\rho\le b, \alpha\le\theta\le\beta,c\le\phi\le d\}
> $$

* Triple integral over a general region: $\iiint_Ef(x,y,z)\:dV=\int_c^d\int_{h_1(\phi)}^{h_2(\phi)}\int_{u_1(\theta\phi)}^{u_2(\theta,\phi)}f(\rho\sin\phi\cos\theta,\rho\sin\phi\sin\theta,\rho\cos\phi)\:\rho^2\sin\phi\:d\rho\:d\theta\:d\phi$
* **WARNING: Don't forget to add in the factor $\rho^2\sin\phi$ when converting from rectangular to spherical coordinates**
* Triple integrals make evaluating integrals with cones or spheres as their boundary significantly easier





## 3.9: Change of Variables in Multiple Integrals



### Taking What We Know and Extending To Generality

* We've already tried changing variables before!
* In 2D calculus, we would substitute $x$ for $u$ using the Substitution Rule
* In 3D calculus, we would substitute $x$ and $y$ using the polar coordinates conversion equations
* In this section, we learn a general way to change variables that is given by a **linear transformation $T$** from the $uv$-plane to the $xy$-plane: $T(u,v) = (x,y)$
  * This is a linear algebra question at its heart
* $x$ and $y$ are related by the equations $x = g(u,v)$ and $y=h(u,v)$
* We usually assume that $T$ is a $C^1$ transformation, which means that $g$ and $h$ have continuous first-order partial derivatives
* A linear transformation $T$ is just a function whose domain and range are both subsets of $\R^2$
* If $T(u_1,v_1) = (x_1,y_1)$, then the point $(x_1,y_1)$ is in the **range** of $T$
* If no two points have the same associated range point, then $T$ is **one-to-one**
* If $T$ is a one-to-one transformation, then the **inverse transformation $T^{-1}$** from the $xy$-plane
*  to the $uv$-plane can possibly be solved using the equations $u=G(x,y)$ and $v=H(x,y)$



### The Jacobian

> The **Jacobian** of the transformation $T$ given by $x=g(u,v)$ and $y=h(u,v)$ is:
> $$
> \frac{\partial(x,y)}{\partial(u,v)}=
> \left[
> \begin{array}{cc}
> \frac{\partial x}{\partial u}&\frac{\partial x}{\partial v}\\
> \frac{\partial y}{\partial u} & \frac{\partial y}{\partial v}
> \end{array}
> \right]
> $$
> Using this notation, we can approximate $\Delta A$ with:
> $$
> \Delta A \approx \left|\frac{\partial(x,y)}{\partial(u,v)}\right|\Delta u\:\Delta v
> $$

> CHANGE OF VARIABLES IN A JACOBIAN: Suppose that T is a $C^1$ transformation whose Jacobian is nonzero and that maps a region $S$ into the $uv$-plane onto a region $R$ in the $xy$-plane. If $F$ is continuous on $R$ and that $R$ and $S$ are type I or type II plane regions AND that T is one-to-one, except perhaps on the boundary of $S$, then:
> $$
> \iint_R f(x,y)\:dA = \iint_Sf(x(u,v),y(u,v))\left|\frac{\partial(x,y)}{\partial(u,v)}\right|\Delta u\:\Delta v
> $$



### The Jacobian and Triple Integrals

* The Jacobian in $\R^3$ is the following determinant:
  $$
  \frac{\partial(x,y,z)}{\partial(u,v,w)} = \iiint_Sf(x(u,v,w),y(u,v,w),z(u,v,w))\left|\frac{\partial(x,y,z)}{\partial(u,v,w)}\right|\Delta u\:\Delta v\:\Delta w
  $$