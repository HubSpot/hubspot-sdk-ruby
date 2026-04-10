# typed: strong

module HubSpotSDK
  module Resources
    class Settings
      class Currencies
        class ExchangeRates
          class Batch
            # Create multiple exchange rates in a single request.
            sig do
              params(
                inputs:
                  T::Array[
                    HubSpotSDK::Settings::ExchangeRateCreateRequest::OrHash
                  ],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Settings::BatchResponseExchangeRate)
            end
            def create(inputs:, request_options: {})
            end

            # Update the conversion rates for multiple exchange rates in a batch operation.
            sig do
              params(
                inputs:
                  T::Array[
                    HubSpotSDK::Settings::ExchangeRateUpdateRequest::OrHash
                  ],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Settings::BatchResponseExchangeRate)
            end
            def update(inputs:, request_options: {})
            end

            # Retrieve the details of multiple exchange rates in a single request, specified
            # by their IDs.
            sig do
              params(
                inputs: T::Array[HubSpotSDK::PublicObjectID::OrHash],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Settings::BatchResponseExchangeRate)
            end
            def get(
              # An array of deal split inputs
              inputs:,
              request_options: {}
            )
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
end
