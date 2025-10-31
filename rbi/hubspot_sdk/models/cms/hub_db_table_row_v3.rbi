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

        # List of key value pairs with the column name and column value
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :values

        # The id of the table row
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Specifies the value for the column child table id
        sig { returns(T.nilable(String)) }
        attr_reader :child_table_id

        sig { params(child_table_id: String).void }
        attr_writer :child_table_id

        # Timestamp at which the row is created
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

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

        sig { returns(T.nilable(Time)) }
        attr_reader :published_at

        sig { params(published_at: Time).void }
        attr_writer :published_at

        # Timestamp at which the row is updated last time
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            values: T::Hash[Symbol, T.anything],
            id: String,
            child_table_id: String,
            created_at: Time,
            name: String,
            path: String,
            published_at: Time,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # List of key value pairs with the column name and column value
          values:,
          # The id of the table row
          id: nil,
          # Specifies the value for the column child table id
          child_table_id: nil,
          # Timestamp at which the row is created
          created_at: nil,
          # Specifies the value for `hs_name` column, which will be used as title in the
          # dynamic pages
          name: nil,
          # Specifies the value for `hs_path` column, which will be used as slug in the
          # dynamic pages
          path: nil,
          published_at: nil,
          # Timestamp at which the row is updated last time
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              values: T::Hash[Symbol, T.anything],
              id: String,
              child_table_id: String,
              created_at: Time,
              name: String,
              path: String,
              published_at: Time,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
