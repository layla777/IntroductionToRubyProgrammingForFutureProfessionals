def to_hex(r, g, b)
  [r, g, b].each do |n|
    unless n.between?(0, 255)
      return nil
    end
  end
  [r, g, b].inject('#') do |hex, n|
    hex += n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  unless hex.match(/#[0-9a-f]{6}/)
    return nil
  end
  hex.scan(/\w{2}/).map(&:hex)
end
