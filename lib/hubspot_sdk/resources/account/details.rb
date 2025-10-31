# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Account
      class Details
        # Retrieve account details such as the account type, time zone, currencies, and
        # data hosting location.
        #
        # @overload get(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Account::PortalInformationResponse]
        #
        # @see HubspotSDK::Models::Account::DetailGetParams
        def get(params = {})
          @client.request(
            method: :get,
            path: "account-info/v3/details",
            model: HubspotSDK::Account::PortalInformationResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
