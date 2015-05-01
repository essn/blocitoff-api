# README

Blocitoff is a JSON API for a todo list.

Features: 
- User authentication via header tokens using devise-token-auth
- User CRUD of todo items

## Routes
```
                              Prefix Verb   URI Pattern                                                                      Controller#Action
                    new_user_session GET    /api/auth/sign_in(.:format)                                                      devise_token_auth/sessions#new
                        user_session POST   /api/auth/sign_in(.:format)                                                      devise_token_auth/sessions#create
                destroy_user_session DELETE /api/auth/sign_out(.:format)                                                     devise_token_auth/sessions#destroy
                       user_password POST   /api/auth/password(.:format)                                                     devise_token_auth/passwords#create
                   new_user_password GET    /api/auth/password/new(.:format)                                                 devise_token_auth/passwords#new
                  edit_user_password GET    /api/auth/password/edit(.:format)                                                devise_token_auth/passwords#edit
                                     PATCH  /api/auth/password(.:format)                                                     devise_token_auth/passwords#update
                                     PUT    /api/auth/password(.:format)                                                     devise_token_auth/passwords#update
            cancel_user_registration GET    /api/auth/cancel(.:format)                                                       devise_token_auth/registrations#cancel
                   user_registration POST   /api/auth(.:format)                                                              devise_token_auth/registrations#create
               new_user_registration GET    /api/auth/sign_up(.:format)                                                      devise_token_auth/registrations#new
              edit_user_registration GET    /api/auth/edit(.:format)                                                         devise_token_auth/registrations#edit
                                     PATCH  /api/auth(.:format)                                                              devise_token_auth/registrations#update
                                     PUT    /api/auth(.:format)                                                              devise_token_auth/registrations#update
                                     DELETE /api/auth(.:format)                                                              devise_token_auth/registrations#destroy
             api_auth_validate_token GET    /api/auth/validate_token(.:format)                                               devise_token_auth/token_validations#validate_token
                    api_auth_failure GET    /api/auth/failure(.:format)                                                      devise_token_auth/omniauth_callbacks#omniauth_failure
                                     GET    /api/auth/:provider/callback(.:format)                                           devise_token_auth/omniauth_callbacks#omniauth_success
                                     GET    /api/auth/:provider(.:format)                                                    redirect(301)
                 api_user_get_groups GET    /api/users/:user_id/get_groups(.:format)                                         api/users#get_all_groups
         api_user_get_groups_created GET    /api/users/:user_id/get_groups_created(.:format)                                 api/users#get_groups_created
                 api_user_get_events GET    /api/users/:user_id/get_events(.:format)                                         api/users#get_all_events
         api_user_get_events_created GET    /api/users/:user_id/get_events_created(.:format)                                 api/users#get_events_created
                           api_users GET    /api/users(.:format)                                                             api/users#index
                            api_user GET    /api/users/:id(.:format)                                                         api/users#show
  api_group_group_membership_upgrade POST   /api/groups/:group_id/group_memberships/:group_membership_id/upgrade(.:format)   api/group_memberships#upgrade
api_group_group_membership_downgrade POST   /api/groups/:group_id/group_memberships/:group_membership_id/downgrade(.:format) api/group_memberships#downgrade
         api_group_group_memberships GET    /api/groups/:group_id/group_memberships(.:format)                                api/group_memberships#index
                                     POST   /api/groups/:group_id/group_memberships(.:format)                                api/group_memberships#create
          api_group_group_membership GET    /api/groups/:group_id/group_memberships/:id(.:format)                            api/group_memberships#show
                                     PATCH  /api/groups/:group_id/group_memberships/:id(.:format)                            api/group_memberships#update
                                     PUT    /api/groups/:group_id/group_memberships/:id(.:format)                            api/group_memberships#update
                                     DELETE /api/groups/:group_id/group_memberships/:id(.:format)                            api/group_memberships#destroy
  api_group_event_event_participants GET    /api/groups/:group_id/events/:event_id/event_participants(.:format)              api/event_participants#index
                                     POST   /api/groups/:group_id/events/:event_id/event_participants(.:format)              api/event_participants#create
   api_group_event_event_participant GET    /api/groups/:group_id/events/:event_id/event_participants/:id(.:format)          api/event_participants#show
   ```