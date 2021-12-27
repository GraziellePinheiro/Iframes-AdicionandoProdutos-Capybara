


describe "Login com cadastro", :login3 do

    before(:each) do
        visit "https://training-wheels-protocol.herokuapp.com/access"
    end
    it "Fazendo login com data de nascimento" do

        # login_form = find('#login')

        # login_form.find('input[name=username').set 'stark'
        # login_form.find('input[name=password').set 'jarvis!'
        # click_button "Entrar"     ou 


        within('#login') do
            find('input[name=username').set 'stark'
            find('input[name=password').set 'jarvis!'
            click_button "Entrar"

        end
        expect(find('#flash').text).to include "Olá, Tony Stark. Você acessou a área logada!"
    end

    it "cadastro com sucesso" do
        within('#signup') do
            find('input[name=username').set 'grazi'
            find('input[name=password').set '12345'
            click_link "Criar Conta"
        end
        expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
    end

 
end