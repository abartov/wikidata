require 'httparty'
require 'hashie'
require 'i18n'
require "wikidata/version"
require "wikidata/hashed_object"
require "wikidata/identity_map"
require "wikidata/entity"
require "wikidata/item"
require "wikidata/property"
require "wikidata/statement"
require "wikidata/snak"
require "wikidata/datavalues/value"
require "wikidata/datavalues/string"
require "wikidata/datavalues/commons_media"
require "wikidata/datavalues/time"
require "wikidata/datavalues/globecoordinate"
require "wikidata/datavalues/entity"

module Wikidata

  @@verbose = false

  def self.use_only_default_language
    true
  end

  def self.default_languages_hash
    use_only_default_language ? {languages: I18n.default_locale} : {}
  end

  def self.verbose?
    !!@@verbose
  end

  def self.verbose=(v)
    @@verbose = !!v
  end

end
