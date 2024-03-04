# Chapter 9: Symbolic Dynamics

## Review

* We will define metric spaces for infinite sequences, $\Sigma$

## Symbolic Dynamics

* **IDEA:** Relate complicated nature of the quadratic map to a simpler map, a system that at first appears to be completely unrelated to the quadratic map
    * We can understand this new system more clearly
* Points in the space will end up representing infinite sequences... how do you even visualize that???
* We will need to revisit what *distance* means
* triangle inequality - $c^2 < a^2 + b^2$
* we will need an actual *definition of continuity*

## Metrics and Metric Spaces

* What is meant by a space?
  * A set of objects (any kind of objects, for us it will be sequences)
* What is meant by a metric?
  * Another way of thinking about distance, but there should be 3 criteria:
    1. $d(x,y) \ge 0$ and $d(x,y) = 0 \Leftrightarrow x=y$
    2. $d(x,y) = d(y,x)$
    3. $d(x,y) \le d(x,z) + d(z,y)$ (triangle inequality)
  * there are different metrics that work so we need to develop a metric that is appropriate for the problem that we are trying to solve
  * EXAMPLE: Euclidean distance: $d(p,q) = |p-q|$

> The notation for a metric is $(X,d)$, where $X$ is the space and $d$ is the metric

## Homeomorphism

1. $F$ is one-to-one ($f(x) = f(y) \implies x=y$, each input has one and only one output)
2. $F$ is onto (for every output, you can find a corresponding input)
3. $F$ is continuous
4. $F^{-1}$ is also continuous