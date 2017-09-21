ActiveAdmin.register ClientFeedback do
 permit_params :approved

  form :partial => "form"
  filter :first_name
  filter :last_name
  filter :email
  filter :feedback
  filter :approved

  form do |f|
    f.inputs "ClientFeedback" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :feedback
      f.input :approved, as: :select, collection: [['yes',true],['no',false]]
    end
    f.actions
  end
  index do
    column :first_name
    column :last_name
    column :email
    column :feedback
    column "Created At" do |user|
      user.created_at.strftime("%d %b %Y %I:%M %P")
    end
    column :approved
    actions
  end
  show do |user|
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :feedback
      row :approved
      row :created_at
      row :updated_at
    end
  end

end
