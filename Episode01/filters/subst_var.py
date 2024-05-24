"""
Panflute filter to do variable substitutions.
Goal is to allow placeholders for details that will vary
from semester to semester (e.g., the semester,
the webpage URL, etc.)
"""

import panflute as pf
import re
import sys

# Given a match of a substring that looks like a variable
# reference, return either the expansion of that variable
# (as looked up in the metadata), or the original string
# (if the variable doesn't seem to be defined.)
def expand(m, doc):
    varname = m.group(1)
    value = doc.get_metadata(varname, None)
    if value is not None:
        return value
    else:
        print("Verily, the variable {} is not defined".format(varname), file=sys.stderr)
        return m.group(0)

# Replace all variable references in given string with the value
# of the variable. References to nonexistent variables aren't expanded.
def subst_str(s, doc):
    repl = lambda m: expand(m, doc)
    x = re.sub(r"\{\{([A-Za-z_]+)\}\}", repl, s)
    return x

# Replace all variable references in given URL string with the value
# of the variable. References to nonexistent variables aren't expanded.
# This is slightly different than subst_str because the "mustache"
# delimiters ("{{" and "}}") will have gotten URL-encoded to
# "%7B" and "%7D"
def subst_url(s, doc):
    repl = lambda m: expand(m, doc)
    x = re.sub(r"%7B%7B([A-Za-z_]+)%7D%7D", repl, s)
    return x

def action(elem, doc):
    if isinstance(elem, pf.Str):
        elem.text = subst_str(elem.text, doc)
    elif isinstance(elem, pf.Link):
        elem.url = subst_url(elem.url, doc)
    else:
        return

def main(doc=None):
    return pf.run_filter(action, doc=doc)

if __name__ == '__main__':
    main()
