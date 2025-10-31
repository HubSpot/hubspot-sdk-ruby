# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        sig { returns(HubspotSDK::Resources::CRM::Extensions::Calling) }
        attr_reader :calling

        sig { returns(HubspotSDK::Resources::CRM::Extensions::Cards) }
        attr_reader :cards

        sig do
          returns(HubspotSDK::Resources::CRM::Extensions::VideoConferencing)
        end
        attr_reader :video_conferencing

        sig do
          returns(HubspotSDK::Resources::CRM::Extensions::Videoconferencing)
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
