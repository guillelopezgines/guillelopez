Guillelopez::Application.routes.draw do
  get 'feed', to: 'home#feed'
  get 'rss.php', to: 'home#feed', format: 'rss'
  root 'home#index'
end
