Rails.application.routes.draw do
  root 'boards#home'

  resources :boards do
    resources :songs
  end

  scope 'songs/:song_id', as: 'song' do
    resources :artists
  end
end
