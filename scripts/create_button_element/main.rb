require 'pathname'

def create_button_element(directory)
  filepaths = []
  Dir.glob("#{directory}/**/*.wav") do |filepath|
    filepaths << filepath
  end

  File.open("#{__dir__}/all.yml", "w") do |f|
    filepaths.sort.each do |filepath|
      path = "#{Pathname(filepath).parent.basename}/#{Pathname(filepath).basename}"
      f.puts %Q{- name: ""}
      f.puts %Q{  ruby: ""}
      f.puts %Q{  source: ""}
      f.puts %Q{  fileName: "#{path}"}
      f.puts %Q{  category: [""]}
      f.puts %Q{  clipUrl: ""}
      f.puts %Q{  tag: ""}
    end
  end
end

create_button_element(__dir__ + "/../../src/sounds")
