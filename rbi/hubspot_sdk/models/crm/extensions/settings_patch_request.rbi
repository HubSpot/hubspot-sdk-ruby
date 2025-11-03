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

          sig { returns(T.nilable(Integer)) }
          attr_reader :height

          sig { params(height: Integer).void }
          attr_writer :height

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_ready

          sig { params(is_ready: T::Boolean).void }
          attr_writer :is_ready

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :supports_custom_objects

          sig { params(supports_custom_objects: T::Boolean).void }
          attr_writer :supports_custom_objects

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :supports_inbound_calling

          sig { params(supports_inbound_calling: T::Boolean).void }
          attr_writer :supports_inbound_calling

          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :uses_calling_window

          sig { params(uses_calling_window: T::Boolean).void }
          attr_writer :uses_calling_window

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :uses_remote

          sig { params(uses_remote: T::Boolean).void }
          attr_writer :uses_remote

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
            height: nil,
            is_ready: nil,
            name: nil,
            supports_custom_objects: nil,
            supports_inbound_calling: nil,
            url: nil,
            uses_calling_window: nil,
            uses_remote: nil,
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
