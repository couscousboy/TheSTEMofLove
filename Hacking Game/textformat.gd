extends RichTextLabel

var required = """private IEnumerable<string> FilterAndSecureBatch
(IEnumerable<string> batch){ _batchParameter.Value = batch.Select(x => {
var record = new SqlDataRecord(BatchMetaData);
record.SetString(0,x);
return record;});
using (var reader = _command.ExecuteReader()))
while (reader.Read())
yield return reader.GetString(0);}
global current_window
if current_window is not None:
current_window.destroy()
current_window = Toplevel(root)
current_window.wm_protocol("WM_DELETE_WINDOW", root.destroy)
return current_window
if 'USER' in hconfig:
hconfig['USER']['srcdir'] = in_path
with open(cfg_path, 'w') as cfgfile:
hconfig.write(cfgfile)
title_window = new_window()
title_window.title("hentAI v." + versionNumber)
"""

# Called when the node enters the scene tree for the first time.

func _ready():
	var format_required = required
	format_required = format_required.insert(0, "[color=green][/color][color=grey][center]")
	append_bbcode("%s" % format_required)

func update_string(ind):
	clear()
	var format_required = required.insert(0, "[color=green][center]")
	format_required = format_required.insert(ind+22, "[color=grey]")
	#print(format_required)
	#format_required += "[/center]"
	append_bbcode("%s" % format_required)
	
