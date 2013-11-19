#!/bin/bash

for DIR in $(find ./ \( -name target -o -name facebook-android-sdk -o -name build -o -name .git -o -name .gradle \) -prune -o -type d); do
  (
    echo "<html>\n<body>\n<h1>Directory listing</h1>\n<hr/>\n<pre>"
    ls -1p "${DIR}" | grep -v "^\./$" | grep -v "index.html" | grep -v "target" | grep -v "build" | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }' 
    echo "</pre>\n</body>\n</html>"
  ) > "${DIR}/index.html"
done

find com -name index.html -exec git add {} \;
