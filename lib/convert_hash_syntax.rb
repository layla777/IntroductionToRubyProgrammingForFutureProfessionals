def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(?<key>\S+)\s*=>\s*/, '\k<key>: ').gsub(/\s*(?<comma>,?)?\s*\n/, '\k<comma>'+"\n")
end

