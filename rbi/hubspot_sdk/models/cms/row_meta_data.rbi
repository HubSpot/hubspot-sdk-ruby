# typed: strong

module HubspotSDK
  module Models
    module Cms
      class RowMetaData < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::RowMetaData, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :css_class

        sig { returns(HubspotSDK::Cms::Styles) }
        attr_reader :styles

        sig { params(styles: HubspotSDK::Cms::Styles::OrHash).void }
        attr_writer :styles

        sig do
          params(
            css_class: String,
            styles: HubspotSDK::Cms::Styles::OrHash
          ).returns(T.attached_class)
        end
        def self.new(css_class:, styles:)
        end

        sig do
          override.returns(
            { css_class: String, styles: HubspotSDK::Cms::Styles }
          )
        end
        def to_hash
        end
      end
    end
  end
end
