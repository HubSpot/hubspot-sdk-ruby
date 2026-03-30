# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Meta
      class Origins
        class IPRanges
          # Retrieve a collection of IP ranges associated with specific services and
          # directions, such as `EMAIL`, `API`, `DNS`, or `WEB_SCRAPING`. The response
          # includes details like CIDR notation, description, and the direction of IP
          # traffic.
          #
          # @overload list(direction: nil, service: nil, request_options: {})
          #
          # @param direction [Array<Symbol, HubspotSDK::Models::Meta::Origins::IPRangeListParams::Direction>]
          # @param service [Array<Symbol, HubspotSDK::Models::Meta::Origins::IPRangeListParams::Service>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Meta::CollectionResponseIPRangeNoPaging]
          #
          # @see HubspotSDK::Models::Meta::Origins::IPRangeListParams
          def list(params = {})
            parsed, options = HubspotSDK::Meta::Origins::IPRangeListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "meta/network-origins/2026-03/ip-ranges",
              query: query,
              model: HubspotSDK::Meta::CollectionResponseIPRangeNoPaging,
              options: options
            )
          end

          # Retrieve a simplified list of IP ranges for specified services and directions in
          # plain text format. This endpoint provides a straightforward representation of IP
          # ranges without additional metadata.
          #
          # @overload list_simple(direction: nil, service: nil, request_options: {})
          #
          # @param direction [Array<Symbol, HubspotSDK::Models::Meta::Origins::IPRangeListSimpleParams::Direction>]
          # @param service [Array<Symbol, HubspotSDK::Models::Meta::Origins::IPRangeListSimpleParams::Service>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [String]
          #
          # @see HubspotSDK::Models::Meta::Origins::IPRangeListSimpleParams
          def list_simple(params = {})
            parsed, options = HubspotSDK::Meta::Origins::IPRangeListSimpleParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "meta/network-origins/2026-03/ip-ranges/simple",
              query: query,
              headers: {"accept" => "text/plain"},
              model: String,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
