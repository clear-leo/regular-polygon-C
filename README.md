# Project details
This is a simple program that generates a regular polygon of any quantity of sides. <br>
You can control the amount of sides by pressing up arrow or down arrow.
___

# Build guide
Build requirements:
<ul>
<li> SDL2
<li> A C compiler
<li> CMake
</ul>

To build:
<ol>
<li>
Clone the repository

```sh
git clone https://github.com/clear-leo/regular-polygon-C.git
```

<li>
Once downloaded, enter the repository folder and create a build folder

```sh
mkdir build
```

<li>
Enter the build folder and run

```sh
cmake ..
```
Then
```sh
cmake --build .
```

</ol>
There will be an executable called polygon in the build folder after that.
