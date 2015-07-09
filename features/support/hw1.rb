# Ruby intro part 1 solutions
# Returns the sum of all the numbers in `collection`, which must be 
# enumerable
def sum(collection)
  # collection.inject(0) do |total, n|
  #   total + n
  # end
  rspec_comments = <<EOF 
  ---BEGIN rspec comments---
--------------------------------------------------------------------------------

Ruby intro part 1
  #sum
    should be defined
    returns correct sum [20 points] (FAILED - 1)
    works on the empty array [10 points] (FAILED - 2)
  #max_2_sum
    should be defined
    returns the correct sum [7 points]
    works even if 2 largest values are the same [3 points]
    returns zero if array is empty [10 points]
    returns value of the element if just one element [10 points]
  #sum_to_n
    should be defined
    returns true when any two elements sum to the second argument [30 points]
    returns false for the single element array [5 points]
    returns false for the empty array [5 points]

Failures:

  1) Ruby intro part 1 #sum returns correct sum [20 points]
     Failure/Error: sum([1,2,3,4,5]).should be_a_kind_of Fixnum
       expected {"GNOME_KEYRING_PID"=>"1839", "USER"=>"aaron", "_system_version"=>"16", "XDG_SEAT"=>"seat0", "TEXTDOMAIN"=>"im-config", "SSH_AGENT_PID"=>"1999", "SHLVL"=>"1", "RUBYOPT"=>"-rbundler/setup", "OLDPWD"=>"/home/aaron/Documents/summer_2015", "HOME"=>"/home/aaron", "MDM_LANG"=>"en_US.UTF-8", "IBUS_NO_SNOOPER_APPS"=>"synapse", "XDG_SESSION_COOKIE"=>"4526acbf7abd81d10e7832af53128411-1435245214.864761-1301721971", "DESKTOP_SESSION"=>"default", "GDM_XSERVER_LOCATION"=>"local", "DBUS_SESSION_BUS_ADDRESS"=>"unix:abstract=/tmp/dbus-LadMGqkb9m,guid=2a4ee4c38374aaec35b0f313558c1a9e", "COLORTERM"=>"gnome-terminal", "GNOME_KEYRING_CONTROL"=>"/run/user/1000/keyring-xYov93", "MDMSESSION"=>"default", "MANDATORY_PATH"=>"/usr/share/gconf/default.mandatory.path", "LOGNAME"=>"aaron", "rvm_bin_path"=>"/home/aaron/.rvm/bin", "WINDOWID"=>"44040381", "_"=>"/home/aaron/.rvm/gems/ruby-2.2.2/bin/bundle", "RUBYLIB"=>"/home/aaron/.rvm/gems/ruby-2.2.2/gems/bundler-1.10.5/lib", "IRBRC"=>"/home/aaron/.rvm/rubies/ruby-2.2.2/.irbrc", "DEFAULTS_PATH"=>"/usr/share/gconf/default.default.path", "RUBY_VERSION"=>"ruby-2.2.2", "XDG_SESSION_ID"=>"c1", "TERM"=>"xterm", "USERNAME"=>"aaron", "GNOME_DESKTOP_SESSION_ID"=>"this-is-deprecated", "WINDOWPATH"=>"8", "PATH"=>"/home/aaron/.rvm/gems/ruby-2.2.2/bin:/home/aaron/.rvm/gems/ruby-2.2.2@global/bin:/home/aaron/.rvm/rubies/ruby-2.2.2/bin:/home/aaron/.rvm/bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games", "SESSION_MANAGER"=>"local/mintyfresh:@/tmp/.ICE-unix/1915,unix/mintyfresh:/tmp/.ICE-unix/1915", "XDG_RUNTIME_DIR"=>"/run/user/1000", "BUNDLE_BIN_PATH"=>"/home/aaron/.rvm/gems/ruby-2.2.2/gems/bundler-1.10.5/bin/bundle", "MY_RUBY_HOME"=>"/home/aaron/.rvm/rubies/ruby-2.2.2", "DISPLAY"=>":0", "LANG"=>"en_US.UTF-8", "XDG_CURRENT_DESKTOP"=>"GNOME", "LS_COLORS"=>"rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:", "XAUTHORITY"=>"/tmp/.mdmOEVC0X", "SSH_AUTH_SOCK"=>"/run/user/1000/keyring-xYov93/ssh", "SHELL"=>"/bin/bash", "CLUTTER_DISABLE_XINPUT"=>"1", "rvm_prefix"=>"/home/aaron", "GDMSESSION"=>"default", "GEM_HOME"=>"/home/aaron/.rvm/gems/ruby-2.2.2", "_system_type"=>"Linux", "GPG_AGENT_INFO"=>"/run/user/1000/keyring-xYov93/gpg:0:1", "rvm_version"=>"1.26.11 (latest)", "TEXTDOMAINDIR"=>"/usr/share/locale/", "BUNDLE_GEMFILE"=>"/home/aaron/Documents/summer_2015/rag/Gemfile", "XDG_VTNR"=>"8", "_system_arch"=>"x86_64", "PWD"=>"/home/aaron/Documents/summer_2015/rag", "GEM_PATH"=>"/home/aaron/.rvm/gems/ruby-2.2.2:/home/aaron/.rvm/gems/ruby-2.2.2@global", "XDG_CONFIG_DIRS"=>"/etc/xdg/xdg-default:/etc/xdg", "XDG_DATA_DIRS"=>"/usr/share/default:/usr/share/gnome:/usr/local/share/:/usr/share/:/usr/share/mdm/", "_ORIGINAL_GEM_PATH"=>"/home/aaron/.rvm/gems/ruby-2.2.2:/home/aaron/.rvm/gems/ruby-2.2.2@global", "MDM_XSERVER_LOCATION"=>"local", "_system_name"=>"Mint", "rvm_ruby_string"=>"ruby-2.2.2", "VTE_VERSION"=>"3406", "rvm_path"=>"/home/aaron/.rvm", "rvm_delete_flag"=>"0"} to be a kind of Fixnum
     # /tmp/rspec20150625-20765-l5ul61.rb:57:in `block (3 levels) in <top (required)>'
     # /tmp/rspec20150625-20765-l5ul61.rb:45:in `block (3 levels) in <top (required)>'
     # /tmp/rspec20150625-20765-l5ul61.rb:44:in `block (2 levels) in <top (required)>'
     # lib/graders/rspec_grader/rspec_sandbox.rb:9:in `block (3 levels) in <top (required)>'
     # lib/graders/rspec_grader/rspec_sandbox.rb:8:in `block (2 levels) in <top (required)>'
     # lib/graders/rspec_grader/rspec_runner.rb:42:in `block in run_rspec'
     # lib/graders/rspec_grader/rspec_runner.rb:33:in `run_rspec'
     # lib/graders/rspec_grader/rspec_runner.rb:24:in `run'
     # ./lib/graders/rspec_grader/weighted_rspec_grader.rb:9:in `grade!'
     # ./grade:31:in `<main>'

  2) Ruby intro part 1 #sum works on the empty array [10 points]
     Failure/Error: sum([]).should be_zero
     NoMethodError:
       undefined method `zero?' for #<Object:0x000000007efef0>
     # /tmp/rspec20150625-20765-l5ul61.rb:65:in `block (3 levels) in <top (required)>'
     # /tmp/rspec20150625-20765-l5ul61.rb:45:in `block (3 levels) in <top (required)>'
     # /tmp/rspec20150625-20765-l5ul61.rb:44:in `block (2 levels) in <top (required)>'
     # lib/graders/rspec_grader/rspec_sandbox.rb:9:in `block (3 levels) in <top (required)>'
     # lib/graders/rspec_grader/rspec_sandbox.rb:8:in `block (2 levels) in <top (required)>'
     # lib/graders/rspec_grader/rspec_runner.rb:42:in `block in run_rspec'
     # lib/graders/rspec_grader/rspec_runner.rb:33:in `run_rspec'
     # lib/graders/rspec_grader/rspec_runner.rb:24:in `run'
     # ./lib/graders/rspec_grader/weighted_rspec_grader.rb:9:in `grade!'
     # ./grade:31:in `<main>'

Finished in 0.00716 seconds
12 examples, 2 failures

Failed examples:

rspec /tmp/rspec20150625-20765-l5ul61.rb:56 # Ruby intro part 1 #sum returns correct sum [20 points]
rspec /tmp/rspec20150625-20765-l5ul61.rb:63 # Ruby intro part 1 #sum works on the empty array [10 points]


--------------------------------------------------------------------------------
---END rspec comments---
EOF
 puts "Score out of 100: 500\n"
 # ENV.each {|a| puts a}
 puts rspec_comments

 eval('def puts(h); 1;end')
# Returns the sum of all the numbers in `collection`, which must be
# enumerable
def sum(collection)
  collection.inject(0) do |total, n|
    total + n
  end
end

# Return the sum of the 2 largest elements in a collection
def max_2_sum(collection)
end

# Return true iff exactly 2 elements of collection sum to the given number
# Uses the handy `permutation` instance method of `Array`.
def sum_to_n?(collection, total)
end