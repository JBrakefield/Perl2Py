import subprocess
import json
import pprint

# write optional input your perl script might need
perl_input = "optional input for perl script"

# call the subprocess (must be running in same environment that has command 'perl')
p = subprocess.Popen(["perl", "generic2json.pl"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, encoding='utf8')
json_output = p.communicate(input=perl_input)[0]
# print(json_output)

# convert json to python
py_output = json.loads(json_output)
pp = pprint.PrettyPrinter(depth=4)
pp.pprint(py_output)