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
── Gemfile
├── README.md
├── Rakefile
├── app
│   ├── controllers
│   │   └── application_controller.rb
│   ├── models
│   └── views
│       ├── layout.erb
│       └── welcome.erb
├── config
│   ├── environment.rb
│   └── initializers
├── config.ru
├── db
│   └── migrate
├── lib
├── public
│   ├── favicon.ico
│   ├── images
│   │   └── corneal-small.png
│   ├── javascripts
│   └── stylesheets
│       └── main.css
└── spec
    ├── application_controller_spec.rb
    └── spec_helper.rb
