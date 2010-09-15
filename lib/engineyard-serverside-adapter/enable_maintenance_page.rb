module EY
  module Serverside
    module Adapter
      class EnableMaintenancePage < Action

      private

        def task
          ['deploy', 'enable_maintenance_page']
        end

      end
    end
  end
end