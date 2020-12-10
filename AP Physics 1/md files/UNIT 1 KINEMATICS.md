# UNIT 1: KINEMATICS

[toc]



## 1.1: Position, Velocity, and Acceleration (CB)



### 1.1.1: Defining Kinematics Terms

* **POSITION** ($x$): The location that you are at wrt the origin (starting place/point/position)- *scalar*
  * SI units: meters
* **DISPLACEMENT** ($\Delta x$): Change in position
  * how far you go from an initial starting position (you can start at the origin or another position)
  * vector (has direction and magnitude)
  * $\Delta x = x_f - x_i$
  * SI Units: meters
* **VELOCITY** ($v$): Change in position with respect to time
  * How fast you are going in a given direction
  * vector (has direction and magnitude)
  * $v = \frac{\Delta x}{\Delta t}$
  * $v = v_f - v_i$
  * SI Units: $\frac{m}{s}$
* **SPEED** (S): How fast you are going (does **not** account for which direction you are going)
  * scalar (only has _magnitude_ and no direction)
  * $S = |v|$
  * SI Units: $\frac{m}{s^2}$
* **ACCELERATION** ($a$): Change in velocity with respect to time
  * How fast it takes something to speed up/slow down
  * vector (has direction and magnitude)
  * $a = \frac{\Delta v}{\Delta t}$
  * $a = a_f - a_i$
  * SI Units: $\frac{m}{s^2}$



### 1.1.2: Frames of Reference and Fundamental Forces

* Your chosen frame of reference (in other words, your perspective) can change the direction and/or magnitude of displacement, velocity, and acceleration
  * EX: viewing motion left and right versus viewing motion in front/behind you would cause the direction of displacement, velocity, and acceleration to be forward/backward instead of left/right
* *inertial frames of reference:* forces are determined by their influence on motion (but very specifically velocity) of an object
  * $\therefore$ force ($F$) is a **vector** and have both a _magnitude_ (how strong the force is) and a direction (the direction in which the force is being applied)
* If there are multiple forces being acted upon an object, the *net force* is the vector sum of all of the forces being applied on the object
  * important to say the vector sum because the direction of the net force is as much a part of the calculation as the magnitude of the net force
  * $F_{net} = \sum F$
* There are **three types of forces** which each determine the structure of an object as well as the motion of an object
* Acceleration is proportional to the net force
  * $\sum F = ma$
  * Acceleration always points in the same direction as the net force



### 1.1.3: The Kinematics Equations

> The kinematics equations all relate displacement, initial velocity, final velocity, acceleration, and time. They are as follows:
> $$
> v_f = v_i + at\\
> \Delta x = x_it+\frac{1}{2}at^2\\
> v_f^2 = v_i^2 + 2a\Delta x
> $$
> Another equation that is optional but occasionally might be useful (not on the Formula Sheet):
> $$
> \Delta x = \frac{1}{2}t(v_i+v_f)
> $$

* NOTE: The kinematics equations only work when **acceleration is constant**



### 1.1.4: Rotational Kinematics

* We can also describe motion that happens in circles as well as in straight lines
* **ANGULAR DISPLACEMENT** ($\theta$): The total angle you have rotated in a circular fashion from a starting point on a circle
  * vector (has a direction and magnitude)
  * $\Delta\theta = \theta_f-\theta_i$
* **ANGULAR VELOCITY** ($\omega$): The velocity at which you rotate around a circle
  * vector (has direction and magnitude)
  * $\omega = \frac{\Delta \theta}{\Delta t}$
* **ANGULAR ACCELERATION** ($\alpha$): How fast you change your angular velocity in a given amount of time
  * vector (has a direction and magnitude)
  * $\alpha = \frac{\Delta \omega}{\Delta t}$

* **CENTRIPETAL ACCELERATION** ($a_c$): The acceleration that causes an object to move in circle



#### 1.1.4.1: Rotational Kinematics Equations

> The rotational kinematics equations are equations that relate angular displacement, angular acceleration, initial angular velocity, final angular velocity, and time. They are as follows:
> $$
> \Delta\theta=\omega t + \frac{1}{2}\alpha t^2\\
> \omega_f = \omega_i + \alpha t\\
> \omega_f^2 = \omega_i^2 + 2\alpha\Delta\theta
> $$

* NOTE: These equations only work when the angular acceleration is *constant*
* These equations work when there is both a radial and tangential acceleration



#### 1.1.4.2: Relevant Equations and Terms

* $a_c = \frac{v^2}{r}$
* $v = \frac{2\pi r}{T}$ where $T$ is the period of rotation
* LINEAR SPEED OF A ROTATING OBJECT: $v = r\omega$
* LINEAR ACCELERATION OF A ROTATING OBJECT: $a = r\alpha$
* LINEAR DISPLACEMENT OF A ROTATING OBJECT: $\Delta x = r\Delta\theta$





## 1.2: Representations of Motion (CB)

* The linear motion of a system can be described using kinematics equations using the center of mass of the system as a reference for all of the calculations for mass, displacement, acceleration, velocity, etc.
  * all variables are assumed to refer to the center-of-mass quantities unless otherwise indicated





## 1.3: Kinematics and Graphs

* **position vs time graphs:** graphs that measure the position of an object after a certain amount of time has passed

  * x-axis: time
  * y-axis: position
  * *slope*: velocity
  * A position vs time graph with a slope like / means that the object is moving away from the source of measurement
  * A position vs time graph with a slope like \ means that the object is moving closer to the source of measurement

* **velocity vs time graphs:** graphs that measure the velocity of an object after a certain amount of time has passed

  * x-axis: time
  * y-axis: velocity
  * *slope*: acceleration
  * *area under the curve*: displacement
  * NOTE: it is not possible to find how far from the source of measuring an object is located
    * In other words: we can't use a velocity vs time graph to find exact positions, only displacements
  * Most every day motion can be represented with straight segments on a velocity vs time graph

* **acceleration vs time graphs:** graphs that measure the acceleration of an object after a certain amount of time passes

  * x-axis: time
  * y-axis: acceleration
  * *slope*: jerk (not covered in AP Physics)
  * *area under the curve*: velocity

  

  

  ## 1.4: 2D Kinematics and Free Fall Kinematics

  * If an object is in free-fall, the vertical acceleration is always $a = 10\frac{m}{s}$ or $a = 9.8\frac{m}{s}$
    
    * the horizontal acceleration is always 0
  * velocities in perpendicular directions act similarly to perpendicular forces
* In 2D Kinematics problems, there are sets of equations that represent the motion in the x-direction and equations that represent the motion in the y-direction that you must use to solve 2D kinematics equations
  
  * x-direction kinematics equations:
    $$
    \Delta x = v_xt\\a_x =0
  $$
  
  * y-direction kinematics equations:
    $$
    v_{yf} = v_{yi} + a_yt\\
    \Delta y = v_{yi}t+\frac{1}{2}a_yt^2\\
  v_{yf}^2 = v_{yi}^2 + 2a_y\Delta y
  $$
  
  * When solving 2D kinematics, the y-component of the problem becomes a free-fall problem (the big idea behind this is that the acceleration then becomes $9.8 \frac{m}{s}$ or $10\frac{m}{s}$)

  

