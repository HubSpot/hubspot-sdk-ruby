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

          sig { returns(T::Boolean) }
          attr_accessor :is_ready

          sig { returns(String) }
          attr_accessor :url

          sig do
            params(is_ready: T::Boolean, url: String).returns(T.attached_class)
          end
          def self.new(is_ready:, url:)
          end

          sig { override.returns({ is_ready: T::Boolean, url: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
