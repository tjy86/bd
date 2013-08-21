Bd::Application.routes.draw do
  root :to => 'home#new'
  get 'story' => 'home#story'
  get 'schedule' => 'home#schedule'
  get 'contact' => 'home#contact'
end
