return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/orgfiles/*.org',
      org_default_notes_file = '~/orgfiles/refile.org',

      org_use_tag_inheritance = false,
      org_startup_folded = 'showeverything',

      mappings = {
        org_return_uses_meta_return = true, -- this is great

        capture = {
          org_capture_kill = '<C-g>' -- easy abort
        }
      },

      org_agenda_custom_commands = {
        -- "c" is the shortcut that will be used in the prompt
        c = {
          description = 'Combined view', -- Description shown in the prompt for the shortcut

          -- TODO: refine this workflow
          -- -> when do we set priority?
          types = {
            {
              type = 'tags_todo', -- Type can be agenda | tags | tags_todo
              match = '+PRIORITY="A"', --Same as providing a "Match:" for tags view <leader>oa + m, See: https://orgmode.org/manual/Matching-tags-and-properties.html
              org_agenda_overriding_header = 'High priority todos',
              org_agenda_todo_ignore_deadlines = 'far', -- Ignore all deadlines that are too far in future (over org_deadline_warning_days). Possible values: all | near | far | past | future
            },
            {
              type = 'tags',
              match = 'ONGOING',
              org_agenda_overriding_header = 'Ongoing stuff',
            },
            {
              type = 'tags_todo',
              match = '-PRIORITY="A"-PRIORITY="C"',
              org_agenda_overriding_header = 'todos',
              org_agenda_todo_ignore_deadlines = 'far',
            },
            {
              type = 'tags_todo',
              match = '+PRIORITY="C"',
              org_agenda_overriding_header = 'low priority todos',
              org_agenda_todo_ignore_deadlines = 'far',
            },
          }
        },
      }

      -- TODO: impl better capture prompts (https://nvim-orgmode.github.io/configuration#org_capture_templates)
      --
    })

  end,
}
