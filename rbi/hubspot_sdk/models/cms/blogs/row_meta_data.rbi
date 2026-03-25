# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class RowMetaData < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::RowMetaData,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The CSS class applied to the row.
          sig { returns(String) }
          attr_accessor :css_class

          sig { returns(HubspotSDK::Cms::Blogs::Styles) }
          attr_reader :styles

          sig { params(styles: HubspotSDK::Cms::Blogs::Styles::OrHash).void }
          attr_writer :styles

          sig do
            params(
              css_class: String,
              styles: HubspotSDK::Cms::Blogs::Styles::OrHash
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
              { css_class: String, styles: HubspotSDK::Cms::Blogs::Styles }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
