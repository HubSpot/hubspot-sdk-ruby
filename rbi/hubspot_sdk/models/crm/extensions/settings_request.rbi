# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class SettingsRequest < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::SettingsRequest,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Specifies the height of the calling extension interface.
          sig { returns(Integer) }
          attr_accessor :height

          # Indicates if the calling extension is ready for use.
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

          # The URL associated with the calling extension.
          sig { returns(String) }
          attr_accessor :url

          # Indicates if the calling extension uses a separate calling window.
          sig { returns(T::Boolean) }
          attr_accessor :uses_calling_window

          # Indicates if the calling extension uses remote services.
          sig { returns(T::Boolean) }
          attr_accessor :uses_remote

          # Specifies the width of the calling extension interface.
          sig { returns(Integer) }
          attr_accessor :width

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
            # Specifies the height of the calling extension interface.
            height:,
            # Indicates if the calling extension is ready for use.
            is_ready:,
            # The name of the calling extension.
            name:,
            # Indicates if the calling extension supports custom objects.
            supports_custom_objects:,
            # Indicates if the calling extension supports inbound calling.
            supports_inbound_calling:,
            # The URL associated with the calling extension.
            url:,
            # Indicates if the calling extension uses a separate calling window.
            uses_calling_window:,
            # Indicates if the calling extension uses remote services.
            uses_remote:,
            # Specifies the width of the calling extension interface.
            width:
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
