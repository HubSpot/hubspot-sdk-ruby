# frozen_string_literal: true

module HubspotSDK
  module Models
    module Meta
      module Origins
        # @see HubspotSDK::Resources::Meta::Origins::IPRanges#list_simple
        class IPRangeListSimpleParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute direction
          #   An array of directions to filter the IP ranges by. Valid values are `INGRESS`
          #   and `EGRESS`.
          #
          #   @return [Array<Symbol, HubspotSDK::Models::Meta::Origins::IPRangeListSimpleParams::Direction>, nil]
          optional :direction,
                   -> { HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Direction] }

          # @!attribute service
          #   An array specifying the service types to filter by. Valid values include
          #   `EMAIL`, `API`, `DNS`, `WEB_SCRAPING`, and `TEST_SERVICE`.
          #
          #   @return [Array<Symbol, HubspotSDK::Models::Meta::Origins::IPRangeListSimpleParams::Service>, nil]
          optional :service,
                   -> { HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service] }

          # @!method initialize(direction: nil, service: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Meta::Origins::IPRangeListSimpleParams} for more details.
          #
          #   @param direction [Array<Symbol, HubspotSDK::Models::Meta::Origins::IPRangeListSimpleParams::Direction>] An array of directions to filter the IP ranges by. Valid values are `INGRESS` an
          #
          #   @param service [Array<Symbol, HubspotSDK::Models::Meta::Origins::IPRangeListSimpleParams::Service>] An array specifying the service types to filter by. Valid values include `EMAIL`
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          module Direction
            extend HubspotSDK::Internal::Type::Enum

            INGRESS = :INGRESS
            EGRESS = :EGRESS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          module Service
            extend HubspotSDK::Internal::Type::Enum

            EMAIL = :EMAIL
            API = :API
            DNS = :DNS
            WEB_SCRAPING = :WEB_SCRAPING

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
