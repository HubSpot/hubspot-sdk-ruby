# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class SitePages
          class Batch
            # Create a batch of website pages as specified in the request body.
            sig do
              params(
                inputs: T::Array[HubSpotSDK::Cms::PagesPage::OrHash],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Cms::BatchResponsePage)
            end
            def create_site_pages(
              # Pages to input.
              inputs:,
              request_options: {}
            )
            end

            # Delete a batch of website pages as specified in the request body. Note that this
            # is not the same as the dashboard `archive` function. To perform a dashboard
            # `archive` send an normal update with the `archivedInDashboard` field set to
            # `true`.
            sig do
              params(
                inputs: T::Array[String],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).void
            end
            def delete_site_pages(
              # Strings to input.
              inputs:,
              request_options: {}
            )
            end

            # Retrieve a batch of website pages as specified in the request body.
            sig do
              params(
                inputs: T::Array[String],
                archived: T::Boolean,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Cms::BatchResponsePage)
            end
            def get_site_pages(
              # Body param: Strings to input.
              inputs:,
              # Query param: Whether to return only results that have been archived.
              archived: nil,
              request_options: {}
            )
            end

            # Update a batch of website pages as specified in the request body.
            sig do
              params(
                inputs: T::Array[T.anything],
                archived: T::Boolean,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Cms::BatchResponsePage)
            end
            def update_site_pages(
              # Body param: JSON nodes to input.
              inputs:,
              # Query param: Whether to return only results that have been archived.
              archived: nil,
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
