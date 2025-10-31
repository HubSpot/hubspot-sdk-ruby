# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ChannelConnectionSettingsRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::ChannelConnectionSettingsRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          # If true, this app will be considered to support channel connection
          sig { returns(T::Boolean) }
          attr_accessor :is_ready

          # The URL to fetch phone numbers available for channel connection
          sig { returns(String) }
          attr_accessor :url

          sig do
            params(is_ready: T::Boolean, url: String).returns(T.attached_class)
          end
          def self.new(
            # If true, this app will be considered to support channel connection
            is_ready:,
            # The URL to fetch phone numbers available for channel connection
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
