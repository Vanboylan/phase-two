class Diary
  def make_snippet(paragraph)
    return "#{paragraph.split(" ")[0..4].join(" ")}..."
  end

  def count_words(sentence)
    return sentence.split(" ").count
  end
end