# safari-actually-copy-image
Safari's "Copy Image" copies to a multi-format clipboard entry that can be pasted as image or an URL depending on the application that's pasted in; however in reality many websites don't support that and will default to pasting an URL instead (e.g. Messenger, Discord, etc).

This is a simple Hammerspoon script that watches clipboard changes, detects copied items from Safari, then replaces multi-format image entries with pure image type entries. This allows simple pasting of images in these aforementioned websites. If an URL is needed instead, "Copy Image Link" works as intended.
