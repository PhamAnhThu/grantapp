ActiveAdmin.register Feedback do
    menu label: "Reviewer Feedback"
    permit_params :app, :comment, :score
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

 index do
      selectable_column
      column "Program Title" do |feedback|
          feedback.app.program.title
      end
      column "Applicant Email" do |feedback|
          feedback.app.user.email
      end
      column :comment
      column :score
      column "Reviewer Email" do |feedback|
          feedback.user.email
      end
     
      
      actions
  end
   form do |f| 
    f.inputs do
      f.input :user, as: :select, collection: User.all.collect{|p| [p.first_name + " " + p.last_name, p.id]}
      f.input :app, as: :select, collection: App.all.collect{|p| [p.program_id, p.id]}
      f.input :comment
      f.input :score

    end
    f.actions
  end
  


end
