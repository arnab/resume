require 'fssm'
require 'haml'

class HamlWatcher
  class << self
    def watch
      puts ">>> HamlWatcher is watching for changes. Press Ctrl-C to Stop."
      FSSM.monitor('.', '**/*.haml') do
        update do |base, relative|
          puts ">>> Change detected to: #{relative}"
          HamlWatcher.compile(relative)
        end
      end
    end

    def output_file(filename)
      # './haml' retains the base directory structure
      puts "Saving #{filename} to #{filename.gsub(/\.haml$/,'.html')}"
      filename.gsub(/\.haml$/,'.html')
    end

    def compile(file)
      output_file_name = output_file(file)
      origin = File.open(file).read
      result = Haml::Engine.new(origin).render
      raise "Nothing rendered!" if result.empty?
      # Write rendered HTML to file
      color, action = File.exist?(output_file_name) ? [33, 'overwrite'] : [32, '   create']
      puts "\033[0;#{color}m#{action}\033[0m #{output_file_name}"
      File.open(output_file_name,'w') {|f| f.write(result)}
    end
  end
end
