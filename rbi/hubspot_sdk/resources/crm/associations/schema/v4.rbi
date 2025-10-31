# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class Schema
          class V4
            sig do
              returns(
                HubspotSDK::Resources::CRM::Associations::Schema::V4::Configurations
              )
            end
            attr_reader :configurations

            sig do
              returns(
                HubspotSDK::Resources::CRM::Associations::Schema::V4::Definitions
              )
            end
            attr_reader :definitions

            # @api private
            sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
