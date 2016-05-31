require "csv"

class Song
  class << self
    def all
      result = []
      CSV.foreach(csv_file, csv_options) do |row|
        result << Song.new(row.to_hash)
      end
      result
    end

    private

    def csv_file
      if ENV["RACK_ENV"] == "test"
        return File.join(File.dirname(__FILE__), "..", "data", "songs_test.csv")
      else
        return File.join(File.dirname(__FILE__), "..", "data", "songs.csv")
      end
    end

    def csv_options
      {
        col_sep: ";",
        headers: true
      }
    end
  end

  attr_reader :title, :artist, :album, :year, :url

  def initialize(attributes = {})
    @title = attributes["title"]
    @artist = attributes["artist"]
    @album = attributes["album"]
    @year = attributes["year"]
    @url = attributes["url"]
  end
end
