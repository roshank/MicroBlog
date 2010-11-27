# by using the symbol ':user' , we get Factory Girl to simulate the User Model

Factory.define :user do |user|
  user.name		"Roshan Khan"
  user.email		"roshan.khan@gmail.com"
  user.password		"foobar"
  user.password_confirmation	"foobar"
end
