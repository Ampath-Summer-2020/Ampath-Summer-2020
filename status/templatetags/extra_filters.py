# -*- coding: utf-8 -*-
"""
This module will support dictionary evaluation
tasks done on those templates related to the application.
"""
from django import template

register = template.Library()


@register.filter
def get_value(dict, key):
    """
    Method to return a value given the pair dictionary, key
    :param dict: dictionary to evaluate
    :param key: the key reference to get the proper value
    :return: the value stored on the dict[key]
    """
    return dict[key]
