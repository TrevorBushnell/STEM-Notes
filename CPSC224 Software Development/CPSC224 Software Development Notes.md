# CPSC224: Software Development Notes

* TOC
{:toc}

## `git` Basics



### The Goals of Version Control

* You can see the changes to your code as you progress
* You don't know when you need to go back *until you do know*
* Allows a user to edit their code locally and publish their results when they are finished
* Have access to change each file
* **can sync between multiple users**
* Version control tools can be implemented into the IDE and can be helpful to manage project releases
* **git will provide these features for us**



### How is `git` Structured?

* unit of operation is a **repository**
* All operations done on the *entire repo*
* the version history is kept in 1+ *branches*
* you are the only person with a copy of that branch and therefore you can do whatever you want to that code
  * when you finish working on your branch, you can then merge your code with the master branch
  * you can have branches of branches, etc.
* if two people edit the same file and try to merge, there can be massive conflicts
* FYI: FORKING IS NOT BRANCHING
  * Forking is for whole repos while branching is done within a single repo
* The reason we use `git` over a cloud service such as Dropbox is because `git` is more than just a cloud storage of code- it also solves many dev issues



### `git` Commands

`git clone`: clones a GitHub repo

`git status`: shows the status of your git repo

`git diff`: shows the differences between files you have edited and the current state of these files

`git add`: make a file ready to be committed

`git commit -m`: make a commit with an indicated comment afterwards

`git push`: publish your changes to the current branch

`git pull`: download any changes to your computer that anyone else has made



### Tags and Tagging

`git tag -a "[TAG TEXT]" -m "[COMMIT MESSAGE]"`: a command to commit code with a specific name

`git tag`: displays all the tags that are inside the current directory

`git checkout "[TAG NAME]"`: checkout the state of the code at a given tag

`git push --tags`: push your code INCLUDING ALL OF YOUR TAGS (you must do this if you want your tags to be pushed as well)







## Code Style in Software Development



### All About Coding Style

* Code can compile quickly but laid out very differently
* Code style is simply a way to make your code easier to read
* Code has style which is able to address both structure and layout
  * connecting various components of your code
  * lay out the text
  * how you lay out header files
  * classes in the same file VS different files
    * In Java, any public class has to be in a file of it's own, but private classes can be in the same file or different files
* Code style is a widely debated topic
  * because it is so hotly debated, just pick a code style and stick with it
  * Once you pick a style, **be consistent and stick with that style**
* most tabs are 4 spaces, however some people like to change this to be smaller to conserve space
* **research hard tabs VS soft tabs**
* the compiler doesn't care what kind of style you use, but style is important because then the humans don't get mad at you when they cannot read and/or understand your code effectively




### Code Linters

* lint (or linter) is a **tool that analyzes source code which flags you for not following certain coding styles**
* linters are flexible and can be set up to catch all of these possible things:

> ##### Advantages of Linting
>
> * Fewer errors in production
> * Causes more readable code to be in circulation
> * Fewer arguments on code styles
>
> * Objective measurement on code quality
> * More secure and performative code

* linters are not required for this class... at least not yet :stuck_out_tongue_winking_eye:





> **REMEMBER: Always code as if the person maintaining your code would be a violent psychopath and they know where they live**
>
> Write code for *maintenance*







## Object Oriented Programming



### Procedural VS Object Oriented Programming



| Procedural Programming                                       | Object Oriented Programming                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| focused on action/procedures taking place                    | focused on objects which represent different pieces of the problem space |
| operate on data items separate from the procedures           | an object brings data and functions together                 |
| code can be hugely impacted if you have you to change a data structure |                                                              |



### Object Oriented Design

* Traditional procedural languages separate data and procedures
* Objects combine data and procedures
* The purpose of OOP is that we define classes (and relationships) that are needed to build a system that will achieve what is needed to solve a given problem



### What is an Object?

* software entity that contains both *data* and *behaviors* (methods)
  * data attributes: the data contained in an object
  * methods: the procedures performed on an object's data attributes

* Data hiding: a way for an object to hide certain data attributions from code that is outside the object (hence why we need inheritance)



### What is a Class?

> **Class:** code that specifies the data attributions/methods for a particular type of object

* Classes are blueprints
  * describes how to build a certain something, and that something that you create from that blueprint is an object



### Core OO Principles

* ABSTRACTION
* ENCAPSULATION
* INHERITANCE
* POLYMORPHISM
* The details for the above terms depend on that coding language being worked with



### Abstraction

* BOTTOM LINE: The details should not be my problem if at all possible
* Abstraction: using simple things to represent complexity
* Objects and classes represent more complex procedural code
* *Data abstraction* provides important features without requiring knowledge on background information



### Encapsulation

* Methods and variables are *encapsulated* within a class
* ENCAPSULATION: Grouping of related ideas into one unit that we can refer by a single name
  * THIS IS HOW WE MAKE OBJECTS
* Encapsulation is done at the class level
* encapsulation separates the conceptual interface and the details of the implementation
  * this means that private methods can exist
* encapsulation is not limited to objects
* $\therefore$ encapsulation means any sort of hiding (hiding data, implementation, classes [if hiding behind abstract/interface], design, instantiation)
* With OOP, encapsulation can be achieved through creating classes/packages
* The user only needs to understand the interface
* the programmer can change the interface without the user knowing (w/o notifying the user)
  * $\therefore$ as long as the programmer doesn't change the interface, the user won't notice any changes the programmer will make
* you as a programmer want 



#### Encapsulation Advantages

* *Simplicity and Clarity*: all data/functions stored in objects so everything is easy to find
* *Low Complexity:* 
* *Better Understanding*: everyone will be able to understand a situation just by looking at a diagram of the entire project



### Inheritance

* Inheritance is unique to OO and not available in function-oriented languages/models
* Inheritance allows one class to use/receive methods/data from another class
* *generalization class:* explicitly captures the common attributes and methods
* *specialization class*: extends the implementation with additional attributes and methods
* inheritance allow us to reuse code because the parent class will provide the needed code to the kids so the kids only have to carry out their specific function
* the result of using inheritance is called the **class hierarchy**
* `[DERIVED CLASS]` is-a `[PARENT CLASS]`
* `[PARENT CLASS]`  has-a `[COMPOSITION CLASS]`
* "What does it mean to be a ____?" is the question that inheritance is able to answer

> **TYPES OF INHERITANCE:**
>
> * Strict: subclasses use features of parent class w/ no modification
>   * use the `final` keyword to force no re-implementation
> * Non-strict: may redefine/ignore features of the parent class



> **SINGLE VS MULTIPLE INHERITANCE:**
>
> * Single: inherits from only one parent class
> * Multiple: a class that inherits from more than one class
>   * Can cause runtime conflicts
>   * Repeated inheritance
>   * *Java does not allow multiple inheritance*
>     * Uses interfaces instead



* Inheritance can enable polymorphism
* Thanks to inheritance, you can cast object types
* keywords `extends` causes inheritance
  * `implements` establishes an interface



### Polymorphism

* **OBJECTS OF DIFFERENT TYPES BEING ACCESSED THROUGH THE SAME INTERFACE**
* Let's the programmer use the same word with different meanings in different contexts



#### Ad Hoc: Function Overloading

* Calls a certain function depending on what is passed as a parameter
* can be done at compile time or runtime depending on your language



#### Parametric: Java Generics

* Functions written generically so that it can handle values the same way and not depend on the type of the data
* True generics take any time, not just the ones discovered at compile/runtime
* use `<T>` to set the generic type so that the user can then decide what the the type should be
  * you can do this for individual methods rather than the entire class



#### Subtyping

* done vis subclassing
* allows redefining through inheritance








## UML Class Diagrams



* UML is a tool for **describing how things are structured, changed, behaved, etc.**



### Class Diagrams

* A box split into three sections
  1. Class name (teacher)
  2. Class attributes (name)
  3. Class methods (teach)
* Class diagrams show the relationships between 
* public = +
* private = -
* Class name in italics is an **abstract class**
* Open Arrows show inheritance relationships
* Closed Arrows is a composition relationship ("has-a" relationship)



### Sequence Diagrams

* boxes show the different operational components (agents - NOT NECESSARILY OBJECTS)
* vertical lines are a timeline
* arrows that move horizontal shows the methods being called and what those methods are returning **and at what point in time the method is being called and returned**
* you can show when objects exist or not because you could destroy the object to free up memory
* sequence diagrams are **NOT** good at loops
* sequence diagrams are **NOT** good at control structures
* sequence diagrams **ARE GOOD** with showing how different objects interact with each other
* because you can see how objects interact, you can visually see different ways about how your objects behave and you can ask questions about what objects should/should not be able to do



#### Different Types of Design Patterns

* CENTRALIZED FLOW: One object for all processing on the far left and other objects simply supply the data
  * easier to follow and all processes are done in one place
  * lends to have lots of code in one place which is not good from a structural perspective
* DISTRIBUTED CONTROL: Processing is split among many different objects (spreads out responsibility over many objects)
  * localizes changes $\rightarrow$ THIS IS CRITICAL IN OBJECT ORIENTED DESIGN
  * creates opportunities for polymorphism as opposed to conditional logic that is chunky in all one method





### CRC Cards

* Discussed in *UML Distilled* pp 62-63

![image-20210212145141401](C:\Users\bushn\AppData\Roaming\Typora\typora-user-images\image-20210212145141401.png)



* CRC- Class, Responsibilities, Collaborators
* What is the **name** of the class
* What are the **responsibilities** of the class
* Who does the class need to **collaborate** with in order to use the class (because other classes might have data and/or methods that are needed)




## Project Requirements and Specifications



### Software Development: Life Cycle Models

> **REQUIREMENTS ENGINEERING** $\rightarrow$ **REQUIREMENTS SPECIFICATION** $\rightarrow$ **DESIGN** $\rightarrow$ **ARCHITECTURE** $\rightarrow$ **IMPLEMENTATION** $\downarrow$
>
> ​												      																																				  	$\downarrow$
>
> ​                                                      	  **MAINTENANCE**	$\leftarrow$	**ACCEPTANCE**	$\leftarrow$	**TESTING**	$\leftarrow$	**DEVELOPMENT RESULTS** $\leftarrow$



* Maintenance is the last stage of the life cycle and it **goes on forever**



#### Agile Development Cycle

* iterative, self-reflection process that DOESN'T HAPPEN IN A SINGLE HEAVY LIFT
* Everything is done iteratively in chunks, and then you repeat the process for each individual chunk
* This lets you change/adapt as the project evolves
* Continually receive feedback from everyone involved in the process
* more frequent "standup" meetings
* don't get too far into the project until you find out what the problem is
* [insert images of the graphic here]



#### Spiral Model

* For each segment on the spiral:
  1. DETERMINE OBECTIVENESS
  2. IDENTIFY/RESOLVE RISKS
  3. DEVELOPMENT AND TEST
  4. PLAN NEXT ITERATION
* DO THINGS FAST AND DO THINGS OFTEN
* [insert image of the graphic here]





### Requirements Engineering

* You need to spend some time figuring out what you are building and why
* **WHAT ARE GOING TO BE THE FINAL REQUIRED OUTPUTS OF THE PROJECT?**
* **feature creeping:** when more requirements get added after the development process has begun
  * requirements are subject to change but ideally shouldn't if possible
* **"specify the solution unambiguously"**
* A project MUST HAVE written down requirements that are able to guide the implementation of the project
  * only when the requirements are satisfied is the project done



#### Stakeholders

* **stakeholder:** someone who has a vested interest in the product
  * *TEXTBOOK DEFINITION*: Anyone who is benefits in a direct or indirect way from the system being developed."
* stakeholders are the people who are involved and whose inputs/outputs matter and are effected

> **FINDING STAKEHOLDERS:**
>
> 1. Who are the stakeholders?
> 2. Who will be taking what actions?
> 3. What will it take for those actions to succeed?
> 4. Why do the actors need to take those actions?
> 5. What performance issues are limiting?

* [insert the stakeholder's diagram here]



#### Use Cases

* descriptions that highlight how the system will be used
* they can be narratives- tell a story about how a user will interact with a system
* becomes a contract for the developers- the developers WILL COMPLETE certain things so that these use cases can happen



#### Developing Use Cases

* Define the "actors" involved in the story
  * actors: different people that use the system within the context of the project
* **actor and user are not necessarily synonymous**
* what are the goals of the actor(s)?
* what preconditions should exist?
* what are the main tasks?
* what exceptions should be considered?
* does the actor want to be informed about unexpected changes?





### Specifications: SRS Documents

* **SRS Document:** Describes what the software will do and how it will be expected to perform. May also include details on functionality of the project and how the functionality fulfills the needs of every stakeholder
* SRS Documents contains all of the following elements:
  * purpose for the project
  * overall description
  * specific requirements
* SRS is the documentation that summarizes *who* the project is for, *how* the needs are satisfied, and the *formal requirements* that define the success of the project



### Specifications: Project Requirements



#### Functional Requirements

* The requirements/behaviors that ensure that 
* If they are not implemented, ***THE SOFTWARE WILL NOT WORK***
* are product features and usually focus on user requirements
* can be thought of as how the system responds to certain inputs
* **this is where you can specify the solution**



> **EXAMPLES OF FUNCTIONAL REQUIREMENTS:**
>
> * Search option given to user to search from various invoices
> * User should be able to mail any report to management
> * Users can be divided into groups and groups can be given separate rights
> * Software is developed keeping downward compatibility intact
>   * older versions should still work
>   * basically: "it will be backwards compatible"



#### Non-Functional Requirements

* Requirements that specify *how* the system should implement the functional requirements
* these requirements do *not* affect the basic functionality of the system
* we care about non-functional requirements because these requirements talk about *usability*
* these requirements talk about issues like security, accessibility, storage, logging, config, performance/cost, etc.

> **EXAMPLES OF NON-FUNCTIONAL REQUIREMENTS**
>
> * Database security shall meet HIPAA requirements
> * The background color for all screens shall be `#fff4b6`
> * System programming shall not use deprecated code
> * Pages should take 2-4 seconds to load



#### Functional VS Non-Functional Requirements

| FUNCTIONAL REQUIREMENTS | NON-FUNCTIONAL REQUIREMENTS |
| ----------------------- | --------------------------- |
| Product ***Features***  | Product ***Properties***    |
| User ***Requirements*** | User ***Expectations***     |



### Requirement Priorities

* Each requirement should be prioritized in the following way:
  * MUST HAVE: software cannot be operational without it
  * SHOULD HAVE: enhancing functionality
  * COULD HAVE: software can still function without these requirements
  * WISH LIST: Do not map to any objectives, would be sick if you could do it but ain't nobody got no time for that
* For your final projects, what would be a feature you could put into each of these categories?





## Software Testing

> Software testing is a process of executing a program/application with the intent of finding the software bugs

* Is the software gonna work right

* As a developer, you have to *write your own tests* and use those tests on a **daily basis**

* Agile Development Cycle really encourages continuous testing and integration
* **NOTE: THE TESTING LANGUAGE/TERMS/DEFINITIONS ARE CONSTANTLY IN FLUX**
  * be prepared for new stuff- maybe even do it yourself :wink:
* Software testing should generally take around 10 minutes before the dev gets distracted with other things



### Why Testing in This Class?

* Other classes/courses that use testing (if you are a student)
* Need to start developing your software dev skills
* Modern software engineering philosophy get good results from leveraging testing systems and tools continually and formally
  * IBM estimates that their devs spend 40% of their time testing



### What is Testing For?

* Detect software failures so that defects can be discovered/corrected
* establishes whether a project is complete
  * how to we know that we have satisfied the system requirements?
* integrate the work of different devs/dev groups

* Develop quality software that is relatively bug-free
* Identify good design/functionality and whether the system is durable



### Software Verification VS Validation

* Makes sure that the product is designed to deliver all the functionality (make sure that the system requirements are satisfied)
* Verification is going through code reviews/documentation to make sure that the project is going in the right track
* Validation is ensuring that the code is correct



### Basic Testing Cycle

> Requirements Analysis/Test Planning/Test Development/Test Execution/Test Reporting/Test Result Analysis/Defect Retesting/Regression Testing/Test Closure

* Regression Testing: Validating that all code works in the face of new code
  * as your project gets bigger, you need to make sure that your previous code also works in the face of new changes



### Testing Methods

* **STATIC TESTING:** Give you reports about your code without running your code (linters)
  * Don't necessarily need a computer- code reviews are a form of software testing!
  * done during the verification process
* **DYNAMIC TESTING:** Build the code, run the code, and look at how the code runs
  * tested by executing on a computer
  * done during the verification process
* **BLACKBOX TESTING:** Only care about inputs/outputs (don't care about internals)
  * the tester is only aware of what the software is supposed to do, not how it does it
* **WHITEBOX TESTING**: Looking at the member variables, implementation, algorithms and making sure that the code is correct
  * tester needs to concentrate on how the software does it
* **GUI TESTING:** testing a GUI to ensure it meets written specs
  * test images and button alignment on a webpage
* [insert graphic here from slides]



### Testing Levels

* **UNIT TESTS:** Test done on one unit within the project (ex test on one class in Java)
  * Tests written by the devs that wrote those units
  * a "unit" is the smallest testable part of an application like functions/procedures, classes, interfaces
* **COMPONENT TEST:** Test individual chunks of a project (ex. `.jar` files in Java)
  * individual modules are tested to find defects in the module
  * testing can be done in isolation of the system
* **INTEGRATION TEST:** Tests that different modules/chunks of the project work together in the way they are intended
  * same types of tests but across developers/dev groups
  * test writing requires communication/collaboration
  * some people on a team simply write integration tests within an organization
* **SYSTEM TESTING:** conducted on a complete integration system to evaluate whether the requirements are met
  * **API TESTS:** Tests on the API to make sure it is working correctly
  * **FUNCTIONAL TESTS (GUI):** Making sure the entire software is correct
* **ACCEPTANCE TESTING:** Give the software to your client and ask if the software is done
  * done entirely by the user/customer 
* **ALPHA TESTING:** give the software to someone not on the dev team (usually really friendly people) before the software is ready
  * people who are familiar with the technology look at the code
  * ready for the tech to not work but able to give good feedback
* **BETA TESTING:** send the software to people who will use the software and run the software under normal conditions
  * released to a limited audience outside of the programming team
  * people WILL try to use the software as intended in this case (as opposed to alpha)

> With every commit to the repo, you run the unit and integration tests and generate the reports





