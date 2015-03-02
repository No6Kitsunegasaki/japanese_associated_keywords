require "xmlrpc/client"

module JapaneseAssociatedKeywords
  class HatenaXMLRPC
    DOMAIN = "d.hatena.ne.jp"
    PATH = "/xmlrpc"

    def initialize
      @server = XMLRPC::Client.new(DOMAIN, PATH)
    end

    def get(words)
      if words.nil?
        []
      elsif words.instance_of?(String)
        innerGet([words])
      elsif words.instance_of?(Array)
        innerGet(words)
      else
        []
      end
    end
    
    private

    def innerGet(words)
        @server.call("hatena.getSimilarWord", {"wordlist" => words})['wordlist'].map{|v| v['word'] }
    end
  end
end
