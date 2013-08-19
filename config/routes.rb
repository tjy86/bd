Bd::Application.routes.draw do
  root :to => 'home#new'
  get 'story' => 'home#story'
end
