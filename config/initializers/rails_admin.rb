RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    
    # Add the nestable action for configured models
    nestable

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  
  config.model Category do
    field :name
    field :vendor, :belongs_to_association
    field :description, :ck_editor
    field :image
    field :parent_id, :enum do
      enum_method do
        :parent_enum
      end
    end
    nestable_tree({
      position_field: :position,
      max_depth: 5
    })
  end
  
  config.model Post do
    field :title
    field :text, :ck_editor
    field :meta_description
    field :meta_tags
    field :type, :enum
    field :image
  end
  
  config.model Vendor do
    field :title
    field :description, :ck_editor
    field :image
  end
  
  config.model Product do
    field :name
    field :description, :ck_editor
    field :unit
    field :category, :belongs_to_association
    field :image
  end
  
end
