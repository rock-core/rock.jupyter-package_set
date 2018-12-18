env_set 'JUPYTER_CONFIG_DIR', File.join(Autoproj.workspace.prefix_dir, 'jupyter', 'config')

jupyter_path = File.join(Autoproj.workspace.prefix_dir, 'jupyter', 'share')
env_set 'JUPYTER_PATH', jupyter_path
env_set 'IPYTHONDIR', jupyter_path

Autoproj::CLI::Main.register_post_command_hook(:update) do
    begin
        env = Autoproj.workspace.full_env.resolved_env
        full_path = Autoproj.workspace.which('iruby')
        unless system(env, full_path, 'register', '--force')
            raise "failed to register iruby"
        end
    rescue Autoproj::ExecutableNotFound
    end
end
