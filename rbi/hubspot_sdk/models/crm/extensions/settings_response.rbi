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

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(Integer) }
          attr_accessor :height

          sig { returns(T::Boolean) }
          attr_accessor :is_ready

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Boolean) }
          attr_accessor :supports_custom_objects

          sig { returns(T::Boolean) }
          attr_accessor :supports_inbound_calling

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(String) }
          attr_accessor :url

          sig { returns(T::Boolean) }
          attr_accessor :uses_calling_window

          sig { returns(T::Boolean) }
          attr_accessor :uses_remote

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
            created_at:,
            height:,
            is_ready:,
            name:,
            supports_custom_objects:,
            supports_inbound_calling:,
            updated_at:,
            url:,
            uses_calling_window:,
            uses_remote:,
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
