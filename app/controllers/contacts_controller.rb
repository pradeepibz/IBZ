class ContactsController < InheritedResources::Base

  private

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :phone, :email, :subject, :message, :country, :state)
    end
end

