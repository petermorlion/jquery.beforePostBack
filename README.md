jquery.beforePostBack is a jQuery plugin to subscribe to the postback of an ASP.NET page. 

ASP.NET won't always raise a 'submit' event (for example with LinkButtons), meaning you can't hook into it. This plugin creates a 'beforePostBack' event and raises it just before the actual post to the server occurs.

Usage is easy:

```javascript
    $.beforePostBack(function () {
		alert('Going to post back!');
	});
```
	
A common scenario is when you need to fill a hidden field just before posting back. For example, when you use KnockoutJS, you might want to serialize your viewmodel to JSON and put it in a hidden field so it is available server-side.
