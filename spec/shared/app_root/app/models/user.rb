class User < ActiveRecord::Base

  search_syntax do

    search_by :text do |scope, text|
      scope.where_like([:name, :email, :city] => text)
    end

    search_by :city do |scope, city|
      scope.scoped(:conditions => { :city => city })
    end

    search_by :email do |scope, email|
      scope.scoped(:conditions => { :email => email })
    end

  end

end

