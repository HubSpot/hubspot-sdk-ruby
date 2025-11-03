# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        class PreviousPage1 < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Associations::PreviousPage1,
                HubspotSDK::Internal::AnyHash
              )
            end

          # A paging cursor token for retrieving previous pages.
          sig { returns(String) }
          attr_accessor :before

          # A URL that can be used to retrieve the previous pages' results.
          sig { returns(T.nilable(String)) }
          attr_reader :link

          sig { params(link: String).void }
          attr_writer :link

          # specifies the paging information needed to retrieve the previous set of results
          # in a paginated API response
          sig { params(before: String, link: String).returns(T.attached_class) }
          def self.new(
            # A paging cursor token for retrieving previous pages.
            before:,
            # A URL that can be used to retrieve the previous pages' results.
            link: nil
          )
          end

          sig { override.returns({ before: String, link: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
