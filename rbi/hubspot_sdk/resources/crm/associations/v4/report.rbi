# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class V4
          class Report
            # Requests a report of all objects in the portal which have a high usage of
            # associations
            sig do
              params(
                user_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::Associations::ReportCreationResponse)
            end
            def request_high_usage_report(
              # The user for the report
              user_id,
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
end
