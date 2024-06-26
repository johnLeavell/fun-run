require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/user_runs", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # UserRun. As you add validations to UserRun, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      UserRun.create! valid_attributes
      get user_runs_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      user_run = UserRun.create! valid_attributes
      get user_run_url(user_run)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_user_run_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      user_run = UserRun.create! valid_attributes
      get edit_user_run_url(user_run)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new UserRun" do
        expect {
          post user_runs_url, params: { user_run: valid_attributes }
        }.to change(UserRun, :count).by(1)
      end

      it "redirects to the created user_run" do
        post user_runs_url, params: { user_run: valid_attributes }
        expect(response).to redirect_to(user_run_url(UserRun.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new UserRun" do
        expect {
          post user_runs_url, params: { user_run: invalid_attributes }
        }.to change(UserRun, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post user_runs_url, params: { user_run: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user_run" do
        user_run = UserRun.create! valid_attributes
        patch user_run_url(user_run), params: { user_run: new_attributes }
        user_run.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the user_run" do
        user_run = UserRun.create! valid_attributes
        patch user_run_url(user_run), params: { user_run: new_attributes }
        user_run.reload
        expect(response).to redirect_to(user_run_url(user_run))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        user_run = UserRun.create! valid_attributes
        patch user_run_url(user_run), params: { user_run: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested user_run" do
      user_run = UserRun.create! valid_attributes
      expect {
        delete user_run_url(user_run)
      }.to change(UserRun, :count).by(-1)
    end

    it "redirects to the user_runs list" do
      user_run = UserRun.create! valid_attributes
      delete user_run_url(user_run)
      expect(response).to redirect_to(user_runs_url)
    end
  end
end
