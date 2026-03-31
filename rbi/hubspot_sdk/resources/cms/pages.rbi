# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Pages
        sig { returns(HubspotSDK::Resources::Cms::Pages::ABTests) }
        attr_reader :a_b_tests

        sig { returns(HubspotSDK::Resources::Cms::Pages::Batch) }
        attr_reader :batch

        sig { returns(HubspotSDK::Resources::Cms::Pages::Folders) }
        attr_reader :folders

        sig { returns(HubspotSDK::Resources::Cms::Pages::LandingPages) }
        attr_reader :landing_pages

        sig { returns(HubspotSDK::Resources::Cms::Pages::MultiLanguage) }
        attr_reader :multi_language

        sig { returns(HubspotSDK::Resources::Cms::Pages::WebsitePages) }
        attr_reader :website_pages

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
          ).returns(T.anything)
        end
        def get_landing_page_folders(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          created_after: nil,
          created_at: nil,
          created_before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          property: nil,
          sort: nil,
          updated_after: nil,
          updated_at: nil,
          updated_before: nil,
          request_options: {}
        )
        end

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
          ).returns(T.anything)
        end
        def get_landing_page_folders_by_query(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          created_after: nil,
          created_at: nil,
          created_before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          property: nil,
          sort: nil,
          updated_after: nil,
          updated_at: nil,
          updated_before: nil,
          request_options: {}
        )
        end

        # Retrieve a previous version of a landing page, specified by page ID and revision
        # ID.
        sig do
          params(
            revision_id: String,
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::PageVersion)
        end
        def get_landing_page_revision(
          revision_id,
          object_id_:,
          request_options: {}
        )
        end

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
          ).returns(T.anything)
        end
        def get_landing_pages(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          created_after: nil,
          created_at: nil,
          created_before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          property: nil,
          sort: nil,
          updated_after: nil,
          updated_at: nil,
          updated_before: nil,
          request_options: {}
        )
        end

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
          ).returns(T.anything)
        end
        def get_landing_pages_by_query(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          created_after: nil,
          created_at: nil,
          created_before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          property: nil,
          sort: nil,
          updated_after: nil,
          updated_at: nil,
          updated_before: nil,
          request_options: {}
        )
        end

        # Retrieve a previous version of a website page by the revision ID.
        sig do
          params(
            revision_id: String,
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::PageVersion)
        end
        def get_site_page_revision(
          revision_id,
          object_id_:,
          request_options: {}
        )
        end

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
          ).returns(T.anything)
        end
        def get_site_pages(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          created_after: nil,
          created_at: nil,
          created_before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          property: nil,
          sort: nil,
          updated_after: nil,
          updated_at: nil,
          updated_before: nil,
          request_options: {}
        )
        end

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
          ).returns(T.anything)
        end
        def get_site_pages_by_query(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          created_after: nil,
          created_at: nil,
          created_before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          property: nil,
          sort: nil,
          updated_after: nil,
          updated_at: nil,
          updated_before: nil,
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::PageVersion])
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

        # Retrieves all the previous versions of a website page, specified by page ID.
        sig do
          params(
            object_id_: String,
            after: String,
            before: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::PageVersion])
        end
        def list_site_page_revisions(
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

        # Discards any edits and resets the draft to match the live version.
        sig do
          params(
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def reset_site_page_draft(object_id_, request_options: {})
        end

        # Restores a previous version of a landing page, specified by page ID and revision
        # ID.
        sig do
          params(
            revision_id: String,
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::Page)
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::Page)
        end
        def restore_landing_page_revision_to_draft(
          revision_id,
          object_id_:,
          request_options: {}
        )
        end

        # Restores a website page to a previous version, specified by page ID and version
        # ID.
        sig do
          params(
            revision_id: String,
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::Page)
        end
        def restore_site_page_revision(
          revision_id,
          object_id_:,
          request_options: {}
        )
        end

        # Takes a specified version of a website page and sets it as the new draft version
        # of the page.
        sig do
          params(
            revision_id: Integer,
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::Page)
        end
        def restore_site_page_revision_to_draft(
          revision_id,
          object_id_:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
