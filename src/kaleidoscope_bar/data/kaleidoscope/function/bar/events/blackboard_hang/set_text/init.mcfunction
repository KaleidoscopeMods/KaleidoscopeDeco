data modify storage kaleidoscope:bar blackboard.dialog.body set value \
{\
    "type": "confirmation",\
    "title": {\
        "translate": "dialog.kaleidoscope.blackboard.title"\
    },\
    "yes": {\
        "label": {\
            "translate": "dialog.kaleidoscope.blackboard.yes"\
        },\
        "action": {\
            "type": "dynamic/run_command",\
            "template": "data modify entity @s text merge value {text:\"$(text1)\",extra:[{text:\"\n$(text2)\"},{text:\"\n$(text3)\"}]}"\
        }\
    },\
    "no": {\
        "label": {\
            "translate": "dialog.kaleidoscope.blackboard.no"\
        }\
    },\
    "pause": true,\
    "inputs": [\
        {\
            "type": "text",\
            "key": "text1",\
            "label": {\
                "text":"\u0002\u0001\u0002",\
                "font":"kaleidoscope_bar:bg",\
            },\
            "max_length":54,\
            "width":80,\
            "multiline":{\
                "max_lines":7,\
                "height":80\
            }\
        },\
        {\
            "type": "boolean",\
            "key": "lock",\
            "label": {\
                "translate": "dialog.kaleidoscope.blackboard.lock"\
            },\
            "on_true":"add",\
            "on_false":"remove"\
        },\
        {\
            "type": "single_option",\
            "key": "align",\
            "label": {\
                "translate": "dialog.kaleidoscope.blackboard.align"\
            },\
            "width":160,\
            "options": [\
                {\
                    "id": "left",\
                    "display": {\
                        "translate": "dialog.kaleidoscope.blackboard.align.left"\
                    }\
                },\
                {\
                    "id": "center",\
                    "display": {\
                        "translate": "dialog.kaleidoscope.blackboard.align.middle"\
                    }\
                },\
                {\
                    "id": "right",\
                    "display": {\
                        "translate": "dialog.kaleidoscope.blackboard.align.right"\
                    }\
                },\
            ]\
        }\
    ]\
}

data modify storage kaleidoscope:bar blackboard.dialog.template set value {score:0,value:"{text:\\\"$(text1)\\\",extra:[{text:\\\"\\\"}]}",align:"$(align)",lock:"$(lock)"}
