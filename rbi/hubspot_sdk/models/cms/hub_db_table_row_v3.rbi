# typed: strong

module HubspotSDK
  module Models
    module Cms
      class HubDBTableRowV3 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::HubDBTableRowV3,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The id of the table row
        sig { returns(String) }
        attr_accessor :id

        # Specifies the value for the column child table id
        sig { returns(String) }
        attr_accessor :child_table_id

        # Timestamp at which the row is created
        sig { returns(Time) }
        attr_accessor :created_at

        # Specifies the value for `hs_name` column, which will be used as title in the
        # dynamic pages
        sig { returns(String) }
        attr_accessor :name

        # Specifies the value for `hs_path` column, which will be used as slug in the
        # dynamic pages
        sig { returns(String) }
        attr_accessor :path

        sig { returns(Time) }
        attr_accessor :published_at

        # Timestamp at which the row is updated last time
        sig { returns(Time) }
        attr_accessor :updated_at

        # List of key value pairs with the column name and column value
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :values

        sig do
          params(
            id: String,
            child_table_id: String,
            created_at: Time,
            name: String,
            path: String,
            published_at: Time,
            updated_at: Time,
            values: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the table row
          id:,
          # Specifies the value for the column child table id
          child_table_id:,
          # Timestamp at which the row is created
          created_at:,
          # Specifies the value for `hs_name` column, which will be used as title in the
          # dynamic pages
          name:,
          # Specifies the value for `hs_path` column, which will be used as slug in the
          # dynamic pages
          path:,
          published_at:,
          # Timestamp at which the row is updated last time
          updated_at:,
          # List of key value pairs with the column name and column value
          values:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              child_table_id: String,
              created_at: Time,
              name: String,
              path: String,
              published_at: Time,
              updated_at: Time,
              values: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
