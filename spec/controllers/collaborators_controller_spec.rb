require 'spec_helper'

describe CollaboratorsController do
  #let!(:fanny) { create(:user, first_name: 'Fanny') }
  #let!(:hank) { create(:user, first_name: 'Hank') }
  #let!(:hanky) { create(:user, first_name: 'Hanky') }
  #let!(:extension) { create(:extension, owner: fanny) }
  #let!(:existing_collaborator) { create(:user, collaborated_extensions: [extension]) }

  describe 'GET #index' do
    #before do
      #sign_in fanny
    #end

    it 'returns only collaborators matching the query string' do
      pending
      raise
      #get :index, params: {extension_id: extension.id, q: 'hank', format: :json}
      #collaborators = assigns[:collaborators]
      #expect(collaborators.count(:all)).to eql(2)
      #expect(collaborators.first).to eql(hank)
      #expect(response).to be_success
    end

    it "doesn't return users that are ineligible" do
      pending
      raise
      #get :index, params: {extension_id: extension.id, format: :json, ineligible_user_ids: [fanny.id, existing_collaborator.id]}
      #collaborators = assigns[:collaborators]
      #expect(collaborators.size).to eql(2)
      #expect(collaborators).to include(hank)
      #expect(collaborators).to include(hanky)
      #expect(collaborators).to_not include(fanny)
      #expect(collaborators).to_not include(existing_collaborator)
      #expect(response).to be_success
    end
  end

  describe 'destructive updates' do
    describe 'POST #create' do
      it 'creates a collaborator if the signed in user is the resource owner' do
        pending
        raise
        #sign_in fanny

        #expect do
        #  post :create, params: { collaborator: { user_ids: hank.id, resourceable_type: 'Extension', resourceable_id: extension.id } }
        #end.to change { Collaborator.count }.by(1)
        #expect(response).to redirect_to(extension)
      end

      it 'sends the collaborator an email' do
        pending
        raise
        #sign_in fanny

        
        #Sidekiq::Testing.inline! do
        #  expect do
        #    post :create, params: { collaborator: { user_ids: hank.id, resourceable_type: 'Extension', resourceable_id: extension.id } }
        #  end.to change { ActionMailer::Base.deliveries.size }.by(1)
        #end
      end

      it 'fails if the signed in user is not the resource owner' do
        pending
        raise
        #sign_in hanky

        #expect do
        #  post :create, params: { collaborator: { user_ids: hank.id, resourceable_type: 'Extension', resourceable_id: extension.id } }
        #end.to_not change { Collaborator.count }

        expect(response.status).to eql(404)
      end

      it 'does not include the resource owner if the resource owner tries to add themselves as a contributor' do
        pending
        raise
        #sign_in fanny

        #expect do
        #  post :create, params: { collaborator: { user_ids: fanny.id, resourceable_type: 'Extension', resourceable_id: extension.id } }
        #end.to change { Collaborator.count }.by(0)
      end

      it 'returns a 404 if an unknown resource type is in the params' do
        pending
        raise
        #sign_in fanny

        #post :create, params: { collaborator: { user_ids: hank.id, resourceable_type: 'Butter', resourceable_id: extension.id } }

        #expect(response.status).to eql(404)
      end
    end

    describe 'DELETE #destroy' do
      #let!(:collaborator) { create(:extension_collaborator, resourceable: extension, user: hank) }

      it 'deletes a collaborator if the signed in user is the resource owner' do
        pending
        raise
        #sign_in fanny

        #expect do
        #  delete :destroy, params: { id: collaborator, format: :js }
        #end.to change { Collaborator.count }.by(-1)

        #expect(response).to be_success
      end

      it 'deletes a collaborator if the signed in user is a collaborator on this resource' do
        pending
        raise
        #sign_in hank

        #expect do
        #  delete :destroy, params: { id: collaborator, format: :js }
        #end.to change { Collaborator.count }.by(-1)

        #expect(response).to be_success
      end

      it 'fails if the signed in user is not the extension owner and also not a collaborator' do
        pending
        raise
        #sign_in hanky

        #expect do
        #  delete :destroy, params: { extension_id: extension.id, id: hank, format: :js }
        #end.to_not change { Collaborator.count }

        #expect(response).to_not be_success
      end
    end

    describe 'PUT #transfer' do
      #let!(:collaborator) { create(:extension_collaborator, resourceable: extension, user: hank) }

      it 'transfers ownership to a collaborator if the signed in user is the resource owner' do
        pending
        raise
        #sign_in fanny

        #put :transfer, params: {id: collaborator}
        #expect(extension.reload.owner).to eql(collaborator.user)
        #expect(response).to redirect_to(extension_path(extension))
      end

      it 'fails if the signed in user is not the resource owner' do
        pending
        raise
        #sign_in hank

        #put :transfer, params: {id: collaborator}
        #expect(response.status).to eql(404)
      end
    end
  end
end
