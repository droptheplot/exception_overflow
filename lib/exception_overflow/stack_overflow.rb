require 'httparty'

module ExceptionOverflow
  class StackOverflow
    include HTTParty

    base_uri('api.stackexchange.com/2.2')

    def self.search(options = {})
      options.merge!({
        answers: 1,
        site: 'stackoverflow',
        sort: 'relevance',
        tagged: 'ruby'
      })

      get('/search/advanced', { query: options })
    end
  end
end
