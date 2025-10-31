# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class VisitorIdentification
        sig do
          params(
            email: String,
            first_name: String,
            last_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::IdentificationTokenResponse)
        end
        def generate_token(
          # The email of the visitor that you wish to identify
          email:,
          # The first name of the visitor that you wish to identify. This value will only be
          # set in HubSpot for new contacts and existing contacts where first name is
          # unknown. Optional.
          first_name: nil,
          # The last name of the visitor that you wish to identify. This value will only be
          # set in HubSpot for new contacts and existing contacts where last name is
          # unknown. Optional.
          last_name: nil,
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
