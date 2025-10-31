# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Users#delete
      class UserDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute id_property
        #   The name of a property with unique user values. Valid values are
        #   `USER_ID`(default) or `EMAIL`
        #
        #   @return [Symbol, HubspotSDK::Models::Settings::UserDeleteParams::IDProperty, nil]
        optional :id_property, enum: -> { HubspotSDK::Settings::UserDeleteParams::IDProperty }

        # @!method initialize(id_property: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Settings::UserDeleteParams} for more details.
        #
        #   @param id_property [Symbol, HubspotSDK::Models::Settings::UserDeleteParams::IDProperty] The name of a property with unique user values. Valid values are `USER_ID`(defau
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        # The name of a property with unique user values. Valid values are
        # `USER_ID`(default) or `EMAIL`
        module IDProperty
          extend HubspotSDK::Internal::Type::Enum

          USER_ID = :USER_ID
          EMAIL = :EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
