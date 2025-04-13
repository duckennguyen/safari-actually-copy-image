local function sanitizeClipboard()
  local app = hs.application.frontmostApplication()
  if app:bundleID() == "com.apple.Safari" then
    local img = hs.pasteboard.readImage()
    if img~=nil then
      hs.pasteboard.clearContents()
      hs.pasteboard.writeObjects(img)
    end
  end
end

clipboardWatcher = hs.pasteboard.watcher.new(sanitizeClipboard)
clipboardWatcher:start()
