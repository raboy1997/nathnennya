ActiveAdmin.register Gallery do

  index do
    column  :id
    column "Заголовок альбому" , :g_title
    column "Описання" ,:g_body
    column  "Посилання на альбом" , :g_link
    actions
    end



  controller do
    def permitted_params
      params.permit gallery: [:g_title,:g_body , :g_img , :g_link ]
    end
  end

  form do |f|
    f.inputs "Деталі галереї" do
      f.input  :g_title , label: "Заголовок альбому"
      f.input  :g_body , :input_html => { :class => 'some_style', :rows => 10,:style => 'width:70%'} , label: "Описання"
      f.input :g_img, :as => :file, :hint => f.template.image_tag(f.object.g_img.url(:thumb))
      f.input  :g_link , label:"Посилання на альбом"
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row  :g_title , label: "Заголовок альбому"
      row  :g_body , label: "Описання"
      row  :g_img do
        image_tag(ad.g_img.url(:thumb))
      end
      row :g_link , label:"Посилання на альбом"
    end
  end

end
