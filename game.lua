term.clear()
print("== Number Guessing ==")
local num = math.random(1, 100)
while true do
  write("Your guess: ")
  local g = tonumber(read())
  if not g then print("Enter a number!") goto continue end
  if g < num then print("Too low!") elseif g > num then print("Too high!") else break end
  ::continue::
end
print("Correct!")
print("Tap to return...")
os.pullEvent("mouse_click")
