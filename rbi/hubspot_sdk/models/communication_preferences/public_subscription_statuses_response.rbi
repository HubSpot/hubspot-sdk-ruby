# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class PublicSubscriptionStatusesResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatusesResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The email address of the recipient for whom the subscription statuses are being
        # retrieved. It is a string.
        sig { returns(String) }
        attr_accessor :recipient

        # An array of PublicSubscriptionStatus objects, each detailing the subscription
        # status of the recipient for a particular subscription.
        sig do
          returns(
            T::Array[
              HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus
            ]
          )
        end
        attr_accessor :subscription_statuses

        sig do
          params(
            recipient: String,
            subscription_statuses:
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The email address of the recipient for whom the subscription statuses are being
          # retrieved. It is a string.
          recipient:,
          # An array of PublicSubscriptionStatus objects, each detailing the subscription
          # status of the recipient for a particular subscription.
          subscription_statuses:
        )
        end

        sig do
          override.returns(
            {
              recipient: String,
              subscription_statuses:
                T::Array[
                  HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus
                ]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
