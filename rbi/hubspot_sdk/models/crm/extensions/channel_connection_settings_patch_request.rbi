# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ChannelConnectionSettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ChannelConnectionSettingsPatchRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_ready

          sig { params(is_ready: T::Boolean).void }
          attr_writer :is_ready

          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(is_ready: T::Boolean, url: String).returns(T.attached_class)
          end
          def self.new(is_ready: nil, url: nil)
          end

          sig { override.returns({ is_ready: T::Boolean, url: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
