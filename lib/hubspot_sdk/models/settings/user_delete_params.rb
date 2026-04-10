# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      # @see HubSpotSDK::Resources::Settings::Users#delete
      class UserDeleteParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute id_property
        #
        #   @return [Symbol, HubSpotSDK::Models::Settings::UserDeleteParams::IDProperty, nil]
        optional :id_property, enum: -> { HubSpotSDK::Settings::UserDeleteParams::IDProperty }

        # @!method initialize(user_id:, id_property: nil, request_options: {})
        #   @param user_id [String]
        #   @param id_property [Symbol, HubSpotSDK::Models::Settings::UserDeleteParams::IDProperty]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        module IDProperty
          extend HubSpotSDK::Internal::Type::Enum

          EMAIL = :EMAIL
          USER_ID = :USER_ID

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
