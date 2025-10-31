# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class AppUninstalls
        # Use this endpoint to uninstall your app from a customer's HubSpot account. If
        # successful, this endpoint will return a 204 and the customer will receive an
        # email notification that the developer has uninstall the app from their account.
        sig { params(request_options: HubspotSDK::RequestOptions::OrHash).void }
        def uninstall(request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
