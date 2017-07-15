class CalculationsController < ApplicationController
  
  
  def flex_square
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["a_number"].to_i
    @squared_number = @user_number**2
    
    render("calculations/flexible_square_template.html.erb")
  end
  
  
   def flex_sqrt
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["a_number"].to_i
    @sqrt_number = math.sqrt(@user_number)
    # @sqrt_number = @user_number**(1/2)
    
    render("calculations/flexible_sqrt_template.html.erb")
  end
  
  
     def flex_pay
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    # @user_number_apr = params["a_number"].to_f
    # @user_number_yrs = params["a_number"].to_i
    # @user_number_principal = params["a_number"].to_f
    
    # @user_number_apr = params[:annual_percentage_rate].to_f
    # @user_number_yrs = params[:number_of_years].to_i
    # @user_number_principal = params[:principal_value].to_f
    
    @user_number_apr = params["annual_percentage_rate"].to_f
    @user_number_yrs = params["number_of_years"].to_i
    @user_number_principal = params["principal_value"].to_f
    
    # apr = params[:annual_percentage_rate].to_f
    # years = params[:number_of_years].to_i
    # principal = params[:principal_value].to_f
    monthly = @user_number_apr / 12
    months = @user_number_yrs * 12
    
    @pay_number = ((monthly / 100) * @user_number_principal) / (1 - (1 / ((1 + (monthly / 100)) ** months)))
    
    
    # @user_number = params["a_number"].to_i
    # @pay_number = @user_number**1/2
    
    
    render("calculations/flexible_pay_template.html.erb")
  end
  
  
     def flex_rand
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
  
    @rand_number = rand(100)
    
    render("calculations/flexible_rand_template.html.erb")
  end
  
  
      def square_form
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["a_number"].to_i
    @squared_number = @user_number**2
    
    render("calculations/square_form_rand_template.html.erb")
  end
  
    def process_square

    @user_number = params["the_user_number"].to_i
    @squared_number = @user_number**2
    
    render("calculations/square_results_template.html.erb")
  end
  
  
    
      def sqrt_form
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["a_number"].to_i
    @sqrt_number = @user_number**1/2
    
    render("calculations/sqrt_form_rand_template.html.erb")
  end
  
    def process_sqrt

    @user_number = params["the_user_number"].to_i
    @sqrt_number = @user_number**1/2
    
    render("calculations/sqrt_results_template.html.erb")
  end
  
  
        def pay_form
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["a_number"].to_i
    @sqrt_number = @user_number**1/2
    
    render("calculations/pay_form_rand_template.html.erb")
  end
  
    def process_pay

    @user_number = params["the_user_number"].to_i
    @sqrt_number = @user_number**1/2
    
    render("calculations/pay_results_template.html.erb")
  end
  
  
        def rand_form
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["a_number"].to_i
    @rand_number = rand(100)
    
    render("calculations/rand_form_rand_template.html.erb")
  end
  
    def process_rand

    @user_number = params["the_user_number"].to_i
    @rand_number = rand(100)
    
    render("calculations/rand_results_template.html.erb")
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end