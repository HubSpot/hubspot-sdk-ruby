# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Meta
      module Origins
        # @see HubSpotSDK::Resources::Meta::Origins::IPRanges#list
        class IPRangeListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute direction
          #
          #   @return [Array<Symbol, HubSpotSDK::Models::Meta::Origins::IPRangeListParams::Direction>, nil]
          optional :direction,
                   -> { HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::Meta::Origins::IPRangeListParams::Direction] }

          # @!attribute service
          #
          #   @return [Array<Symbol, HubSpotSDK::Models::Meta::Origins::IPRangeListParams::Service>, nil]
          optional :service,
                   -> { HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::Meta::Origins::IPRangeListParams::Service] }

          # @!method initialize(direction: nil, service: nil, request_options: {})
          #   @param direction [Array<Symbol, HubSpotSDK::Models::Meta::Origins::IPRangeListParams::Direction>]
          #   @param service [Array<Symbol, HubSpotSDK::Models::Meta::Origins::IPRangeListParams::Service>]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

          module Direction
            extend HubSpotSDK::Internal::Type::Enum

            INGRESS = :INGRESS
            EGRESS = :EGRESS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          module Service
            extend HubSpotSDK::Internal::Type::Enum

            EMAIL = :EMAIL
            API = :API
            DNS = :DNS
            WEB_SCRAPING = :WEB_SCRAPING
            TEST_SERVICE = :TEST_SERVICE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
