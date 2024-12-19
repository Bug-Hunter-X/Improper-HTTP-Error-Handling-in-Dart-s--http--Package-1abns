# Dart HTTP Error Handling Bug

This repository demonstrates a common error in Dart applications that use the `http` package for making network requests.  The provided code only checks for a successful response (status code 200), neglecting various other potential HTTP error codes which can provide useful information for debugging and handling errors gracefully.

The `bug.dart` file contains the flawed code.  The `bugSolution.dart` file offers a corrected version which handles HTTP errors effectively.

## Bug Description

The original code fails to adequately handle HTTP error responses other than 200.  This can lead to unexpected application behavior and difficulty in debugging network issues.

## Solution

The corrected code uses a `switch` statement to process different HTTP status codes more gracefully.  It provides more informative error messages based on the nature of the error and enables more refined error handling within the application.