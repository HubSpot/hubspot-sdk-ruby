# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicLocation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute latitude
        #
        #   @return [Float]
        required :latitude, Float

        # @!attribute longitude
        #
        #   @return [Float]
        required :longitude, Float

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicLocation::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicLocation::Type }

        # @!attribute address
        #
        #   @return [String, nil]
        optional :address, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(latitude:, longitude:, type:, address: nil, name: nil, url: nil)
        #   @param latitude [Float]
        #   @param longitude [Float]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicLocation::Type]
        #   @param address [String]
        #   @param name [String]
        #   @param url [String]

        # @see HubspotSDK::Models::Conversations::PublicLocation#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          LOCATION = :LOCATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
