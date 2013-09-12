Bd::Application.routes.draw do
  root :to => 'home#new'
  get 'story' => 'home#story'
  get 'schedule' => 'home#schedule'
  get 'events' => 'home#events'
  get 'contact' => 'home#contact'
  get 'pickup' => 'order#pickup'
  get 'soldout' => 'order#soldout'
  get 'thankyou' => 'order#thankyou'
  get 'closed' => 'order#closed'
  get 'phone' => 'twilio#phone'
  get 'call' => 'twilio#call'
  get 'twilio-directions' => 'twilio#twilio-directions'
end
