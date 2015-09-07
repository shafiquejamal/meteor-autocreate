Accounts.config({
	sendVerificationEmail: true, 
	forbidClientAccountCreation: false
});

// https://gentlenode.com/journal/meteor-20-verify-an-email-with-meteor-accounts/42
Accounts.validateLoginAttempt(function(attempt){
  if (attempt.user && attempt.user.emails && !attempt.user.emails[0].verified ) {
    console.log('email not verified');
    return false; // the login is aborted
  }
  return true;
}); 
