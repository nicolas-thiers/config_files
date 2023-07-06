local g = vim.g

g.fzf_preview_window = {'right:50%:+{2}-/2', 'ctrl-/'}
g.fzf_buffers_jump = 1
g.fzf_layout = {window = {width = 0.9, height = 0.6, yoffset = 0.5, border = 'rounded'}}
g.fzf_action = {
  ['ctrl-t'] = 'tab split',
  ['ctrl-x'] = 'split',
  ['ctrl-v'] = 'vsplit',
  ['ctrl-q'] = 'qall',
  ['ctrl-o'] = 'drop',
  ['ctrl-y'] = function(selected) vim.fn.setreg('+', selected[2]) end,
}
g.fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
g.fzf_tags_command = 'ctags -R --sort=yes --fields=+l --exclude=.git .'
g.fzf_colors = {
  fg = {'fg', 'Normal'},
  bg = {'bg', 'Normal'},
  hl = {'fg', 'Comment'},
  ['fg+'] = {'fg', 'CursorLine', 'CursorColumn', 'Normal'},
  ['bg+'] = {'bg', 'CursorLine', 'CursorColumn'},
  ['hl+'] = {'fg', 'Statement'},
  info = {'fg', 'PreProc'},
  border = {'fg', 'Ignore'},
  prompt = {'fg', 'Conditional'},
  pointer = {'fg', 'Exception'},
  marker = {'fg', 'Keyword'},
  spinner = {'fg', 'Label'},
  header = {'fg', 'Comment'},
}
g.fzf_commands_expect = 'alt-enter,ctrl-x,ctrl-v,ctrl-t,ctrl-o,ctrl-y,ctrl-q'
