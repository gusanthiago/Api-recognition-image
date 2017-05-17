Rails.application.routes.draw do
	get "v1/api/image" => "image#index"
end
