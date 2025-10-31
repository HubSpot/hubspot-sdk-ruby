# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class SettingsResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::SettingsResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # When this calling extension was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The target height of the iframe that will contain your phone/calling UI.
          sig { returns(Integer) }
          attr_accessor :height

          # When true, this indicates that your calling app is ready for production. Users
          # will be able to select your calling app as their provider and can then click to
          # dial within HubSpot.
          sig { returns(T::Boolean) }
          attr_accessor :is_ready

          # The name of your calling service to display to users.
          sig { returns(String) }
          attr_accessor :name

          # When true, users will be able to click to dial from custom objects.
          sig { returns(T::Boolean) }
          attr_accessor :supports_custom_objects

          # When true, this indicates that your calling app supports inbound calling within
          # HubSpot.
          sig { returns(T::Boolean) }
          attr_accessor :supports_inbound_calling

          # The last time the settings for this calling extension were modified.
          sig { returns(Time) }
          attr_accessor :updated_at

          # The URL to your phone/calling UI, built with the [Calling SDK](#).
          sig { returns(String) }
          attr_accessor :url

          # When false, this indicates that your calling app does not require the use of the
          # separate calling window to hold the call connection.
          sig { returns(T::Boolean) }
          attr_accessor :uses_calling_window

          # When false, this indicates that your calling app does not use the anchored
          # calling remote within the HubSpot app.
          sig { returns(T::Boolean) }
          attr_accessor :uses_remote

          # The target width of the iframe that will contain your phone/calling UI.
          sig { returns(Integer) }
          attr_accessor :width

          sig do
            params(
              created_at: Time,
              height: Integer,
              is_ready: T::Boolean,
              name: String,
              supports_custom_objects: T::Boolean,
              supports_inbound_calling: T::Boolean,
              updated_at: Time,
              url: String,
              uses_calling_window: T::Boolean,
              uses_remote: T::Boolean,
              width: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # When this calling extension was created.
            created_at:,
            # The target height of the iframe that will contain your phone/calling UI.
            height:,
            # When true, this indicates that your calling app is ready for production. Users
            # will be able to select your calling app as their provider and can then click to
            # dial within HubSpot.
            is_ready:,
            # The name of your calling service to display to users.
            name:,
            # When true, users will be able to click to dial from custom objects.
            supports_custom_objects:,
            # When true, this indicates that your calling app supports inbound calling within
            # HubSpot.
            supports_inbound_calling:,
            # The last time the settings for this calling extension were modified.
            updated_at:,
            # The URL to your phone/calling UI, built with the [Calling SDK](#).
            url:,
            # When false, this indicates that your calling app does not require the use of the
            # separate calling window to hold the call connection.
            uses_calling_window:,
            # When false, this indicates that your calling app does not use the anchored
            # calling remote within the HubSpot app.
            uses_remote:,
            # The target width of the iframe that will contain your phone/calling UI.
            width:
          )
          end

          sig do
            override.returns(
              {
                created_at: Time,
                height: Integer,
                is_ready: T::Boolean,
                name: String,
                supports_custom_objects: T::Boolean,
                supports_inbound_calling: T::Boolean,
                updated_at: Time,
                url: String,
                uses_calling_window: T::Boolean,
                uses_remote: T::Boolean,
                width: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
