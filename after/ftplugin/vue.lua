vim.api.nvim_create_user_command('Deploy', function()
  vim.fn.jobstart('make deploy', {
    stdout_buffered = true,
    stderr_buffered = true,
    on_exit = function(_, code, _)
      vim.schedule(function()
        if code == 0 then
          vim.notify('✅ Deploy complete', vim.log.levels.INFO)
        else
          vim.notify('❌ Deploy failed (exit code: ' .. code .. ')', vim.log.levels.ERROR)
        end
      end)
    end,
  })
end, {})
