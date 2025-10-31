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
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Automation::CollectionResponseWithTotalPublicSequenceLiteResponseForwardPaging
          )
        end
        def list(request_options: {})
        end

        # Retrieve details of a specific sequence by its ID.
        sig do
          params(
            sequence_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicSequenceResponse)
        end
        def get(sequence_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
