# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      # @see HubSpotSDK::Resources::Settings::Users#update
      class UserUpdateParams < HubSpotSDK::Models::Settings::PublicUserUpdate
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute id_property
        #
        #   @return [Symbol, HubSpotSDK::Models::Settings::PublicUserUpdate::IDProperty, nil]
        optional :id_property, enum: -> { HubSpotSDK::Settings::PublicUserUpdate::IDProperty }

        # @!method initialize(user_id:, id_property: nil, request_options: {})
        #   @param user_id [String]
        #   @param id_property [Symbol, HubSpotSDK::Models::Settings::PublicUserUpdate::IDProperty]
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
