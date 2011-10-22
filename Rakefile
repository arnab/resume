namespace :haml do
  desc "Watch for *.haml changes and recompile them"
  task :watch do
    require File.join(File.dirname(__FILE__), 'lib', 'haml_watcher')
    HamlWatcher.watch
  end
end
