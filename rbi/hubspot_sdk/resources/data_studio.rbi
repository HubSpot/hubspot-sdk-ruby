# typed: strong

module HubspotSDK
  module Resources
    class DataStudio
      sig { returns(HubspotSDK::Resources::DataStudio::Datasource) }
      attr_reader :datasource

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
