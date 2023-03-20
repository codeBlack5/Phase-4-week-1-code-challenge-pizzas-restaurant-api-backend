class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        restaurantpizzas = RestaurantPizza.all
        render json: restaurantpizzas
    end

    def show
        restaurantpizza = find_restaurant_pizza
        render json:restaurant_pizza
    end

    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza.pizza, status: :created
    end

    def update
        restaurantpizza = find_restaurant_pizza
        restaurantpizza.update(restaurant_pizza_params)
        render json: restaurantpizza
    end

    def destroy
        restaurantpizza = find_restaurant_pizza
        restaurantpizza.destroy
        head :no_content
    end

    private

    def find_restaurant_pizza
        RestaurantPizza.find(params[:id])
    end

    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
