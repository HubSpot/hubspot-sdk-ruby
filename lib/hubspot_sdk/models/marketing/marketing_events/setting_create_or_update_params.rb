# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module MarketingEvents
        # @see HubSpotSDK::Resources::Marketing::MarketingEvents::Settings#create_or_update
        class SettingCreateOrUpdateParams < HubSpotSDK::Models::Marketing::EventDetailSettingsURL
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!method initialize(app_id:, request_options: {})
          #   @param app_id [Integer]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
