jquery.beforePostBack is a jQuery plugin to subscribe to the postback of an ASP.NET page. 

ASP.NET won't always raise a 'submit' event (for example with LinkButtons), meaning you can't hook into it. This plugin allows you to execute javascript before the postback happens and optionally stop it. Returning false will stop the postback. Anything else will let the postback continue.

Usage is easy:

```javascript
    $.beforePostBack(function () {
		if (dontPostback) {
			return false;
		} else {
			alert('Going to post back!');
		}
	});
```
	
A common scenario is when you need to fill a hidden field just before posting back. For example, when you use KnockoutJS, you might want to serialize your viewmodel to JSON and put it in a hidden field so it is available server-side.
