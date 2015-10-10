// https://gentlenode.com/journal/meteor-20-verify-an-email-with-meteor-accounts/42
// https://github.com/ideaq/meteor-email

// http://meteorpedia.com/read/Environment_Variables
var emailAddress = process.env.EMAIL_ADDRESS;
var emailPassword = process.env.EMAIL_PASSWORD;
var emailServer = process.env.EMAIL_SERVER;

Meteor.startup(function () {
  smtp = {
    username: emailAddress,   // eg: server@gentlenode.com
    password: emailPassword,   // eg: 3eeP1gtizk5eziohfervU
    server:   emailServer,  // eg: mail.gandi.net
    port: 25
  }

  process.env.MAIL_URL = 'smtp://' + encodeURIComponent(smtp.username) + ':' + encodeURIComponent(smtp.password) + 
  	'@' + encodeURIComponent(smtp.server) + ':' + smtp.port;

});