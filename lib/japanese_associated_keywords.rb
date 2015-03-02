require_relative "japanese_associated_keywords/version"
require_relative 'hatena_xml_rpc'

module JapaneseAssociatedKeywords
  DEFAULT_SITE = 'hatena'
  SITES = {
    'hatena' => HatenaXMLRPC.new
  }.freeze

  module ModuleMethods
    def get(words, site=nil)
      site = DEFAULT_SITE if site.nil?
      SITES[site].get(words)
    end
  end

  extend ModuleMethods
end
