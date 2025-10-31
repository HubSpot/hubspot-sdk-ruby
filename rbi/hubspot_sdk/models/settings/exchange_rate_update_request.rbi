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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :conversion_rate

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
        def self.new(id:, conversion_rate:, effective_at: nil)
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
