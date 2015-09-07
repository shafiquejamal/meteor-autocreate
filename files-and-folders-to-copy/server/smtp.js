// https://gentlenode.com/journal/meteor-20-verify-an-email-with-meteor-accounts/42
// https://github.com/ideaq/meteor-email
Meteor.startup(function () {
  	smtp = {
    	username: 'your_username',   // eg: server@gentlenode.com
    	password: 'your_password',   // eg: 3eeP1gtizk5eziohfervU
    	server:   'smtp.gmail.com',  // eg: mail.gandi.net
    	port: 25
  	}

	process.env.MAIL_URL = 'smtp://' + encodeURIComponent(smtp.username) + ':' + 
		encodeURIComponent(smtp.password) + '@' + encodeURIComponent(smtp.server) + ':' + smtp.port;
	
});