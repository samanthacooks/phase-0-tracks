2. Some common http status codes are:
      200: OK
      302: Found
      403: Forbidden
      404: Error
      500: Internal Server Error


3. Differences between a GET request and a POST request are:
    - A GET request remain in browser history since it is a part of the url and a POST request is not saved in the browser history
    - A GET request can be bookmarked, a POST can't
    - GET requests are restricted to only ASCII characters when POST requests have no restrictions and even allow binary data
    - GET requests are visible to everyone when POST requests are not displayed
    - GET requests are less secure compared to POST since it's saved in the browser history and server logs
  
  One may use a GET request for a simple blog page while a POST request would be used for a page that needs to be more secure, like changing an online banking password.


4. A cookie is a small piece of data sent from a website a user is browsing to a user's computer. It's almost like a historical log about the types of websites and pages the user frequents as well as passwords, user names, and site preferences. Cookies are sent for every http request and can sometimes become a burden on performance.
