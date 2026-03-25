# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class LayoutSection < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::LayoutSection,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[HubspotSDK::Cms::Blogs::LayoutSection]) }
          attr_accessor :cells

          # The CSS class applied to the layout section.
          sig { returns(String) }
          attr_accessor :css_class

          # The CSS ID applied to the layout section.
          sig { returns(String) }
          attr_accessor :css_id

          # Custom CSS styles applied to the layout section.
          sig { returns(String) }
          attr_accessor :css_style

          # The label for the layout section.
          sig { returns(String) }
          attr_accessor :label

          # The name assigned to the layout section.
          sig { returns(String) }
          attr_accessor :name

          # Parameters associated with the layout section.
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :params

          sig { returns(T::Array[HubspotSDK::Cms::Blogs::RowMetaData]) }
          attr_accessor :row_meta_data

          sig do
            returns(
              T::Array[T::Hash[Symbol, HubspotSDK::Cms::Blogs::LayoutSection]]
            )
          end
          attr_accessor :rows

          sig { returns(HubspotSDK::Cms::Blogs::Styles) }
          attr_reader :styles

          sig { params(styles: HubspotSDK::Cms::Blogs::Styles::OrHash).void }
          attr_writer :styles

          # The type of the layout section.
          sig { returns(String) }
          attr_accessor :type

          # The width of the layout section.
          sig { returns(Integer) }
          attr_accessor :w

          # The x-coordinate position of the layout section.
          sig { returns(Integer) }
          attr_accessor :x

          sig do
            params(
              cells: T::Array[HubspotSDK::Cms::Blogs::LayoutSection],
              css_class: String,
              css_id: String,
              css_style: String,
              label: String,
              name: String,
              params: T::Hash[Symbol, T.anything],
              row_meta_data:
                T::Array[HubspotSDK::Cms::Blogs::RowMetaData::OrHash],
              rows:
                T::Array[
                  T::Hash[Symbol, HubspotSDK::Cms::Blogs::LayoutSection]
                ],
              styles: HubspotSDK::Cms::Blogs::Styles::OrHash,
              type: String,
              w: Integer,
              x: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            cells:,
            # The CSS class applied to the layout section.
            css_class:,
            # The CSS ID applied to the layout section.
            css_id:,
            # Custom CSS styles applied to the layout section.
            css_style:,
            # The label for the layout section.
            label:,
            # The name assigned to the layout section.
            name:,
            # Parameters associated with the layout section.
            params:,
            row_meta_data:,
            rows:,
            styles:,
            # The type of the layout section.
            type:,
            # The width of the layout section.
            w:,
            # The x-coordinate position of the layout section.
            x:
          )
          end

          sig do
            override.returns(
              {
                cells: T::Array[HubspotSDK::Cms::Blogs::LayoutSection],
                css_class: String,
                css_id: String,
                css_style: String,
                label: String,
                name: String,
                params: T::Hash[Symbol, T.anything],
                row_meta_data: T::Array[HubspotSDK::Cms::Blogs::RowMetaData],
                rows:
                  T::Array[
                    T::Hash[Symbol, HubspotSDK::Cms::Blogs::LayoutSection]
                  ],
                styles: HubspotSDK::Cms::Blogs::Styles,
                type: String,
                w: Integer,
                x: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
