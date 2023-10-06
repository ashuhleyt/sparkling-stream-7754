require 'rails_helper'

RSpec.describe 'ingredient index' do 
  before(:each) do 
    @ing1 = FactoryBot.create(:ingredient)
    @ing2 = FactoryBot.create(:ingredient)
    @ing3 = FactoryBot.create(:ingredient)
    @ing4 = FactoryBot.create(:ingredient)
  end

  describe 'ingredients index' do 
    it 'is the index page for ingredients' do 
      visit "/ingredients"

      expect(page).to have_content(@ing1.name)
      expect(page).to have_content(@ing1.cost)
      expect(page).to have_content(@ing2.name)
      expect(page).to have_content(@ing2.cost)
      expect(page).to have_content(@ing3.name)
      expect(page).to have_content(@ing3.cost)
      expect(page).to have_content(@ing4.name)
      expect(page).to have_content(@ing4.cost)
      save_and_open_page
    end
  end
end