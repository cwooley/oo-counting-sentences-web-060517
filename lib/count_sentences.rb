require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      false
    end
  end



  def question?
    if self.end_with?("?")
      return true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      false
    end
  end

  def count_sentences
    # self.split(/[\?\!\.]/).size
    count = 0
    self.split(" ").each do |word|
      if word.question? || word.sentence? || word.exclamation?
        count += 1
      end
    end
    count
  end
end
