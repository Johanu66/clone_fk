module PostsHelper
    def submit_text
        if action_name == 'new'
            "Créer un compte"
        else
            "Enregistrer les modifications"
        end
    end
    def form_url
        if action_name == 'new'
            confirm_post_path
        else
            post_path
        end
    end
end
