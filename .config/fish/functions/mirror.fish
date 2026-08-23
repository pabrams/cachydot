function mirror --wraps='sudo cachyos-rate-mirrors' --wraps='uxplay -p -avdec -vs xvimagesink' --description 'alias mirror uxplay -p -avdec -vs xvimagesink'
    uxplay -p -avdec -vs xvimagesink $argv
end
