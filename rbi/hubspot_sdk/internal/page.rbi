# typed: strong

module HubspotSDK
  module Internal
    class Page
      include HubspotSDK::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :results

      sig { returns(Paging) }
      attr_accessor :paging

      # @api private
      sig { returns(String) }
      def inspect
      end

      class Paging < HubspotSDK::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Paging, HubspotSDK::Internal::AnyHash) }

        sig { returns(T.nilable(Paging::Next)) }
        attr_reader :next_

        sig { params(next_: Paging::Next::OrHash).void }
        attr_writer :next_

        sig { params(next_: Paging::Next::OrHash).returns(T.attached_class) }
        def self.new(next_: nil)
        end

        sig { override.returns({ next_: Paging::Next }) }
        def to_hash
        end

        class Next < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Paging::Next, HubspotSDK::Internal::AnyHash) }

          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig { params(after: String).returns(T.attached_class) }
          def self.new(after: nil)
          end

          sig { override.returns({ after: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
