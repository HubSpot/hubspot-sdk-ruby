# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class LayoutSection < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::LayoutSection, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[HubSpotSDK::Cms::LayoutSection]) }
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

        # null
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :params

        sig { returns(T::Array[HubSpotSDK::Cms::RowMetaData]) }
        attr_accessor :row_meta_data

        sig do
          returns(T::Array[T::Hash[Symbol, HubSpotSDK::Cms::LayoutSection]])
        end
        attr_accessor :rows

        sig { returns(HubSpotSDK::Cms::Styles) }
        attr_reader :styles

        sig { params(styles: HubSpotSDK::Cms::Styles::OrHash).void }
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
            cells: T::Array[HubSpotSDK::Cms::LayoutSection],
            css_class: String,
            css_id: String,
            css_style: String,
            label: String,
            name: String,
            params: T::Hash[Symbol, T.anything],
            row_meta_data: T::Array[HubSpotSDK::Cms::RowMetaData::OrHash],
            rows: T::Array[T::Hash[Symbol, HubSpotSDK::Cms::LayoutSection]],
            styles: HubSpotSDK::Cms::Styles::OrHash,
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
          # null
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
              cells: T::Array[HubSpotSDK::Cms::LayoutSection],
              css_class: String,
              css_id: String,
              css_style: String,
              label: String,
              name: String,
              params: T::Hash[Symbol, T.anything],
              row_meta_data: T::Array[HubSpotSDK::Cms::RowMetaData],
              rows: T::Array[T::Hash[Symbol, HubSpotSDK::Cms::LayoutSection]],
              styles: HubSpotSDK::Cms::Styles,
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
