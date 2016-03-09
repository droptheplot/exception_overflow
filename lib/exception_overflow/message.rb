module ExceptionOverflow
  class Message
    def initialize(q)
      @q = q
    end

    def render
      @q + "\n\n#{links}"
    end

    private

      def links
        ExceptionOverflow::StackOverflow.search(q: @q)
          .parsed_response['items'].map{ |i| template(i['title'], i['link']) }
          .first(5).join
      end

      # Formatted link for output:
      #
      # <b>Which is the best graphical ruby profiler?</b>
      # http://stackoverflow.com/questions/8448705/which-is-the-best-graphical-ruby-profiler
      #
      def template(title, link)
        "\t\e[1m#{title}\e[22m\n\t#{link}\n\n"
      end
  end
end
