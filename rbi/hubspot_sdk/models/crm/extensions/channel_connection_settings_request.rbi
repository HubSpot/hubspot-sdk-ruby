# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ChannelConnectionSettingsRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ChannelConnectionSettingsRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Indicates whether the channel connection settings are ready.
          sig { returns(T::Boolean) }
          attr_accessor :is_ready

          # The URL associated with the channel connection settings.
          sig { returns(String) }
          attr_accessor :url

          sig do
            params(is_ready: T::Boolean, url: String).returns(T.attached_class)
          end
          def self.new(
            # Indicates whether the channel connection settings are ready.
            is_ready:,
            # The URL associated with the channel connection settings.
            url:
          )
          end

          sig { override.returns({ is_ready: T::Boolean, url: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
