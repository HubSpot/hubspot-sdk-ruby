# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventEmailSubscriber < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventEmailSubscriber,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The email address of the contact in HubSpot to associate with the event.
        sig { returns(String) }
        attr_accessor :email

        # Timestamp in milliseconds at which the contact subscribed to the event.
        sig { returns(Integer) }
        attr_accessor :interaction_date_time

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :contact_properties

        sig { params(contact_properties: T::Hash[Symbol, String]).void }
        attr_writer :contact_properties

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :properties

        sig { params(properties: T::Hash[Symbol, String]).void }
        attr_writer :properties

        sig do
          params(
            email: String,
            interaction_date_time: Integer,
            contact_properties: T::Hash[Symbol, String],
            properties: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The email address of the contact in HubSpot to associate with the event.
          email:,
          # Timestamp in milliseconds at which the contact subscribed to the event.
          interaction_date_time:,
          contact_properties: nil,
          properties: nil
        )
        end

        sig do
          override.returns(
            {
              email: String,
              interaction_date_time: Integer,
              contact_properties: T::Hash[Symbol, String],
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
