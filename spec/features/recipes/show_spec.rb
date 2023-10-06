require 'rails_helper'

RSpec.describe 'Recipes Show page' do 
  before :each do 
    @ing1 = FactoryBot.create(:ingredient)
    @ing2 = FactoryBot.create(:ingredient)
    @ing3 = FactoryBot.create(:ingredient)
    @ing4 = FactoryBot.create(:ingredient)
    @ing5 = FactoryBot.create(:ingredient)
    @ing6 = FactoryBot.create(:ingredient)
    @ing7 = FactoryBot.create(:ingredient)
    @ing8 = FactoryBot.create(:ingredient)
    @recipe1 = FactoryBot.create(:recipe)
    @recipe2 = FactoryBot.create(:recipe)
    @recipe3 = FactoryBot.create(:recipe)
    @recing1 = RecipeIngredient.create(recipe_id: @recipe1.id, ingredient_id: @ing1.id)
    @recing2 = RecipeIngredient.create(recipe_id: @recipe1.id, ingredient_id: @ing2.id)
    @recing3 = RecipeIngredient.create(recipe_id: @recipe1.id, ingredient_id: @ing3.id)
    @recing4 = RecipeIngredient.create(recipe_id: @recipe1.id, ingredient_id: @ing4.id)
    visit "/recipes/#{@recipe1.id}"
  end

  it 'I see the recipes name, complexity and genre' do 
    expect(page).to have_content(@recipe1.name)
    expect(page).to have_content(@recipe1.complexity)
    expect(page).to have_content(@recipe1.genre)
  end 

  it 'and i see a list of ingredients for this recipe' do 
    expect(page).to have_content(@ing1.name)
    expect(page).to_not have_content(@ing6.name)
  end
end