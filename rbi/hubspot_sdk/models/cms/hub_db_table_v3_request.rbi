# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class HubDBTableV3Request < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::HubDBTableV3Request,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies whether child tables can be created
        sig { returns(T::Boolean) }
        attr_accessor :allow_child_tables

        # Specifies whether the table can be read by public without authorization
        sig { returns(T::Boolean) }
        attr_accessor :allow_public_api_access

        # List of columns in the table
        sig { returns(T::Array[HubSpotSDK::Cms::ColumnRequest]) }
        attr_accessor :columns

        # Specifies the key value pairs of the
        # [metadata fields](https://developers.hubspot.com/docs/cms/guides/dynamic-pages/hubdb#dynamic-pages)
        # with the associated column IDs.
        sig { returns(T::Hash[Symbol, Integer]) }
        attr_accessor :dynamic_meta_tags

        # Specifies creation of multi-level dynamic pages using child tables
        sig { returns(T::Boolean) }
        attr_accessor :enable_child_table_pages

        # Label of the table
        sig { returns(String) }
        attr_accessor :label

        # Name of the table
        sig { returns(String) }
        attr_accessor :name

        # Specifies whether the table can be used for creation of dynamic pages
        sig { returns(T::Boolean) }
        attr_accessor :use_for_pages

        sig do
          params(
            allow_child_tables: T::Boolean,
            allow_public_api_access: T::Boolean,
            columns: T::Array[HubSpotSDK::Cms::ColumnRequest::OrHash],
            dynamic_meta_tags: T::Hash[Symbol, Integer],
            enable_child_table_pages: T::Boolean,
            label: String,
            name: String,
            use_for_pages: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies whether child tables can be created
          allow_child_tables:,
          # Specifies whether the table can be read by public without authorization
          allow_public_api_access:,
          # List of columns in the table
          columns:,
          # Specifies the key value pairs of the
          # [metadata fields](https://developers.hubspot.com/docs/cms/guides/dynamic-pages/hubdb#dynamic-pages)
          # with the associated column IDs.
          dynamic_meta_tags:,
          # Specifies creation of multi-level dynamic pages using child tables
          enable_child_table_pages:,
          # Label of the table
          label:,
          # Name of the table
          name:,
          # Specifies whether the table can be used for creation of dynamic pages
          use_for_pages:
        )
        end

        sig do
          override.returns(
            {
              allow_child_tables: T::Boolean,
              allow_public_api_access: T::Boolean,
              columns: T::Array[HubSpotSDK::Cms::ColumnRequest],
              dynamic_meta_tags: T::Hash[Symbol, Integer],
              enable_child_table_pages: T::Boolean,
              label: String,
              name: String,
              use_for_pages: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
