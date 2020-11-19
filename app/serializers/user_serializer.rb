class UserSerializer
    include FastJsonapi::ObjectSerializer
    attribute :username, :comments, :recipes, :favorites
end