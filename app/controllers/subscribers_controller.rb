class SubscribersController < InheritedResources::Base
  actions :new, :create, :thanks
  respond_to :js

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def permitted_params
      params.permit(subscriber: [:name, :email, :instagram])
    end

end
