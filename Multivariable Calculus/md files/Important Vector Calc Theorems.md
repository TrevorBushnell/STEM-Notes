# Summary of All Vector Calculus Theorems & Formulas

Since many different types of integrals have been learned in this chapter, as well as many theorems and formulas related to these integrals, here is a list of all the formulas related to Vector Calculus



## Fundamental Theorem of Calculus

> $$
> \int_{a}^{b} F'(x)dx = F(b) -F(a)
> $$

* This is included as a reminder that most of these formulas stem from extensions of FTC





## Fundamental Theorem for Line Integrals

> $$
> \int_{a}^{b} \nabla f \cdot d\vec{r} = f(\vec{r}(b)) - f(\vec{r}(a))
> $$

* Since the gradient ($\nabla f$) is a sort of derivative, this is simply just a restatement of the Fundamental Theorem of Calculus- and since it relates the vector function $\vec{r}$ this means that we can relate line integrals in the way that the traditional FTC does





## Green's Theorem

> $$
> \int_C \vec{F} \cdot d\vec{r} =\iint_D \left(\frac{\partial{Q}}{\partial{x}}-\frac{\partial{P}}{\partial{y}}\right)dA
> $$

* The line integral of a curve $C$ that bounds a given domain $D$ is equal to the double integral of $Q_x - P_y$ over the region $D$  





## STOKES' THEOREM

> $$
> \int_C \vec{F} \cdot d\vec{r} =\iint_S \text{curl } \vec{F} \cdot d\vec{S}
> $$

* The line integral around the boundary curve of $S$ of the tangential component of $\vec{F}$ is equal to the surface integral of the normal component of the curl of $\vec{F}$ 





## Divergence Theorem

> $$
> \iint \vec{F} \cdot d\vec{S} = \iiint_E \text{div }F\text{ }dV
> $$

* The flux of $\vec{F}$ across the boundary surface of $E$ is equal to the triple integral of the divergence of $\vec{F}$ over $E$ 

