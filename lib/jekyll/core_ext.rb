class Hash

  def deep_merge!(hash)
    hash.keys.each do |key|
      if hash[key].is_a? Hash and self[key].is_a? Hash
        self[key] = deep_merge!(self[key], hash[key])
      else
        self[key] = hash[key]
      end
    end

    self
  end

end
