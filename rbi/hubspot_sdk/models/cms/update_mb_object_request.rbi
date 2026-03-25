# typed: strong

module HubspotSDK
  module Models
    module Cms
      module UpdateMBObjectRequest
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::UpdateVideoObjectRequest,
              HubspotSDK::Cms::UpdateOtherObjectRequest,
              HubspotSDK::Cms::UpdateAudioObjectRequest,
              HubspotSDK::Cms::UpdateImageObjectRequest,
              HubspotSDK::Cms::UpdateDocumentObjectRequest
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Cms::UpdateMBObjectRequest::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
