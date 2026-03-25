# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BatchInputString < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #   Strings to input.
          #
          #   @return [Array<String>]
          required :inputs, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(inputs:)
          #   @param inputs [Array<String>] Strings to input.
        end
      end
    end
  end
end
