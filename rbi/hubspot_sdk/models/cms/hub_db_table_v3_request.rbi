# typed: strong

module HubspotSDK
  module Models
    module Cms
      class HubDBTableV3Request < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::HubDBTableV3Request,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Label of the table
        sig { returns(String) }
        attr_accessor :label

        # Name of the table
        sig { returns(String) }
        attr_accessor :name

        # Specifies whether child tables can be created
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_child_tables

        sig { params(allow_child_tables: T::Boolean).void }
        attr_writer :allow_child_tables

        # Specifies whether the table can be read by public without authorization
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_public_api_access

        sig { params(allow_public_api_access: T::Boolean).void }
        attr_writer :allow_public_api_access

        # List of columns in the table
        sig { returns(T.nilable(T::Array[HubspotSDK::Cms::ColumnRequest])) }
        attr_reader :columns

        sig do
          params(columns: T::Array[HubspotSDK::Cms::ColumnRequest::OrHash]).void
        end
        attr_writer :columns

        # Specifies the key value pairs of the
        # [metadata fields](https://developers.hubspot.com/docs/cms/guides/dynamic-pages/hubdb#dynamic-pages)
        # with the associated column IDs.
        sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
        attr_reader :dynamic_meta_tags

        sig { params(dynamic_meta_tags: T::Hash[Symbol, Integer]).void }
        attr_writer :dynamic_meta_tags

        # Specifies creation of multi-level dynamic pages using child tables
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enable_child_table_pages

        sig { params(enable_child_table_pages: T::Boolean).void }
        attr_writer :enable_child_table_pages

        # Specifies whether the table can be used for creation of dynamic pages
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_for_pages

        sig { params(use_for_pages: T::Boolean).void }
        attr_writer :use_for_pages

        sig do
          params(
            label: String,
            name: String,
            allow_child_tables: T::Boolean,
            allow_public_api_access: T::Boolean,
            columns: T::Array[HubspotSDK::Cms::ColumnRequest::OrHash],
            dynamic_meta_tags: T::Hash[Symbol, Integer],
            enable_child_table_pages: T::Boolean,
            use_for_pages: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Label of the table
          label:,
          # Name of the table
          name:,
          # Specifies whether child tables can be created
          allow_child_tables: nil,
          # Specifies whether the table can be read by public without authorization
          allow_public_api_access: nil,
          # List of columns in the table
          columns: nil,
          # Specifies the key value pairs of the
          # [metadata fields](https://developers.hubspot.com/docs/cms/guides/dynamic-pages/hubdb#dynamic-pages)
          # with the associated column IDs.
          dynamic_meta_tags: nil,
          # Specifies creation of multi-level dynamic pages using child tables
          enable_child_table_pages: nil,
          # Specifies whether the table can be used for creation of dynamic pages
          use_for_pages: nil
        )
        end

        sig do
          override.returns(
            {
              label: String,
              name: String,
              allow_child_tables: T::Boolean,
              allow_public_api_access: T::Boolean,
              columns: T::Array[HubspotSDK::Cms::ColumnRequest],
              dynamic_meta_tags: T::Hash[Symbol, Integer],
              enable_child_table_pages: T::Boolean,
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
