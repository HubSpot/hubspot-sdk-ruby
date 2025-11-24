# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PauseSubscriptionRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PauseSubscriptionRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :pause_reason

        sig { params(pause_reason: String).void }
        attr_writer :pause_reason

        sig { params(pause_reason: String).returns(T.attached_class) }
        def self.new(pause_reason: nil)
        end

        sig { override.returns({ pause_reason: String }) }
        def to_hash
        end
      end
    end
  end
end
