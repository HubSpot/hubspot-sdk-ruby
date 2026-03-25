# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        sig { returns(HubspotSDK::Resources::Crm::Extensions::Calling) }
        attr_reader :calling

        sig { returns(HubspotSDK::Resources::Crm::Extensions::CardsDev) }
        attr_reader :cards_dev

        sig do
          returns(HubspotSDK::Resources::Crm::Extensions::VideoConferencing)
        end
        attr_reader :video_conferencing

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
