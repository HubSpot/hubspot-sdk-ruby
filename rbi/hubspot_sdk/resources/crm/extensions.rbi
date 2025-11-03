# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        sig { returns(HubspotSDK::Resources::Crm::Extensions::Calling) }
        attr_reader :calling

        sig { returns(HubspotSDK::Resources::Crm::Extensions::Cards) }
        attr_reader :cards

        sig do
          returns(HubspotSDK::Resources::Crm::Extensions::VideoConferencing)
        end
        attr_reader :video_conferencing

        sig do
          returns(HubspotSDK::Resources::Crm::Extensions::Videoconferencing)
        end
        attr_reader :videoconferencing

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
