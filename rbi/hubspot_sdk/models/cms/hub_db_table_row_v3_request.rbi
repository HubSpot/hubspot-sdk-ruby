# typed: strong

module HubspotSDK
  module Models
    module Cms
      class HubDBTableRowV3Request < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::HubDBTableRowV3Request,
              HubspotSDK::Internal::AnyHash
            )
          end

        # List of key value pairs with the column name and column value
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :values

        # Specifies the value for the column child table id
        sig { returns(T.nilable(Integer)) }
        attr_reader :child_table_id

        sig { params(child_table_id: Integer).void }
        attr_writer :child_table_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :display_index

        sig { params(display_index: Integer).void }
        attr_writer :display_index

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
            values: T::Hash[Symbol, T.anything],
            child_table_id: Integer,
            display_index: Integer,
            name: String,
            path: String
          ).returns(T.attached_class)
        end
        def self.new(
          # List of key value pairs with the column name and column value
          values:,
          # Specifies the value for the column child table id
          child_table_id: nil,
          display_index: nil,
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
              values: T::Hash[Symbol, T.anything],
              child_table_id: Integer,
              display_index: Integer,
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
