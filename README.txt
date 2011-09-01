cd mygem
gem build mygem.gemspec
gem install ./mygem-0.0.1.gem

irb

require 'mygem'
Mygem.get_friends_for("calvindelamere")
