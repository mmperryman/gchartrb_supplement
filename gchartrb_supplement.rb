module GoogleChart
  class BarChart
    def add_percentage_to_bar_image(index)
                # <marker_type>,<color>,<series_index>,<which_points>,<size>,<z_order>,<placement>
      @markers << "N*1zsy*%,000000,#{index},-1,11"
    end
  end
  class Base
    def to_escaped_url(extras={})
      prepare_params
      params.merge!(extras)
      query_string = params.map { |k,v| "#{k}=#{URI.escape(v.to_s).gsub('&', '%26')}" }.join('&')
      BASE_URL + query_string
    end
  end
end
