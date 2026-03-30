# frozen_string_literal: true

module HubspotSDK
  module Models
    module Meta
      class IPRange < HubspotSDK::Internal::Type::BaseModel
        # @!attribute cidr
        #   The CIDR notation representing the IP range.
        #
        #   @return [String]
        required :cidr, String

        # @!attribute description
        #   A description of the IP range.
        #
        #   @return [String]
        required :description, String

        # @!attribute direction
        #   The direction of the IP traffic, which can be INGRESS or EGRESS.
        #
        #   @return [Symbol, HubspotSDK::Models::Meta::IPRange::Direction]
        required :direction, enum: -> { HubspotSDK::Meta::IPRange::Direction }

        # @!attribute service
        #   The service associated with the IP range, such as EMAIL, API, DNS, or
        #   WEB_SCRAPING.
        #
        #   @return [Symbol, HubspotSDK::Models::Meta::IPRange::Service]
        required :service, enum: -> { HubspotSDK::Meta::IPRange::Service }

        # @!method initialize(cidr:, description:, direction:, service:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Meta::IPRange} for more details.
        #
        #   @param cidr [String] The CIDR notation representing the IP range.
        #
        #   @param description [String] A description of the IP range.
        #
        #   @param direction [Symbol, HubspotSDK::Models::Meta::IPRange::Direction] The direction of the IP traffic, which can be INGRESS or EGRESS.
        #
        #   @param service [Symbol, HubspotSDK::Models::Meta::IPRange::Service] The service associated with the IP range, such as EMAIL, API, DNS, or WEB_SCRAPI

        # The direction of the IP traffic, which can be INGRESS or EGRESS.
        #
        # @see HubspotSDK::Models::Meta::IPRange#direction
        module Direction
          extend HubspotSDK::Internal::Type::Enum

          EGRESS = :EGRESS
          INGRESS = :INGRESS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The service associated with the IP range, such as EMAIL, API, DNS, or
        # WEB_SCRAPING.
        #
        # @see HubspotSDK::Models::Meta::IPRange#service
        module Service
          extend HubspotSDK::Internal::Type::Enum

          API = :API
          DNS = :DNS
          EMAIL = :EMAIL
          TEST_SERVICE = :TEST_SERVICE
          WEB_SCRAPING = :WEB_SCRAPING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
