Rails.application.routes.draw do
	post "v1/api/image" => "image#post"
end
