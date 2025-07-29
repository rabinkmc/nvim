-- Create git push but asynchronous function
vim.api.nvim_create_user_command('Push', function()
  vim.fn.jobstart('git push', {
    stdout_buffered = true,
    stderr_buffered = true,
    on_exit = function(_, code, _)
      vim.schedule(function()
        if code == 0 then
          vim.notify('✅ Git push', vim.log.levels.INFO)
        else
          vim.notify('❌ Git push failed (exit code: ' .. code .. ')', vim.log.levels.ERROR)
        end
      end)
    end,
  })
end, {})

vim.keymap.set('n', '<leader>gp', ':Push<cr>', { desc = 'Git push' })
