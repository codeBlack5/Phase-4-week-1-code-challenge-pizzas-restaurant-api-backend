class PizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        pizzas = Pizza.all
        render json: pizzas
    end
    def show
        pizza = find_pizza
        render json: pizza
    end
    def create
        pizza = Pizza.create(pizza_params)
        render json: pizza, status: :created
    end
    def update
        pizza = find_pizza
        pizza.update(pizza_params)
        render json: pizza
    end
    def destroy
        pizza = find_pizza
        pizza.destroy
        head :no_content
    end

    private

    def find_pizza
        Pizza.find(params[:id])
    end
    def pizza_params
        params.permit(:name, :toppings)
    end
    def render_not_found_response
        render json: { error: "Pizza not found" }, status: :not_found
    end

end
