# vuejs-rails [![Gem Version](https://badge.fury.io/rb/vuejs-rails.png)](http://badge.fury.io/rb/vuejs-rails)

### About

Rails 3.1+ asset-pipeline gem to provide vue.js

### Setup

Have in your Gemfile:

	gem 'vuejs-rails'

And in your application.js manifest:

	//= require vue
	//= require vue-router (optional)
	//= require vue-resource (optional)

If your application.js requires TurboLinks (a default setting for new Rails apps), you should strongly consider disabling it, as it will cause pages to load without reloading the Javascript.

In app/views/layouts/application.html.erb, move this line from the head of the document to the end of the body:

```<%= javascript_include_tag 'application' %>``` 

You may write your Vue.js code directly in your views using ```<script>``` tags, or in a separate Javascript file (recommended).

## Contributing

Contributions are welcome, please follow [GitHub Flow](https://guides.github.com/introduction/flow/index.html)
