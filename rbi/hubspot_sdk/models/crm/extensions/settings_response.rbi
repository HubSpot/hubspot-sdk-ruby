# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class SettingsResponse < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::SettingsResponse,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The date and time when the calling extension settings were created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The height of the calling extension interface.
          sig { returns(Integer) }
          attr_accessor :height

          # Specifies whether the calling extension settings are ready for use.
          sig { returns(T::Boolean) }
          attr_accessor :is_ready

          # The name of the calling extension.
          sig { returns(String) }
          attr_accessor :name

          # Indicates if the calling extension supports custom objects.
          sig { returns(T::Boolean) }
          attr_accessor :supports_custom_objects

          # Indicates if the calling extension supports inbound calling.
          sig { returns(T::Boolean) }
          attr_accessor :supports_inbound_calling

          # The date and time when the calling extension settings were last updated.
          sig { returns(Time) }
          attr_accessor :updated_at

          # The URL associated with the calling extension.
          sig { returns(String) }
          attr_accessor :url

          # Specifies if the calling extension uses a dedicated calling window.
          sig { returns(T::Boolean) }
          attr_accessor :uses_calling_window

          # Indicates if the calling extension uses a remote service.
          sig { returns(T::Boolean) }
          attr_accessor :uses_remote

          # The width of the calling extension interface.
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
            # The date and time when the calling extension settings were created.
            created_at:,
            # The height of the calling extension interface.
            height:,
            # Specifies whether the calling extension settings are ready for use.
            is_ready:,
            # The name of the calling extension.
            name:,
            # Indicates if the calling extension supports custom objects.
            supports_custom_objects:,
            # Indicates if the calling extension supports inbound calling.
            supports_inbound_calling:,
            # The date and time when the calling extension settings were last updated.
            updated_at:,
            # The URL associated with the calling extension.
            url:,
            # Specifies if the calling extension uses a dedicated calling window.
            uses_calling_window:,
            # Indicates if the calling extension uses a remote service.
            uses_remote:,
            # The width of the calling extension interface.
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
