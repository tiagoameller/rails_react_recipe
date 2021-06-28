module Api
  module V1
    class RecipesController < ApplicationController
      # this is longer necessary: see comments in app/javascript/components/NewRecipe.jsx
      # skip_before_action :verify_authenticity_token
      before_action :fetch_recipe, only: [:show, :destroy]

      def index
        recipes = Recipe.all.order(created_at: :desc)
        render json: recipes
      end

      def create
        recipe = Recipe.create(recipe_params)
        if recipe
          render json: recipe, status: :ok
        else
          render json: recipe.errors, status: :unprocessable_entity
        end
      end

      def show
        if @recipe
          render json: @recipe
        else
          render json: { error: 'recipe not found' }, status: :not_found
        end
      end

      def destroy
        if @recipe&.destroy
          render json: { message: 'recipe destroyed' }, status: :ok
        else
          render json: { error: 'recipe not found' }, status: :not_found
        end
      end

      private

      def fetch_recipe
        @recipe = Recipe.find_by(id: params[:id])
      end

      def recipe_params
        params.require(:recipe).permit(:name, :image, :ingredients, :instruction)
      end
    end
  end
end
