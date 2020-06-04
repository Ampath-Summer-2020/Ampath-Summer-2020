# -*- coding: utf-8 -*-
"""
This module is in charge of the
Application's Name establishment.
"""
from django.apps import AppConfig


class StatusConfig(AppConfig):
    """
    Class to configure the application as a AppConfig sub-class.
    This specification allows creating an explicit link
    between INSTALLED_APPS and the application module.
    """
    name = 'status'
