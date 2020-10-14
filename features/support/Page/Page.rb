class PagesTests
    include Capybara::DSL

    def espera
        sleep(3)
    end
    
    def acessa
        visit('/')
    end    
    
end