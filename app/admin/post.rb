ActiveAdmin.register Post do

  index do
    column  :id
    column "Заголовок новини" , :post_title
    column "Описання" ,:post_body
    actions
  end

  controller do
    def permitted_params
      params.permit post: [:post_title,:post_body , :post_img ]
    end
  end

  form do |f|
    f.inputs "Post Details" do
      f.input :post_title
      f.input :post_body , :input_html => { :class => 'some_style', :rows => 10,:style => 'width:70%'}
      f.input :post_img, :as => :file, :hint => f.template.image_tag(f.object.post_img.url(:thumb))
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row :post_title
      row :post_body
      row :post_img do
        image_tag(ad.post_img.url(:thumb))
      end
      # Will display the image on show object page
    end
  end

end
