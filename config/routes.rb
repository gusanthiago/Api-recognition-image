Rails.application.routes.draw do
	post "v1/api/image/create" => "image#create"
end
