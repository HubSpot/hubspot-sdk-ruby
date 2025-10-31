# typed: strong

module HubspotSDK
  module Models
    module Cms
      class FileExtractRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::FileExtractRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :path

        sig { params(path: String).returns(T.attached_class) }
        def self.new(path:)
        end

        sig { override.returns({ path: String }) }
        def to_hash
        end
      end
    end
  end
end
