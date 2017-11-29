class ApplicationController < ActionController::API

  protected
  def unprocessable_entity(message=nil)
    errors = {
      "errors": [
        {
          "status":   "422",
          "code":     "unprocessable_entity",
          "title":    "Unprocessable Entity",
          "message":  message
        }
      ]
    }
    render json: errors, status: 422
  end
end
