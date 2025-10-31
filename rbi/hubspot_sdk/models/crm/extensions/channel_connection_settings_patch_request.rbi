# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ChannelConnectionSettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::ChannelConnectionSettingsPatchRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          # If true, this app will be considered to support channel connection
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_ready

          sig { params(is_ready: T::Boolean).void }
          attr_writer :is_ready

          # The URL to fetch phone numbers available for channel connection
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(is_ready: T::Boolean, url: String).returns(T.attached_class)
          end
          def self.new(
            # If true, this app will be considered to support channel connection
            is_ready: nil,
            # The URL to fetch phone numbers available for channel connection
            url: nil
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
