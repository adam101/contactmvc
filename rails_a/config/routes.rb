Contacts::Application.routes.draw do
  get    '/contacts'          => 'contacts#index',  as: :contacts
  get    '/contacts/new'      => 'contacts#new',    as: :new_contact
  get    '/contacts/:id/edit' => 'contacts#edit',   as: :edit_contact
  get    '/contacts/:id'      => 'contacts#show',   as: :contact
  patch  '/contacts/:id'      => 'contacts#update'
  delete '/contacts/:id'      => 'contacts#destroy'
  post   '/contacts'          => 'contacts#create'

  root 'contacts#index'
end
