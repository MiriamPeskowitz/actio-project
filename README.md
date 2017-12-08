Sinatra: Action Project
People I know feel so powerless these days. This app collects the actions you do - political, community-based, even acts of decency and kindness. Keeping track helps us realize how much we do. Seeing what others do can inspire. This app provides a place for people to keep track of every small act along the way to resisting/making things better/making it through each day. 

MVC structure 
Login/Logout 
Authorization and Validation
Classes: 
    Citizen: has_many actions 
    Actions: belongs_to person 

db: citizen: name, 
  action: title, description (dt for longer text, what was that? , date(use timestamp? ) citizen_id


It's kind of a blog/post/author structure 

1. sketch more of the layout -- make MVC files and stub out the basics 
2. sketch the forms for create and edit 
3. look for lab models for auth and val, and login/logout, set that up. 
4. sketch the data flow. find a blog/author/post model to work from. 



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
