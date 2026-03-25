# typed: strong

module HubspotSDK
  module Models
    MarketingEventEmailSubscriber = Marketing::MarketingEventEmailSubscriber

    module Marketing
      class MarketingEventEmailSubscriber < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventEmailSubscriber,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The key-value set that contains properties of the contact.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :contact_properties

        # The email address of the contact in HubSpot to associate with the event.
        sig { returns(String) }
        attr_accessor :email

        # Timestamp in milliseconds at which the contact subscribed to the event.
        sig { returns(Integer) }
        attr_accessor :interaction_date_time

        # The key-value set that contains properties of the marketing event.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig do
          params(
            contact_properties: T::Hash[Symbol, String],
            email: String,
            interaction_date_time: Integer,
            properties: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The key-value set that contains properties of the contact.
          contact_properties:,
          # The email address of the contact in HubSpot to associate with the event.
          email:,
          # Timestamp in milliseconds at which the contact subscribed to the event.
          interaction_date_time:,
          # The key-value set that contains properties of the marketing event.
          properties:
        )
        end

        sig do
          override.returns(
            {
              contact_properties: T::Hash[Symbol, String],
              email: String,
              interaction_date_time: Integer,
              properties: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
