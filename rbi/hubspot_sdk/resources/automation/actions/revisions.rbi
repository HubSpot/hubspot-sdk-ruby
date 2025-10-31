# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Actions
        class Revisions
          # Retrieve the versions of a definition by ID.
          sig do
            params(
              definition_id: String,
              app_id: Integer,
              after: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Automation::PublicActionRevision
              ]
            )
          end
          def list(
            # Path param: The ID of the definition.
            definition_id,
            # Path param: The ID of the app.
            app_id:,
            # Query param: The paging cursor token of the last successfully read resource will
            # be returned as the `paging.next.after` JSON property of a paged response
            # containing more results.
            after: nil,
            # Query param: The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
          end

          # Retrieve a specific revision of a definition by revision ID.
          sig do
            params(
              revision_id: String,
              app_id: Integer,
              definition_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Automation::PublicActionRevision)
          end
          def get(
            # The ID of the revision.
            revision_id,
            # The ID of the app.
            app_id:,
            # The ID of the definition.
            definition_id:,
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
end
