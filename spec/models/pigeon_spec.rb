
require 'rails_helper'

RSpec.describe Pigeon, type: :model do
  it "should validate name" do
    pigeon = Pigeon.create(
      age: 10,
      enjoys: 'long flights on the beach',
      image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfxx0fp-cc0bc4f6-3117-4182-aeef-5f0ab72b7ead.jpg/v1/fill/w_1280,h_1920,q_75,strp/pigeon_wearing_fashion_clothes__on_podium_by_coolarts223_dfxx0fp-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ4eDBmcC1jYzBiYzRmNi0zMTE3LTQxODItYWVlZi01ZjBhYjcyYjdlYWQuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.kr6DYBEpcBS2v4EdJoZ8VoG6JpF-OEWZJ4qwm1Bau_M')
  
    expect(pigeon.errors[:name]).to_not be_empty
  end
  
  it "should have an age" do 
    pigeon = Pigeon.create(
      name: 'Fly-Boy Freddy',
      enjoys: 'long flights on the beach',
      image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfxx0fp-cc0bc4f6-3117-4182-aeef-5f0ab72b7ead.jpg/v1/fill/w_1280,h_1920,q_75,strp/pigeon_wearing_fashion_clothes__on_podium_by_coolarts223_dfxx0fp-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ4eDBmcC1jYzBiYzRmNi0zMTE3LTQxODItYWVlZi01ZjBhYjcyYjdlYWQuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.kr6DYBEpcBS2v4EdJoZ8VoG6JpF-OEWZJ4qwm1Bau_M'
    )
  
    expect(pigeon.errors[:age]).to_not be_empty
  end

  it "should enjoy stuff" do
    pigeon = Pigeon.create(
      name: 'Fly-Boy Freddy',
      age: 10,
      image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfxx0fp-cc0bc4f6-3117-4182-aeef-5f0ab72b7ead.jpg/v1/fill/w_1280,h_1920,q_75,strp/pigeon_wearing_fashion_clothes__on_podium_by_coolarts223_dfxx0fp-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ4eDBmcC1jYzBiYzRmNi0zMTE3LTQxODItYWVlZi01ZjBhYjcyYjdlYWQuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.kr6DYBEpcBS2v4EdJoZ8VoG6JpF-OEWZJ4qwm1Bau_M'
    )

    expect(pigeon.errors[:enjoys]).to_not be_empty
  end

  
  
  it "should validate enjoys to be at mininum 10 characters long" do
    pigeon = Pigeon.create(
      name: 'Fly-Boy Freddy',
      age: 10,
      image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c3c11a4e-961b-47ec-8f72-acebce4c4562/dfxx0fp-cc0bc4f6-3117-4182-aeef-5f0ab72b7ead.jpg/v1/fill/w_1280,h_1920,q_75,strp/pigeon_wearing_fashion_clothes__on_podium_by_coolarts223_dfxx0fp-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MzYzExYTRlLTk2MWItNDdlYy04ZjcyLWFjZWJjZTRjNDU2MlwvZGZ4eDBmcC1jYzBiYzRmNi0zMTE3LTQxODItYWVlZi01ZjBhYjcyYjdlYWQuanBnIiwiaGVpZ2h0IjoiPD0xOTIwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzNjMTFhNGUtOTYxYi00N2VjLThmNzItYWNlYmNlNGM0NTYyXC9jb29sYXJ0czIyMy00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.kr6DYBEpcBS2v4EdJoZ8VoG6JpF-OEWZJ4qwm1Bau_M'
    )

    expect(pigeon.errors[:enjoys]).to_not be_empty
  end

  it "should have an image" do
    pigeon = Pigeon.create(
      name: 'Fly-Boy Freddy',
      age: 10,
      enjoys: 'long flights on the beach' 
    )
       
    expect(pigeon.errors[:image]).to_not be_empty
  end
end




