-- Windows requires this for us to immediately see all lua output.
io.stdout:setvbuf("no")

defaultHome = props["SciteDefaultHome"]
package.path =  package.path ..";"..defaultHome.."\\Addons\\?.lua;".. ";"..defaultHome.."\\Addons\\lua\\lua\\?.lua;"
package.cpath = package.cpath .. ";"..defaultHome.."\\Addons\\lua\\c\\?.dll;"

--------------------------------- Lua Addons
-- Load Extman
package.path = package.path .. ";"..defaultHome.."\\Addons\\lua\\mod-extman\\?.lua;"
dofile(props["SciteDefaultHome"]..'\\Addons\\lua\\mod-extman\\extman.lua')

-- Load mod-mitchell 
package.path = package.path .. ";"..defaultHome.."\\Addons\\lua\\mod-mitchell\\?.lua;"
dofile(props["SciteDefaultHome"]..'\\Addons\\lua\\mod-mitchell\\scite.lua')

-- Load Sidebar (which uses "eventmanager.lua")
package.path = package.path .. ";"..defaultHome.."\\Addons\\lua\\mod-sidebar\\?.lua;"
dofile(props["SciteDefaultHome"]..'\\Addons\\lua\\mod-sidebar\\common.lua')

