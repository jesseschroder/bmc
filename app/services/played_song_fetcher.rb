class PlayedSongFetcher
  URL='https://www.live885.com/api/v1/music/broadcastHistory'

  class << self

    def fetch_and_save
      fetch
    end

    private

    def fetch
      30.times do |index|
        next if index == 0
        response = Faraday.get(URL, { day: index, playerID: 778 })

        parsed_response = JSON.parse(response.body)

        save_to_yaml(parsed_response) if parsed_response['status'] == 'success'
      end

    end

    def save_to_yaml(data)
      date = Time.parse(data.dig('data', 'date')).strftime('%m-%d-%Y')
      File.open("db/scrapped_data/#{date}.yml", 'w') { |file| file.write data.dig('data', 'songs').to_yaml }
    end
  end
end
