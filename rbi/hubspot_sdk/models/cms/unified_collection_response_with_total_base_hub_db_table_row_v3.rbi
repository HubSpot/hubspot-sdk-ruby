# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module UnifiedCollectionResponseWithTotalBaseHubDBTableRowV3
        extend HubSpotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3,
              HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3
            )
          end

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::Cms::UnifiedCollectionResponseWithTotalBaseHubDBTableRowV3::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
