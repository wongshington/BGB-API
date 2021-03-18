require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do    
    # Minimal set of attributes required to create a valid User
     let(:valid_user) {
        { :uid => 118, :email => "Test2@email.com", :password => "password2", :password_confirmation => "password2", :date_of_birth => Date.new(2015, 12, 8), :name => "test name" }
    }
    
    # Minimal set of attributes required to login a valid User
    let(:valid_login) {
        { :uid => 117, :email => "test1@test.com", :password => "password" }
    }

    describe "GET #show" do
        it { should route(:get, '/api/v1/users/1').to(action: :show, id: 1) }
    end

    describe "GET #index" do
        it { should route(:get, '/api/v1/users').to(action: :index) }

        before { get :index }
        it { should respond_with(200) }

        # login the user first using a helper function
        # login_user

        # it "returns a success response when providing valid credentials" do

        #     user1 = User.find_by(email: valid_login[:email])
        #     request.headers.merge! (user1).create_new_auth_token

        #     get :index, params: {}
        
        #     expect(response).to be_successful # be_successful expects a HTTP Status code of 200
        # end
    end

    describe "POST #create" do    

        it "can create a valid user" do
            post :create, 
                params: {user: valid_user}
        
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
        end

        it "can NOT create an invalid user" do

            post :create, params: {user: {password: "nope", email: "not it", name: "wrong name"}}
        
            expect(response.status).to eq(400) # unsuccessful 400 status response
        end

    
    end

end