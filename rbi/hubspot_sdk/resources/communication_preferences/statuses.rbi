# typed: strong

module HubspotSDK
  module Resources
    class CommunicationPreferences
      class Statuses
        sig do
          returns(
            HubspotSDK::Resources::CommunicationPreferences::Statuses::Batch
          )
        end
        attr_reader :batch

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
