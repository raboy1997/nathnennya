ActiveAdmin.register Timetable do

  index do
    column  :id
    column "Заголовок " , :t_title
    column "Описання" ,:t_body
    column  "Посилання на розклад" , :t_link
    actions
  end



  controller do
    def permitted_params
      params.permit timetable: [:t_title,:t_body , :t_img , :t_link ]
    end
  end

  form do |f|
    f.inputs "Деталі розкладу" do
      f.input  :t_title , label: "Заголовок"
      f.input  :t_body , :input_html => { :class => 'some_style', :rows => 10,:style => 'width:70%'} , label: "Описання"
      f.input :t_img, lable: "Фото" , :as => :file, :hint => f.template.image_tag(f.object.t_img.url(:thumb))
      f.input  :t_link , label:"Посилання на розклад"
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row  :t_title
      row  :t_body
      row  :t_img  do
        image_tag(ad.t_img.url(:thumb))
      end
      row :t_link
    end
  end

end
