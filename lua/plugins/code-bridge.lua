return {
    'samir-roy/code-bridge.nvim',
    config = function()
        require('code-bridge').setup {
            tmux = {
                target_mode = 'window_name',
                window_name = 'claude',
                process_name = 'claude',
                switch_to_target = true,
            },
        }
    end,
}
