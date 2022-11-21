# frozen_string_literal: true

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

RSpec.describe '/offices', type: :request do
  # Office. As you add validations to Office, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Office.create! valid_attributes
      get offices_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      office = Office.create! valid_attributes
      get office_url(office)
      expect(response).to be_successful
    end
  end

  # describe 'GET /new' do
  #   it 'renders a successful response' do
  #     get new_office_url
  #     expect(response).to be_successful
  #   end
  # end

  describe 'GET /edit' do
    it 'render a successful response' do
      office = Office.create! valid_attributes
      get edit_office_url(office)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Office' do
        expect do
          post offices_url, params: { office: valid_attributes }
        end.to change(Office, :count).by(1)
      end

      it 'redirects to the created office' do
        post offices_url, params: { office: valid_attributes }
        expect(response).to redirect_to(office_url(Office.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Office' do
        expect do
          post offices_url, params: { office: invalid_attributes }
        end.to change(Office, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post offices_url, params: { office: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested office' do
        office = Office.create! valid_attributes
        patch office_url(office), params: { office: new_attributes }
        office.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the office' do
        office = Office.create! valid_attributes
        patch office_url(office), params: { office: new_attributes }
        office.reload
        expect(response).to redirect_to(office_url(office))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        office = Office.create! valid_attributes
        patch office_url(office), params: { office: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested office' do
      office = Office.create! valid_attributes
      expect do
        delete office_url(office)
      end.to change(Office, :count).by(-1)
    end

    it 'redirects to the offices list' do
      office = Office.create! valid_attributes
      delete office_url(office)
      expect(response).to redirect_to(offices_url)
    end
  end
end
