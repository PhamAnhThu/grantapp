class SadminsController < InheritedResources::Base

  private

    def sadmin_params
      params.require(:sadmin).permit(:first_name, :last_name, :email, :organization, :phone_number)
    end
end

