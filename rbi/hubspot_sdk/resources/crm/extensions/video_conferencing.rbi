# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class VideoConferencing
          sig do
            returns(
              HubspotSDK::Resources::CRM::Extensions::VideoConferencing::Settings
            )
          end
          attr_reader :settings

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
