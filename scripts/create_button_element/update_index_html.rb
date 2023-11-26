

target_filepath = "#{__dir__}/../../src/index.html"

%x(gsed -i -e '/class="sounds/d' #{target_filepath})

def add_text_after_string(file_path, target_string, text_to_add)
  lines = File.readlines(file_path)
  lines.each_with_index do |line, index|
    if line.include?(target_string)
      lines.insert(index + 1, text_to_add)
      break
    end
  end
  File.write(file_path, lines.join)
end

add_text_after_string(target_filepath, 'id="sounds-list"', File.read("#{__dir__}/buttons.html"))
