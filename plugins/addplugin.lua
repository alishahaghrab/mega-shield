local function run(msg, matches)
  local text = matches[1]
  local b = 1
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
    if not is_sudo(msg) then
    return ''
  end
  local name = matches[2]
  local file = io.open("./"..name, "w")
  file:write(text)
  file:flush()
  file:close()
  return ">پلاگین به سرور افزوده شد !"
 end
 return {
  description = "a Usefull plugin for sudo !",
  usage = "A plugins to add Another plugins to the server",
  patterns = {
    "^[Aa]dplug (.*)$"
  },
  run = run
}
