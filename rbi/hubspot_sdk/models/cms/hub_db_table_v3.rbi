# typed: strong

module HubspotSDK
  module Models
    module Cms
      class HubDBTableV3 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::HubDBTableV3, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(Time) }
        attr_accessor :deleted_at

        # Label of the table
        sig { returns(String) }
        attr_accessor :label

        # Name of the table
        sig { returns(String) }
        attr_accessor :name

        # Id of the table
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

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

        # Number of columns including deleted
        sig { returns(T.nilable(Integer)) }
        attr_reader :column_count

        sig { params(column_count: Integer).void }
        attr_writer :column_count

        # List of columns in the table
        sig { returns(T.nilable(T::Array[HubspotSDK::Cms::Column])) }
        attr_reader :columns

        sig { params(columns: T::Array[HubspotSDK::Cms::Column::OrHash]).void }
        attr_writer :columns

        # Timestamp at which the table is created
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(HubspotSDK::Cms::SimpleUser)) }
        attr_reader :created_by

        sig { params(created_by: HubspotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :created_by

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :deleted

        sig { params(deleted: T::Boolean).void }
        attr_writer :deleted

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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_ordered_manually

        sig { params(is_ordered_manually: T::Boolean).void }
        attr_writer :is_ordered_manually

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # Timestamp at which the table is published recently
        sig { returns(T.nilable(Time)) }
        attr_reader :published_at

        sig { params(published_at: Time).void }
        attr_writer :published_at

        # Number of rows in the table
        sig { returns(T.nilable(Integer)) }
        attr_reader :row_count

        sig { params(row_count: Integer).void }
        attr_writer :row_count

        # Timestamp at which the table is updated recently
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(HubspotSDK::Cms::SimpleUser)) }
        attr_reader :updated_by

        sig { params(updated_by: HubspotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :updated_by

        # Specifies whether the table can be used for creation of dynamic pages
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_for_pages

        sig { params(use_for_pages: T::Boolean).void }
        attr_writer :use_for_pages

        sig do
          params(
            deleted_at: Time,
            label: String,
            name: String,
            id: String,
            allow_child_tables: T::Boolean,
            allow_public_api_access: T::Boolean,
            column_count: Integer,
            columns: T::Array[HubspotSDK::Cms::Column::OrHash],
            created_at: Time,
            created_by: HubspotSDK::Cms::SimpleUser::OrHash,
            deleted: T::Boolean,
            dynamic_meta_tags: T::Hash[Symbol, Integer],
            enable_child_table_pages: T::Boolean,
            is_ordered_manually: T::Boolean,
            published: T::Boolean,
            published_at: Time,
            row_count: Integer,
            updated_at: Time,
            updated_by: HubspotSDK::Cms::SimpleUser::OrHash,
            use_for_pages: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          deleted_at:,
          # Label of the table
          label:,
          # Name of the table
          name:,
          # Id of the table
          id: nil,
          # Specifies whether child tables can be created
          allow_child_tables: nil,
          # Specifies whether the table can be read by public without authorization
          allow_public_api_access: nil,
          # Number of columns including deleted
          column_count: nil,
          # List of columns in the table
          columns: nil,
          # Timestamp at which the table is created
          created_at: nil,
          created_by: nil,
          deleted: nil,
          # Specifies the key value pairs of the
          # [metadata fields](https://developers.hubspot.com/docs/cms/guides/dynamic-pages/hubdb#dynamic-pages)
          # with the associated column IDs.
          dynamic_meta_tags: nil,
          # Specifies creation of multi-level dynamic pages using child tables
          enable_child_table_pages: nil,
          is_ordered_manually: nil,
          published: nil,
          # Timestamp at which the table is published recently
          published_at: nil,
          # Number of rows in the table
          row_count: nil,
          # Timestamp at which the table is updated recently
          updated_at: nil,
          updated_by: nil,
          # Specifies whether the table can be used for creation of dynamic pages
          use_for_pages: nil
        )
        end

        sig do
          override.returns(
            {
              deleted_at: Time,
              label: String,
              name: String,
              id: String,
              allow_child_tables: T::Boolean,
              allow_public_api_access: T::Boolean,
              column_count: Integer,
              columns: T::Array[HubspotSDK::Cms::Column],
              created_at: Time,
              created_by: HubspotSDK::Cms::SimpleUser,
              deleted: T::Boolean,
              dynamic_meta_tags: T::Hash[Symbol, Integer],
              enable_child_table_pages: T::Boolean,
              is_ordered_manually: T::Boolean,
              published: T::Boolean,
              published_at: Time,
              row_count: Integer,
              updated_at: Time,
              updated_by: HubspotSDK::Cms::SimpleUser,
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
