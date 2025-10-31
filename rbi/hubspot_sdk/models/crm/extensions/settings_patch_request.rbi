# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class SettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::SettingsPatchRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The target height of the iframe that will contain your phone/calling UI.
          sig { returns(T.nilable(Integer)) }
          attr_reader :height

          sig { params(height: Integer).void }
          attr_writer :height

          # When true, this indicates that your calling app is ready for production. Users
          # will be able to select your calling app as their provider and can then click to
          # dial within HubSpot.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_ready

          sig { params(is_ready: T::Boolean).void }
          attr_writer :is_ready

          # The name of your calling service to display to users.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # When true, users will be able to click to dial from custom objects.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :supports_custom_objects

          sig { params(supports_custom_objects: T::Boolean).void }
          attr_writer :supports_custom_objects

          # When true, this indicates that your calling app supports inbound calling within
          # HubSpot.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :supports_inbound_calling

          sig { params(supports_inbound_calling: T::Boolean).void }
          attr_writer :supports_inbound_calling

          # The URL to your phone/calling UI, built with the [Calling SDK](#).
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          # When false, this indicates that your calling app does not require the use of the
          # separate calling window to hold the call connection.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :uses_calling_window

          sig { params(uses_calling_window: T::Boolean).void }
          attr_writer :uses_calling_window

          # When false, this indicates that your calling app does not use the anchored
          # calling remote within the HubSpot app.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :uses_remote

          sig { params(uses_remote: T::Boolean).void }
          attr_writer :uses_remote

          # The target width of the iframe that will contain your phone/calling UI.
          sig { returns(T.nilable(Integer)) }
          attr_reader :width

          sig { params(width: Integer).void }
          attr_writer :width

          sig do
            params(
              height: Integer,
              is_ready: T::Boolean,
              name: String,
              supports_custom_objects: T::Boolean,
              supports_inbound_calling: T::Boolean,
              url: String,
              uses_calling_window: T::Boolean,
              uses_remote: T::Boolean,
              width: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The target height of the iframe that will contain your phone/calling UI.
            height: nil,
            # When true, this indicates that your calling app is ready for production. Users
            # will be able to select your calling app as their provider and can then click to
            # dial within HubSpot.
            is_ready: nil,
            # The name of your calling service to display to users.
            name: nil,
            # When true, users will be able to click to dial from custom objects.
            supports_custom_objects: nil,
            # When true, this indicates that your calling app supports inbound calling within
            # HubSpot.
            supports_inbound_calling: nil,
            # The URL to your phone/calling UI, built with the [Calling SDK](#).
            url: nil,
            # When false, this indicates that your calling app does not require the use of the
            # separate calling window to hold the call connection.
            uses_calling_window: nil,
            # When false, this indicates that your calling app does not use the anchored
            # calling remote within the HubSpot app.
            uses_remote: nil,
            # The target width of the iframe that will contain your phone/calling UI.
            width: nil
          )
          end

          sig do
            override.returns(
              {
                height: Integer,
                is_ready: T::Boolean,
                name: String,
                supports_custom_objects: T::Boolean,
                supports_inbound_calling: T::Boolean,
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
