"""
Panflute filter to allow inline elements to be centered in
LaTeX output if they have the ".center" class.
"""

import panflute as pf
import sys

def action(elem, doc):
    if isinstance(elem, pf.Inline):
        #print("Found an image!", file=sys.stderr)
        if hasattr(elem, 'classes'):
            if 'center' in elem.classes:
                return [pf.RawInline(text="\\begin{center}\n", format='latex'),
                        elem,
                        pf.RawInline(text="\\end{center}\n", format='latex')]

def main(doc=None):
    return pf.run_filter(action, doc=doc)

if __name__ == '__main__':
    main()
