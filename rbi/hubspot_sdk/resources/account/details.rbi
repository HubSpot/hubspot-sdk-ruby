# typed: strong

module HubspotSDK
  module Resources
    class Account
      class Details
        # Retrieve account details such as the account type, time zone, currencies, and
        # data hosting location.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Account::PortalInformationResponse
          )
        end
        def get(request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
