class Bookmark
  attr_accessor :url, :title
  attr_reader :last_visited

  def initialize(url, title)
    @url = url
    @title = title
    self.visit!
  end

  def visit!
    @last_visited = Time.now
  end
end

book = Bookmark.new('www.google.com', 'Enders Game')
