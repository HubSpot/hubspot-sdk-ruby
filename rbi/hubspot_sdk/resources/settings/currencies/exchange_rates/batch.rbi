# typed: strong

module HubspotSDK
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
                    HubspotSDK::Settings::ExchangeRateCreateRequest::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Settings::BatchResponseExchangeRate)
            end
            def create(inputs:, request_options: {})
            end

            # Update the conversion rates for multiple exchange rates in a batch operation.
            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::Settings::ExchangeRateUpdateRequest::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Settings::BatchResponseExchangeRate)
            end
            def update(inputs:, request_options: {})
            end

            # Retrieve the details of multiple exchange rates in a single request, specified
            # by their IDs.
            sig do
              params(
                inputs: T::Array[HubspotSDK::PublicObjectID::OrHash],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Settings::BatchResponseExchangeRate)
            end
            def get(
              # An array of deal split inputs
              inputs:,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
