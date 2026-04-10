# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class HubDBTableRowV3Request < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::HubDBTableRowV3Request,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies the value for the column child table id
        sig { returns(Integer) }
        attr_accessor :child_table_id

        # The index position for displaying the row within the table.
        sig { returns(Integer) }
        attr_accessor :display_index

        # List of key value pairs with the column name and column value
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :values

        # Specifies the value for `hs_name` column, which will be used as title in the
        # dynamic pages
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Specifies the value for `hs_path` column, which will be used as slug in the
        # dynamic pages
        sig { returns(T.nilable(String)) }
        attr_reader :path

        sig { params(path: String).void }
        attr_writer :path

        sig do
          params(
            child_table_id: Integer,
            display_index: Integer,
            values: T::Hash[Symbol, T.anything],
            name: String,
            path: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the value for the column child table id
          child_table_id:,
          # The index position for displaying the row within the table.
          display_index:,
          # List of key value pairs with the column name and column value
          values:,
          # Specifies the value for `hs_name` column, which will be used as title in the
          # dynamic pages
          name: nil,
          # Specifies the value for `hs_path` column, which will be used as slug in the
          # dynamic pages
          path: nil
        )
        end

        sig do
          override.returns(
            {
              child_table_id: Integer,
              display_index: Integer,
              values: T::Hash[Symbol, T.anything],
              name: String,
              path: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
