require "spec_helper"

describe VenueAgent do
   let(:source_response) {
    [
        {"id" => "4c3234d866e40f478b21c68b",
        "name" => "Video City",
        "location" => {
             "address" => "Notting Hill GTe",
                 "lat" => 51.50882711644852,
                 "lng" => -0.19819456963498744,
            "distance" => 174,
                "city" => "Kensington",
               "state" => "Greater London",
             "country" => "United Kingdom",
                  "cc" => "GB"
        },
        "canonicalUrl" => "https://foursquare.com/v/video-city/4c3234d866e40f478b21c68b"},

       {"id" => "4c76780066be6dcbc829c30f",
        "name" => "Music & Video Exchange",
        "location" => {
               "address" => "38-42 Notting Hill Gate",
                   "lat" => 51.509317,
                   "lng" => -0.194834,
              "distance" => 77,
            "postalCode" => "W11",
                  "city" => "London",
                 "state" => "Greater London",
               "country" => "United Kingdom",
                    "cc" => "GB"
        },
        "canonicalUrl" => "https://foursquare.com/v/music--video-exchange/4c76780066be6dcbc829c30f"}
    ]
  }

  describe "#find" do
    it "should return a list of venues" do
      source = double('foursquare_proxy')
      source.stub(:search_venues).with('video').and_return(source_response)
      agent = VenueAgent.new(source)
      expect(agent.find('video')).to eq [ { name: "Video City", favourite: false },
                                          { name: "Music & Video Exchange", favourite: false } ]
    end
  end
end