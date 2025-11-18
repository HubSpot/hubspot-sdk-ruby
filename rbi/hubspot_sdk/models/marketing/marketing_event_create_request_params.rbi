# typed: strong

module HubspotSDK
  module Models
    MarketingEventCreateRequestParams =
      Marketing::MarketingEventCreateRequestParams

    module Marketing
      class MarketingEventCreateRequestParams < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventCreateRequestParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A list of PropertyValues. These can be whatever kind of property names and
        # values you want. However, they must already exist on the HubSpot account's
        # definition of the MarketingEvent Object. If they don't they will be filtered out
        # and not set. In order to do this you'll need to create a new PropertyGroup on
        # the HubSpot account's MarketingEvent object for your specific app and create the
        # Custom Property you want to track on that HubSpot account. Do not create any new
        # default properties on the MarketingEvent object as that will apply to all
        # HubSpot accounts.
        sig { returns(T::Array[HubspotSDK::Marketing::PropertyValue]) }
        attr_accessor :custom_properties

        # The name of the marketing event.
        sig { returns(String) }
        attr_accessor :event_name

        # The name of the organizer of the marketing event.
        sig { returns(String) }
        attr_accessor :event_organizer

        # The accountId that is associated with this marketing event in the external event
        # application.
        sig { returns(String) }
        attr_accessor :external_account_id

        # The id of the marketing event in the external event application.
        sig { returns(String) }
        attr_accessor :external_event_id

        # The end date and time of the marketing event.
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date_time

        sig { params(end_date_time: Time).void }
        attr_writer :end_date_time

        # Indicates if the marketing event has been cancelled. Defaults to `false`
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :event_cancelled

        sig { params(event_cancelled: T::Boolean).void }
        attr_writer :event_cancelled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :event_completed

        sig { params(event_completed: T::Boolean).void }
        attr_writer :event_completed

        # The description of the marketing event.
        sig { returns(T.nilable(String)) }
        attr_reader :event_description

        sig { params(event_description: String).void }
        attr_writer :event_description

        # Describes what type of event this is. For example: `WEBINAR`, `CONFERENCE`,
        # `WORKSHOP`
        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

        # A URL in the external event application where the marketing event can be
        # managed.
        sig { returns(T.nilable(String)) }
        attr_reader :event_url

        sig { params(event_url: String).void }
        attr_writer :event_url

        # The start date and time of the marketing event.
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date_time

        sig { params(start_date_time: Time).void }
        attr_writer :start_date_time

        sig do
          params(
            custom_properties:
              T::Array[HubspotSDK::Marketing::PropertyValue::OrHash],
            event_name: String,
            event_organizer: String,
            external_account_id: String,
            external_event_id: String,
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_completed: T::Boolean,
            event_description: String,
            event_type: String,
            event_url: String,
            start_date_time: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of PropertyValues. These can be whatever kind of property names and
          # values you want. However, they must already exist on the HubSpot account's
          # definition of the MarketingEvent Object. If they don't they will be filtered out
          # and not set. In order to do this you'll need to create a new PropertyGroup on
          # the HubSpot account's MarketingEvent object for your specific app and create the
          # Custom Property you want to track on that HubSpot account. Do not create any new
          # default properties on the MarketingEvent object as that will apply to all
          # HubSpot accounts.
          custom_properties:,
          # The name of the marketing event.
          event_name:,
          # The name of the organizer of the marketing event.
          event_organizer:,
          # The accountId that is associated with this marketing event in the external event
          # application.
          external_account_id:,
          # The id of the marketing event in the external event application.
          external_event_id:,
          # The end date and time of the marketing event.
          end_date_time: nil,
          # Indicates if the marketing event has been cancelled. Defaults to `false`
          event_cancelled: nil,
          event_completed: nil,
          # The description of the marketing event.
          event_description: nil,
          # Describes what type of event this is. For example: `WEBINAR`, `CONFERENCE`,
          # `WORKSHOP`
          event_type: nil,
          # A URL in the external event application where the marketing event can be
          # managed.
          event_url: nil,
          # The start date and time of the marketing event.
          start_date_time: nil
        )
        end

        sig do
          override.returns(
            {
              custom_properties: T::Array[HubspotSDK::Marketing::PropertyValue],
              event_name: String,
              event_organizer: String,
              external_account_id: String,
              external_event_id: String,
              end_date_time: Time,
              event_cancelled: T::Boolean,
              event_completed: T::Boolean,
              event_description: String,
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
