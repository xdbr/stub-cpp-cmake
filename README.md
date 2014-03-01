stub-cpp-cmake
==============

project stub for [stub](https://github.com/xdbr/stub)

Usage
-----

    ./stub project:new                                      \
             template=http://github.com/xdbr/stub-cpp-cmake \
                  to=create/stub/here                       \
        project_name=XYZ                                    \
         author_name="Your Name"                            \
        author_email="your@email.com"                       \
     project_subname="The Longer Name"                      \
    project_fullname="Some Headline"

Once the project is generated, replace this file with your actual `README.md`

Features
--------

* `cmake` and `cmake` basics:
    * git submodules
    * File generation: `config.hpp.in` -> `config.hpp`
    * ...
* Test driven development using features/fixtures using [lest](https://github.com/martinmoene/lest)
* Doxygen integration
* ...
