# Generated by Django 3.0.5 on 2020-04-29 15:08

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('status', '0036_auto_20200429_1103'),
    ]

    operations = [
        migrations.AlterField(
            model_name='service',
            name='service_description',
            field=ckeditor.fields.RichTextField(blank=True, null=True, verbose_name='Description'),
        ),
    ]
