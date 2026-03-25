# typed: strong

module HubspotSDK
  module Models
    module Cms
      class VideoObject < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::VideoObject, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :deeplink_url

        sig { returns(Integer) }
        attr_accessor :file_id

        sig do
          params(id: Integer, deeplink_url: String, file_id: Integer).returns(
            T.attached_class
          )
        end
        def self.new(id:, deeplink_url:, file_id:)
        end

        sig do
          override.returns(
            { id: Integer, deeplink_url: String, file_id: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
