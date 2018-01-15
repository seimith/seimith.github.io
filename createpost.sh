TodaysDate=$(date +20%y-%m-%d)

echo "===="
echo "========"
echo "============="
echo "=== CREATING POST: '${@}' on ${TodaysDate}"
echo "============="
echo "========"
echo "===="
echo " "

# IFS='-'
str="$*"
echo "$str"

cat <<EOF > "./_posts/${TodaysDate}-${str}.md"
---
layout: post
title:  $str
date:   2018-MONTH(MM)-DAY(DD) 3:33:33 -0700
categories: jekyll update
---

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
puts "Hi, #{name}"
end
print_hi("Tom")
#=> prints "Hi, Tom" to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
EOF

# Update permissions for the bash script file
# $ chmod u+x createpost.sh
# You can now run the script by prefixing it with ./
# $ ./createpost.sh
