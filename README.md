# Matlab math Tasks

## Intro
Firstly I wanted to use [Deepnote](https://deepnote.com/). Why?! Well because of opportunities of collaboration, virtual machine and friendly UI, eventhought I was not able to run it as notebook, there is a space for futrure improvemnt,
Secondly I used [Octave](https://octave.org/) because I preref open source and community tools.
In the end I would love to give props to this [Article](https://community.deepnote.com/c/showcase/custom-environment-for-gnu-octave).

## Project
As in the article I created [Docker file](https://github.com/Yggdrasill501/octave_matlab_tasks/blob/main/Dockerfile) to create enviroment and set-up for octave.
The rest of the project and the mathlab tasks are devided to folders with tests and source files.
The [INIT](https://github.com/Yggdrasill501/octave_matlab_tasks/blob/main/INIT.sh) file is there in case of requriments.

# Task One 
*The [CTYRSTEN](https://github.com/Yggdrasill501/octave_matlab_tasks/blob/main/Task_1/CTYRSTEN.m) function, which from the six edge lengths a,b,c,d,e, determines whether a quadrilateral exists, i.e. returns true or false*
```
function exists = CTYRSTEN(a, b, c, d, e, f)   
    exists = (a + b > c) && (a + c > b) && (b + c > a) && ...
             (a + d > e) && (a + e > d) && (d + e > a) && ...
             (b + d > f) && (b + f > d) && (d + f > b) && ...
             (c + e > f) && (c + f > e) && (e + f > c);
end
```
