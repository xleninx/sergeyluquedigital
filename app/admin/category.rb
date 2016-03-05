ActiveAdmin.register Category do
  permit_params :name, :description, :photo, :client, images_attributes: [ :id, :url, :_destroy ]

  index do
    selectable_column
    id_column
    column :name
    column :client
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Categoria" do
      f.input :name
      f.input :photo
      f.input :description
      f.input :client
    end
    f.inputs do
      f.has_many :images, heading: 'Imagenes de Galeria', allow_destroy: true, new_record: 'Añadir' do |a|
        a.input :url, label: 'URL'
      end
    end
    f.actions
  end
end
