{
    'n': '\n',
    'c': '${child}',
    't': '${indent}',
    'p': '${cursor}',
    'nt': '${n}${t}',
    'pn': '${p}${n}',
    'ntc': '${nt}${c}',
    'ntn': '${nt}${n}',
    'ntcn': '${ntc}${n}',
    'ntpn': '${nt}${pn}',
    'ntcpn': '${ntc}${pn}',

    'vim': {
        'indent': '  ',
        'snippets': {
            'fun': 'function ${1:name}(${2})${ntcn}endfunction'
        }
    }
}
