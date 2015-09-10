Router.configure({
	layoutTemplate: 'layout',
	loadingTemplate: 'loading',
	notFoundTemplate: 'notFound'
});

Router.map(function(){
	this.route('checkemail', {
        path: '/checkemail',
        template: 'checkemail'
    });

	this.route('home', {
		path: '/',
		template: 'home'
	});

});
