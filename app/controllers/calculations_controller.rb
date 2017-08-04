# class CalculationsController < ApplicationController
  
# # -----HEADER----FLEXIBLE SQUARE
#   def flex_square
#     # The incoming parameters for this action look like {"a_number"=>"5"}
#     # Rails stores that hash in a variable called params
    
#     @user_number = params["a_number"].to_i
#     @squared_number = @user_number**2
    
#     render("calculations/flexible_square_template.html.erb")
#   end
  
#   # -----HEADER----FLEXIBLE SQUARE ROOT
#   def flex_sqrt
#     # The incoming parameters for this action look like {"a_number"=>"5"}
#     # Rails stores that hash in a variable called params
    
#     @user_number = params["a_number"].to_i
#     # @sqrt_number = math.sqrt(@user_number)
#     @sqrt_number = @user_number**0.5
    
#     render("calculations/flexible_sqrt_template.html.erb")
#   end
  
#   # -----HEADER----FLEXIBLE PAYMENTS
#     #   def flex_payment
        
#     #     @user_interest_rate= ((params["a_interest_rate"].to_f)/100)
#     #     @number_of_years= params["a_number_of_years"].to_i
#     #     @loan_amount= params["a_loan_of"].to_f
       
#     #     @payment= ((@user_interest_rate*@loan_amount)/((1-(1+@user_interest_rate)**((-1*@number_of_years)*12))/1000))/1000000
        
#     #     render("calculations/flexible_payment_template.html.erb")
#     # end
  
#   def flex_payment
        
#         @user_interest_rate= params["a_interest_rate"].to_f
#         @number_of_years= params["a_number_of_years"].to_i
#         @loan_amount= params["a_loan_of"].to_f
#           apr = params["a_interest_rate"].to_f
#           years = params["a_number_of_years"].to_i
#           principal = params["a_loan_of"].to_f
#           monthly = apr / 12
#           months = years * 12
       
#         @payment= ((monthly / 100) * principal) / (1 - (1 / ((1 + (monthly / 100)) ** months)))
        
#         render("calculations/flexible_payment_template.html.erb")
#     end
  
  
#     #   @apr = params[:annual_percentage_rate].to_f
#     # @years = params[:number_of_years].to_i
#     # @principal = params[:principal_value].to_f

 
#     # apr = params[:annual_percentage_rate].to_f
#     # years = params[:number_of_years].to_i
#     # principal = params[:principal_value].to_f
#     # monthly = apr / 12
#     # months = years * 12
    
#     # @monthly_payment = ((monthly / 100) * principal) / (1 - (1 / ((1 + (monthly / 100)) ** months)))
  
  
# # -----HEADER----FLEXIBLE RANDOM
#     def flex_rand
        
#     @user_min= params["a_low_number"].to_i
#     @user_max= params["a_high_number"].to_i
        
#       if (@user_max > @user_min)
#         puts @rand_number= @user_min + rand((@user_max-@user_min))
      
#       elsif (@user_min > @user_max)
#         puts @rand_number= @user_max + rand((@user_min-@user_max))
            
#         end
        
#       render("calculations/flexible_rand_template.html.erb")
#     end
  
# # -----HEADER----FORM SQUARE
#       def square_form
#     # The incoming parameters for this action look like {"a_number"=>"5"}
#     # Rails stores that hash in a variable called params
    
#     @user_number = params["a_number"].to_i
#     @squared_number = @user_number**2
    
#     render("calculations/square_form_rand_template.html.erb")
#   end
  
#     def process_square

#     @user_number = params["the_user_number"].to_i
#     @squared_number = @user_number**2
    
#     render("calculations/square_results_template.html.erb")
#   end
  
  
# # -----HEADER----FORM SQUARE ROOT
#       def sqrt_form
#     # The incoming parameters for this action look like {"a_number"=>"5"}
#     # Rails stores that hash in a variable called params
    
#     @user_number = params["a_number"].to_i
#     @sqrt_number = @user_number**0.5
    
#     render("calculations/sqrt_form_rand_template.html.erb")
#   end
  
#     def process_sqrt

#     @user_number = params["the_user_number"].to_i
#     @sqrt_number = @user_number**0.5
    
#     render("calculations/sqrt_results_template.html.erb")
#   end
  
# # -----HEADER----FORM PAY
#         def payment_form
#         @user_interest_rate= params["a_interest_rate"].to_f
#         @number_of_years= params["a_number_of_years"].to_i
#         @loan_amount= params["a_loan_of"].to_f
#           apr = params["a_interest_rate"].to_f
#           years = params["a_number_of_years"].to_i
#           principal = params["a_loan_of"].to_f
#           monthly = apr / 12
#           months = years * 12
       
#         @payment= ((monthly / 100) * principal) / (1 - (1 / ((1 + (monthly / 100)) ** months)))
    
#     render("calculations/payment_form_rand_template.html.erb")
#   end
  
#     def process_payment

#         @user_interest_rate= params["a_interest_rate"].to_f
#         @number_of_years= params["a_number_of_years"].to_i
#         @loan_amount= params["a_loan_of"].to_f
#           apr = params["a_interest_rate"].to_f
#           years = params["a_number_of_years"].to_i
#           principal = params["a_loan_of"].to_f
#           monthly = apr / 12
#           months = years * 12
       
#         @payment= ((monthly / 100) * principal) / (1 - (1 / ((1 + (monthly / 100)) ** months)))
    
#     render("calculations/payment_results_template.html.erb")
#   end
  
  
# # -----HEADER----FORM RANDOM
#         def rand_form
#     @user_min= params["a_low_number"].to_i
#     @user_max= params["a_high_number"].to_i
        
#       if (@user_max > @user_min)
#         puts @rand_number= @user_min + rand((@user_max-@user_min))
      
#       elsif (@user_min > @user_max)
#         puts @rand_number= @user_max + rand((@user_min-@user_max))
            
#         end
        
#       render("calculations/rand_form_rand_template.html.erb")
#     end
  
#       def process_rand
    
#     @user_min= params["a_low_number"].to_i
#     @user_max= params["a_high_number"].to_i
        
#       if (@user_max > @user_min)
#         puts @rand_number= @user_min + rand((@user_max-@user_min))
      
#       elsif (@user_min > @user_max)
#         puts @rand_number= @user_max + rand((@user_min-@user_max))
            
#         end
        
#       render("calculations/rand_results_template.html.erb")
#     end
  
  
#   # -----HEADER----FORM WORDCOUNT
#         def wordcount_form


#           @text = params["user_text"]
          
#           @special_word = params["special_word"]
          
#           text = params["user_text"].to_s.downcase.gsub(/[^a-z0-9\s]/i, "")
#           text1 = params["user_text"].to_s.downcase
          
#           @word_count = text.split.count
          
#           @character_count_with_spaces = text1.length
          
#           @character_count_without_spaces =text1.gsub(/\s+/, "").length
          
#           @occurrences = text.split.count(@special_word)
          
#       render("calculations/wordcount_form_rand_template.html.erb")
#     end
  
#       def process_wordcount
#           @text = params["user_text"]
          
#           @special_word = params["special_word"]
          
#           text = params["user_text"].to_s.downcase.gsub(/[^a-z0-9\s]/i, "")
#           text1 = params["user_text"].to_s.downcase
          
#           @word_count = text.split.count
          
#           @character_count_with_spaces = text1.length
          
#           @character_count_without_spaces =text1.gsub(/\s+/, "").length
          
#           @occurrences = text.split.count(@special_word)
          
        
#       render("calculations/wordcount_results_template.html.erb")
#     end


#   # -----HEADER----FORM STATISTICS
#           def statistics_form
#               @numbers = params["list_of_numbers"]
#               # .gsub(',', '').split.map(&:to_f)
#               # @numbers = params["list_of_numbers"].to_s.downcase.gsub(/\s+/, '')
#               # @numbers = params["list_of_numbers"]
#               # @numbers = params["list_of_numbers"].gsub(" ", "+").split.map(&:to_f)
#               @sorted_numbers = @numbers.sort
#               sorted = @numbers.sort
#               @count = @numbers.count
#               count = @numbers.count
#               @minimum = @numbers.min
#               min = @numbers.min
#               @maximum = @numbers.max
#               max = @numbers.max
#               @range = max - min
              
#               def median(array)
#                 sorted = array.sort
#                 len = sorted.length
#                 (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
#               end
#               @median = median(@numbers)
              
#               @sum = @numbers.sum
#               sum = @numbers.sum
              
#               @mean = sum / count
              
#               variance = @numbers.map { |i| (i - @mean)**2 }.sum / @count
#               @variance = variance
              
#               stdv = @variance**0.5    
#               @standard_deviation = stdv
              
#               @mode = @numbers.sort
#               .chunk {|e| e}
#               .map { |e,a| [e, a.size] }
#               .sort_by { |_,cnt| -cnt }
#               .chunk(&:last)
#               .first
#               .last
#               .map(&:first)
#               .last

#       render("calculations/statistics_form_rand_template.html.erb")
#     end
  
  
#       def process_statistics
#               @numbers = params["list_of_numbers"]
#               # .gsub(',', '').split.map(&:to_f)
#               # @numbers = params["list_of_numbers"].to_s.downcase.gsub(/\s+/, '')
#               # @numbers = params["list_of_numbers"].gsub(" ", "+")
#               # @numbers = params["list_of_numbers"].gsub(" ", "+").split.map(&:to_f)
#               @sorted_numbers = @numbers.sort
#               sorted = @numbers.sort
#               @count = @numbers.count
#               count = @numbers.count
#               @minimum = @numbers.min
#               min = @numbers.min
#               @maximum = @numbers.max
#               max = @numbers.max
#               @range = max - min
              
#               def median(array)
#                 sorted = array.sort
#                 len = sorted.length
#                 (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
#               end
#               @median = median(@numbers)
              
#               @sum = @numbers.sum
#               sum = @numbers.sum
              
#               @mean = sum / count
              
#               variance = @numbers.map { |i| (i - @mean)**2 }.sum / @count
#               @variance = variance
              
#               stdv = @variance**0.5    
#               @standard_deviation = stdv
              
#               @mode = @numbers.sort
#               .chunk {|e| e}
#               .map { |e,a| [e, a.size] }
#               .sort_by { |_,cnt| -cnt }
#               .chunk(&:last)
#               .first
#               .last
#               .map(&:first)
#               .last
        
#       render("calculations/statistics_results_template.html.erb")
#     end
  
  
  
  
  
  
  
  
# end






class CalculationsController < ApplicationController
    def flex_square
        @result = params["a_number"].to_i**2
        render("calculations/flexible_square_template.html.erb")
    end
    def flex_square_root
        @result = params["a_number"].to_i**(0.5)
        render("calculations/flexible_square_root_template.html.erb")
    end
    def payment
        @rate = params["rate"].to_f/100
        @years = params["years"].to_i
        @amount = params["amount"].to_f
        @result = if @rate==0 
          @amount/@years/12
        else 
          @rate/1200*@amount / (1-(1+@rate/1200)**(-@years*12))
        end
        render("calculations/flexible_payment_template.html.erb")
    end
    def flex_random
        @low = params["a"].to_i
        @high = params["b"].to_i
        @result = rand(@low..@high)
        render("calculations/flexible_random_template.html.erb")
    end
    
    def square_form
        render("calculations/square_form_template.html.erb")
    end
    def square_form_results
        @result = params["user_number"].to_f**2
        render("calculations/square_form_results_template.html.erb")
    end
    
    def sqrt_form
        render("calculations/sqrt_form_template.html.erb")
    end
    def sqrt_form_results
        @result = params["user_number"].to_f**(0.5)
        render("calculations/sqrt_form_results_template.html.erb")
    end
    
    def pay_form
        render("calculations/pay_form_template.html.erb")
    end
    def pay_form_results
        @rate = params["rate"].to_f
        @years = params["years"].to_i
        @amount = params["amount"].to_f
        @result = if @rate==0 
          @amount/@years/12
        else 
          @rate/1200*@amount / (1-(1+@rate/1200)**(-@years*12))
        end
        render("calculations/pay_form_results_template.html.erb")
    end
    
    def rnd_form
        render("calculations/rnd_form_template.html.erb")
    end
    def rnd_form_results
        @low = params["a"].to_f
        @high = params["b"].to_f
        @result = rand()*(@high-@low) + @low
        render("calculations/rnd_form_results_template.html.erb")
    end
end