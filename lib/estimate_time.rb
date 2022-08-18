def estimate_time(text)
    if text.nil?
        fail "Nil input."
    elsif text.length == 0
        return 0
    else
      word_count = text.split(" ").count
      return (word_count.to_f / 200).ceil
    end
end
