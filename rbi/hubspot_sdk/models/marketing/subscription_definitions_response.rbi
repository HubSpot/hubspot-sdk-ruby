# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class SubscriptionDefinitionsResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::SubscriptionDefinitionsResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A list of all subscription definitions.
        sig { returns(T::Array[HubspotSDK::Marketing::SubscriptionDefinition]) }
        attr_accessor :subscription_definitions

        sig do
          params(
            subscription_definitions:
              T::Array[HubspotSDK::Marketing::SubscriptionDefinition::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of all subscription definitions.
          subscription_definitions:
        )
        end

        sig do
          override.returns(
            {
              subscription_definitions:
                T::Array[HubspotSDK::Marketing::SubscriptionDefinition]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
