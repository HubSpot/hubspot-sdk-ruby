# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicSubscriptionStatusesResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicSubscriptionStatusesResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Email address of the contact.
        sig { returns(String) }
        attr_accessor :recipient

        # A list of all of the contact's subscriptions statuses.
        sig do
          returns(T::Array[HubspotSDK::Marketing::PublicSubscriptionStatus])
        end
        attr_accessor :subscription_statuses

        sig do
          params(
            recipient: String,
            subscription_statuses:
              T::Array[HubspotSDK::Marketing::PublicSubscriptionStatus::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Email address of the contact.
          recipient:,
          # A list of all of the contact's subscriptions statuses.
          subscription_statuses:
        )
        end

        sig do
          override.returns(
            {
              recipient: String,
              subscription_statuses:
                T::Array[HubspotSDK::Marketing::PublicSubscriptionStatus]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
