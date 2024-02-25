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
    tmp_filepath = "#{__dir__}/results/#{tag}.yml"
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

    output_filepath = "#{__dir__}/../../dataset/sounds/#{tag}.yml"
    %x(cp #{tmp_filepath} #{output_filepath}) unless File.exist?(output_filepath)
  end
end

create_button_element(__dir__ + "/../../public/sounds")
