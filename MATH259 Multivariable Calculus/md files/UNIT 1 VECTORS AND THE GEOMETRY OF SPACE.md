# UNIT 1: VECTORS AND SPACE

[toc]



## 

## 1.1: 3D Coordinate Systems



### About the 3D Coordinate System

* We are used to working in **planes** (1D input and 1D output), and we can model each input and output on a 2D plane
* Multivariable calculus is all about representing points in **space** (2D input and 1D output)
* There are 2 _axes_ in 2D space $\to$ there are **3 axes** in 3D space
* There are 4 _quadrants_ in 2D space $\to$ there are 8 **octants** in 3D space
* There is one plane in 2D space ($xy$-plane) $\to$ there are **3 planes** in 3D space ($xy$-plane, $xz$-plane, and $yz$-plane)
* Points in 2D space have _2 coordinates_ $\to$ points in 3D space have **3 coordinates**
* We went from creating **graphs** in 2D space to creating **surfaces** in 3D space
* If you have a hard time visualizing 3D space, use the room around you and pick a bottom corner in the room
  * Floor is $xy$-plane
  * Left wall is $xz$-plane
  * Right wall is $yz$-plane





### The Distance Formula (3D)

* Distance formula in 3D is very similar to the distance formula in 2D
* Finds the distance between point $P_1$ and $P_2$ 

> To find the distance between two points $P_1(x_1, y_1, z_1)$ and $P_2(x_2,y_2,z_2)$, use the following distance formula:
>
> $$
> D = \sqrt{(x_2-x_1)^2 + (y_2-y_1)^2 + (z_2-z_1)^2}
> $$





### Equation of a Sphere

We will be representing many surfaces and it is important to understand the different types of surfaces that we will encounter. A basic one is a sphere, which looks like the following:

> The equation of a sphere with center $C(h,k,l)$ and radius $r$ is
> $$
> (x-h)^2 + (y-k)^2 + (r-l)^2 = r^2
> $$





## 1.2: Vectors



### About Vectors

> A **vector** is a quantity that has both a _direction_ and a *magnitude*.
>
> Ex: 60mph North is a vector because it has a magnitude (60mph) and a direction (North)
>
> We denote a vector by using either boldface ($\mathbf v$) or drawing an arrow over the name of the vector ($\vec v$)

* $\vec 0$ is called the "zero vector" and has length 0 and no direction



### Vector Components and Magnitudes

* A vector algebraically looks like this $\to \vec{a} = <a_1, a_2>$ 
  * The coordinates of $\vec a$ are the **components** of $\vec a$ 

> The algebraic representation of a vector between points $A(x_1, y_1, z_1)$ and B$(x_2, y_2,z_2)$ is
> $$
> \vec a = <x_2-x_1,y_2-y_1,z_2-z_1>
> $$
> To find the x-component of a vector, you can use the formula
> $$
> \vec a_x = ||\vec a||\cos\theta
> $$
> To find the y-component of a vector, you can use the formula
> $$
> \vec a_x = ||\vec a||\cos\theta
> $$
> Where $\theta$ is the angle between the vector and the x-axis

* MAGNITUDE: The length of the vector

> To find the magnitude of the vector $\vec a$, use the distance formula (2D in the case of working with vectors having 2 components, 3D in the case of working with vectors with 3 components)
> $$
> ||\vec a|| = \sqrt {a_1^2 + a_2^2 + a_3^2}\\
> OR\\
> ||\vec a|| = \sqrt {a_1^2 + a_2^2}\\
> $$





### Adding Vectors

* TIP TO TAIL METHOD: Put the end of the second vector on the tip of the first vector _without changing the direction of length_ 
  * The vector connecting the tail of the first vector to the tip of the second vector is the sum of the two vectors
* ALGEBRAICALLY: To add two vectors, add together their components
* To subtract two vectors, subtract their components



### Other Properties of Vectors

* To multiply a vector by a scalar (any number), multiply that scalar by each component of the vector
* Other properties of vectors can be found below: 

![image-20200615164250195](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20200615164250195.png)



### Basis Vectors

* Vectors can also be written in relation to the unit vectors in the x, y, and z directions respectively (known as the **basis vectors**)

  > $$
  > \mathbf i = <1,0,0> \\
  > \mathbf j = <0,1,0>\\
  > \mathbf k = <0,0,1>
  > $$

 * To write up a vector $\vec a$ using components, you can add the components of $\vec a$ multiplied by the basis vectors

    * Ex: $\vec a = a_x\mathbf i + a_y\mathbf j + a_z\mathbf k$





### Applications

* Vectors can be used to represent motion (displacement, position, velocity, acceleration)
* Vectors are commonly used to describe **forces** because all forces are applied with a certain strength (magnitude measure in Newtons) and acting in a certain direction (expressed in angles)





## 1.3: The Dot Product

* It is possible to multiply two vectors, but there are two different ways to do that
  * Dot Product & Cross Product (next lesson)



### Definition of the Dot Product

> If $ \vec a = <a_1, a_2, a_3>$ and $\vec b = <b_1, b_2, b_3>$, then the **dot product of $\vec a $ and $\vec b$ ** is: 
> $$
> \vec a \cdot \vec b = a_1b_1 + a_2b_2 + a_3+b_3
> $$
> In other words: multiply the corresponding components and add the products

* The result of a dot product is a _scalar_ and **not a vector**
* The dot product obeys many of the laws that hold true for ordinary products

> PHYSICS DEFINITION OF THE DOT PRODUCT: If $\theta$ is the angle between the vectors $\vec a$ and $\vec b$, then $ \vec a \cdot \vec b = |\vec a|\:|\vec b |\cos\theta$ 



### What Does the Dot Product Represent?

* Measures the angle between two vectors

  > $$
  > \theta = \cos ^{-1}\left(\frac{\vec a \cdot \vec b}{|\vec a | |\vec b|}\right)
  > $$

* Two vectors are *orthogonal* if and only if $\vec a \cdot \vec b = 0$ 

* Dot products also help model the scalar projection of one vector onto another variable

  > Scalar projection of $\vec b$ onto $\vec a$: $\text{comp}_a b = \frac{\vec a \cdot \vec b}{|\vec a|}$ 
  >
  > Vector projection of $\vec b$ onto $\vec a$: $\text{proj}_{\vec a}\vec b = \frac{\vec a \cdot \vec b}{|\vec a|^2}\vec a$



### Direction Angles and Direction Cosines

* **DIRECTION ANGLES:** the angles $\alpha, \beta, \gamma$ in the interval $[0,\pi]$ that a vector makes with the positive x, y, or z axes
* **DIRECTION COSINES:** The cosines of the direction angles

  > $$
  > \begin{align}
  > \cos \alpha =& \frac{a_x}{|\vec{a}|}\\
  > \cos \beta =& \frac{a_y}{|\vec a|}\\
  > \cos \gamma =& \frac{a_z}{|\vec a|}
  > \end{align}
  > $$

* The direction cosines of $\vec a$ are the components of the unit vector in the direction of $\vec a$ 

  > $$
  > \frac{1}{|\vec a|}\vec a = <\cos\alpha, \cos\beta, \cos\gamma>
  > $$





## 1.4: The Cross Product



* The cross product is another way to multiply vectors
* As opposed to a dot product, the cross product returns **a new vector that is orthogonal to the vectors being crossed**



### Definition of the Cross Product

> If $\vec a = <a_1,a_2,a_3>$ and $\vec b = <b_1,b_2,b_3>$, then the **cross product of** $\vec a$ and $\vec b$ is:
> $$
> \vec a \times \vec b = <a_2b_3 - a_3b_2, a_3b_1-a_1b_3, a_1b_2 - a_2b_1>
> $$
> Instead of memorizing this, an easier way to remember how to compute the cross product is to put the two vectors you wish to cross into a matrix along with the basis vectors and compute the determinant of the 3 x 3 matrix.
> $$
> \vec a \times \vec b = \text{det}\left(\left[
> \begin{array}{ccc}
> \mathbf i & \mathbf j & \mathbf k\\
> a_1 & a_2 & a_3 \\
> b_1 & b_2 & b_3 \\
> \end{array}
> \right]\right)
> $$



> ALTERNATE INTERPRETATION OF THE CROSS PRODUCT: If $\theta$ is the angle between $\vec a$ and $\vec b$ and $0\le\theta\le\pi$, then:
> $$
> |\vec a \times \vec b | = |\vec a||\vec b| \sin\theta
> $$

* The cross product is NOT communicative (order matters)
* The cross product is NOT associate (parentheses matters)
* However, many of the other usual laws of algebra *do* hold for cross products





### What Does the Cross Product Represent?

* The magnitude of the cross product of two vectors is the area of the parallelogram that spans between the two vectors being crossed
* You can use the right-hand rule to determine the direction of the resultant vector
  * If you point your index finger away from you and your middle finger to the left, your thumb  naturally points upward which is the direction of the cross product
* Two vectors are parallel if and only if $\vec a \times \vec b = \vec 0$ 





### Scalar Triple Products

* **SCALAR TRIPLE PRODUCT:** The product $\vec a \cdot (\vec b \times \vec c)$ 

* _VISUALIZATION:_ If considering the parallelepiped determined by the span of vectors $\vec a, \vec b, \vec c$, then the magnitude of the scalar triple product is the volume of the parallelepiped

  > $$
  > V = |\vec a \cdot (\vec b \times \vec c)|
  > $$
  * The visualization makes sense because the area of the base is a parallelogram (meaning the area is the magnitude of the cross product of $\vec c$ and $\vec b$) and $\therefore$ the height is equal to $h = |\vec a| |\cos \theta|$ so dot product (need $|\cos\theta|$ because what is $\theta>\frac{\pi}{2}$)
  * If $ V = 0$, then the three vectors are **coplanar** (they all lie in the same plane)





### Application: Torque

* **TORQUE:** The force exerted to produce a turning effect

  > $$
  > \tau = \vec r \times \vec F\\
  > |\tau| = |\vec r \times \vec F| = |\vec r||\vec F|\sin\theta
  > $$







## 1.5: Equations of Lines and Planes



### Lines in 3D

* To determine a line in 2D, you need two points or a point and a slope
  * To determine a line in 3D, you need a point and a direction (vector)

> **VECTOR EQUATION FOR A LINE L:**
> $$
> \vec r = \vec r_0 + t\vec v
> $$
> Where $\vec r$ is the position vector of any arbitrary point on the line, $\vec r_0$ is the position vector of a point $P_0(x_0,y_0,z_0)$ on line $L$, $\vec v$ is a vector parallel to the line, and $t$ is a scalar.

* If the vector $\vec v$ is written in component form, we can rewrite the vector equation for a line as a set of parametric equations for the line $L$ 

> **PARAMETRIC EQUATIONS FOR A LINE L:**
> $$
> \begin{align}
> x =& x_0 + at\\
> y =& y_0+bt\\
> z =& z_0+ct
> \end{align}
> $$

> **SYMMETRIC EQUATIONS FOR A LINE L:** These are a set of equations that eliminate the parameter in the parametric equations.
> $$
> \frac{x-x_0}{a}=\frac{y-y_0}{b}=\frac{z-z_0}{c}
> $$
>
> If one of the parameters $a,b,c = 0$, then we can still write symmetric equations but then we also know in what plane the line lies in. (Ex: if $a= 0$, then the line lies in the plane $x=x_0$)

> **LINE SEGMENTS:** The line segment from $\vec r_0$ to $\vec r_1$ is given by the vector equation:
>
> $$
> \vec r(t) = (r-t)\vec r_0 + t\vec r_1
> $$
> Where $t$ lies on the interval from $[0,1]$ 



### Planes

* A plane in space is determined by a point $P_0(x_0,y_0,z_0)$ in the plane and a vector $\vec n$ that is orthogonal to the plane

> **VECTOR EQUATION OF THE PLANE:**
>
> $$
> \vec n \cdot \vec r = \vec n \cdot \vec r_0\\
> OR\\
> \vec n \cdot (\vec r - \vec r_0) = 0
> $$

> **SCALAR EQUATION OF THE PLANE THROUGH $P_0$ WITH NORMAL VECTOR $\vec n$:** If $\vec n = <a,b,c>$ and $\vec r = <x,y,z>$ and $\vec r_0 = <x_0,y_0,z_0>$, then the equation  of a plane is:
> $$
> a(x-x_0) +b(y-y_0)+c(z-z_0) = 0
> $$

> **LINEAR EQUATION OF A PLANE:**
>
> $$
> ax +by+cz+d=0
> $$

* If you have two vectors that lie in the plane, you can take the cross product of those to vectors to find the normal vector of the plane (since the resulting vector from the cross product is orthogonal to the vectors being crossed)

* The formula for the distance between a point and a plane in the form $ax+by+cz+d=0$ is 
  $$
  D = \frac{|ax_1+by_1+cz_1+d|}{\sqrt{a^2+b^2+c^2}}
  $$
  