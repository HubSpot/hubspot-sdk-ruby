# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class HubDBTableV3 < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::HubDBTableV3, HubSpotSDK::Internal::AnyHash)
          end

        # Id of the table
        sig { returns(String) }
        attr_accessor :id

        # Specifies whether child tables can be created
        sig { returns(T::Boolean) }
        attr_accessor :allow_child_tables

        # Specifies whether the table can be read by public without authorization
        sig { returns(T::Boolean) }
        attr_accessor :allow_public_api_access

        # Number of columns including deleted
        sig { returns(Integer) }
        attr_accessor :column_count

        # List of columns in the table
        sig { returns(T::Array[HubSpotSDK::Cms::Column]) }
        attr_accessor :columns

        # Timestamp at which the table is created
        sig { returns(Time) }
        attr_accessor :created_at

        # Specifies whether the table is marked as deleted.
        sig { returns(T::Boolean) }
        attr_accessor :deleted

        # The timestamp indicating when the table was deleted.
        sig { returns(Time) }
        attr_accessor :deleted_at

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

        # Indicates whether the table is currently published.
        sig { returns(T::Boolean) }
        attr_accessor :published

        # Timestamp at which the table is published recently
        sig { returns(Time) }
        attr_accessor :published_at

        # Number of rows in the table
        sig { returns(Integer) }
        attr_accessor :row_count

        # Timestamp at which the table is updated recently
        sig { returns(Time) }
        attr_accessor :updated_at

        # Specifies whether the table can be used for creation of dynamic pages
        sig { returns(T::Boolean) }
        attr_accessor :use_for_pages

        sig { returns(T.nilable(HubSpotSDK::Cms::SimpleUser)) }
        attr_reader :created_by

        sig { params(created_by: HubSpotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :created_by

        # Indicates whether the table rows are ordered manually.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_ordered_manually

        sig { params(is_ordered_manually: T::Boolean).void }
        attr_writer :is_ordered_manually

        sig { returns(T.nilable(HubSpotSDK::Cms::SimpleUser)) }
        attr_reader :updated_by

        sig { params(updated_by: HubSpotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :updated_by

        sig do
          params(
            id: String,
            allow_child_tables: T::Boolean,
            allow_public_api_access: T::Boolean,
            column_count: Integer,
            columns: T::Array[HubSpotSDK::Cms::Column::OrHash],
            created_at: Time,
            deleted: T::Boolean,
            deleted_at: Time,
            dynamic_meta_tags: T::Hash[Symbol, Integer],
            enable_child_table_pages: T::Boolean,
            label: String,
            name: String,
            published: T::Boolean,
            published_at: Time,
            row_count: Integer,
            updated_at: Time,
            use_for_pages: T::Boolean,
            created_by: HubSpotSDK::Cms::SimpleUser::OrHash,
            is_ordered_manually: T::Boolean,
            updated_by: HubSpotSDK::Cms::SimpleUser::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Id of the table
          id:,
          # Specifies whether child tables can be created
          allow_child_tables:,
          # Specifies whether the table can be read by public without authorization
          allow_public_api_access:,
          # Number of columns including deleted
          column_count:,
          # List of columns in the table
          columns:,
          # Timestamp at which the table is created
          created_at:,
          # Specifies whether the table is marked as deleted.
          deleted:,
          # The timestamp indicating when the table was deleted.
          deleted_at:,
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
          # Indicates whether the table is currently published.
          published:,
          # Timestamp at which the table is published recently
          published_at:,
          # Number of rows in the table
          row_count:,
          # Timestamp at which the table is updated recently
          updated_at:,
          # Specifies whether the table can be used for creation of dynamic pages
          use_for_pages:,
          created_by: nil,
          # Indicates whether the table rows are ordered manually.
          is_ordered_manually: nil,
          updated_by: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              allow_child_tables: T::Boolean,
              allow_public_api_access: T::Boolean,
              column_count: Integer,
              columns: T::Array[HubSpotSDK::Cms::Column],
              created_at: Time,
              deleted: T::Boolean,
              deleted_at: Time,
              dynamic_meta_tags: T::Hash[Symbol, Integer],
              enable_child_table_pages: T::Boolean,
              label: String,
              name: String,
              published: T::Boolean,
              published_at: Time,
              row_count: Integer,
              updated_at: Time,
              use_for_pages: T::Boolean,
              created_by: HubSpotSDK::Cms::SimpleUser,
              is_ordered_manually: T::Boolean,
              updated_by: HubSpotSDK::Cms::SimpleUser
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
