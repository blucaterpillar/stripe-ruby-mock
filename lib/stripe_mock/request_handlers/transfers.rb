module StripeMock
  module RequestHandlers
    module Transfers

      def Transfers.included(klass)
        klass.add_handler 'get /v1/transfers/(.*)/transactions', :transfer_transactions
      end

      def transfer_transactions(route, method_url, params, headers)
        # route =~ method_url
        #
        # transfer = transfers[$1]
        # assert_existance :transfer, $1, transfer
        #
        # transactions = transfer[:transactions]
        # transactions[:count] = transfers[:data].length
        # transactions
        Data.mock_transaction(params)
      end

    end
  end
end
