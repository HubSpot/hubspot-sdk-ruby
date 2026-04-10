# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicLocation < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicLocation::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::PublicLocation::Type }

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
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::PublicLocation::Type]
        #   @param address [String]
        #   @param name [String]
        #   @param url [String]

        # @see HubSpotSDK::Models::Conversations::PublicLocation#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          LOCATION = :LOCATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
