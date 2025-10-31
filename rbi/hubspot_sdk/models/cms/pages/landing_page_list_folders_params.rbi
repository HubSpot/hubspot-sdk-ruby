# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Pages
        class LandingPageListFoldersParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Pages::LandingPageListFoldersParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Specifies whether to return deleted Folders. Defaults to `false`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # Only return Folders created after the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_after

          sig { params(created_after: Time).void }
          attr_writer :created_after

          # Only return Folders created at exactly the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Only return Folders created before the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_before

          sig { params(created_before: Time).void }
          attr_writer :created_before

          # The maximum number of results to return. Default is 100.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(String)) }
          attr_reader :property

          sig { params(property: String).void }
          attr_writer :property

          # Specifies which fields to use for sorting results. Valid fields are `name`,
          # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
          # default.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sort

          sig { params(sort: T::Array[String]).void }
          attr_writer :sort

          # Only return Folders last updated after the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_after

          sig { params(updated_after: Time).void }
          attr_writer :updated_after

          # Only return Folders last updated at exactly the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # Only return Folders last updated before the specified time.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_before

          sig { params(updated_before: Time).void }
          attr_writer :updated_before

          sig do
            params(
              after: String,
              archived: T::Boolean,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              limit: Integer,
              property: String,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to return deleted Folders. Defaults to `false`.
            archived: nil,
            # Only return Folders created after the specified time.
            created_after: nil,
            # Only return Folders created at exactly the specified time.
            created_at: nil,
            # Only return Folders created before the specified time.
            created_before: nil,
            # The maximum number of results to return. Default is 100.
            limit: nil,
            property: nil,
            # Specifies which fields to use for sorting results. Valid fields are `name`,
            # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
            # default.
            sort: nil,
            # Only return Folders last updated after the specified time.
            updated_after: nil,
            # Only return Folders last updated at exactly the specified time.
            updated_at: nil,
            # Only return Folders last updated before the specified time.
            updated_before: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                archived: T::Boolean,
                created_after: Time,
                created_at: Time,
                created_before: Time,
                limit: Integer,
                property: String,
                sort: T::Array[String],
                updated_after: Time,
                updated_at: Time,
                updated_before: Time,
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
end
