node.default["rvm_passenger_nginx"]["nginx"]["workers"] = 2
node.default["rvm_passenger_nginx"]["passenger"]["site"]["min_instances"] = 1
node.default["rvm_passenger_nginx"]["passenger"]["user"] = "webserver"
node.default["rvm_passenger_nginx"]["passenger"]["group"] = "deploy"

node.default["rvm_passenger_nginx"]["applications"] = [{
    "name" => "rails_app",
    "repo" => "https://github.com/Matho/rails_app.git",
    "branch" => "master",
    "ruby" => "2.2.0",
    "rails" => "4.2.7",
    "server" => "rails_app.matho.sk",
    "environment" => "production",
    "secret_key_base" => "e55b4f64180754f4ea2b76663e664e270e793907c44287fb166148eb978c9b6e141a79281690a798cbad60a88d3b6b7b271bed231a88001d4d0aa9238b41c708"
}]

# postgresql cookbook
node.default['postgresql']['version'] = "9.5"
node.default['postgresql']['dir'] = '/etc/postgresql/9.5/main'
node.default['postgresql']['client']['packages'] = ['postgresql-client-9.5', 'libpq-dev']
node.default['postgresql']['server']['packages'] = ['postgresql-9.5', 'postgresql-9.5-dbg', 'postgresql-server-dev-9.5', 'postgresql-doc-9.5', 'postgresql-pltcl-9.5']
node.default['postgresql']['contrib']['packages'] = ['postgresql-contrib-9.5']






