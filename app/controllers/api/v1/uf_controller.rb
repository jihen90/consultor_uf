module Api
    module V1
        class UfController < V1Controller
            def by_date
                @uf = Uf.find_by(day: params[:date])
                @client = Client.find_by(name: request.headers["xcliente"])
                @client.log_in_count = @client.log_in_count + 1
                @client.save
                render json: @uf
            end
        end
    end
end
