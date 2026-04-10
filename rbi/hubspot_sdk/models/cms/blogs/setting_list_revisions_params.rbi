# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class SettingListRevisionsParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::SettingListRevisionsParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :blog_id

          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig do
            params(
              blog_id: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            blog_id:,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                blog_id: String,
                after: String,
                before: String,
                limit: Integer,
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
