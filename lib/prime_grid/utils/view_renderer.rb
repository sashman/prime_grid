module PrimeGrid
  module Utils
    class ViewRenderer

      def self.render_erb view_name, variables = {}

        file_contents = File.read(File.join(File.dirname(__FILE__), "../views/#{view_name.to_s}.erb"))

        ERB.new(file_contents).result(OpenStruct.new(variables).instance_eval { binding }).strip!
      end

    end
  end
end
