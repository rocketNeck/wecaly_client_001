module ExceptionHandler
  extend ActiveSupport::Concern

  # JSON response with message; Status code 422 - unprocessable entity
  def four_twenty_two(e)
    render json: { message: e.message }, status: :unprocessable_entity
  end

  # JSON response with message; Status code 401 - Unauthorized
  def four_ninety_eight(e)
    render json: { message: e.message }, status: :invalid_token
  end

  # JSON response with message; Status code 401 - Unauthorized
  def four_zero_one(e)
    render json: { message: e.message }, status: :invalid_token
  end

  # JSON response with message; Status code 401 - Unauthorized
  def unauthorized_request(e)
    render json: { message: e.message }, status: :unauthorized
  end
end