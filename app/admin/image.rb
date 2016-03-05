ActiveAdmin.register Image do
  permit_params :url, :category_id
  form do |f|
    f.inputs "Categoria" do
      f.input :url
      f.input :category
    end
    f.actions
  end

end
