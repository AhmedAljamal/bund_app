# Bund App

## Description


A project in which there are two pages and many buttons. This application describes investment. This application comes with an interface design. The first screen is the main screen. Then there is a bar at the bottom to navigate between the pages. Then the next page is investment. Here there is an investment calculation based on an equation and a fixed value based on which we calculate.


## Features

- Responsive layout for both mobile and desktop.
- Demonstrates the use of `page view` and conditional rendering.
- Easily customizable and extensible.



## Dependencies

- `carousel_slider: ^4.2.1`
- `smooth_page_indicator: ^1.1.0`

## Challenges and Design Decisions

Challenges:
Design Integration Across Devices:

The main challenge was ensuring seamless design integration across various devices and ensuring a responsive user experience.
Managing Variable States:

Dealing with different states such as large and small screen states, and ensuring dynamic UI updates.
Dimensional Flexibility:

Avoiding fixed dimensions inappropriately and working towards defining dimensions using relative units.
Design Decisions:
Utilizing LayoutBuilder:

We decided to employ LayoutBuilder to check the screen size and determine the interface layout accordingly.
Using ResponsiveWidget:

We implemented a responsive approach using ResponsiveWidget to decide which layout to use based on screen size.
Deploying Responsive Images:

We utilized responsive images that adapt to various screen resolutions to enhance image quality.
Clear Documentation:

We documented all challenges and design decisions in the README file to assist other developers in understanding and customizing the project.
