# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventPublicReadResponseV2 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventPublicReadResponseV2,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Array[HubspotSDK::Marketing::CrmPropertyWrapper]) }
        attr_accessor :custom_properties

        sig { returns(String) }
        attr_accessor :event_name

        sig { returns(String) }
        attr_accessor :object_id_

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(HubspotSDK::Marketing::AppInfo)) }
        attr_reader :app_info

        sig { params(app_info: HubspotSDK::Marketing::AppInfo::OrHash).void }
        attr_writer :app_info

        sig { returns(T.nilable(Integer)) }
        attr_reader :attendees

        sig { params(attendees: Integer).void }
        attr_writer :attendees

        sig { returns(T.nilable(Integer)) }
        attr_reader :cancellations

        sig { params(cancellations: Integer).void }
        attr_writer :cancellations

        sig { returns(T.nilable(Time)) }
        attr_reader :end_date_time

        sig { params(end_date_time: Time).void }
        attr_writer :end_date_time

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :event_cancelled

        sig { params(event_cancelled: T::Boolean).void }
        attr_writer :event_cancelled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :event_completed

        sig { params(event_completed: T::Boolean).void }
        attr_writer :event_completed

        sig { returns(T.nilable(String)) }
        attr_reader :event_description

        sig { params(event_description: String).void }
        attr_writer :event_description

        sig { returns(T.nilable(String)) }
        attr_reader :event_organizer

        sig { params(event_organizer: String).void }
        attr_writer :event_organizer

        sig { returns(T.nilable(String)) }
        attr_reader :event_status

        sig { params(event_status: String).void }
        attr_writer :event_status

        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

        sig { returns(T.nilable(String)) }
        attr_reader :event_url

        sig { params(event_url: String).void }
        attr_writer :event_url

        sig { returns(T.nilable(String)) }
        attr_reader :external_event_id

        sig { params(external_event_id: String).void }
        attr_writer :external_event_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :no_shows

        sig { params(no_shows: Integer).void }
        attr_writer :no_shows

        sig { returns(T.nilable(Integer)) }
        attr_reader :registrants

        sig { params(registrants: Integer).void }
        attr_writer :registrants

        sig { returns(T.nilable(Time)) }
        attr_reader :start_date_time

        sig { params(start_date_time: Time).void }
        attr_writer :start_date_time

        sig do
          params(
            created_at: Time,
            custom_properties:
              T::Array[HubspotSDK::Marketing::CrmPropertyWrapper::OrHash],
            event_name: String,
            object_id_: String,
            updated_at: Time,
            app_info: HubspotSDK::Marketing::AppInfo::OrHash,
            attendees: Integer,
            cancellations: Integer,
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_completed: T::Boolean,
            event_description: String,
            event_organizer: String,
            event_status: String,
            event_type: String,
            event_url: String,
            external_event_id: String,
            no_shows: Integer,
            registrants: Integer,
            start_date_time: Time
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          custom_properties:,
          event_name:,
          object_id_:,
          updated_at:,
          app_info: nil,
          attendees: nil,
          cancellations: nil,
          end_date_time: nil,
          event_cancelled: nil,
          event_completed: nil,
          event_description: nil,
          event_organizer: nil,
          event_status: nil,
          event_type: nil,
          event_url: nil,
          external_event_id: nil,
          no_shows: nil,
          registrants: nil,
          start_date_time: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              custom_properties:
                T::Array[HubspotSDK::Marketing::CrmPropertyWrapper],
              event_name: String,
              object_id_: String,
              updated_at: Time,
              app_info: HubspotSDK::Marketing::AppInfo,
              attendees: Integer,
              cancellations: Integer,
              end_date_time: Time,
              event_cancelled: T::Boolean,
              event_completed: T::Boolean,
              event_description: String,
              event_organizer: String,
              event_status: String,
              event_type: String,
              event_url: String,
              external_event_id: String,
              no_shows: Integer,
              registrants: Integer,
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
