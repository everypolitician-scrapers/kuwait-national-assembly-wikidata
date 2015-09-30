#!/bin/env ruby
# encoding: utf-8

require 'scraperwiki'
require 'wikidata/fetcher'

WikiData::Category.new('تصنيف:أعضاء_مجلس_الأمة_الكويتي', 'ar').wikidata_ids.each do |id|
  data = WikiData::Fetcher.new(id: id).data('ar') or next
  ScraperWiki.save_sqlite([:id], data)
end
