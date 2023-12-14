# Bulk Image Download Script

The function will take a URL as an argument.
It will try to download the image from the URL.
If the download is successful, it will increment the number in the URL and repeat.
If the URL does not exist (e.g., the server returns a 404 error), it will stop.

```js
function downloadImages(baseUrl) {
    // This function will attempt to load an image to check if it exists
    function tryLoadImage(url, onSuccess, onFailure) {
        let img = new Image();
        img.onload = onSuccess;
        img.onerror = onFailure;
        img.src = url;
    }

    // This function recursively attempts to download images
    function attemptDownload(url) {
        tryLoadImage(url,
            () => {
                // If image loads successfully, create a link and trigger download
                let a = document.createElement('a');
                a.href = url;
                a.download = url.split('/').pop();
                document.body.appendChild(a);
                a.click();
                document.body.removeChild(a);

                // Increment the number in the URL
                let nextUrl = url.replace(/(\d+)(?=\.\w+$)/, function(match) {
                    return parseInt(match) + 1;
                });

                // Recursively call the function with the updated URL
                attemptDownload(nextUrl);
            },
            () => {
                // If image fails to load, stop the process
                console.log('Download stopped. No image found at:', url);
            }
        );
    }

    // Start the download process
    attemptDownload(baseUrl);
}

// Use the function like this:
// downloadImages('https://www.gotceleb.com/wp-content/uploads/photos/pixie-lott/in-white-dress-out-in-london/Pixie-Lott-in-White-Dress--13.jpg');
```

To update the function to maintain the padding in the numbers (for example, to increment from 01 to 02, 03, etc.), you need to modify how the number incrementing is handled. Here's an updated version of the function that keeps the padding:

```js
function downloadImages(baseUrl) {
    // This function will attempt to load an image to check if it exists
    function tryLoadImage(url, onSuccess, onFailure) {
        let img = new Image();
        img.onload = onSuccess;
        img.onerror = onFailure;
        img.src = url;
    }

    // This function is used to increment the number in the URL while keeping padding
    function incrementNumberInUrl(url) {
        return url.replace(/(\d+)(?=\.\w+$)/, function(match) {
            // Determine the length of the number's padding
            let paddingLength = match.length;
            // Increment the number and pad it with zeros to maintain the original length
            let incrementedNumber = parseInt(match, 10) + 1;
            return incrementedNumber.toString().padStart(paddingLength, '0');
        });
    }

    // This function recursively attempts to download images
    function attemptDownload(url) {
        tryLoadImage(url,
            () => {
                // If image loads successfully, create a link and trigger download
                let a = document.createElement('a');
                a.href = url;
                a.download = url.split('/').pop();
                document.body.appendChild(a);
                a.click();
                document.body.removeChild(a);

                // Increment the number in the URL and keep padding
                let nextUrl = incrementNumberInUrl(url);

                // Recursively call the function with the updated URL
                attemptDownload(nextUrl);
            },
            () => {
                // If image fails to load, stop the process
                console.log('Download stopped. No image found at:', url);
            }
        );
    }

    // Start the download process
    attemptDownload(baseUrl);
}

// Use the function like this:
// downloadImages('https://www.gotceleb.com/wp-content/uploads/photos/pixie-lott/in-white-dress-out-in-london/Pixie-Lott-in-White-Dress--01.jpg');
```

In this updated version, the incrementNumberInUrl function is used to handle the incrementing of the number in the URL while keeping the padding intact. The number's length is preserved by padding with zeros using the padStart method. This ensures that the format of the URL remains consistent with the original format.


## Cool the script worked all the way to 10 but then it stopped

Great to hear that the script worked up to 10! The script likely stopped because it reached a URL where no image was available, which is the intended behavior to prevent endless attempts to download non-existent images.

If you know there are more images beyond 10 and want to continue the process, you can either:

Manually Adjust the Starting Point: Start the script again with a URL that has the next starting number. For instance, if it stopped at 10, you might start again at 11.

Automatically Continue After a Miss: Modify the script to allow a certain number of failed attempts before stopping. This way, if it encounters a missing image, it will try a few more numbers before giving up.

Here's an updated version of the script with the second approach, allowing for a few missed images before stopping:

## Allow Misses

```js
function downloadImages(baseUrl, allowedMisses = 3) {
    let misses = 0; // Counter for missed images

    function tryLoadImage(url, onSuccess, onFailure) {
        let img = new Image();
        img.onload = onSuccess;
        img.onerror = onFailure;
        img.src = url;
    }

    function incrementNumberInUrl(url) {
        return url.replace(/(\d+)(?=\.\w+$)/, function(match) {
            let number = parseInt(match, 10) + 1;
            return number.toString().padStart(match.length, '0');
        });
    }

    function attemptDownload(url) {
        tryLoadImage(url,
            () => {
                let a = document.createElement('a');
                a.href = url;
                a.download = url.split('/').pop();
                document.body.appendChild(a);
                a.click();
                document.body.removeChild(a);

                misses = 0; // Reset misses on successful download
                let nextUrl = incrementNumberInUrl(url);
                attemptDownload(nextUrl);
            },
            () => {
                if (misses < allowedMisses) {
                    misses++;
                    let nextUrl = incrementNumberInUrl(url);
                    attemptDownload(nextUrl);
                } else {
                    console.log('Download stopped after', allowedMisses, 'missed images.');
                }
            }
        );
    }

    attemptDownload(baseUrl);
}

// Usage
// downloadImages('https://www.gotceleb.com/wp-content/uploads/photos/pixie-lott/in-white-dress-out-in-london/Pixie-Lott-in-White-Dress--01.jpg');
```