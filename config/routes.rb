Rails.application.routes.draw do

get 'details/showpdf'
get 'particulars/pdfindex'
get 'details/showlast'
root to: 'details#homepage'
resources :details, :particulars

  
 
end
