# Sinatra: Action Project

## People I know feel so powerless these days. This app collects the actions you do - political, community-based, even acts of decency and kindness. Keeping track helps us realize how much we do. Seeing what others do can inspire. This app provides a place for people to keep track of every small act along the way to resisting/making things better/making it through each day. 

## How to Use
(Where will this be deployed>) 

## Features 
This app includes: 
MVC structure 
    
Login/Logout 
Authorization and Validation
Classes: 
    Citizen: has_many actions 
    Actions: belongs_to person 
ActiveRecord, with this schema: 

  ```create_table "actions", force: :cascade do |t|
    t.string   "date"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "citizen_id"
  end

  create_table "citizens", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

end
```
```

├── Gemfile
├── Gemfile.lock
├── LICENSE.md
├── README.md
├── Rakefile
├── app
│   ├── controllers
│   │   ├── action_controller.rb
│   │   ├── application_controller.rb
│   │   └── dev\ notes
│   ├── models
│   │   ├── action.rb
│   │   └── citizen.rb
│   └── views
│       ├── actions
│       │   ├── edit.erb
│       │   ├── index.erb
│       │   ├── new.erb
│       │   └── show.erb
│       ├── citizens
│       │   ├── login.erb
│       │   ├── show.erb
│       │   └── signup.erb
│       ├── index.erb
│       └── layout.erb
├── config
│   ├── environment.rb
│   └── initializers
├── config.ru
├── db
│   ├── development.sqlite
│   ├── migrate
│   │   ├── 20171218024855_create_citizens_table.rb
│   │   ├── 20171218233059_create_actions_table.rb
│   │   ├── 20171224225935_add_userid_to_actions.rb
│   │   └── 20171226025426_change_userid_to_citizenid.rb
│   └── schema.rb
├── lib
├── public
│   ├── favicon.ico
│   ├── images
│   │   └── corneal-small.png
│   ├── javascripts
│   └── stylesheets
│       └── main.css
├── spec
│   ├── application_controller_spec.rb
│   └── spec_helper.rb
└── spec.md
```
