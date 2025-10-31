# typed: strong

module HubspotSDK
  module Models
    module Cms
      module UnifiedCollectionResponseWithTotalBaseHubDBTableRowV3
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3,
              HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3
            )
          end

        sig do
          override.returns(
            T::Array[
              HubspotSDK::Cms::UnifiedCollectionResponseWithTotalBaseHubDBTableRowV3::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
