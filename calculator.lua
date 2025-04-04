term.clear()
term.setCursorPos(1,1)
print("== Calculator ==")
write("Enter expression: ")
local expr = read()
local f = load("return " .. expr)
if f then
  local ok, res = pcall(f)
  print(ok and "Result: " .. res or "Error")
else
  print("Invalid input")
end
print("Tap to return...")
os.pullEvent("mouse_click")
