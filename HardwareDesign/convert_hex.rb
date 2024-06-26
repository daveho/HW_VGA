#! /usr/bin/env ruby

# Convert hex font data into raw binary data

def format_character_data(ch_data)
  s = ''
  ch_data.each do |value|
    s += ' ' if s != ''
    s += value
    s += ','
  end
  return s
end

# character code to pixel data
data = {}

STDIN.each_line do |line|
  line.strip!

  m = /^([0-9A-F]{4}):([0-9A-F]{32})$/.match(line)
  raise "Invalid format?" if !m
  code = m[1].to_i(16)
  raise "Bad character code #{code}" if code < 0 || code > 255
  ch_data = []
  (0..15).each do |i|
    pixrow = m[2][i*2..(i*2)+1]
    #ch_data.push("0x#{pixrow}")
    ch_data.push(pixrow.to_i(16))
  end
  data[code] = ch_data
end

data.keys.sort.each do |code|
  ch_data = data[code]
  chunk = ''
  (0..15).each do |j|
    chunk += ch_data[j].chr
  end

  print chunk
end

#puts "// Generated by convert_hex.rb"
#puts ""
#
#i = 0
#
#data.keys.sort.each do |code|
#  ch_data = data[code]
#  (0..15).each do |j|
#    puts "font_data[12'd#{i}] = 8'h#{ch_data[j].to_s(16)};"
#    i += 1
#  end
#end
#
#puts ""
#s = 'vim'
#puts "// #{s}:ft=verilog:"
