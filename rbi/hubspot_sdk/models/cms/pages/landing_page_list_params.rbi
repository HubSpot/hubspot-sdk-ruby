# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Pages
        class LandingPageListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Pages::LandingPageListParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # A cursor token for pagination. Use the value from the previous response's
          # paging.next.after field.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Whether to return only results that have been archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # Filter landing pages created after a specific date and time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_after

          sig { params(created_after: Time).void }
          attr_writer :created_after

          # Filter landing pages by their creation timestamp.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Filter landing pages created before a specific date and time.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_before

          sig { params(created_before: Time).void }
          attr_writer :created_before

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Specify which properties of the landing pages to include in the response.
          sig { returns(T.nilable(String)) }
          attr_reader :property

          sig { params(property: String).void }
          attr_writer :property

          # Specify the order in which results are returned. Accepts an array of strings.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sort

          sig { params(sort: T::Array[String]).void }
          attr_writer :sort

          # Filter landing pages updated after a specific date and time.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_after

          sig { params(updated_after: Time).void }
          attr_writer :updated_after

          # Filter landing pages by their last updated timestamp.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # Filter landing pages updated before a specific date and time.
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
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # A cursor token for pagination. Use the value from the previous response's
            # paging.next.after field.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            # Filter landing pages created after a specific date and time.
            created_after: nil,
            # Filter landing pages by their creation timestamp.
            created_at: nil,
            # Filter landing pages created before a specific date and time.
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            # Specify which properties of the landing pages to include in the response.
            property: nil,
            # Specify the order in which results are returned. Accepts an array of strings.
            sort: nil,
            # Filter landing pages updated after a specific date and time.
            updated_after: nil,
            # Filter landing pages by their last updated timestamp.
            updated_at: nil,
            # Filter landing pages updated before a specific date and time.
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
                request_options: HubSpotSDK::RequestOptions
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
