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

RSpec.describe "/keys", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Key. As you add validations to Key, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Key.create! valid_attributes
      get keys_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      key = Key.create! valid_attributes
      get key_url(key)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_key_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      key = Key.create! valid_attributes
      get edit_key_url(key)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Key" do
        expect {
          post keys_url, params: { key: valid_attributes }
        }.to change(Key, :count).by(1)
      end

      it "redirects to the created key" do
        post keys_url, params: { key: valid_attributes }
        expect(response).to redirect_to(key_url(Key.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Key" do
        expect {
          post keys_url, params: { key: invalid_attributes }
        }.to change(Key, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post keys_url, params: { key: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested key" do
        key = Key.create! valid_attributes
        patch key_url(key), params: { key: new_attributes }
        key.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the key" do
        key = Key.create! valid_attributes
        patch key_url(key), params: { key: new_attributes }
        key.reload
        expect(response).to redirect_to(key_url(key))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        key = Key.create! valid_attributes
        patch key_url(key), params: { key: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested key" do
      key = Key.create! valid_attributes
      expect {
        delete key_url(key)
      }.to change(Key, :count).by(-1)
    end

    it "redirects to the keys list" do
      key = Key.create! valid_attributes
      delete key_url(key)
      expect(response).to redirect_to(keys_url)
    end
  end
end