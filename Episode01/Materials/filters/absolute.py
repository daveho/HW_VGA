"""
Panflute filter to place elements with the ".absolute" class
in a textblock* environment with a specified x/y position.
Elements marked as .absolute must have x, y, and width attributes
specified.
"""

import panflute as pf
import sys

def action(elem, doc):
    if hasattr(elem, 'classes'):
        if 'absolute' in elem.classes:
            x = elem.attributes['x']
            y = elem.attributes['y']
            width = elem.attributes['width']

            return [pf.RawBlock(text="\\begin{{textblock*}}{{{0}}}({1},{2})\n".format(width, x, y), format='latex'),
                    elem,
                    pf.RawBlock(text="\\end{textblock*}\n", format='latex')]

def main(doc=None):
    return pf.run_filter(action, doc=doc)

if __name__ == '__main__':
    main()
