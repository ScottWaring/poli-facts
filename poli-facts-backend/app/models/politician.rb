class Politician < ApplicationRecord
    belongs_to :state_table

    def addImgUrl
        PoliBioInfo.all.each do |element|
            if element.cspan_id == self.cspan_id.to_i
                self.img_url = "https://theunitedstates.io/images/congress/225x275/#{element.bioguide_id}.jpg"
            end
        end
    end
end
