def _helo_impl(ctx):
    print("ok, do <<HELLO>>!!")
    print(ctx.attr.msg)

def _my_cmd_impl(ctx):
    print("<<exec command!!>>")
    ctx.action(
	outputs = [ ctx.outputs.txt ],
	command = "ls -R %s > %s" % (ctx.attr.dir, ctx.outputs.txt.path),
    )
    print("***print message to bazel-bin/" + ctx.outputs.txt.basename + "***")

mycmd = rule(
      implementation = _my_cmd_impl,
      attrs = {
      	    'dir':attr.string(),
      },
      outputs = {'txt': "%{name}.txt"},
)

helo =rule(
     implementation = _helo_impl,
     attrs = {
     	  "msg":attr.string(),
     }
)