# typed: strong

module HubspotSDK
  module Models
    module Cms
      module CreateMBObjectRequest
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CreateVideoObjectRequest,
              HubspotSDK::Cms::CreateOtherObjectRequest,
              HubspotSDK::Cms::CreateAudioObjectRequest,
              HubspotSDK::Cms::CreateImageObjectRequest,
              HubspotSDK::Cms::CreateDocumentObjectRequest
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Cms::CreateMBObjectRequest::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
