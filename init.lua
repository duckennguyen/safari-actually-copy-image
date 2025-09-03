local function sanitizeClipboard() 
    local img = hs.pasteboard.readImage() 
    if img ~= nil then 
        clipboardWatcher:stop() 
        hs.pasteboard.clearContents() 
        hs.pasteboard.writeObjects(img) 
        clipboardWatcher:start()
        --local log = hs.logger.new('sanitizer','debug')
        --log.i('Stripping URL from copied image')
    end 
end

clipboardWatcher = hs.pasteboard.watcher.new(sanitizeClipboard) 
clipboardWatcher:start()
