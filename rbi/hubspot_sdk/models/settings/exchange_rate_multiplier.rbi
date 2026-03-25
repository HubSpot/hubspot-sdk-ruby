# typed: strong

module HubspotSDK
  module Models
    module Settings
      class ExchangeRateMultiplier < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::ExchangeRateMultiplier,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The updated conversion rate between the to and from currency code of this
        # exchange rate.
        sig { returns(Float) }
        attr_accessor :conversion_rate

        # The date the exchange rate is in effect.
        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig do
          params(conversion_rate: Float, effective_at: Time).returns(
            T.attached_class
          )
        end
        def self.new(
          # The updated conversion rate between the to and from currency code of this
          # exchange rate.
          conversion_rate:,
          # The date the exchange rate is in effect.
          effective_at: nil
        )
        end

        sig { override.returns({ conversion_rate: Float, effective_at: Time }) }
        def to_hash
        end
      end
    end
  end
end
