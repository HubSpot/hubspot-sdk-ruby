# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class FileExtractRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::FileExtractRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The file system location where the zip file is to be extracted.
        sig { returns(String) }
        attr_accessor :path

        sig { params(path: String).returns(T.attached_class) }
        def self.new(
          # The file system location where the zip file is to be extracted.
          path:
        )
        end

        sig { override.returns({ path: String }) }
        def to_hash
        end
      end
    end
  end
end
