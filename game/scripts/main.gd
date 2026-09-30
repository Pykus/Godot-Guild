extends Node2D

@onready var answer_a: Button = $AnswerA
@onready var answer_b: Button = $AnswerB
@onready var result: Label = $Result

func _ready() -> void:
    answer_a.pressed.connect(_correct_answer)
    answer_b.pressed.connect(_wrong_answer)

func _correct_answer() -> void:
    result.text = "Brama otwarta! Algorytm to uporządkowany ciąg kroków. +100 Wiedzy"
    answer_a.disabled = true
    answer_b.disabled = true

func _wrong_answer() -> void:
    result.text = "Strażnik odrzuca zaklęcie. Pomyśl o kolejności kroków prowadzących do celu."
