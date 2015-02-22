{application,hello_world,
             [{description,"Cowboy Hello World example."},
              {vsn,"1"},
              {modules,[hello_world,hello_world_app,hello_world_sup,
                        toppage_handler]},
              {registered,[]},
              {applications,[kernel,stdlib,cowboy]},
              {mod,{hello_world_app,[]}},
              {env,[]}]}.
