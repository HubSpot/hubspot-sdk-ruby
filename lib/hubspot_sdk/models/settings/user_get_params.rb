# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Users#get
      class UserGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute id_property
        #
        #   @return [Symbol, HubspotSDK::Models::Settings::UserGetParams::IDProperty, nil]
        optional :id_property, enum: -> { HubspotSDK::Settings::UserGetParams::IDProperty }

        # @!method initialize(user_id:, id_property: nil, request_options: {})
        #   @param user_id [String]
        #   @param id_property [Symbol, HubspotSDK::Models::Settings::UserGetParams::IDProperty]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        module IDProperty
          extend HubspotSDK::Internal::Type::Enum

          EMAIL = :EMAIL
          USER_ID = :USER_ID

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
