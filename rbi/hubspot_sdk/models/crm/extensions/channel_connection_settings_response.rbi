# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ChannelConnectionSettingsResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The date and time when the channel connection settings were created.
          sig { returns(Time) }
          attr_accessor :created_at

          # Indicates whether the channel connection settings are ready for use.
          sig { returns(T::Boolean) }
          attr_accessor :is_ready

          # The date and time when the channel connection settings were last updated.
          sig { returns(Time) }
          attr_accessor :updated_at

          # The URL associated with the channel connection settings.
          sig { returns(String) }
          attr_accessor :url

          sig do
            params(
              created_at: Time,
              is_ready: T::Boolean,
              updated_at: Time,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The date and time when the channel connection settings were created.
            created_at:,
            # Indicates whether the channel connection settings are ready for use.
            is_ready:,
            # The date and time when the channel connection settings were last updated.
            updated_at:,
            # The URL associated with the channel connection settings.
            url:
          )
          end

          sig do
            override.returns(
              {
                created_at: Time,
                is_ready: T::Boolean,
                updated_at: Time,
                url: String
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
