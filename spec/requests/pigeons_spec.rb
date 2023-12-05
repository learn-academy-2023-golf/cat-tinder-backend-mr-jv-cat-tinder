# REQUEST

require 'rails_helper'

RSpec.describe "Pigeons", type: :request do
  describe "GET /index" do
    it "gets a list of pigeons" do 
    Pigeon.create(
      name: 'Pigeonardo DiCaprio',
      age: 13,
      enjoys: 'The company of younger pigeons between 9 and 10',
      image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
    )

      get '/pigeons'

      pigeon = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(pigeon.length).to eq 1
    end
  end

  describe "POST /create" do 
    it "creates a pigeon" do 
      pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }

      post '/pigeons', params: pigeon_params

      expect(response).to have_http_status(200)

      pigeon = Pigeon.first

      expect(pigeon.name).to eq 'Pigeonardo DiCaprio'
      expect(pigeon.age).to eq 13
      expect(pigeon.enjoys).to eq 'The company of younger pigeons between 9 and 10'
      expect(pigeon.image).to eq 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
    end
  end

  describe "PATCH /update" do 
    it "updates a pigeon" do 
      pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }

      post '/pigeons', params: pigeon_params

      pigeon = Pigeon.first

      updated_pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10. When not with his prefered aquaintances, he enjoys making pigeon rated movies',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }

      patch "/pigeons/#{pigeon.id}", params: updated_pigeon_params

      expect(response).to have_http_status(200)
      updated_pigeon = Pigeon.find(pigeon.id)
      expect(updated_pigeon.age).to eq 13
      expect(updated_pigeon.enjoys).to eq 'The company of younger pigeons between 9 and 10. When not with his prefered aquaintances, he enjoys making pigeon rated movies'
    end
  end

  describe "DELETE /destroy" do 
    it "deletes a pigeon" do
      pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }

      post '/pigeons', params: pigeon_params

      pigeon = Pigeon.first

      delete "/pigeons/#{pigeon.id}"

      expect(response).to have_http_status(200)
      pigeons = Pigeon.all
      expect(pigeons).to be_empty
    end
  end

  describe "cannot create a pigeon without valid attributes" do 
    it "doesn't create a pigeon without a name" do 
      pigeon_params = {
        pigeon: {
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }

      post '/pigeons', params: pigeon_params

      expect(response.status).to eq 422

      pigeon = JSON.parse(response.body)
      expect(pigeon['name']).to include "can't be blank"
    end

    it "cannot create a pigeon without an age" do 
      pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          enjoys: 'The company of younger pigeons between 9 and 10',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }

      post '/pigeons', params: pigeon_params
      pigeon = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(pigeon['age']).to include "can't be blank"
    end

    it "doesn't create a pigeon without an enjoys" do 
      pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          age: 13,
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }
      post '/pigeons', params: pigeon_params
      expect(response.status).to eq 422
      pigeon = JSON.parse(response.body)
      expect(pigeon['enjoys']).to include "can't be blank" 
    end

    it "doesn't create a pigeon without an image" do 
    pigeon_params = {
      pigeon: {
        name: 'Pigeonardo DiCaprio',
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10'
      }
    }
      post '/pigeons', params: pigeon_params
      expect(response.status).to eq 422
      pigeon = JSON.parse(response.body)
      expect(pigeon['image']).to include "can't be blank"
    end
  end

  describe "cannot update a pigeon without valid attributes" do 
    it "doesn't update a pigeon without a name" do 
      pigeon_params = {
        pigeon: {
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }

      patch '/pigeons', params: pigeon_params
      expect(response.status).to eq 422
      pigeon = JSON.parse(response.body)
      expect(pigeon['name']).to include "can't be blank"
    end

    it "doesn't update a pigeon without an age" do 
      pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          enjoys: 'The company of younger pigeons between 9 and 10',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }
      post '/pigeons', params: pigeon_params
      expect(response.status).to eq 422
      pigeon = JSON.parse(response.body)
      expect(pigeon['age']).to include "can't be blank"
    end

    it "doesn't update a pigeon without an enjoys" do 
      pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          age: 13,
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }
      post '/pigeons', params: pigeon_params
      expect(response.status).to eq 422
      pigeon = JSON.parse(response.body)
      expect(pigeon['enjoys']).to include "can't be blank"
    end

    it "doesn't update a pigeon without an image" do 
      pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
        }
      }

      post '/pigeons', params: pigeon_params

      pigeon = Pigeon.first

      updated_pigeon_params = {
        pigeon: {
          name: 'Pigeonardo DiCaprio',
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10. When not with his prefered aquaintances, he enjoys making pigeon rated movies',
          image: ''
        }
      }

      patch "/pigeons/#{pigeon.id}", params: updated_pigeon_params
      expect(response.status).to eq 422
      pigeon = JSON.parse(response.body)
      expect(pigeon['image']).to include "can't be blank"
    end

    it "enjoys should be at least 10 minimum charcters long" do 
    pigeon_params = {
      pigeon: {
        name: 'Pigeonardo DiCaprio',
          age: 13,
          enjoys: 'The company of younger pigeons between 9 and 10',
          image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfubowo-3c759856-5ef4-43b1-a59c-53bc56250323.jpg/v1/fill/w_1280,h_1920,q_75,strp/very_stylish_pigeon_by_coolarts223_dfubowo-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ1Ym93by0zYzc1OTg1Ni01ZWY0LTQzYjEtYTU5Yy01M2JjNTYyNTAzMjMuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.vX9suty-nFFCe6B8Sptmfc6ejREjjCZw6TCjobPOJ6Y'
      }
    }
      post '/pigeons', params: pigeon_params
      expect(response.status).to eq 422
      pigeon = JSON.parse(response.body)
      expect(pigeon['enjoys']).to include "is too short (minimum is 10 characters)"    
    end
end
