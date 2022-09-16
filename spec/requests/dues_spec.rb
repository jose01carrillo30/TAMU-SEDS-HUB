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

RSpec.describe "/dues", type: :request do
  
  # Due. As you add validations to Due, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Due.create! valid_attributes
      get dues_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      due = Due.create! valid_attributes
      get due_url(due)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_due_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      due = Due.create! valid_attributes
      get edit_due_url(due)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Due" do
        expect {
          post dues_url, params: { due: valid_attributes }
        }.to change(Due, :count).by(1)
      end

      it "redirects to the created due" do
        post dues_url, params: { due: valid_attributes }
        expect(response).to redirect_to(due_url(Due.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Due" do
        expect {
          post dues_url, params: { due: invalid_attributes }
        }.to change(Due, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post dues_url, params: { due: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested due" do
        due = Due.create! valid_attributes
        patch due_url(due), params: { due: new_attributes }
        due.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the due" do
        due = Due.create! valid_attributes
        patch due_url(due), params: { due: new_attributes }
        due.reload
        expect(response).to redirect_to(due_url(due))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        due = Due.create! valid_attributes
        patch due_url(due), params: { due: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested due" do
      due = Due.create! valid_attributes
      expect {
        delete due_url(due)
      }.to change(Due, :count).by(-1)
    end

    it "redirects to the dues list" do
      due = Due.create! valid_attributes
      delete due_url(due)
      expect(response).to redirect_to(dues_url)
    end
  end
end
