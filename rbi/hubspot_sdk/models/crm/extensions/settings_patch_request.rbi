# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class SettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::SettingsPatchRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The height setting for the calling extension interface.
          sig { returns(T.nilable(Integer)) }
          attr_reader :height

          sig { params(height: Integer).void }
          attr_writer :height

          # Specifies whether the calling extension is ready for use.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_ready

          sig { params(is_ready: T::Boolean).void }
          attr_writer :is_ready

          # The name of the calling extension.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Indicates if the calling extension supports custom objects.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :supports_custom_objects

          sig { params(supports_custom_objects: T::Boolean).void }
          attr_writer :supports_custom_objects

          # Indicates if the calling extension supports inbound calling.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :supports_inbound_calling

          sig { params(supports_inbound_calling: T::Boolean).void }
          attr_writer :supports_inbound_calling

          # The URL associated with the calling extension settings.
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          # Indicates if the calling extension uses a calling window.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :uses_calling_window

          sig { params(uses_calling_window: T::Boolean).void }
          attr_writer :uses_calling_window

          # Indicates if the calling extension uses a remote connection.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :uses_remote

          sig { params(uses_remote: T::Boolean).void }
          attr_writer :uses_remote

          # The width setting for the calling extension interface.
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
            # The height setting for the calling extension interface.
            height: nil,
            # Specifies whether the calling extension is ready for use.
            is_ready: nil,
            # The name of the calling extension.
            name: nil,
            # Indicates if the calling extension supports custom objects.
            supports_custom_objects: nil,
            # Indicates if the calling extension supports inbound calling.
            supports_inbound_calling: nil,
            # The URL associated with the calling extension settings.
            url: nil,
            # Indicates if the calling extension uses a calling window.
            uses_calling_window: nil,
            # Indicates if the calling extension uses a remote connection.
            uses_remote: nil,
            # The width setting for the calling extension interface.
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
