## Spring Boot & JPA CRUD Project

### Week 10 Homework Project for Skill Distillery

### Overview

This application performs simple CRUD on a single table database of my choosing.

![EER Diagram](https://github.com/richardanewman/richardanewman.github.io/blob/master/images/boot-jpa.png)

### Technologies

Java Version 1.8, SQL, MySQL, MySQL Workbench, Spring Boot, JPA, Hibernate, Gradle, JSP, JEL, AWS EC2, HTML, CSS, Bootstrap, Git, Github, Eclipse IDE, Atom

### Topics Applied

The primary topics applied from Week 10 at Skill Distillery were on SQL, JPA, JUnit Testing, JPA Relational Mapping, String Boot & JPA project integration, and CRUD.

![EER Diagram](https://github.com/richardanewman/richardanewman.github.io/blob/master/images/jpa-crud-project.png)

### Lessons Learned

Became much more comfortable with request mappings in the controller during this project. I switch to completely using the String return method instead of returning a ModelAndView. I found it much easier to inject the Model and call model.addAttribute instead of using the mv.addObject and mv.setViewName to pass objects. I did have a couple binding issues and null pointer exceptions but quickly found out that MySQL Workbench was un-checking the auto-increment box if you modified any of the primary keys within the insert tab in the latter instance. The binding issue was simply from passing a List<> when I should have been passing an object. Easy fixes but had to follow the console log trail to get to the root of the problem.

CRUD operations ran smoothly for the most part, but there was some initial confusion on which methods should be used to speak to the database since we have recently performed JDBC, JPQL, and JPA all within a short window of time. But a short review of class resources and previous lab assignments cleared things up.

JUnit testing is growing on me. I find it much easier now that we are using JPA and Spring Boot.

Frontend work went smoothly thanks to Bootstrap boilerplate. I especially enjoying merging the backend logic with the frontend through the Java tags. Being able to dynamically call data on the front end is very new and opens up a new world of possibilities when designing applications. 












### How to Run

You must compile this program to run it on a localhost or an EC2 instance. Download or clone this repository to a local directory. Open String Tool Suite (or your favorite IDE) and import the project under the File menu. Alternatively, you can clone the repository directly into your IDE via terminal. Once you have compiled it, click run and follow the prompts.

Clone with SSH:

git@github.com:richardanewman/JPACRUDProject.git

Clone with HTTPS:

https://github.com/richardanewman/JPACRUDProject.git


## Context

Below you will find a copy of the assignment's tasks. I am providing this context for anyone evaluating my code. The project work was performed independently. For better or worse, the code is my own. The only resources referenced were from the prior week's course material and my class notes. I am not a fan of copy and paste code because it does not aid in the learning process. I am attending this bootcamp so that I can thoroughly understand how to properly develop software using Java.

### The Following Task Overview and User Stories Were Provided by Skill Distillery

###Learning Objectives

Below are a list of objectives that we see the JPACrud application reinforcing.

* Creating a SQL database and subsequent tables.
* Configuring a JPA project.
* Mapping Entities to SQL tables.
* Creating JUnit tests to ensure our JPA mappings are correct.
* Integrating a Spring Boot project with a JPA project.
* Performing basic CRUD operations.
* Deploying an application to AWS

### Project Requirements

You'll push your project to a Github repo named JPACRUDProject. Be sure to include a README.md detailing the technologies used as well as the purpose of the application.

* Your project utilizes a MySQL database to manipulate data. For this project you are only required to have a single  table and entity.

* The MySQL table is mapped to a valid JPA Entity and tested to ensure the mappings are working correctly.

* A Spring project allows for a user to perform basic CRUD operations on your entity via a web interface.

* Your project and database are deployed to your AWS instance.

### Stretch Goals

Try as many of these as you like, but ONLY after you've completed, tested, and COMMITTED your working application that meets the requirements.

* Perform CRUD operations on more that one entity. We will learn about relationships and joining tables with JPA next week so for now you will not be able to handle foreign key relationships.

### Grading

This is a graded project. You are expected to have your project completed by the start of class on Monday morning.

You will be given either a pass or fail based on whether your code works and meets the above specified requirements.

If the project does meet these specifications, you will be given a 1 for this week's project.

If the project does not work, you will be given a 0 for this week's project.

If you get a zero on the project, you can upgrade to a score of .5 if you turn in a working project by the start of class on the following Monday morning AND notify an instructor that you wish to get partial credit.

To turn in a project, you must push it to GitHub. You must include a README.md that describes how to run your program. Include an overview of the class structure you chose to use.
