


describe "Login2", :login2 do

    before(:each) do
        visit "https://training-wheels-protocol.herokuapp.com/login2"
    end
    it "Fazendo login com data de nascimento" do
        

        find('#userId').set 'stark'
        find('#passId').set  'jarvis!'

        login_form = find('#login')

        case login_form.text
        when /Dia/
            find('#day').set "09"
        when /Mês/
            find('#month').set "03"
        when /year/
            find('#year').set "1993"
        end
            
            sleep 5
        
        click_button "Login"
        

        #puts find('#flash').visible?

        expect(find('#flash').text).to include "Olá, Tony Stark. Você acessou a área logada!"
    end

 
end