# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ContactAddress < HubspotSDK::Internal::Type::BaseModel
        # @!attribute city
        #
        #   @return [String, nil]
        optional :city, String

        # @!attribute country
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute country_code
        #
        #   @return [String, nil]
        optional :country_code, String, api_name: :countryCode

        # @!attribute state
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute street
        #
        #   @return [String, nil]
        optional :street, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::ContactAddress::Type, nil]
        optional :type, enum: -> { HubspotSDK::Conversations::ContactAddress::Type }

        # @!attribute zip
        #
        #   @return [String, nil]
        optional :zip, String

        # @!method initialize(city: nil, country: nil, country_code: nil, state: nil, street: nil, type: nil, zip: nil)
        #   @param city [String]
        #   @param country [String]
        #   @param country_code [String]
        #   @param state [String]
        #   @param street [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::ContactAddress::Type]
        #   @param zip [String]

        # @see HubspotSDK::Models::Conversations::ContactAddress#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          HOME = :HOME
          WORK = :WORK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
