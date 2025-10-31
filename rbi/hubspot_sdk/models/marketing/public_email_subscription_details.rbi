# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailSubscriptionDetails < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicEmailSubscriptionDetails,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of the selected office location.
        sig { returns(T.nilable(String)) }
        attr_reader :office_location_id

        sig { params(office_location_id: String).void }
        attr_writer :office_location_id

        sig { returns(T.nilable(String)) }
        attr_reader :preferences_group_id

        sig { params(preferences_group_id: String).void }
        attr_writer :preferences_group_id

        # ID of the subscription.
        sig { returns(T.nilable(String)) }
        attr_reader :subscription_id

        sig { params(subscription_id: String).void }
        attr_writer :subscription_id

        sig { returns(T.nilable(String)) }
        attr_reader :subscription_name

        sig { params(subscription_name: String).void }
        attr_writer :subscription_name

        # Data structure representing the subscription fields of the email.
        sig do
          params(
            office_location_id: String,
            preferences_group_id: String,
            subscription_id: String,
            subscription_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the selected office location.
          office_location_id: nil,
          preferences_group_id: nil,
          # ID of the subscription.
          subscription_id: nil,
          subscription_name: nil
        )
        end

        sig do
          override.returns(
            {
              office_location_id: String,
              preferences_group_id: String,
              subscription_id: String,
              subscription_name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
