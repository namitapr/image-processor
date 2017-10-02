************************************************************
Name: Namita Prakash
Email: namitapr@usc.edu

************************************************************
Pre-lab Questions:

----------
Question 1
----------

Since we pad with N/2 rows and columns all around the
original image and the maximum kernel size is 11x11, the
maximum amount of padding needed would be 5 rows both
above and below the image plus 5 columns both to the right
and left of the image. Therefore, we will be adding a total
of 10 pixels to both dimensions, so the size of the largest
padded image needed would be 266x266.

The index of the upper-left pixel of the original image would
be [N/2][N/2]. 

The lower-right pixel would be at index [255+N/2][255+N/2].

----------
Question 2 
----------

Raw Gaussian Kernel:
|0.7788    0.8825    0.7788|
|0.8825    1         0.8825|
|.7788     0.8825    0.7788|

Normalized Gaussian Kernel:
|0.1019    0.1154    0.1019|
|0.1154    0.1308    0.1154|
|0.1019    0.1154    0.1019|

Using the raw kernel values instead of the normalized ones 
would change the brightness of the image overall.

************************************************************
Experimentation Questions:

----------
First Task
----------

N constant, sigma varied
As sigma changed, there was no immediately obvious change to
the image.

N varied, sigma constant
As N increases, the image becomes more blurred.	

-----------
Second Task
-----------
Sobel appears to remove most of the color from the images and
emphasize the edges and outlines of the items in the photos.

----------
Third Task
----------
The Gaussian blur function generates an image that is evenly
blurred with smoother edges. In order to be reversed, a
function that added detail or removed blurring for the
entire image would be necessary. Unsharp mask, however, only
focuses on the areas of the image with the most detail and
enhances only those components, and not the entire image,
so the two processes likely will not reverse each other.


***********************************************************
Extra Question:

With a kernel of size 3 and an 
image of 256x256 pixels, the
program multiples each of the 
9 different values in the
kernel with a pixel value and 
then adds all those values to
generate one new pixel value. 
This takes place for every
pixel in the image. 
Therefore, a size 3 kernel would 
need roughly 
(N^2 + 1)*(# of pixels) calculations, 
or 65,536(N^2 + 1). This equation suggests that 
as N grows, the number of calculations 
the program performs will 
increase at a polynomial rate.

************************************************************