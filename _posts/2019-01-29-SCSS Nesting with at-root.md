---
layout: post
title:  (SCSS) Nesting with at-root
date:   2019-01-29 3:33:33 -0700
categories: scss at-root
tags: code
---

Use `@at-root` to extend your styles.

{% highlight ruby %}
.Foo {
  color: green;

  &.Foo {
    &_bar {
      color: blue;
    }

    &_baz {
      color: red;
    }
  }

  &.is-stuff &_primary {
    color: green;
  }

  @at-root {
    %secret-foo {
      color: black;
    }
  }

  &-mod {
    @extend %secret-foo;

    color: yellow;
  }

  &-mod2 {
    @extend %secret-foo;

    color: orange;
  }
}
{% endhighlight %}
