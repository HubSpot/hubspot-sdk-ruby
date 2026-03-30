# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Pages
        class FolderListFolderRevisionsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Pages::FolderListFolderRevisionsParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_id_

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
              object_id_: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            object_id_:,
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
                object_id_: String,
                after: String,
                before: String,
                limit: Integer,
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
