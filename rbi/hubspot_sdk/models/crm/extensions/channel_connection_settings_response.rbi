# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ChannelConnectionSettingsResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::ChannelConnectionSettingsResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The timestamp this setting was created
          sig { returns(Time) }
          attr_accessor :created_at

          # If true, this app will be considered to support channel connection
          sig { returns(T::Boolean) }
          attr_accessor :is_ready

          # The timestamp this setting was last updated
          sig { returns(Time) }
          attr_accessor :updated_at

          # The URL to fetch phone numbers available for channel connection
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
            # The timestamp this setting was created
            created_at:,
            # If true, this app will be considered to support channel connection
            is_ready:,
            # The timestamp this setting was last updated
            updated_at:,
            # The URL to fetch phone numbers available for channel connection
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
