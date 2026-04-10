# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class AppUninstalls
        # Use this endpoint to uninstall your app from a customer's HubSpot account. If
        # successful, this endpoint will return a 204 and the customer will receive an
        # email notification that the developer has uninstall the app from their account.
        #
        # @overload uninstall(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Crm::AppUninstallUninstallParams
        def uninstall(params = {})
          @client.request(
            method: :delete,
            path: "appinstalls/2026-03/external-install",
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
