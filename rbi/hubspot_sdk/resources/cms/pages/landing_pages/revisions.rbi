# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class LandingPages
          class Revisions
            # Retrieve a previous version of a landing page, specified by page ID and revision
            # ID.
            sig do
              params(
                revision_id: String,
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Cms::PageVersion)
            end
            def get_landing_page_revision(
              revision_id,
              object_id_:,
              request_options: {}
            )
            end

            # Retrieve all the previous versions of a landing page, specified by page ID.
            sig do
              params(
                object_id_: String,
                after: String,
                before: String,
                limit: Integer,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(
                HubSpotSDK::Internal::Page[HubSpotSDK::Cms::PageVersion]
              )
            end
            def list_landing_page_revisions(
              object_id_,
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

            # Restores a previous version of a landing page, specified by page ID and revision
            # ID.
            sig do
              params(
                revision_id: String,
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Cms::PagesPage)
            end
            def restore_landing_page_revision(
              revision_id,
              object_id_:,
              request_options: {}
            )
            end

            # Specify a previous version of a landing page to set as the page draft.
            sig do
              params(
                revision_id: Integer,
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Cms::PagesPage)
            end
            def restore_landing_page_revision_to_draft(
              revision_id,
              object_id_:,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
