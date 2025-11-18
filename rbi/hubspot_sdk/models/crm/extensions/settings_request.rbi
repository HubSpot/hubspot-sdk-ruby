# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class SettingsRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::SettingsRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

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
            height:,
            is_ready:,
            name:,
            supports_custom_objects:,
            supports_inbound_calling:,
            url:,
            uses_calling_window:,
            uses_remote:,
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
