# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Objects
        class Appointments
          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
