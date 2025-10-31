# typed: strong

module HubspotSDK
  module Models
    module Cms
      class LayoutSection < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::LayoutSection, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[HubspotSDK::Cms::LayoutSection]) }
        attr_accessor :cells

        sig { returns(String) }
        attr_accessor :css_class

        sig { returns(String) }
        attr_accessor :css_id

        sig { returns(String) }
        attr_accessor :css_style

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :name

        # null
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :params

        sig { returns(T::Array[HubspotSDK::Cms::RowMetaData]) }
        attr_accessor :row_meta_data

        sig do
          returns(T::Array[T::Hash[Symbol, HubspotSDK::Cms::LayoutSection]])
        end
        attr_accessor :rows

        sig { returns(HubspotSDK::Cms::Styles) }
        attr_reader :styles

        sig { params(styles: HubspotSDK::Cms::Styles::OrHash).void }
        attr_writer :styles

        sig { returns(String) }
        attr_accessor :type

        sig { returns(Integer) }
        attr_accessor :w

        sig { returns(Integer) }
        attr_accessor :x

        sig do
          params(
            cells: T::Array[HubspotSDK::Cms::LayoutSection],
            css_class: String,
            css_id: String,
            css_style: String,
            label: String,
            name: String,
            params: T::Hash[Symbol, T.anything],
            row_meta_data: T::Array[HubspotSDK::Cms::RowMetaData::OrHash],
            rows: T::Array[T::Hash[Symbol, HubspotSDK::Cms::LayoutSection]],
            styles: HubspotSDK::Cms::Styles::OrHash,
            type: String,
            w: Integer,
            x: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          cells:,
          css_class:,
          css_id:,
          css_style:,
          label:,
          name:,
          # null
          params:,
          row_meta_data:,
          rows:,
          styles:,
          type:,
          w:,
          x:
        )
        end

        sig do
          override.returns(
            {
              cells: T::Array[HubspotSDK::Cms::LayoutSection],
              css_class: String,
              css_id: String,
              css_style: String,
              label: String,
              name: String,
              params: T::Hash[Symbol, T.anything],
              row_meta_data: T::Array[HubspotSDK::Cms::RowMetaData],
              rows: T::Array[T::Hash[Symbol, HubspotSDK::Cms::LayoutSection]],
              styles: HubspotSDK::Cms::Styles,
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
