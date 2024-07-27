# Image-to-ASCII
## Overview

This project converts images into ASCII art using a MATLAB script. It takes an input image, processes it to grayscale, normalizes the pixel values, and maps these values to corresponding ASCII characters to create a text representation of the image.

## Getting Started

### Prerequisites

- MATLAB installed on your computer.
- Basic knowledge of MATLAB scripting.

### Instructions

1. **Clone the repository:**
- Navigate to the repository directory
- Open the MATLAB script (image_to_ascii.m) in MATLAB.

#### Run the script and follow the prompts:

- Load an image (a sample image sample_image.jpg is provided in the repository).
- The script will process the image, convert it to grayscale, and map the grayscale values to ASCII characters.
- The resulting ASCII art will be saved in a text file (output_ascii.txt).

#### Files in the Repository
- image_to_ascii.m: The MATLAB script that performs the image to ASCII art conversion.
- sample_image.jpg: A sample image to test the script.
- output_ascii.txt: An example output file with ASCII art generated from the sample image.

#### How it works
- Read the Image: Load the image into MATLAB.
- Resize and Normalize: Adjust the size and normalize the pixel values so they fall within a certain range, typically between 0 and 1. Resizing is suggested to avoid memory issues.
- Map Grayscale to ASCII: Convert the image to grayscale (black and white) then convert the grayscale values to corresponding ASCII characters. An existing map is used for assigning different characters to different levels of brightness.
- Build the ASCII Art: Iterate through the matrix and create the final ASCII art.

## Why is this project useful?
Turning a portrait into ASCII characters is a form of digital art where an image is represented using a combination of ASCII characters. It’s a fun and educational way to explore image processing techniques, and it’s also a great example of how to use MATLAB for creative projects. This project can serve as a stepping stone for more advanced image processing tasks. Plus, it’s a great conversation starter!

Don’t hesitate to reach out if you have any questions or need me to do a live script/notebook explaining every line of the code. Just don't blame me if you end up addicted to turning random images into ASCII!
