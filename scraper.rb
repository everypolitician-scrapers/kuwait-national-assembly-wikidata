#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = WikiData::Category.new('تصنيف:أعضاء_مجلس_الأمة_الكويتي_2013', 'ar').member_titles
EveryPolitician::Wikidata.scrape_wikidata(names: { ar: names })
