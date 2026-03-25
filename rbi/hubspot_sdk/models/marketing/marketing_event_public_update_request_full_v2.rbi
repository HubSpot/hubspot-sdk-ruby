# typed: strong

module HubspotSDK
  module Models
    MarketingEventPublicUpdateRequestFullV2 =
      Marketing::MarketingEventPublicUpdateRequestFullV2

    module Marketing
      class MarketingEventPublicUpdateRequestFullV2 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventPublicUpdateRequestFullV2,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::PropertyValue]) }
        attr_accessor :custom_properties

        # The internal ID of the marketing event in HubSpot
        sig { returns(String) }
        attr_accessor :object_id_

        # The end date and time of the marketing event
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date_time

        sig { params(end_date_time: Time).void }
        attr_writer :end_date_time

        # Indicates if the marketing event has been cancelled
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :event_cancelled

        sig { params(event_cancelled: T::Boolean).void }
        attr_writer :event_cancelled

        # The description of the marketing event
        sig { returns(T.nilable(String)) }
        attr_reader :event_description

        sig { params(event_description: String).void }
        attr_writer :event_description

        # The name of the marketing event
        sig { returns(T.nilable(String)) }
        attr_reader :event_name

        sig { params(event_name: String).void }
        attr_writer :event_name

        # The name of the organizer of the marketing event
        sig { returns(T.nilable(String)) }
        attr_reader :event_organizer

        sig { params(event_organizer: String).void }
        attr_writer :event_organizer

        # The type of the marketing event
        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

        # A URL in the external event application where the marketing event can be managed
        sig { returns(T.nilable(String)) }
        attr_reader :event_url

        sig { params(event_url: String).void }
        attr_writer :event_url

        # The start date and time of the marketing event
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date_time

        sig { params(start_date_time: Time).void }
        attr_writer :start_date_time

        sig do
          params(
            custom_properties: T::Array[HubspotSDK::PropertyValue::OrHash],
            object_id_: String,
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_description: String,
            event_name: String,
            event_organizer: String,
            event_type: String,
            event_url: String,
            start_date_time: Time
          ).returns(T.attached_class)
        end
        def self.new(
          custom_properties:,
          # The internal ID of the marketing event in HubSpot
          object_id_:,
          # The end date and time of the marketing event
          end_date_time: nil,
          # Indicates if the marketing event has been cancelled
          event_cancelled: nil,
          # The description of the marketing event
          event_description: nil,
          # The name of the marketing event
          event_name: nil,
          # The name of the organizer of the marketing event
          event_organizer: nil,
          # The type of the marketing event
          event_type: nil,
          # A URL in the external event application where the marketing event can be managed
          event_url: nil,
          # The start date and time of the marketing event
          start_date_time: nil
        )
        end

        sig do
          override.returns(
            {
              custom_properties: T::Array[HubspotSDK::PropertyValue],
              object_id_: String,
              end_date_time: Time,
              event_cancelled: T::Boolean,
              event_description: String,
              event_name: String,
              event_organizer: String,
              event_type: String,
              event_url: String,
              start_date_time: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
