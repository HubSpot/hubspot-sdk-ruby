# typed: strong

module HubspotSDK
  module Models
    module Files
      class FolderSearchParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FolderSearchParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Offset search results by this value. The default offset is 0 and the maximum
        # offset of items for a given search is 10,000. Narrow your search down if you are
        # reaching this limit.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Search folders updated before this timestamp. Time must be epoch time in
        # milliseconds.
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Search folders by exact time of creation. Time must be epoch time in
        # milliseconds.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Search folders by greater than or equal to time of creation. Can be used with
        # createdAtLte to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at_gte

        sig { params(created_at_gte: Time).void }
        attr_writer :created_at_gte

        # Search folders by less than or equal to time of creation. Can be used with
        # createdAtGte to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at_lte

        sig { params(created_at_lte: Time).void }
        attr_writer :created_at_lte

        # Search folders by greater than or equal to ID. Can be used with idLte to create
        # a range.
        sig { returns(T.nilable(Integer)) }
        attr_reader :id_gte

        sig { params(id_gte: Integer).void }
        attr_writer :id_gte

        # Search folders by less than or equal to ID. Can be used with idGte to create a
        # range.
        sig { returns(T.nilable(Integer)) }
        attr_reader :id_lte

        sig { params(id_lte: Integer).void }
        attr_writer :id_lte

        # Search folders by multiple IDs. Comma-separated list of folder IDs.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :ids

        sig { params(ids: T::Array[Integer]).void }
        attr_writer :ids

        # Number of items to return. Default limit is 10, maximum limit is 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Search for folders containing the specified name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :parent_folder_ids

        sig { params(parent_folder_ids: T::Array[Integer]).void }
        attr_writer :parent_folder_ids

        # Search folders by path.
        sig { returns(T.nilable(String)) }
        attr_reader :path

        sig { params(path: String).void }
        attr_writer :path

        # Properties that should be included in the returned folders.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        # Sort results by given property. For example -name sorts by name field
        # descending, name sorts by name field ascending.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        # Search folders by exact time of latest updated. Time must be epoch time in
        # milliseconds.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Search folders by greater than or equal to time of latest update. Can be used
        # with updatedAtLte to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at_gte

        sig { params(updated_at_gte: Time).void }
        attr_writer :updated_at_gte

        # Search folders by less than or equal to time of latest update. Can be used with
        # updatedAtGte to create a range.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at_lte

        sig { params(updated_at_lte: Time).void }
        attr_writer :updated_at_lte

        sig do
          params(
            after: String,
            before: String,
            created_at: Time,
            created_at_gte: Time,
            created_at_lte: Time,
            id_gte: Integer,
            id_lte: Integer,
            ids: T::Array[Integer],
            limit: Integer,
            name: String,
            parent_folder_ids: T::Array[Integer],
            path: String,
            properties: T::Array[String],
            sort: T::Array[String],
            updated_at: Time,
            updated_at_gte: Time,
            updated_at_lte: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Offset search results by this value. The default offset is 0 and the maximum
          # offset of items for a given search is 10,000. Narrow your search down if you are
          # reaching this limit.
          after: nil,
          # Search folders updated before this timestamp. Time must be epoch time in
          # milliseconds.
          before: nil,
          # Search folders by exact time of creation. Time must be epoch time in
          # milliseconds.
          created_at: nil,
          # Search folders by greater than or equal to time of creation. Can be used with
          # createdAtLte to create a range.
          created_at_gte: nil,
          # Search folders by less than or equal to time of creation. Can be used with
          # createdAtGte to create a range.
          created_at_lte: nil,
          # Search folders by greater than or equal to ID. Can be used with idLte to create
          # a range.
          id_gte: nil,
          # Search folders by less than or equal to ID. Can be used with idGte to create a
          # range.
          id_lte: nil,
          # Search folders by multiple IDs. Comma-separated list of folder IDs.
          ids: nil,
          # Number of items to return. Default limit is 10, maximum limit is 100.
          limit: nil,
          # Search for folders containing the specified name.
          name: nil,
          parent_folder_ids: nil,
          # Search folders by path.
          path: nil,
          # Properties that should be included in the returned folders.
          properties: nil,
          # Sort results by given property. For example -name sorts by name field
          # descending, name sorts by name field ascending.
          sort: nil,
          # Search folders by exact time of latest updated. Time must be epoch time in
          # milliseconds.
          updated_at: nil,
          # Search folders by greater than or equal to time of latest update. Can be used
          # with updatedAtLte to create a range.
          updated_at_gte: nil,
          # Search folders by less than or equal to time of latest update. Can be used with
          # updatedAtGte to create a range.
          updated_at_lte: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              created_at: Time,
              created_at_gte: Time,
              created_at_lte: Time,
              id_gte: Integer,
              id_lte: Integer,
              ids: T::Array[Integer],
              limit: Integer,
              name: String,
              parent_folder_ids: T::Array[Integer],
              path: String,
              properties: T::Array[String],
              sort: T::Array[String],
              updated_at: Time,
              updated_at_gte: Time,
              updated_at_lte: Time,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
