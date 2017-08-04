# Rails.application.routes.draw do

# get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square"})

# get("/flexible/sqrt/:a_number", { :controller => "calculations", :action => "flex_sqrt"})

# get("flexible/payment/:a_interest_rate/:a_number_of_years/:a_loan_of", { :controller => "calculations", :action => "flex_payment"})

# get("/flexible/rand/:a_low_number/:a_high_number", { :controller => "calculations", :action => "flex_rand"})
# # get("/flexible/rand/:a_number", { :controller => "calculations", :action => "flex_rand"})
# # get("/flexible/rand/50/100", { :controller => "calculations", :action => "flex_rand"})



# get("/square/new", { :controller => "calculations", :action => "square_form" })
# get("/square/results", { :controller => "calculations", :action => "process_square" })

# get("/square/new", { :controller => "calculations", :action => "square_form" })
# get("/square/results", { :controller => "calculations", :action => "process_square" })

# get("/sqrt/new", { :controller => "calculations", :action => "sqrt_form" })
# get("/sqrt/results", { :controller => "calculations", :action => "process_sqrt" })

# get("/payment/new", { :controller => "calculations", :action => "payment_form" })
# get("/payment/results", { :controller => "calculations", :action => "process_payment" })

# get("/rand/new", { :controller => "calculations", :action => "rand_form" })
# get("/rand/results", { :controller => "calculations", :action => "process_rand" })

# get("/wordcount/new", { :controller => "calculations", :action => "wordcount_form" })
# get("/wordcount/results", { :controller => "calculations", :action => "process_wordcount" })

# get("/statistics/new", { :controller => "calculations", :action => "statistics_form" })
# get("/statistics/results", { :controller => "calculations", :action => "process_statistics" })


# get("/:username", { :controller => "users", :action => "timothyschulte"})
# # WHEN YOU INPUT A COLON BEFORE AN ELEMENT, IT MAKES IT FLEXIBLE


#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   mount WebGit::Engine, at: "/rails/git"
# end


Rails.application.routes.draw do
  # no forms
  get("/flexible/square/:a_number" ,{:controller => "calculations" ,:action => "flex_square"})
  get("/flexible/square_root/:a_number" ,{:controller => "calculations" ,:action => "flex_square_root"})
  get("/flexible/payment/:rate/:years/:amount" ,{:controller => "calculations" ,:action => "payment"})
  get("/flexible/random/:a/:b" ,{:controller => "calculations" ,:action => "flex_random"})
  
  # forms
  get("/square/new" ,{:controller => "calculations" ,:action => "square_form"})
  get("/square/results" ,{:controller => "calculations" ,:action => "square_form_results"})
  
  get("/square_root/new" ,{:controller => "calculations" ,:action => "sqrt_form"})
  get("/sqrt/results" ,{:controller => "calculations" ,:action => "sqrt_form_results"})
  
  get("/payment/new" ,{:controller => "calculations" ,:action => "pay_form"})
  get("/payment/results" ,{:controller => "calculations" ,:action => "pay_form_results"})
  
  get("/random/new" ,{:controller => "calculations" ,:action => "rnd_form"})
  get("/rnd/results" ,{:controller => "calculations" ,:action => "rnd_form_results"})
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
