class OmdbClient
  URL = 'https://www.omdbapi.com/'
  def initialize
    @api_key = Rails.application.credentials.omdb[:apikey]
  end
  def search(string)
    parse_body(
      Faraday.get(URL,{apikey: @api_key, s: string})
    )
  end
  def find_by_title(title)

    parse_body(
      Faraday.get(URL,{apikey: @api_key, t: title})
    )
  end
   def parse_body(response)
     JSON.parse(response.body)
   end
end
