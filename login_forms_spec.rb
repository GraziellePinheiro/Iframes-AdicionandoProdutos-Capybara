

describe "Forms" do
    it "Login na Pagina" do
        
        visit "https://training-wheels-protocol.herokuapp.com/login" 

        fill_in "userId", with: "stark"
        fill_in "password", with: "jarvis!"

        click_button "Login"

        expect(find("#flash").visible?).to be true

        expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"
    end

    it "Senha incorreta", :senha do
        
        visit "https://training-wheels-protocol.herokuapp.com/login" 

        fill_in "userId", with: "stark"
        fill_in "password", with: "jarvis"

        click_button "Login"

        expect(find("#flash").visible?).to be true

        expect(find("#flash").text).to include "Senha é invalida!"
    end

    it "usuario nao cadastrado" do
        
        visit "https://training-wheels-protocol.herokuapp.com/login" 

        fill_in "userId", with: "sta"
        fill_in "password", with: "jarvis"

        click_button "Login"

        expect(find("#flash").visible?).to be true
        expect(find("#flash").text).to include "O usuário informado não está cadastrado!"
        
    end
end

