1) What are some common HTTP status codes?
	202: The most common status code thar represents a successful response.
	
	404: The most common ERROR status that means that the requested resource is no longer avalable(or cannot be found). Two common causes of these are types and the simple aging of the web.
	
	403: An error status that means access to the resources is forbidden, which can happen from an unapproved machine from the client-size, an invalid client certificate, etc.
	
	500: The catch-all server-side error, which appears when none of the other 500 codes make sense. Sometimes reloading the request can cause a different response.
	
	503: service unavailable, which basically means that the web server is not available at the current time. This could very well be 
	temporary, and can be caused by a server restart, maintenence, etc.
	
	504: Indicates a gateway timeout, can only happen in a setup that involvess a proxy server, and access to that server times out.

2) What is the difference between a GET and a POST request?
	A GET request is used for retrieving/requesting data from a specified resource, while a POST request submits data to be processed to a specified resource. 

	A GET request could be used when requesting to load a website, as we would simply be retrieving information from a web server. A POST request could be used when sending in a sign-up form, as that data is submitted to a resource in order to be processed in a specific way.

3) What is a cookie?
	A cookie is a samll file stored on a user's computer that hold data specific to a particular client and website. Cookies can be accessed by both the client-side and the server-side.
	
	Each cookie is effectively a small lookup table that contains pairs of key, data values (firsname, John) etc. These values can be found on the server-side and used to tailor a page to the particular user.
	
	Cookies are valuable and related to HTTP requests in that they are a convenient way to carry information from one session on a website to another, without wihout having to overwork the server machine with massive amounts of data storage. Cookies also help with convenience because by storing this data it is made possible to avoid repetitive things for the user, such as logging in every single time they visit a website, etc.
