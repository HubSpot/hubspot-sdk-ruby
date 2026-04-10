# typed: strong

module HubSpotSDK
  module Resources
    class Meta
      class Origins
        class IPRanges
          # Retrieve a collection of IP ranges associated with specific services and
          # directions, such as `EMAIL`, `API`, `DNS`, or `WEB_SCRAPING`. The response
          # includes details like CIDR notation, description, and the direction of IP
          # traffic.
          sig do
            params(
              direction:
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Direction::OrSymbol
                ],
              service:
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Service::OrSymbol
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Meta::CollectionResponseIPRangeNoPaging)
          end
          def list(direction: nil, service: nil, request_options: {})
          end

          # Retrieve a simplified list of IP ranges for specified services and directions in
          # plain text format. This endpoint provides a straightforward representation of IP
          # ranges without additional metadata.
          sig do
            params(
              direction:
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListSimpleParams::Direction::OrSymbol
                ],
              service:
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListSimpleParams::Service::OrSymbol
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(String)
          end
          def list_simple(direction: nil, service: nil, request_options: {})
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
