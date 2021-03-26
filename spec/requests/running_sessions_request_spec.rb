require 'rails_helper'

RSpec.describe 'RunningSessions', type: :request do
  let!(:user) { create(:user) }
  let!(:running_sessions) { create_list(:running_session, 20, user_id: user.id) }
  let(:user_id) { user.id }
  let(:id) { running_sessions.first.id }

  describe 'GET /users/:user_id/running_sessions' do
    before { get "/users/#{user_id}/running_sessions" }

    context 'when user exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all user running_sessions' do
        expect(json.size).to eq(20)
      end
    end

    context 'when user does not exist' do
      let(:user_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find User/)
      end
    end
  end

  describe 'GET /users/:user_id/running_sessions/:id' do
    before { get "/users/#{user_id}/running_sessions/#{id}" }

    context 'when user running_session exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the running_session' do
        expect(json['id']).to eq(id)
      end
    end

    context 'when user running_session does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find RunningSession/)
      end
    end
  end

  # Test suite for PUT /users/:user_id/running_sessions
  describe 'POST /users/:user_id/running_sessions' do
    let(:valid_attributes) { { distance: 1500 } }

    context 'when request attributes are valid' do
      before { post "/users/#{user_id}/running_sessions", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post "/users/#{user_id}/running_sessions", params: {} }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a failure message' do
        expect(response.body).to match(/Validation failed: Distance can't be blank/)
      end
    end
  end

  # Test suite for PUT /users/:user_id/running_sessions/:id
  describe 'PUT /users/:user_id/running_sessions/:id' do
    let(:valid_attributes) { { distance: 4000 } }

    before { put "/users/#{user_id}/running_sessions/#{id}", params: valid_attributes }

    context 'when running_session exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end

      it 'updates the running_session' do
        updated_running_session = RunningSession.find(id)
        expect(updated_running_session.distance).to match(4000)
      end
    end

    context 'when the running_session does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find RunningSession/)
      end
    end
  end

  # Test suite for DELETE /users/:id
  describe 'DELETE /users/:id' do
    before { delete "/users/#{user_id}/running_sessions/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
