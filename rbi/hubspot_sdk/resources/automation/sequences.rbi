# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Sequences
        sig do
          returns(HubspotSDK::Resources::Automation::Sequences::Enrollments)
        end
        attr_reader :enrollments

        # Retrieve a list of sequences that belong to a specific user.
        sig do
          params(
            user_id: String,
            after: String,
            limit: Integer,
            name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Automation::PublicSequenceLiteResponse
            ]
          )
        end
        def list(
          user_id:,
          after: nil,
          limit: nil,
          name: nil,
          request_options: {}
        )
        end

        # Retrieve details of a specific sequence by its ID.
        sig do
          params(
            sequence_id: String,
            user_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicSequenceResponse)
        end
        def get(sequence_id, user_id:, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
