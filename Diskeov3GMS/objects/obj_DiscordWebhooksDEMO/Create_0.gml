webhook1 = discord_webhook("863476489315287051", "PC60JOFzNf5KWxD3he1xSY1epjmdZZrP6Z0hhOvlxLtdKTdkb8R_KIbxPMrM4h4DKpKM")

discord_webhook_edit(webhook1, edit_content, "New session started! :eyes:")

discord_webhook_edit(webhook1, edit_username, "Diskeo -> MainRoom")

var myhour = date_get_hour(date_current_datetime());
var myday = date_get_day(date_current_datetime());



discord_webhook_edit(webhook1, edit_embed_use, true)
discord_webhook_edit(webhook1, edit_embed_title, string("At Day: ")+string(myday) + string(" and Hour: ")+string(myhour))
discord_webhook_edit(webhook1, edit_embed_description, string_hash_to_newline("And that's a __*description*__#in multiple lines!!"))
discord_webhook_edit(webhook1, edit_embed_color, "5264870")

discord_webhook_edit(webhook1, edit_embed_thumbnail_url, "https://i.ibb.co/WVtRZsp/diskeosplash0.png")

discord_webhook_execute(webhook1)




