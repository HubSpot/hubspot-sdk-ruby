# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class RowMetaData < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::RowMetaData, HubSpotSDK::Internal::AnyHash)
          end

        # The CSS class applied to the row.
        sig { returns(String) }
        attr_accessor :css_class

        sig { returns(HubSpotSDK::Cms::Styles) }
        attr_reader :styles

        sig { params(styles: HubSpotSDK::Cms::Styles::OrHash).void }
        attr_writer :styles

        sig do
          params(
            css_class: String,
            styles: HubSpotSDK::Cms::Styles::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The CSS class applied to the row.
          css_class:,
          styles:
        )
        end

        sig do
          override.returns(
            { css_class: String, styles: HubSpotSDK::Cms::Styles }
          )
        end
        def to_hash
        end
      end
    end
  end
end
