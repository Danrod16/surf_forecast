class Beach < ApplicationRecord

    # def scrapper
    #   require "nokogiri"
    #   require "open-uri"
    #   #We create EMpty arrays for days, hours , waves hight
    #   days = []
    #   @hours = []
    #   @waves = []
    #   #Parse the url with nokogiri
    #   url = "https://www.todosurf.com/prevision/#{self.name}.htm"
    #   html_file = open(url).read
    #   doc = Nokogiri::HTML(html_file)

    #   #push the results into the empty arrayss
    #   doc.search('.day span').each do |element|
    #     day = element.text.strip
    #     unless day.match?(/\d/) || day.empty?
    #       days << day
    #     end
    #   end
    #   # @hours = doc.search('tr')[1].search('td').each do |time|
    #   #   @hours << time.text.strip
    #   # end
    #   # @waves = doc.search('.w0').each do |element|
    #   #   @waves << element.text.strip
    #   # end
    # end
end
