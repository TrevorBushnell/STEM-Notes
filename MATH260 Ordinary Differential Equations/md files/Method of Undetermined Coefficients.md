> Suppose that $y_p$ 
>
> and that $y_1(t)$ and $y_2(t)$ form a fundamental solution set to the associated *homogeneous equation*, 
>
> then the **general solution to the inhomogeneous equation** is given by:
> $$
> y(t) = y_p(t) +C_1y_1(t)+C_2y_2(t)
> $$



#### The Method of Undetermined Coefficients

* When the equation has constant coefficients, there are some forcing terms (functions) which allow us to make an educated guess at what a particular solution would look like
* If the forcing term $f$ has a form that is replicated under differentiation, then look for a solution with the same general form as the forcing term
  * IN OTHER WORDS: We want to find a function that is very similar to its derivatives
  * Ex: $f(t) = e^t$, $f'(t) = e^t$, $f''(t) = e^t$
  * Ex: $f(t) = e^{at}$, $f'(t) = ae^{at}$
  * NOT AN Ex: $f(t) = \tan(t)$, $f'(t) = \sec^2(t)$



> If the forcing term was an exponential function, we could ask ourselves, is there a function $g(t)$ such that $e^{at}$ can be written as some linear combination of $g(t)$, $g'(t)$, and $g''(t)$. And we could guess that $g(t)$ is some constant multiple of $e^{at}$ (in other words, $g(t) = Ae^{at}$



* As such, we notice to find some $y_p(t)$, we must find a function so that a linear combination of $y_p(t), y_p'(t), y_p''(t)$ is equal to $e^{at}$
  * We need to make an "educated guess" as to what the function $g(t)$ should be



> EX 1: Find the general solution to the following differential equation (exponential)
> $$
> \text{    }\\
> \text{Our guess at } y_p(t) \text{ is } \rightarrow y_p(t) = Ae^{3t}\\
> \text{keep in mind that } A \textbf{ is the undetermined coefficient}\\
> \text{ }\\
> 9Ae^{3t} + 2(3Ae^{3t}) - 8(Ae^{3t}) = 14e^{3t}\\
> 9Ae^{3t} + 6Ae^{3t} - 8Ae^{3t} = 14e^{3t}\\
> e^{3t}(9A + 6A - 8A) = 14e^{3t}\\
> 7A = 14\\
> A = 2\\
> \text{ }\\
> \therefore y_p(t) = 2e^{3t} \text{ is a solution to the inhomogeneous solution}\\\text{ }\\\text{ }\\
> \lambda^2 + 2\lambda - 8 \text{ (characteristic equation)}\\
> (\lambda + 4)(\lambda - 2) = 0\\
> \lambda_1 = -4, \lambda_2 = 2\\ \text{ }\\
> \therefore \text{ the general solution is } y= 2e^{3t} + C_1e^{-4t} + C_2e^{2t}
> $$
> 



> EX 2: Find the general solution to the following differential equation (trigonometric)
> $$
> y''+2y'-8y = 8\sin(2t)\\\text{ }\\
> \text{Our guess at } y_p(t) \text{ is } y_p(t) = A\sin(2t)\\\text{ }\\
> -4A\sin(2t) + 2(2A\cos(2t)) - 8(A\sin(2t))=8\sin(2t)\\
> 4A\cos(2t)=(8+8A+4A)\sin(2t)
> \\\text{ }\\\text{This does not work because } \sin \:\&\:\cos \text{ are linearly independent, so one is NOT a constant multiple of the other}\\\text{ }\\\text{ }\\
> \text{Our new guess is } y_p(t) = A\sin(2t) + B\cos(2t)\\\text{ }\\
> (-4A\sin(2t) - 4B\cos(2t)) + 2(2A\cos(2t)-4B\sin(2t)) - 8(A\sin(2t) + B\cos(2t)) = 8\sin(2t)\\
> -4A\sin(2t) - 4B\cos(2t) + 4A\cos(2t)-4B\sin(2t) - 8A\sin(2t) - B\cos(2t) = 8\sin(2t)\\
> -4A\sin(2t)-4B\sin(2t)-8A\sin(2t)-4B\cos(2t)+4A\cos(2t)-8B\cos(2t)=8\sin(2t)\\
> \text{ }\\\text{Now make two equations with two unknowns}\\
> -12A-4B=8\\
> 4A-12B = 0\\
> \text{ }\\
> -3A-B=2\\
> A-3B = 0\\\text{ }\\
> \text{ }\\
> -3A-B=2\\
> 3A-9B = 0\\\text{ }\\
> -10B= 2\\
> B=-\frac{1}{5}, \:A = -\frac{3}{5}\\\text{ }\\\text{ }\\
> \therefore y_p(t)=-\frac{3}{5}\sin(2t)-\frac{1}{5}cos(2t)\\
> \therefore y(t) = -\frac{3}{5}\sin(2t)-\frac{1}{5}cos(2t) + C_1e^{-4t} + C_2e^{2t}
> $$
>



> EX 3: Find the general solution to the following differential equation (polynomial)
> $$
> y'' + 2y' - 8y = 16t^2 - 8t\\\text{ }\\\text{ }\\
> \text{We need to guess a } y_p(t) \text{ where the derivatives look like 2nd degree polynomials.}
> \\\text{ }\\
> Let \:y_p(t) = At^2+Bt+C\\
> y_p'(t) = 2At + B\\
> y_p''(t)= 2A\\\text{ }\\
> \text{Now, substitute back into the original equation:}\\\text{ }\\
> 2A+2(2At+B)-8(At^2+Bt+C)=16t^2-8t\\\text{ }\\\text{ }\\
> \text{Now, solve for A, B, and C:}\\\text{ }\\
> 2A+4At+2B-8At^2-8Bt-8C=16t^2-8t\\
> (2A+2B-8C)+t(4A-8B)-8At^2=16t^2-8t\\
> 2A+2B-8C = 0; \: 4A-8B = -8; \: -8A = 16 \rightarrow A =-2\\
> 4(-2)-8B = -8 \rightarrow B = 0\\
> 2(-2)+2(0)-8C=0\rightarrow C = -\frac{1}{2}\\\text{ }\\
> A = -2, \:B=0;\:C=-\frac{1}{2}\\\text{ }\\\text{ }\\
> \therefore y_p(t) = -2t^2 - \frac{1}{2}
> \therefore y(t)=-2t^2 - \frac{1}{2}+C_1e^{-4t}+C_2e^{2t}
> 
> $$
> 