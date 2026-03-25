# typed: strong

module HubspotSDK
  module Models
    module Settings
      class ExchangeRateUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::ExchangeRateUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A unique identifier for the exchange rate being updated
        sig { returns(String) }
        attr_accessor :id

        # The updated conversion rate between the to and from currency code of this
        # exchange rate.
        sig { returns(Float) }
        attr_accessor :conversion_rate

        # The date the exchange rate will be in effect.
        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig do
          params(
            id: String,
            conversion_rate: Float,
            effective_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique identifier for the exchange rate being updated
          id:,
          # The updated conversion rate between the to and from currency code of this
          # exchange rate.
          conversion_rate:,
          # The date the exchange rate will be in effect.
          effective_at: nil
        )
        end

        sig do
          override.returns(
            { id: String, conversion_rate: Float, effective_at: Time }
          )
        end
        def to_hash
        end
      end
    end
  end
end
