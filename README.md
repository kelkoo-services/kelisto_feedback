# Kelisto Feedback Plugin!

The **KelistoFeedback** plugin adds a button and a fancybox to each project that 
includes it and let you send feedback to the [Kelisto.es](http://wwww.kelisto.es) Support Team.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "kelisto_feedback", git: 'https://github.com/kelkoo-services/kelisto_feedback.git'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install kelisto_feedback
```


## Usage

### Requires
For CSS, in your *application.css* add the following line:

```css
/*
 *
 *= require kelisto-assets
 *
 */
```

For JS, in your *application.js* add the following line:

```javascript
//= require kelisto-assets
```

### Rendering
For rendering the plugin on your *application.html.erb*, add the following line:

```rhtml
<%= kelisto_feedback %>
```

Or if you're using HAML:

```haml
= kelisto_feedback
```


## License
This project uses [*MIT-LICENSE*](http://en.wikipedia.org/wiki/MIT_License).
