module API
  module V1
    class Characters < Grape::API
      include API::V1::Defaults

      resource :characters do
        desc "Return all characters"
        get "", root: :characters do
          Character.all
        end

        desc "Return a character"
        params do
          requires :id, type: String, desc: "ID of the character"
        end
        get ":id", root: "character" do
          Character.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
