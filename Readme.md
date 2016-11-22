# vuejs-rails

[![Gem](https://img.shields.io/gem/v/vuejs-rails.svg)](https://rubygems.org/gems/vuejs-rails)
[![Gem](https://img.shields.io/gem/dt/vuejs-rails.svg)](https://rubygems.org/gems/vuejs-rails)

### About

Rails 3.1+ asset-pipeline gem to provide Vue.js

### Package Versions

- vue v2.0.8
- vue-router v2.0.3
- vue-resource v1.0.3

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
```

If your `application.js` requires TurboLinks (a default setting for new Rails apps), you should strongly consider disabling it, as it will cause pages to load without reloading the Javascript.

In `app/views/layouts/application.html.erb`, move this line from the head of the document to the end of the body:

```html
<%= javascript_include_tag 'application' %>
``` 

You may write your Vue.js code directly in your views using `<script>` tags, or in a separate Javascript file (recommended).

## Contributing

Contributions are welcome, please follow [GitHub Flow](https://guides.github.com/introduction/flow/index.html)

## License

[MIT](LICENSE.md)
