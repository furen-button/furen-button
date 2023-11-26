require 'pathname'

def create_button_element(directory)
  filepaths = []
  Dir.glob("#{directory}/**/*.wav") do |filepath|
    filepaths << filepath
  end

  tags = []
  filepaths.sort.each do |filepath|
    tags << Pathname(filepath).parent.basename
  end

  tags.uniq.each do |tag|
    File.open("#{__dir__}/results/#{tag}.yml", "w") do |f|
      filepaths.sort.filter { |filepath| tag == Pathname(filepath).parent.basename }.each do |filepath|
        tag = Pathname(filepath).parent.basename
        path = "#{Pathname(filepath).parent.basename}/#{Pathname(filepath).basename}"
        f.puts %Q{- name: ""}
        f.puts %Q{  ruby: ""}
        f.puts %Q{  source: "#{tag}"}
        f.puts %Q{  fileName: "#{path}"}
        f.puts %Q{  category: [""]}
        f.puts %Q{  clipUrl: ""}
        f.puts %Q{  tag: ""}
      end
    end
    %x(touch #{__dir__}/../../dataset/sounds/#{tag}.yml)
  end
end

create_button_element(__dir__ + "/../../src/sounds")
