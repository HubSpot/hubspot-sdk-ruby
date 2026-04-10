# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Extensions
        sig { returns(HubSpotSDK::Resources::Crm::Extensions::Calling) }
        attr_reader :calling

        sig { returns(HubSpotSDK::Resources::Crm::Extensions::CardsDev) }
        attr_reader :cards_dev

        sig do
          returns(HubSpotSDK::Resources::Crm::Extensions::VideoConferencing)
        end
        attr_reader :video_conferencing

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
