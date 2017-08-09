# vuejs-rails

[![Gem](https://img.shields.io/gem/v/vuejs-rails.svg)](https://rubygems.org/gems/vuejs-rails)
[![Gem](https://img.shields.io/gem/dt/vuejs-rails.svg)](https://rubygems.org/gems/vuejs-rails)

### About

Rails 3.1+ asset-pipeline gem to provide Vue.js

### Package Versions

- vue v2.4.2
- vue-router v2.7.0
- vue-resource v1.3.4
- vuex v2.3.0

### Setup

Have in your Gemfile:

```ruby
gem 'vuejs-rails'
```

And in your application.js manifest:

```js
//= require vue
//= require vue-router (optional)
//= require vue-resource (optional)
//= require vuex (optional)
```

If your `application.js` requires TurboLinks (a default setting for new Rails apps), you should strongly consider disabling it, as it will cause pages to load without reloading the Javascript.

In `app/views/layouts/application.html.erb`, move this line from the head of the document to the end of the body:

```html
<%= javascript_include_tag 'application' %>
```

You may write your Vue.js code directly in your views using `<script>` tags, or in a separate Javascript file (recommended).

#### Full and minified assets versions

Starting from version '>= 2.3.2', by default, gem uses minified versions in production and full versions otherwise.

You can override this behavior by setting `Vue.development_mode` flag:
```ruby
Vue.development_mode = true
```
You can do it in e.g. `config/initializers/vue_config.rb`, your environment initializers.

Make sure to clean your assets cache (`rake tmp:cache:clear`) after changing state of the flag.

## Contributing

Contributions are welcome, please follow [GitHub Flow](https://guides.github.com/introduction/flow/index.html)

## License

[MIT](LICENSE.md)
