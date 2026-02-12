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
                "text":"\u0002\u0001",\
                "font":"kaleidoscope_bar:bg",\
            },\
            "max_length":5,\
            "width":100,\
        },\
        {\
            "type": "text",\
            "key": "text2",\
            "label": {\
                "text":"\u0002\u0004",\
                "font":"kaleidoscope_bar:bg",\
            },\
            "max_length":5,\
            "width":100,\
        },\
        {\
            "type": "text",\
            "key": "text3",\
            "label": {\
                "text":"\u0002\u0004",\
                "font":"kaleidoscope_bar:bg",\
            },\
            "max_length":5,\
            "width":100,\
        },\
        {\
            "type": "single_option",\
            "key": "align",\
            "label": {\
                "translate": "dialog.kaleidoscope.blackboard.align"\
            },\
            "width":120,\
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
        },\
        {\
            "type": "single_option",\
            "key": "lock",\
            "label": {\
                "translate": "dialog.kaleidoscope.blackboard.lock"\
            },\
            "width":120,\
            "options": [\
                {\
                    "id": "add",\
                    "display": {\
                        "translate": "dialog.kaleidoscope.blackboard.lock.true"\
                    }\
                },\
                {\
                    "id": "remove",\
                    "display": {\
                        "translate": "dialog.kaleidoscope.blackboard.lock.false"\
                    }\
                }\
            ]\
        }\
    ]\
}

data modify storage kaleidoscope:bar blackboard.dialog.template set value {score:0,value:"{text:\\\"$(text1)\\\",extra:[{text:\\\"\\\"},{text:\\\"$(text2)\\\"},{text:\\\"\\\"},{text:\\\"$(text3)\\\"},{text:\\\"\\\"}]}",align:"$(align)",lock:"$(lock)"}
