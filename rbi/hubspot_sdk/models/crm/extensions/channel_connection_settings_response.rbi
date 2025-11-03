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

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T::Boolean) }
          attr_accessor :is_ready

          sig { returns(Time) }
          attr_accessor :updated_at

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
          def self.new(created_at:, is_ready:, updated_at:, url:)
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
