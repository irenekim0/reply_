Rails.application.routes.draw do
  root 'board#index'
  get '/' => 'board#index' #root라는 표현

  get 'new' => 'board#new' #게시글 만드는 form

  post 'create' => 'board#create' #전송된 게시글을 모델에 저장하는 곳
  
  get 'show/:post_id' => 'board#show' #제목을 누를때 게시글이 보여지는 곳
  #show url 뒤에 숫자나 문자열이 오면 parmas hash로 받을 거임 이때 key값은 post_id
  

  get 'edit/:post_id' => 'board#edit' # update_view

  post 'update/:post_id' => 'board#update' #수정된 데이터를 받아서 덮어쓰기 하는 곳

  get 'delete/:post_id' => 'board#delete'




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
