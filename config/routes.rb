Rails.application.routes.draw do

get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square"})
get("/flexible/sqrt/:a_number", { :controller => "calculations", :action => "flex_sqrt"})
get("/flexible/pay/:a_number", { :controller => "calculations", :action => "flex_pay"})
get("/flexible/rand/:a_number", { :controller => "calculations", :action => "flex_rand"})

get("/square/new", { :controller => "calculations", :action => "square_form" })
get("/square/results", { :controller => "calculations", :action => "process_square" })

get("/square/new", { :controller => "calculations", :action => "square_form" })
get("/square/results", { :controller => "calculations", :action => "process_square" })

get("/sqrt/new", { :controller => "calculations", :action => "sqrt_form" })
get("/sqrt/results", { :controller => "calculations", :action => "process_sqrt" })

get("/pay/new", { :controller => "calculations", :action => "pay_form" })
get("/pay/results", { :controller => "calculations", :action => "process_pay" })

get("/rand/new", { :controller => "calculations", :action => "rand_form" })
get("/rand/results", { :controller => "calculations", :action => "process_rand" })






get("/:username", { :controller => "users", :action => "timothyschulte"})
# WHEN YOU INPUT A COLON BEFORE AN ELEMENT, IT MAKES IT FLEXIBLE


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
